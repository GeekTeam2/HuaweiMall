define(function(){
	var func = function(node){

		var timer = null;
		var currentIndex = 0;
		var lastIndex = 0;

		interval();

		node.find(".slider").hover(function(){
			clearInterval(timer);
		},function(){
			interval();
		})

		node.find(".slider-nav").on("mouseover","span", function(){
			var $current = $(this).index();
			node.find(".slider-nav").find("span").removeClass("current").eq($current).addClass("current");
			if($current != currentIndex){
				currentIndex = $current;
				core();
			}

		})

		function core(){
			var $list = node.find(".slider").find(".banner-item");
			$list.css("z-index", 0).eq(currentIndex).css("z-index", 12);
			$list.eq(lastIndex).animate({opacity:0},500);
			$list.eq(currentIndex).animate({opacity:1},500);
			lastIndex = currentIndex;
		}

		function interval(){
			timer = setInterval(function(){
				currentIndex ++;
				if(currentIndex == 8){
					currentIndex = 0;
				}
				node.find(".slider-nav").find("span").removeClass("current").eq(currentIndex).addClass("current");
				core();
			},5000);
		}

	}

	return {
		start:func
	}
})



/*define(function(){
	var func = function(node){

		var timer = null;
		var currentIndex = 0;
		var lastIndex = 0;

		timer = setInterval(function(){
			currentIndex ++;
			if(currentIndex == 8){
				currentIndex = 0;
			}
			$(".slider-nav").find("span").removeClass("current").eq(currentIndex).addClass("current");
			core();
		},5000);

		$(".slider").hover(function(){
			clearInterval(timer);
		},function(){
			timer = setInterval(function(){
				currentIndex ++;
				if(currentIndex == 8){
					currentIndex = 0;
				}
				$(".slider-nav").find("span").removeClass("current").eq(currentIndex).addClass("current");
				core();
			},5000);
		})

		$(".slider-nav").on("mouseover","span", function(){
			var $current = $(this).index();
			$(".slider-nav").find("span").removeClass("current").eq($current).addClass("current");
			if($current != currentIndex){
				currentIndex = $current;
				core();
			}

		})

		function core(){
			var $list = $(".slider").find(".banner-item");
			$list.css("z-index", 0).eq(currentIndex).css("z-index", 12);
			$list.eq(lastIndex).animate({opacity:0},500);
			$list.eq(currentIndex).animate({opacity:1},500);
			lastIndex = currentIndex;
		}

		

	}

	return {
		func:func
	}
})*/