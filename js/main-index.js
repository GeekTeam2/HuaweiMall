require.config({
	paths:{
		"jquery":"jquery",
		"carousel":"module-carousel",
		"indexPart":"module-index-part",
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
	indexPart.scroll($(".recommend-goods"),1090,1199);
})
