define(["jquery","cookie"],function($){
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
			alert("1");
			$("#name-error-tr").css("display", "block");
		}
		$("#btnLogin").on("click", function(){
			alert("1");
			var username = $("#name-error").val();
			var password = $("#password").val();
			$.ajax({				
				url:"../servlet/UserServlet?method=login ",
				type:"POST",
				data:{"username" : username, "password" : password},
					
				success:function(results){
					if(results.code == 0){
						alert("请输入正确的用户名或密码");
					}else if(results.code == 1){
						$.cookie("login-status","name:" + results.name + "email:" + results.email);
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