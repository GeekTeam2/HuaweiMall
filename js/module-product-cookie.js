define(function(){
	var cart = function(){
		
		joinCart();
<<<<<<< HEAD:HuaWeiEee/WebRoot/js/module-product-cookie.js

=======
		
>>>>>>> parent of 7dcca48... final:js/module-product-cookie.js
		$("#cart_btn").click(function(color, capacity){
			var goodsid = $(".product_right").find("h1").attr("id");
			var color = $("#pro_sel_color").find(".detail_selected").attr("id");
			var capacity = $("#pro_capacity").find(".detail_selected").attr("id");
			var sum = $("#pro_num").val();
			var src = $("#pro_gallerys").find("li").eq(0).find("img").attr("src");
			var price = $("#pro_price").html();

			var id = `${goodsid}_${color}_${capacity}`; 
			// 判断是否是第一次添加cookie
			var first = $.cookie("goods") == null ? true : false;
			
			if(first){
				// 如果是第一次添加
				$.cookie("goods", '[{id: "' + id + '", num: "' + sum + '",src: "' + src + '",price:"' + price + '"}]', {expires: 7});
			}else{
				// 如果不是第一次添加
				var str = $.cookie("goods");
				var arr = eval(str);
				var same = false;	//代表是否有相同的商品
				
				for(var i in arr){
					// 遍历是否有相同id
					if(arr[i].id == id){
						sum = parseInt(sum);
						arr[i].num = parseInt(arr[i].num) + sum;
						var cookieStr = JSON.stringify(arr);
						$.cookie("goods", cookieStr, {expires: 7});
						
						same = true;
						break;
					}
				}
				if(!same){
					//说明新增的商品之前未添加过
					var obj = {id: id, num: sum, src: src, price: price};
					arr.push(obj);
					var cookieStr = JSON.stringify(arr);
					$.cookie("goods", cookieStr, {expires: 7});
				}
			}
			joinCart();
//			alert($.cookie("goods"));
			return false;
		})
	}
	
	function joinCart(){

		if(!$.cookie("goods")){
			alert(1);
			$(".minicart-empty").css("display", "block");
			$(".minicart-content").css("display", "none");
		}else{
			alert(0);
			$(".minicart-empty").css("display", "none");
			$(".minicart-content").css("display", "block");
			
			var cart_arr = eval($.cookie("goods"));
			var goodshtml = '';
			var num = 0;
			var totalPrice = 0;
			for(var i = 0; i < cart_arr.length; i++){
<<<<<<< HEAD:HuaWeiEee/WebRoot/js/module-product-cookie.js
				var idArr = cart_arr[i].id.split("_");
				goodshtml += '<div class = "cart_goods"><i><input type="checkbox" /></i><a href="#"><img src="' + cart_arr[i].src + '" /></a><div class = "cart_goods_detail"><p class = "cart_title"><a href="#">' + idArr[0] + '</a></p><p class = "cart_color">' + idArr[1] + '</p><p class = "cart_price"><span class = "cart_price_before">' + idArr[2] + '</span><span class = "cart_price_now">' + cart_arr[i].price + '</span><span id = "cart_goods_count">x' + cart_arr[i].num + '</span></p></div></div>';
=======
				goodshtml += '<div class = "cart_goods"><i><input type="checkbox" /></i><a href="#"><img src="../img/index/78_78_1497185568013mp.jpg" /></a><div class = "cart_goods_detail"><p class = "cart_title"><a href="#">荣耀8 4GB+64GB 全网通版</a></p><p class = "cart_color">流光金</p><p class = "cart_price"><span class = "cart_price_before">¥ 2099.00</span><span class = "cart_price_now">¥ 1899.00</span><span id = "cart_goods_count">x' + cart_arr[i].num + '</span></p></div></div>';
>>>>>>> parent of 7dcca48... final:js/module-product-cookie.js
				num += parseInt(cart_arr[i].num);
				totalPrice = totalPrice + parseInt(cart_arr[i].price.substring(1)) * cart_arr[i].num;

			}
			$("#minicart-head-total").html(num);
			$(".cart_box").html(goodshtml);
			
<<<<<<< HEAD:HuaWeiEee/WebRoot/js/module-product-cookie.js
			
			$("#sum_now").html('¥ ' + totalPrice + '.00');
			$("#sum_before").html('¥ ' + totalPrice + '.00');
=======
			$("#sum_now").html('¥ ' + 1899 * num + '.00');
			$("#sum_before").html('¥ ' + 2099 * num + '.00');
>>>>>>> parent of 7dcca48... final:js/module-product-cookie.js
		}
	}
	return{
		cart: cart
	}
})