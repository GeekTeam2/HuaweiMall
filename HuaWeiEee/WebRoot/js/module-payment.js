define(function(){
	function payment(){
		/*点击切换支付方式*/
		$("#payTab").delegate("li","click",function(ev){
			$("#payTab").find("li").removeClass("active");
			$(".tab-content").find("ul").removeClass("active").removeClass("in");
			$(this).addClass("active");
			$(".tab-content").find("ul").eq($(this).index()).addClass("active").addClass("in");
			return false;
		})
		/*点击选择付款软件或银行*/
		$(".tab-content").delegate("li","click",function(ev){
			$(".tab-content").find("li").removeClass("select");
			$(this).addClass("select");
			return false;
		})
		//jquery倒计时按钮常用于验证码倒计
		buttonCountdown($(".dateDiff"), 1000*60*60*24, "h:m:s");
	    function buttonCountdown($el, msNum, timeFormat) {
	        var text = $el.data("text") || $el.text(),
	            timer = 0;
	        $el.prop("disabled", true).addClass("disabled")
	            .on("bc.clear", function () {
	                clearTime();
	            });
	
	        (function countdown() {
	            var time = showTime(msNum)[timeFormat];
	            $el.text(time);
	            if (msNum <= 0) {
	                msNum = 0;
	                clearTime();
	            } else {
	                msNum -= 1000;
	                timer = setTimeout(arguments.callee, 1000);
	            }
	        })();
	
	        function clearTime() {
	            clearTimeout(timer);
	            $el.prop("disabled", false).removeClass("disabled").text(text);
	        }
	
	        function showTime(ms) {
	            var d = Math.floor(ms / 1000 / 60 / 60 / 24),
	                h = Math.floor(ms / 1000 / 60 / 60 % 24),
	                m = Math.floor(ms / 1000 / 60 % 60),
	                s = Math.floor(ms / 1000 % 60),
	                ss = Math.floor(ms / 1000);
	
	            return {
	                d: d + "天",
	                h: h + "小时",
	                m: m + "分",
	                ss: ss + "秒",
	                "d:h:m:s": d + "天" + h + "小时" + m + "分" + s + "秒",
	                "h:m:s": h + "小时" + m + "分" + s + "秒",
	                "m:s": m + "分" + s + "秒"
	            };
	        }
	        $(".confirmPay").click(function(){
	        	var sure = confirm("确认支付？")
				if(sure == true){
					alert("支付成功!");
					location.href="myorder.html";
				}
	        })
	
	        return this;
	    }
	}
	return {payment:payment}
})