require.config({
	paths:{
		"myorder": "module-myorder",
		"jquery":"jquery",
	}
})
require(["jquery","myorder"],function($,myorder){

	myorder.myorder();
})