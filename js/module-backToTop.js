define(function(){
	var func = function(){
		
		judge();
		
		$(window).on('scroll',function(){
			judge();
		})

		$("#hungBar-top").on('click',function(){
			$('body,html').animate({scrollTop:0},500);
            return false;
		})

		function judge(){
			var $top = $(window).scrollTop();
			if($top > 1400){
				$("#hungBar-top").css("display","block");
			}else{
				$("#hungBar-top").css("display","none");
			}
		}
	}

	return{
		start:func
	}
})