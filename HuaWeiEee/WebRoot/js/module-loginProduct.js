define(["jquery","cookie","goodsCookie"],function($,cookie, goodsCookie){
	
	
	var getProductInfo = function(version){
		
		// var type = $.cookie("version");
		// alert(type);
		init(version);
		function init(version){
			$.ajax({
				type:"POST",
				url:"../servlet/VersionServlet?method=findAll",
				data:{version: version},
				success: function(res){
					var data = JSON.parse(res)[0];
					var arrColor = data.color.split(",");
					var html1 = "";
					
					for(var i = 0; i<arrColor.length; i++){
						
						html1 += '<li id = "color' + i+ '"><div><span>' + arrColor[i] + '</span></div></li>';
					}
					$("#color_ul").html(html1);
					$("#color_ul").find("li").eq(0).attr("class", "detail_selected");
					
					var arrSys = data.sys.split(",");
					var html2 = "";
					
					for(var i = 0; i<arrSys.length; i++){
						
						html2 += '<li id = "sys' + i+ '"><div><span>' + arrSys[i] + '</span></div></li>';
					}
					$("#sys_ul").html(html2);
					$("#sys_ul").find("li").eq(0).attr("class", "detail_selected");
					
					
					itemInfo(version,"极光蓝","全网通标配版");
					itemImg(version,"极光蓝");
					
					$("#color_ul").on("click", "li", function(){
						var color = $(this).find("span").html();
						var sys = $("#sys_ul").find(".detail_selected").find("span").html();
						itemImg(version, color);
						itemInfo(version, color, sys);
					})
					
					$("#sys_ul").on("click", "li", function(){
						var sys = $(this).find("span").html();
						var color = $("#color_ul").find(".detail_selected").find("span").html();
						itemInfo(version, color, sys);
					})
					goodsCookie.cart();
				}
			});
		}
		
		function itemInfo(version,colour,sys){
			$.ajax({
				type: "POST",
				url: "../servlet/ProductXServlet?method=findProduct",
				data: {version:version, colour:colour, sys:sys},
				success: function(res){
					var data = JSON.parse(res)[0];
					$("#goods_title").html(data.headline);
					$("#product_title").html(data.headline);
					$("#pro_price").html(data.price);
				}
			})
		}
		
		function itemImg(version,colour){
			$.ajax({
				type: "POST",
				url: "../servlet/ProductXServlet?method=findImage",
				data: {version:version, colour:colour},
				success: function(res){
					var data = JSON.parse(res);
					var html = "";
					for(var i = 0; i < data.length; i++){
						html += '<li><img src="../' + data[i].image + '" /></li>'
					}
					
					$("#pro_gallerys").html(html);
					$("#pro_gallerys").find("li").eq(0).attr("class", "gall_now");
					
					var initImg = '../' + data[0].image;
					$(".product_img_box").find("img").attr("src", initImg);
					
					changeGallery($(".product_img_box"), $("#pro_gallerys"));
					
					$("#bigger_img").find("img").attr("src", initImg);
					glass();
					
				}
			})
		}
		
		function changeGallery(imgBig, imgUl){
			imgUl.find("li").hover(function(){
				var thisImg = $(this).find("img");
				$(this).parent().find("li").attr("class", "");
				$(this).attr("class", "gall_now");
				
				imgBig.find("img").attr("src", thisImg.attr("src"));
				
				var imgSrc = $(".product_img_box").find("img").attr("src");
				$("#bigger_img").find("img").attr("src", imgSrc);
			}, function(){
				$(this).attr("class", "");
			})
		}
		
		function glass(){
			
			$("#glass_img_box").mouseover(function(){
				$("#img_position").css("display", "block");
				$("#bigger_box").css("display", "block");
			})
			
			$("#glass_img_box").mouseout(function(){
				$("#img_position").css("display", "none");
				$("#bigger_box").css("display", "none");
			})
			
			$("#glass_img_box").mousemove(function(ev){
				var left = ev.pageX - $(this).offset().left - $("#img_position").outerWidth() / 2;
				if(left < 0){
					left = 0;
				}else if(left > $(".product_img_box").outerWidth() - $("#img_position").outerWidth()){
					left = $(".product_img_box").outerWidth() - $("#img_position").outerWidth();
				}
				$("#img_position").css("left", left);
				
				var top = ev.pageY - $(this).offset().top - $("#img_position").outerHeight() / 2;
				if(top < 0){
					top = 0;
				}else if(top > $(".product_img_box").outerHeight() - $("#img_position").outerHeight()){
					top = $(".product_img_box").outerHeight() - $("#img_position").outerHeight();
				}
				$("#img_position").css("top", top);
				
				//计算移动的比例：把X值和Y值换算成比例
				var proportionX = left / ($(".product_img_box").outerWidth() - $("#img_position").outerWidth());
				var proportionY = top / ($(".product_img_box").outerHeight() - $("#img_position").outerHeight());

				$("#bigger_img").css("left", -proportionX * ($("#bigger_img").outerWidth() - $("#bigger_box").outerWidth()));
				$("#bigger_img").css("top", -proportionY * ($("#bigger_img").outerHeight() - $("#bigger_box").outerHeight()));
			})
		}
	}
	

	return{
		getProductInfo: getProductInfo
	}

})