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
			alert("1");
			$("#name-error-tr").css("display", "block");
		}
		$("#btnLogin").on("click", function(){
			alert("1");
			var username = $("#name-error").val();
			var password = $("#password").val();
			alert(username);
			alert(password);
			$.ajax({				
				url:"http://10.30.151.90/HuaWei/servlet/UserServlet?method=login",
				type:"GET",
				data:{
					"username":username,
					"password":password
				},
				success:function(results){
					if(results == 0){
						alert("失败。");
					}else if(results == 1){
						alert("成功。");
					}							
				},
				error:function(){
					alert("GG");
				}
			})
		 })
		
	}
	return{
		login:login
	}
})