define(['jquery','cookie'], function($){
   
   var func = function(){
      if($.cookie("login-status")){
    	 var data = $.cookie("login-status");
         if(data != ""){
            $("#unlogin-status").css("display","none");
            $("#login-status").css("display","block");
            $("#user-login").html("你好，" + data);
         }else{
        	alert("请重新登录");
         }
         
      }else{
         console.log("请登录");
      }
      
      $("#btn-logout").on("click",function(){
    	  $("#unlogin-status").css("display","block");
          $("#login-status").css("display","none");
          $.cookie("login-status","");
            $.ajax({
          	  url:"",
          	  type:"POST",
          	  data:"logout",
          	  success:function(res){
          		  alert(1);
          	  }
            })
      })

   }   
   
   return {
      isLogin : func
   }
})