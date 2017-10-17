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
	}
	return{
		login:login
	}
})