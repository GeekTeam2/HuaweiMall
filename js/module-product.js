define(function(){
	
	var showActivity = function(node1, node2){
		node1.parent().hover(function(){
			node2.css("display", "block");
		}, function(){
			node2.css("display", "none");
		})
	}
	
	var changeGallery = function(imgBig, imgUl){
		imgUl.find("li").hover(function(){
			var thisImg = $(this).find("img");
			$(this).attr("class", "gall_now");
			imgBig.find("img").attr("src", thisImg.attr("src"));
		}, function(){
			$(this).attr("class", "");
		})
	}
	
	var movePage = function(back, next, node, dis){
		var moveDis = 0;
		back.click(function(){
			if(node.css("left") == "0px"){
				node.css("left", "0");
			}else{
				moveDis += dis;
				node.css("left", moveDis);
			}
			return false;
		});
		next.click(function(){
			if(node.css("left") == "-" + dis + "px"){
				node.css("left") == "-" + dis + "px";
			}else{	
				moveDis -= dis;
				node.css("left", moveDis);
			}
			return false;
		});
	}
	
	var selectGoods = function(parentNode, node, className){
		$("#pro_sel_color").on("click", "li", function(){
			$(this).parent().find("li").attr("class", "");
			$(this).attr("class", "detail_selected");
			$("#sel_color").html($(this).find("span").html());
		});
		
		$("#pro_product").on("click", "li", function(){
			$(this).parent().find("li").attr("class", "");
			$(this).attr("class", "detail_selected");
			$("#sel_pro").html($(this).find("span").html());
		});
		
		$("#pro_capacity").on("click", "li", function(){
			$(this).parent().find("li").attr("class", "");
			$(this).attr("class", "detail_selected");
			$("#sel_capacity").html($(this).find("span").html());
		});
		
		$("#pro_combo").on("click", "li", function(){
			$(this).parent().find("li").attr("class", "");
			$(this).attr("class", "detail_selected");
			$("#sel_combo").html($(this).find("span").html());
		});
	}
	
	var safe = function(){
		var html = "";
		$("#safe_extend").on("click", "li", function(){
			$(this).parent().find("li").attr("class", "");
			$(this).attr("class", "service_select");
			var start1 = $(this).html().indexOf("¥", 0);
			html = $(this).html().substring(0, start1);
			$("#safemain").html(html);
		});
		
		$("#safe_broken").on("click", "li", function(){
			$(this).parent().find("li").attr("class", "");
			$(this).attr("class", "service_select");
			var start2 = $(this).html().indexOf("¥", 0);
			if(!html){
				html = $(this).html().substring(0, start2);
			}else{
				html += '<b>+</b>' + $(this).html().substring(0, start2);
			}
			$("#safemain").html(html);
		});
	}
	
	var cartCount = function(){
		var value = $("#pro_num").val();
		
		$("#pro_num_plus").click(function(){
			value++;
			$("#pro_num").val(value);
		})
		
		$("#pro_num_minus").click(function(){
			if(value == 1){
				value = 1;
			}else{
				value--;
				$("#pro_num").val(value);
			}
		})
	}
	
	var openAndClose = function(str, oBtn1, oBtn2, box, iTarget){
		oBtn1.click(function(){
			box.css("height", iTarget);
			oBtn1.css("display", "none");
			oBtn2.css("display", "block");
			if(str == "close"){
				oBtn2.parent().find(".cover_box").css("display", "block");
			}else if(str == "open"){
				oBtn1.parent().find(".cover_box").css("display", "none");
			}
		})
	}
	
	return{
		showActivity: showActivity,
		changeGallery: changeGallery,
		movePage: movePage,
		selectGoods: selectGoods,
		safe: safe,
		cartCount: cartCount,
		openAndClose: openAndClose
	}
})
