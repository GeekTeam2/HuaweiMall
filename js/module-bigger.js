define(function(){
	var glass = function(){
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
		/*
		<div class = "product_img_box">
			<div id = "glass_img_box"></div>
			<img src="../img/detail/img_big_1.jpg" />
			<div id = "img_position"></div>
		</div>
		<div id = "bigger_box">
			<div id = "bigger_img">
				<img src="../img/detail/img_big_1.jpg" />
			</div>
		</div>
		*/
	return{
		glass: glass
	}
})