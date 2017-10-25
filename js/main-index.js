require.config({
	paths:{
		"jquery":"jquery",
		"carousel":"module-carousel",
		"indexPart":"module-index-part",
		"backToTop":"module-backToTop",
		"imgLoad":"module-imgLoad",
		"cookie":"jquery.cookie",
		"infoLoad":"module-infoLoad",
		"status":"module-loginStatus"
	}
})

require(["jquery","carousel"],function($, carousel){
	carousel.start($(".hot-board"),8);
	carousel.start($(".hotsell-banner"),6);
})

require(["jquery","indexPart"],function($, indexPart){
	indexPart.widthInit();
	indexPart.notice();
	indexPart.tabNav();
	indexPart.scroll($(".recommend"),1090,1199);
	indexPart.scroll($("#smartHome"),1090,545);
	indexPart.scroll($("#hotsellpart"),1090,545);
	indexPart.scrollSpecial($("#brandpart"));
	indexPart.eventFloat();
})

require(["jquery","backToTop"],function($, backToTop){
	backToTop.start();
})

require(['jquery','imgLoad'],function($, imgLoad){
	var node = $(".hot-board").find(".slider");
	imgLoad.load(node);
})

require(['jquery','infoLoad'],function($, infoLoad){
	infoLoad.load();
})

require(['jquery','cookie','status'],function($,$, status){
	status.isLogin();
})