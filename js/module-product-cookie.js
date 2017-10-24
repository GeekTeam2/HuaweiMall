define(function(){
	var cart = function(){
		$("#cart_btn").click(function(color, capacity){
			var goodsid = $(".product_right").find("h1").attr("id");
			var color = $("#pro_sel_color").find(".detail_selected").attr("id");
			var capacity = $("#pro_capacity").find(".detail_selected").attr("id");
			var sum = $("#pro_num").val();
			
			var id = `${goodsid}_${color}_${capacity}`;
			// 判断是否是第一次添加cookie
			var first = $.cookie("goods") == null ? true : false;
			
			if(first){
				// 如果是第一次添加
				$.cookie("goods", '[{id: "' + id + '", num: "' + sum + '"}]', {expires: 7});
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
					var obj = {id: id, num: sum};
					arr.push(obj);
					var cookieStr = JSON.stringify(arr);
					$.cookie("goods", cookieStr, {expires: 7});
				}
			}
			
			alert($.cookie("goods"));
			return false;
		})
	}
	
	var joinCart = function(){
		if(!$.cookie("goods")){
			$(".minicart-empty").css("display", "block");
			$(".minicart-content").css("display", "none");
		}else{
			$(".minicart-empty").css("display", "none");
			$(".minicart-content").css("display", "block");
			$(".minicart-content").html();
		}
	}
	/*
		<div class="minicart-content" id="cart-list">
			<div class = "cart_goods">
				<i><input type="checkbox" /></i>
				<a href="#">
					<img src="../img/index/78_78_1497185568013mp.jpg" />
				</a>
				<div class = "cart_goods_detail">
					<p class = "cart_title"><a href="#">荣耀8 4GB+64GB 全网通版</a></p>
					<p class = "cart_color">流光金</p>
					<p class = "cart_price">
						<span class = "cart_price_before">¥ 2099.00</span>
						<span class = "cart_price_now">¥ 1899.00</span>
						<span id = "cart_goods_count">x1</span>
					</p>
				</div>
			</div>
			<div class = "account">
				<div class = "sum_price">
					<p class = "sum_txt">总计：</p>
					<p class = "sum">
						<span id = "sum_now">￥1899.00</span>
						<span id = "sum_before">￥2099.00</span>
					</p>
				</div>
				<a id = "sum_count" href="#">结算</a>
			</div>
		</div>
	*/
	return{
		cart: cart,
		joinCart: joinCart
	}
})