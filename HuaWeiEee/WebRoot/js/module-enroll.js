define(function(){
	
	function enroll(){
		//切换手机邮箱
		$(".reg-tab").find(".l").click(function(ev){
			$(".reg-tab").find(".l").removeClass("sel");
			$(this).addClass("sel");
			return false;
		})
		//邮箱验证
		$("#email").blur(function(){
			emailVerify();
		})
		function emailVerify() {
			var value = $("#email").val().replace(/ /g, "");
			$("#email").val(value);
			value = $("#email").val();
			var regEmail = /[a-zA-Z0-9]{1,10}@[a-zA-Z0-9]{1,5}\.[a-zA-Z0-9]{1,5}$/;
			if(value == ""||regEmail.test(value)){
				$("#errormsgemail-box").removeClass("input-error-EMUI5");
				$("#msg_email").removeClass("error-tips-EMUI5");
				$("#msg_email").html("");
			}else if(!regEmail.test(value)){
				var html = '对不起，您输入的电子邮箱错误';
				$("#errormsgemail-box").addClass("input-error-EMUI5");
				$("#msg_email").addClass("error-tips-EMUI5");
				$("#msg_email").html(html);
			}
		}
		
		//图形验证 验证码动态变化
		$("#randomCodeImg").click(function(ev){
			createCode();
			return false;
		})
		var code;
		function createCode() {
		    code = "";
		    var codeLength = 4; //验证码的长度
		    var checkCode = $("#randomCodeImg");
		    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
		        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
		        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
		    for (var i = 0; i < codeLength; i++) {
		        var charNum = Math.floor(Math.random() * 52);
		        code += codeChars[charNum];
		    }
		    if (checkCode) {
		        checkCode.html(code);
		    }
		}
		createCode();
		//图形验证
		$("#randomCode").keyup(function(){
			randomCodeVerify();
		})
		function randomCodeVerify(){
			var value = $("#randomCode").val().replace(/ /g, "");
			$("#randomCode").val(value);
			value = $("#randomCode").val();
			if(value == ""|| value.length <= 4 && value.toUpperCase() == code.toUpperCase()){
				$("#randomCodeDiv").removeClass("input-error-EMUI5");
				$("#randomCode_msg").removeClass("error-tips-EMUI5");
				$("#randomCode_msg").html("");
			}else if(value.length == 4 && value.toUpperCase() != code.toUpperCase()){
				var html = '验证码错误';
				$("#randomCodeDiv").addClass("input-error-EMUI5");
				$("#randomCode_msg").addClass("error-tips-EMUI5");
				$("#randomCode_msg").html(html);
				createCode();
			}
		}
		
		
		
		//获取验证码
		$("#getValiCode").click(function(){
			settime($(this));
		})
		var countdown = 60;
		function settime(obj) {
		    if (countdown == 0) {
		        obj.removeAttr("disabled");
		        obj.removeClass("dbtn");
		        obj.val("重新获取");
		        countdown = 60;
		        return;
		    } else {
		        obj.attr("disabled", true); 
		         obj.addClass("dbtn");
		        obj.val("重新发送(" + countdown + ")");
		        countdown--;
		    }
		    setTimeout(function() {
		        settime(obj);
		    }, 1000)
		};
		//邮件验证码验证
		$("#emailCode").blur(function(){
			emailCodeVerify();
		})
		function emailCodeVerify(){
			var value = $("#emailCode").val().replace(/ /g, "");
			$("#emailCode").val(value);
			value = $("#emailCode").val();
			//alert(value);
			if(value == ""){
				$("#errRandomCode-box").removeClass("input-error-EMUI5");
				$("#emailCode_mag").removeClass("error-tips-EMUI5");
				$("#emailCode_mag").html("");
			}else if(value.length < 6 || value.length > 6 || /\D/g.test(value)){
				var html = '验证码错误';
				$("#errRandomCode-box").addClass("input-error-EMUI5");
				$("#emailCode_mag").addClass("error-tips-EMUI5");
				$("#emailCode_mag").html(html);
			}else{
				$("#errRandomCode-box").removeClass("input-error-EMUI5");
				$("#emailCode_mag").removeClass("error-tips-EMUI5");
				$("#emailCode_mag").html("");
			}
		}
		//密码验证
		$("#password").blur(function(){
			passwordVerify();
		})
		$("#password").keyup(function(){
			passwordVerifyb();
		})
		function passwordVerify(){
			var value = $("#password").val().replace(/ /g, "");
			$("#password").val(value);
			value = $("#password").val();
			//密码规则验证
			var resPass = /^(?![\d]+$)(?![a-zA-Z]+$)(?![^\da-zA-Z]+$).{6,20}$/;
			if(value == ""){
				$("#pwdDiv").removeClass("input-error-EMUI5");
				$("#password_mag").removeClass("error-tips-EMUI5");
				$("#line8-EMUI5").removeClass("pwd-stro");
				$("#password_mag").html("");
				$("#pwdComplexFlag").html("");
			}else if(value.length > 32 || value.length < 8){
				var html = '密码长度需为8-32位';
				$("#pwdDiv").addClass("input-error-EMUI5");
				$("#password_mag").addClass("error-tips-EMUI5");
				$("#line8-EMUI5").removeClass("pwd-stro");
				$("#password_mag").html(html);
				$("#pwdComplexFlag").html("");
			}else if(!resPass.test(value)){
				var html = '密码至少包含数字、字母、字符其中的2种';
				$("#pwdDiv").addClass("input-error-EMUI5");
				$("#password_mag").addClass("error-tips-EMUI5");
				$("#line8-EMUI5").removeClass("pwd-stro");
				$("#password_mag").html(html);
				$("#pwdComplexFlag").html("");
			}else{
				$("#pwdDiv").removeClass("input-error-EMUI5");
				$("#password_mag").removeClass("error-tips-EMUI5");
				$("#password_mag").html("");
				$("#pwdComplexFlag").html("强");
				$("#line8-EMUI5").addClass("pwd-stro");
			}
		}
		
		function passwordVerifyb(){
			var value = $("#password").val().replace(/ /g, "");
			$("#password").val(value);
			value = $("#password").val();
			//密码规则验证
			var resPass = /^(?![\d]+$)(?![a-zA-Z]+$)(?![^\da-zA-Z]+$).{6,20}$/;
			if(value == ""){
				$("#line8-EMUI5").removeClass("pwd-stro");
				$("#pwdComplexFlag").html("");
			}else if(value.length > 32 || value.length < 8){
				$("#line8-EMUI5").removeClass("pwd-stro");
				$("#pwdComplexFlag").html("");
			}else if(!resPass.test(value)){
				$("#line8-EMUI5").removeClass("pwd-stro");
				$("#pwdComplexFlag").html("");
			}else{
				$("#pwdDiv").removeClass("input-error-EMUI5");
				$("#password_mag").removeClass("error-tips-EMUI5");
				$("#password_mag").html("");
				$("#pwdComplexFlag").html("强");
				$("#line8-EMUI5").addClass("pwd-stro");
			}
		}
		//确认密码验证
		$("#confirmPwd").blur(function(){
			confirmPwdVerify();
		})
		function confirmPwdVerify(){
			var valuea = $("#confirmPwd").val().replace(/ /g, "");
			$("#confirmPwd").val(valuea);
			valuea = $("#confirmPwd").val();
			var valueb = $("#password").val();
			if(valuea == "" || valuea == valueb){
				$("#confirmpwdDiv").removeClass("input-error-EMUI5");
				$("#confirmPwd_msg").removeClass("error-tips-EMUI5");
				$("#confirmPwd_msg").html("");
			}else if(valuea != valueb){
				var html = '密码与确认密码不一致';
				$("#confirmpwdDiv").addClass("input-error-EMUI5");
				$("#confirmPwd_msg").addClass("error-tips-EMUI5");
				$("#confirmPwd_msg").html(html);
			}
		}
		//注册验证
		$("#btnSubmit").click(function(ev){
			if($("#email").val() == ""){
				var html = '电子邮箱为空，请正确填写';
				$("#errormsgemail-box").addClass("input-error-EMUI5");
				$("#msg_email").addClass("error-tips-EMUI5");
				$("#msg_email").html(html);
			}else if($("#randomCode").val() == ""){
				var html = '请输入图形验证码';
				$("#randomCodeDiv").addClass("input-error-EMUI5");
				$("#randomCode_msg").addClass("error-tips-EMUI5");
				$("#randomCode_msg").html(html);
			}else if($("#emailCode").val() == ""){
				var html = '请输入邮件验证码';
				$("#errRandomCode-box").addClass("input-error-EMUI5");
				$("#emailCode_mag").addClass("error-tips-EMUI5");
				$("#emailCode_mag").html(html);
			}else if($("#password").val() == ""){
				var html = '请输入密码';
				$("#pwdDiv").addClass("input-error-EMUI5");
				$("#password_mag").addClass("error-tips-EMUI5");
				$("#password_mag").html(html);
			}else if($("#confirmPwd").val() == ""){
				var html = '请输入密码';
				$("#confirmpwdDiv").addClass("input-error-EMUI5");
				$("#confirmPwd_msg").addClass("error-tips-EMUI5");
				$("#confirmPwd_msg").html(html);
			}else{
				emailVerify();
				randomCodeVerify();
				emailCodeVerify();
				passwordVerify();
				confirmPwdVerify();
				//验证成功，提交数据
				var username = $("#username").val();
				var email = $("#email").val();
				var password = $("#password").val();
				$.ajax({
					url:"../servlet/RegistServlet1?method=regist",
					type:"POST",
					data:{"username":username, "email" :email , "password" : password },
					success:function(results){
						var resData = JSON.parse(results);
						if(resData.code == 0){
							localtion.reload();
						}else if(resData.code == 1){
							alert('注册成功');
							location.href = '../html/login.html';
						}
					}
				})
			}
			return false;
		})
	}
	return {enroll:enroll}
})


