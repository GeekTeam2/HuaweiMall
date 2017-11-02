define(["jquery"],function($){
	var myorder = function(){
		$("#sec-tab").find("ul").find("li").eq(1).on("mouseenter", function(){
			$("#sec-tab").find("ul").find("li").eq(1).attr("class", "current");
			$(".ec-tab-arrow").animate({width:'110',
				left:'136',
			},300);
		});
		$("#sec-tab").find("ul").find("li").eq(1).on("mouseleave", function(){
			$("#sec-tab").find("ul").find("li").eq(1).attr("class", "");
			$(".ec-tab-arrow").animate({width:'136',
				left:'0',
			},300);
		});
		$("#myorder-cate").find("ul").find("li:gt(0)").on("mouseenter", function(){
			$(this).attr("class", "current");
		});
		$("#myorder-cate").find("ul").find("li:gt(0)").on("mouseleave", function(){
			$(this).attr("class", "");
		});
		$("#bottomCheckAllBox").on("click", function(){
			if($('#bottomCheckAllBox').is(':checked')) {
			    $(".checkbox").attr("checked",true);
			}else{
				$(".checkbox").attr("checked",false);
			}
		});
		$("#bottomButton").on("mouseenter", function(){
			$("#bottomButton").css("background", "#ab0009");
		});
		$("#bottomButton").on("mouseleave", function(){
			$("#bottomButton").css("background", "#ca151e");
		});
		
	}
	return{
		myorder:myorder
	}
})