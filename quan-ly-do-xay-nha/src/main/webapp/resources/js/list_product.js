const $ = document.querySelector.bind(document);
const htmlListProduct = $('.list-product');

const app = {

    
	products: [
		{
			id: 1,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 2,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 3,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 4,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 5,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 6,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 7,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 8,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
		{
			id: 9,
			title: 'Viborg VB 401',
			price: '190.000đ',
			thumbnailUrl: '/quan-ly-do-xay-nha/resources/image/khoan.png',
		},
	],
	render: function () {
		var html = this.products.map((product) => {
			return `<div class="list-product-item flex-fill mt-3">
            <a class="text-center text-decoration-none" href="#">
                <div>
                    <div class="thumbnail pt-4">
                        <img src="${product.thumbnailUrl}" alt="${product.title}" width="233" height="252" />
                    </div>
                    <div class="info">
                        <h6 class="product-name text-dark p-2 m-0">${product.title}</h6>
                        <span class="product-price text-danger">${product.price}</span>
                    </div>
                </div>
            </a>
        </div>`;
		});

        htmlListProduct.innerHTML = html.join("");
	},
	start: function () {
        this.render();
    }
};

app.start();
