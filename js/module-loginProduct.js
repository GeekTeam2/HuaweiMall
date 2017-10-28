define(function(){
	var getProductInfo = function(){
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