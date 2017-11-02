define(function(){

	var widthInit = function(){

		$(".btn-close").on("click",function(){
			$(".top-frame").remove();
		})

		resizeImg();

		$(window).on("resize",function(){
			resizeImg();
		})

		function resizeImg(){
			var $width = $("#index-slider").width();
			if($("#index-slider").width() >= 1200){
				var $left = - (1903 - $("#index-slider").width()) / 2;
				$("#index-slider").find("img").css("left",$left + "px");
			}
		}
	}

	var notice = function(){
		clearInterval(noticetimer);

		var num = 0;
		var noticetimer = null;

		noticetimer = setInterval(function(){
			num = num - 48;
			if(num <= -288){
				num = -48;
				$(".notice-list").css('margin-top', 0).stop().animate({'margin-top': num + 'px'},500);
			}else{
				$(".notice-list").stop().animate({'margin-top': num + 'px'},500);
			}
			
		},2000);
	}

	var tabNav = function(){

		$(".category-item").hover(function(){
			$(this).find(".category-panels").css("display","block");
		},function(){
			$(this).find(".category-panels").css("display","none");
		})
	}

	var scroll = function(node,num1,num2){

		var count = 0;
		var $marginLeft = 0

		node.find(".btn-next").on('click',function(){	
			if(count == 0){
				count++;
				isAble();
				$marginLeft -= num1;
				node.find(".scroll-list").animate({'margin-left': $marginLeft + 'px'},500);
			}else if(count == 1){
				count++;
				isAble();
				$marginLeft -= num2;
				node.find(".scroll-list").animate({'margin-left': $marginLeft + 'px'},500);
			}
			else{
				count = 2;
			}	
		})

		node.find(".btn-prev").on('click',function(){
			if(count == 2){
				count--;
				isAble();
				$marginLeft += num2;
				node.find(".scroll-list").animate({'margin-left': $marginLeft + 'px'},500);
			}else if(count == 1){
				count--;
				isAble();
				$marginLeft += num1;
				node.find(".scroll-list").animate({'margin-left': $marginLeft + 'px'},500);
			}
			else{
				count = 0;
			}	
		})

		function isAble(){
			if(count == 0){
				node.find(".btn-prev").removeClass("able").addClass("disabled");
			}else if(count == 1){
				node.find(".grid-btn").removeClass("disabled").addClass("able");
			}else if(count == 2){
				node.find(".btn-next").removeClass("able").addClass("disabled");
			}
		}
	}

	var scrollSpecial = function(node){

		var countSpecial = 0;
		var $marginLeft = 0

		node.find(".btn-next").on('click',function(){	
			if(countSpecial == 0){
				countSpecial++;
				node.find(".btn-prev").addClass("able").removeClass('disabled');
				$(this).removeClass('able').addClass("disabled");
				$marginLeft -= 981;
				node.find(".scroll-list").animate({'margin-left': $marginLeft + 'px'},500);
			}else{
				countSpecial = 1;
			}	
		})

		node.find(".btn-prev").on('click',function(){
			if(countSpecial == 1){
				countSpecial--;
				node.find(".btn-next").addClass("able").removeClass('disabled');
				$(this).removeClass('able').addClass("disabled");
				$marginLeft += 981;
				node.find(".scroll-list").animate({'margin-left': $marginLeft + 'px'},500);
			}else{
				countSpecial = 0;
			}	
		})
	}

	var eventFloat = function(){
		
		$(window).on("scroll", function(){
			var $top = $(window).scrollTop();
			var $barlists = $('.event-float').find("b");

			if($top > 1400 && $top < 7600){
				$(".event-float").fadeIn(300);
				if($top > 1600 && $top < 2400){
					$barlists.css('width',0).eq(0).css('width',"100%");
				}else if($top > 2400 && $top <= 3000){
					$barlists.css('width',0).eq(1).css('width',"100%");
				}else if($top > 3000 && $top <= 3600){
					$barlists.css('width',0).eq(2).css('width',"100%");
				}else if($top > 3600 && $top <= 4600){
					$barlists.css('width',0).eq(3).css('width',"100%");
				}else if($top > 4600 && $top <= 5600){
					$barlists.css('width',0).eq(4).css('width',"100%");
				}else if($top > 5600 && $top <= 6400){
					$barlists.css('width',0).eq(5).css('width',"100%");
				}else if($top > 6400 && $top <= 7400){
					$barlists.css('width',0).eq(6).css('width',"100%");
				}else{
					$barlists.css('width',0);
				}
			}else{
				$(".event-float").fadeOut(300);
			}

		})
	}

	return {
		widthInit:widthInit,
		notice:notice,
		tabNav:tabNav,
		scroll:scroll,
		scrollSpecial:scrollSpecial,
		eventFloat:eventFloat
	}

})