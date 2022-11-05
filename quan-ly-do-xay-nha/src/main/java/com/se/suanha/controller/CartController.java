package com.se.suanha.controller;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.Iterator;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.html.HTMLModElement;

import com.se.suanha.entity.Cart;
import com.se.suanha.entity.CartDetail;
import com.se.suanha.entity.Customer;
import com.se.suanha.entity.Product;
import com.se.suanha.service.CartService;
import com.se.suanha.service.CustomerService;
import com.se.suanha.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProductService productService;

	@GetMapping("/cart")
	public String listCart(Model model) {
		Cart cart = cartService.getOrderByIdCustomer(getCustomerId());
		if (cart != null) {
			List<CartDetail> cartDetails = cartService.getOrderDetailByOrder(cart.getId());
			model.addAttribute("listDetail", cartDetails);
			model.addAttribute("cart", cart);
		}

		return "cart";
	}

	@RequestMapping("/saveOrderAndOpenCart")
	public String saveOrderAndOpenCart(@RequestParam int soLuong, @RequestParam String productId) {
		handleSaveOrder(soLuong, productId);
		return "redirect:/cart";
	}

	@RequestMapping("/saveOrder")
	@ResponseBody
	public void saveOrder(@RequestParam int soLuong, @RequestParam String productId) {
		handleSaveOrder(soLuong, productId);
	}

	public void handleSaveOrder(int soLuong, String productId) {
		int customerId = getCustomerId();
		Customer customer = customerService.getCustomer(customerId);
		Product product = productService.getProductById(Integer.parseInt(productId));
		Cart cart = cartService.getOrderByIdCustomer(customerId);

		// kiểm tra khách hàng đã có hóa đơn chưa thanh toán ko?
		// có
		if (cart != null) {
			// tạo chi tiết hóa đơn và thêm vào sql
			List<CartDetail> listCartDetail = cartService.getOrderDetailByOrder(cart.getId());
			CartDetail cartDetail = null;
			for (CartDetail temp : listCartDetail) {
				if (temp.getProduct().getId() == product.getId()) {
					cartDetail = temp;
				}
			}
			if (cartDetail == null) {
				cartDetail = new CartDetail(cart, product, soLuong, tinhGia(product.getPrice(), soLuong));
				cartService.saveCartDetail(cartDetail);
				updateThanhTien(cart);
				cartService.updateCart(cart);
			} else {
				cartDetail.setSoLuong(cartDetail.getSoLuong() + soLuong);
				cartDetail.setGia(tinhGia(product.getPrice(), cartDetail.getSoLuong()));
				cartService.updateCartDetail(cartDetail);
				updateThanhTien(cart);
				cartService.updateCart(cart);
			}
			// không
		} else {
			// tạo hóa đơn và thêm và thêm vào sql
			// tạo chi tiết hóa đơn và thêm vào sql
			cart = new Cart(LocalDate.now(), null, customer, null);
			CartDetail cartDetail = new CartDetail(cart, product, soLuong, tinhGia(product.getPrice(), soLuong));

			int thanhTien = Integer.parseInt(cartDetail.getGia().split(" ")[0].replace(".", ""));
			List<CartDetail> listCartDetail = cartService.getOrderDetailByOrder(cart.getId());
			for (CartDetail cd : listCartDetail) {
				String[] item = cd.getGia().split(" ");
				thanhTien += Integer.parseInt(item[0].replace(".", ""));
			}
			DecimalFormat df = new DecimalFormat("#,###,### ₫");
			cart.setThanhTien(df.format(thanhTien).replace(",", "."));

			cart.setThanhToan("chưa thanh toán");
			cartService.saveCart(cart);
			cartService.saveCartDetail(cartDetail);
		}
	}

	private void updateThanhTien(Cart cart) {
		int thanhTien = 0;
		List<CartDetail> listCartDetail = cartService.getOrderDetailByOrder(cart.getId());
		for (CartDetail cd : listCartDetail) {
			String[] item = cd.getGia().split(" ");
			thanhTien += Integer.parseInt(item[0].replace(".", ""));
		}
		DecimalFormat df = new DecimalFormat("#,###,### ₫");
		cart.setThanhTien(df.format(thanhTien).replace(",", "."));
	}

	private String tinhGia(String gia, int soLuong) {
		String[] item = gia.split(" ");
		int total = Integer.parseInt(item[0].replace(".", "")) * soLuong;
		DecimalFormat df = new DecimalFormat("#,###,### ₫");
		return df.format(total).replace(",", ".");
	}

	@RequestMapping("/delete/productId={productId}/orderId={cartId}")
	public String deleteDetail(@PathVariable int productId, @PathVariable int cartId) {
		cartService.deleteCartDetail(productId, cartId);
		Cart cart = cartService.getCardById(cartId);
		updateThanhTien(cart);
		cartService.updateCart(cart);
		return "redirect:/cart";
	}

	@GetMapping("/cart/payment")
	public String payment() {
		int customerId = getCustomerId();
		Cart cart = cartService.getOrderByIdCustomer(getCustomerId());
		if (cart != null) {
			List<CartDetail> cartDetails = cartService.getOrderDetailByOrder(cart.getId());
			if (!cartDetails.isEmpty())
				cartService.updatePayment(customerId);
		}

		return "redirect:/cart";
	}

	public int getCustomerId() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserDetails userDetail = (UserDetails) auth.getPrincipal();
		Customer customer = customerService.getCustomer(userDetail.getUsername());
		return customer.getId();
	}
	
	@GetMapping("/config/thongke/statistical")
	public String statistical(@RequestParam int day, @RequestParam int month, @RequestParam int year, Model theModel) {
		List<Cart> listCart = cartService.getListCartByDate(day, month, year);
		long count = 0;
		long tam = 0;
		String tongThanhTien;
		for (Cart cart : listCart) {
			theModel.addAttribute("customer", customerService.getCustomer(cart.getCustomer().getId()));
			int thanhTien = Integer.parseInt(cart.getThanhTien().split(" ")[0].replace(".", ""));
			tam += thanhTien;
			
		}
		DecimalFormat df = new DecimalFormat("#,###,### ₫");
		tongThanhTien = df.format(tam).replace(",", ".");
		theModel.addAttribute("carts", listCart);
		theModel.addAttribute("total", tongThanhTien);
		System.out.println(listCart);
		return "statistical";
	}
	
	@GetMapping("/config/thongke")
	public String thongke() {
		return "statistical";
	}
}
