define(function(){
	function shopCart(){
		/*显示全部商品的价钱数总和*/
		var checkNum = function(){
			var checkNum = $(".sc-pro-list").find(".icon-choose").length;
			var addMoney = 0;
			for(var i = 0; i < checkNum; i++){
				 var money = parseInt($(".icon-choose").parents(".sc-pro-list").eq(i).find(".p-price-total").find("span").html());
				 addMoney += money;
			}
			var html = '¥&nbsp;'+ addMoney +'.00';
			$("#sc-cartInfo-totalOriginalPrice").html(html);
			$("#totalNumber").html(checkNum);
		}
		checkNum();
		/*按钮事件*/
		var isYes = true;
		var check = function(){
			if(isYes){
				$("#checkAll-top").removeClass("icon-choose");
				$("#checkAll-buttom").removeClass("icon-choose");
				$(".sc-pro-list").find('.icon-choose-normal').removeClass("icon-choose");
				var addMoney = 0;
				var html = '¥&nbsp;'+ addMoney +'.00';
				$("#sc-cartInfo-totalOriginalPrice").html(html);
				$("#totalNumber").html(0);
				isYes = false;
			}else{
				$("#checkAll-top").addClass("icon-choose");
				$("#checkAll-buttom").addClass("icon-choose");
				$(".sc-pro-list").find('.icon-choose-normal').addClass("icon-choose");
				/*显示全部商品的价钱数总和*/
				checkNum();
				isYes = true;
			}
		}
		//顶部 全选中按钮事件
		$("#checkAll-top").click(function(){
			check();
		})
		//底部 全选中按钮事件
		$("#checkAll-buttom").click(function(){
			check();
		})
		//单个按钮点击事件
		$(".sc-pro-list").delegate(".icon-choose-normal",'click',function(){
			/*点击单个商品的时候判断是否将全部选中*/
			function checkall(){
				/*获取选中和未转中按钮的个数*/
				var checkNum = $("#cart-list").find(".icon-choose").length;
				var uncheckNum = $("#cart-list").find(".icon-choose-normal").length;
				if(checkNum == uncheckNum){
					$("#checkAll-top").addClass("icon-choose");
					$("#checkAll-buttom").addClass("icon-choose");
				}else{
					$("#checkAll-top").removeClass("icon-choose");
					$("#checkAll-buttom").removeClass("icon-choose");
				}
				
			}
			if(isYes){
				$(this).removeClass("icon-choose");
				
				checkNum();
				checkall();
				isYes = false;
			}else{
				$(this).addClass("icon-choose");
				checkall();
				checkNum();
				
				isYes = true;
			}
			
		})
		/*商品数量为1时，减号 不可用*/
		//当前商品的数量
		var num = parseInt($(".sc-pro-list").find(".p-stock-text").val());
		
		function status(){
			if(num == 1){
				$("#pro-quantity-minus").addClass("disabled");
			}else{
				$("#pro-quantity-minus").removeClass("disabled");
			}
		}
		status();
		
		/*商品数量  + 操作*/
		$(".sc-pro-list").delegate("#pro-quantity-plus",'click',function(){
			$("#order-pro-2").find("#pro-quantity-minus").removeClass("disabled");
			var index = $(this).parents(".sc-pro-list").index();
			var money = parseInt($(this).parents(".sc-pro-list").find(".p-price").find("span").html());
			num++;
			money = num * money;
			status();
			$(".sc-pro-list").eq(index).find(".p-stock-text").val(num);
			$(".sc-pro-list").eq(index).find(".p-price-total").find("span").html(money);
			checkNum();
		})
		
		/*商品数量   - 操作*/
		$(".sc-pro-list").delegate("#pro-quantity-minus",'click',function(){
			var index = $(this).parents(".sc-pro-list").index();
			var money = parseInt($(this).parents(".sc-pro-list").find(".p-price").find("span").html());
			num--;
			if(num <= 0){
				num = 1;
				$("#order-pro-2").find("#pro-quantity-minus").addClass("disabled");
				money = money;
			}else{
				money = num * money;
			}
			status();
			$(".sc-pro-list").eq(index).find(".p-stock-text").val(num);
			$(".sc-pro-list").eq(index).find(".p-price-total").find("span").html(money);
			checkNum();
		})
		
		/*商品删除 操作*/
		$(".sc-pro-list").delegate(".p-del","click",function(){
			var sure = confirm("确定要删除该商品？")
			if(sure == true){
				//$(this).parents(".sc-pro-list").css("display","none");
				$(this).parents(".sc-pro-list").remove();
			}
			
		})
		
		/*删除当前选中的全部商品*/
		$(".sc-total-control").delegate("a","click",function(){
			var sure = confirm("确定要删除该商品？")
			if(sure == true){
				//$(".sc-pro-list").css("display","none");
				$(".sc-pro-list").remove();
			}
		})
		/*点击结算 判断是否有选中商品*/
		$(".sc-total-btn").delegate("a","click",function(){
			var checkNum = $(".sc-pro-list").find(".icon-choose").length;
			if(checkNum >= 1){
				location.href="payment.html";
			}else{
				alert("请先选择商品！");
			}
		})
	}
	return {shopCart:shopCart}
})