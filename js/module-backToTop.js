define(function(){
	var func = function(){

		$(window).on('scroll',function(){
			var $top = $(window).scrollTop();
			if($top > 1400){
				$("#hungBar-top").css("display","block");
			}else{
				$("#hungBar-top").css("display","none");
			}
		})
		$("#hungBar-top").on('click',function(){
			$('body,html').animate({scrollTop:0},500);
            return false;
		})
	}

	return{
		start:func
	}
})