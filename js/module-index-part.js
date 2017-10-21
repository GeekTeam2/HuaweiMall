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
		var num = 0;
		var noticetimer = null;
		
		noticetimer = setInterval(function(){
			num = num - 48;
			if(num <= -288){
				num = -48;
				$(".notice-list").css('margin-top', 0).animate({'margin-top': num + 'px'},500);
			}else{
				$(".notice-list").animate({'margin-top': num + 'px'},500);
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



	

	return {
		widthInit:widthInit,
		notice:notice,
		tabNav:tabNav,
		scroll:scroll,
		scrollSpecial:scrollSpecial
	}

})