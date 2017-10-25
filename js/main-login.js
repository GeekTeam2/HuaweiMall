require.config({
	paths:{
		"login": "module-login",
		"jquery":"jquery",
		"cookie":"jquery.cookie"
	}
})
require(["jquery","cookie","login"],function($, $, login){

	login.login();
})