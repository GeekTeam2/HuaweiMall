define(function(){
	var getProductInfo = function(){
		func("red", "全网通标配版");
		function func(color, sys){
			$.ajax({
				type:"POST",
				url:"../servlet/ProductXServlet?method=findProduct",
				data: {color: color, sys: sys},
				success: function(res){
					alert(res);
				}
			});
		}
	}
	
	return{
		getProductInfo: getProductInfo
	}
})