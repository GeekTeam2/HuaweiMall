define(function(){
	var func = function(){
		//自适应宽度
		$(window).on("resize",function(){
			var $width = $(".header-frame").width();
			if($width >= 1200){
				$(".nav-sub").css("width",$width);
			}
		})
		
		//tabNav
		var timer = null;
		var isNone = true;
		$(".nav").find("a").on("mouseenter",function(){
			clearTimeout(timer);
			var $index = $(this).closest("li").index();
			$(".nav-sub").find(".nav-sub-wrap").css("display","none").eq($index).css("display","block");
			
			timer = setTimeout(function(){
				if(isNone){
					$(".nav-sub").stop(true,true).animate({height:"259px"},600,'easeOutExpo',function(){
						isNone = false;
					});
				}
			},200)	
		})

		$(".nav").find("a").on("mouseleave",function(){
			timer = setTimeout(function(){
				if(!isNone){
					$(".nav-sub").animate({height:"0"},300,'linear', function(){
						isNone = true;
					});	
				}	
			},200)					
		})

		$(".nav-sub-wrap").on("mouseover", function(){
			clearTimeout(timer);
			$(this).css("display","block");
		})

		$(".nav-sub").on("mouseleave", function(event){
			if($(event.relatedTarget).attr("class") == "nav"){
			}else{
				$(".nav-sub").animate({height:"0"},300,'linear',function(){
					isNone = true;
				});
			}
		})
	}
	return{
		func:func
	}
})