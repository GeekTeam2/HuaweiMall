define(function(){
	var func = function(node,num){

		var timer = null;
		var currentIndex = 0;
		var lastIndex = 0;

		interval(num);

		node.find(".slider").hover(function(){
			clearInterval(timer);
		},function(){
			clearInterval(timer)
			interval(num);
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
			$list.eq(lastIndex).stop().animate({opacity:0},500);
			$list.eq(currentIndex).stop().animate({opacity:1},500);
			lastIndex = currentIndex;
		}

		function interval(num){
			timer = setInterval(function(){
				currentIndex ++;
				if(currentIndex == num){
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


