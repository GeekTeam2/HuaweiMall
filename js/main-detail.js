require.config({
	paths:{
		"navtab":"module-navtab",
		"jquery":"jquery",
		"jquery.easing":"module-jquery-easing",
	}
})

require(["navtab","jquery.easing","jquery"],function(navtab, $){
	navtab.func();
})