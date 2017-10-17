require.config({
	paths:{
		"login": "module-login",
		"jquery":"jquery",
	}
})
require(["jquery","login"],function($,login){

	login.login();
})