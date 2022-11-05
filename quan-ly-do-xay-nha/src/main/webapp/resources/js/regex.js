//check ten tk
function checkTenTkDK(){
	let nameacc = document.getElementById("userName").value;
    if (nameacc.trim() === '') {
        //document.getElementById("tenTkDK").innerHTML = "Tên tài khoản đăng ký không được trống !";
		alert ("Tên tài khoản đăng ký không được trống !");
        return false;
    }
    document.getElementById("tenTkDK").innerHTML = "✔";
    return true;
}

//check hoten
function checkHoTenDK() {
    let name = document.getElementById("fullName").value;

    if (name.trim() === '') {
        //document.getElementById("hoTenDK").innerHTML = "Họ tên không được trống !";
		alert ("Họ tên không được trống !");
        return false;
    }
    document.getElementById("hoTenDK").innerHTML = "✔";
    return true;
}

//check email
function checkEmailDK() {
    let email = document.getElementById("email").value;
    let regexEmail = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
    if (email.trim() === '') {
        //document.getElementById("emailDK").innerHTML = "Email không được trống !";
        alert("Email không được trống !");
		return false;
    }
    if (!regexEmail.test(email)) {
        //document.getElementById("emailDK").innerHTML = "Email không phù hợp !";
        alert("Email không phù hợp !");
		return false;
    }
    document.getElementById("emailDK").innerHTML = "✔";
    return true;
}

//check sdt
function checkSdtDK() {
    let phone = document.getElementById("dienThoai").value;
    // let regexPhone = /^[0-9]{10}$/;
    let regexPhone = /\+?(0|84)\d{9,10}/;
    if (phone.trim() !== '' && regexPhone.test(phone)) {
        document.getElementById("sdtDK").innerHTML = "✔";
        return true;
    }
    //document.getElementById("sdtDK").innerHTML = "SĐT phải gồm 10 chữ số, bắt đầu là số 0 hoặc 84 !";
    alert("SĐT phải gồm 10 chữ số, bắt đầu là số 0 hoặc 84 !");
	return false;
}

//check mk
function checkMkDK() {
    let pass = document.getElementById("passWord").value;
    let regexPass = /^\s*[a-zA-Z0-9,\s]+\s*$/;
    if (pass.trim() === '') {
        //document.getElementById("mkDK").innerHTML = "Mật khẩu không được trống !";
        alert("Mật khẩu không được trống !");
		return false;
    }
    if (!regexPass.test(pass)) {
        //document.getElementById("mkDK").innerHTML = "Mật khẩu không chứa kí tự đặc biệt: {}[]()^$.|*+?\-";
        alert("Mật khẩu không chứa kí tự đặc biệt: {}[]()^$.|*+?\-");
		return false;
    }
    document.getElementById("mkDK").innerHTML = "✔";
    return true;
}

//check nhập lại mk
function checkNhapLaiMkDK() {
    let passCheck = document.getElementById("re-enterPwDK").value;
    if (passCheck.trim() === '') {
        //document.getElementById("checkRePass").innerHTML = "Vui lòng xác nhận lại mật khẩu !";
        alert("Vui lòng xác nhận lại mật khẩu !");
		return false;
    }
    if (passCheck != document.getElementById("passWord").value) {
        //document.getElementById("checkRePass").innerHTML = "Mật khẩu nhập lại không khớp!";
        alert("Mật khẩu nhập lại không khớp");
		return false;
    }
    document.getElementById("checkRePass").innerHTML = "✔";
    return true;
}

//xuly btn dangky
function handleRegister() {
    if (!checkTenTkDK() || !checkHoTenDK() || !checkEmailDK() || !checkSdtDK() || !checkMkDK() || !checkNhapLaiMkDK())
        return false;
    //alert("Đăng ký thành công !");
    return true;
}