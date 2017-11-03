require.config({
	paths:{
		"myorder": "module-myorder",
		"jquery":"jquery",
		"loginStatus": "module-loginStatus",
		"navtab":"module-navtab",
		"jquery":"jquery",
		"cookie": "jquery.cookie",
		"jquery.easing": "module-jquery-easing",
		"product": "module-product",
		"goodsCookie": "module-product-cookie"
	}
})
require(["jquery","myorder"],function($,myorder){

	myorder.myorder();
})

require(["navtab", "jquery.easing", "jquery"], function (navtab, $) {
	navtab.func();
})
require(["jquery", "cookie", "loginStatus"], function ($, cookie, loginStatus) {
	loginStatus.isLogin();
})

require(["jquery", "product", "cookie"], function ($, product, cookie) {
	product.cartCount();
})