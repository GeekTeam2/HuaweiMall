require.config({
	paths:{
		"navtab":"module-navtab",
		"jquery":"jquery",
		"cookie": "jquery.cookie",
		"jquery.easing":"module-jquery-easing",
		"product": "module-product",
		"goodsCookie": "module-product-cookie"
	}
})

require(["navtab","jquery.easing","jquery"],function(navtab, $){
	navtab.func();
})

require(["jquery","product"],function($, product){
	product.showActivity($("#activity_list"), $("#activity_list_details"));
	product.changeGallery($(".product_img_box"), $("#pro_gallerys"));
	product.movePage($("#product_gallery_back"), $("#product_gallery_next"), $("#pro_gallerys"), 62);
	product.selectGoods();
	product.safe();
	product.cartCount();
})

require(["jquery","cookie","goodsCookie"],function($, cookie, goodsCookie){
	goodsCookie.cart();
})
