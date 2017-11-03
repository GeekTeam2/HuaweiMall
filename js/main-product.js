require.config({
	paths:{
		"navtab":"module-navtab",
		"jquery":"jquery",
		"cookie": "jquery.cookie",
		"jquery.easing":"module-jquery-easing",
		"product": "module-product",
		"goodsCookie": "module-product-cookie",
		"bigger": "module-bigger",
		"backToTop": "module-backToTop"
	}
})

require(["navtab","jquery.easing","jquery"],function(navtab, $){
	navtab.func();
})

require(["jquery", "backToTop"],function($, backToTop){
	backToTop.start();
})

<<<<<<< HEAD:HuaWeiEee/WebRoot/js/main-product.js
require(["jquery","product","cookie","loginProduct"],function($, product, cookie, loginProduct){
	loginProduct.getProductInfo("荣耀V9");
=======
require(["jquery","product"],function($, product){
>>>>>>> parent of 7dcca48... final:js/main-product.js
	product.showActivity($("#activity_list"), $("#activity_list_details"));
	product.changeGallery($(".product_img_box"), $("#pro_gallerys"));
	product.movePage($("#product_gallery_back"), $("#product_gallery_next"), $("#pro_gallerys"), 62);
	product.selectGoods();
	product.safe();
	product.cartCount();
	product.openAndClose("open", $("#open_detail"), $("#close_detail"), $("#pro_para_title"), 3300);
	product.openAndClose("close", $("#close_detail"), $("#open_detail"), $("#pro_para_title"), 1000);
	product.openAndClose("open", $("#open_img"), $("#close_img"), $(".detail_img"), 7100);
	product.openAndClose("close", $("#close_img"), $("#open_img"), $(".detail_img"), 1000);
})

require(["jquery","cookie","goodsCookie"],function($, cookie, goodsCookie){
	goodsCookie.cart();
})

require(["jquery","bigger"],function($, bigger){
	bigger.glass();
})