define(["jquery"],function($){

	var login = function(){
		$("#loginTitle1").on("click", function(){
			$("#loginTitle").attr("class", "");
			$("#loginTitle1").attr("class", "active");
		});
		$("#loginTitle").on("click", function(){
			$("#loginTitle").attr("class", "active");
			$("#loginTitle1").attr("class", "");
		})
		$("#btnLogin").on("click", function(){
			var a = $("#name-error").val();
			if(a.length == "0"){
				$("#name-error-tr").css("display", "block");
			}
		})
		var b = $("#name-error").val();
		if(b.length != "0"){
			$("#name-error-tr").css("display", "block");
		}
		$("#btnLogin").on("click", function(){
			var email = $("#name-error").val();
			var password = $("#password").val();
			$.ajax({				
				url:"../servlet/UserServlet?method=login ",
				type:"POST",
				data:{"email" : email, "password" : password},
					
				success:function(results){

					var resData = JSON.parse(results);

					if(resData.code == 0){
						alert("请输入正确的用户名或密码");
					}else if(resData.code == 1){
						$.cookie("login-status","{username:" + resData.content.username + "}");
						location.href = "../html/index.html";
					}							
				},
				error:function(){
					alert("服务器似乎发生了一些问题");
				}
			})
		 })
		
	}
	return{
		login:login
	}
})