require({
	paths:{
		jquery:"jquery",
		shopCart:"module-shopCart",
		payment:"module-payment",
		loginStatus: "module-loginStatus"
	}
})
require(["jquery","shopCart"],function($,shopCart){
	shopCart.shopCart();
})
require(["jquery","payment"],function($,payment){
	payment.payment();
})
require(["jquery", "cookie", "loginStatus"], function ($, cookie, loginStatus) {
	loginStatus.isLogin();
})