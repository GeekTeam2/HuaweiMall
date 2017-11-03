define(['jquery','cookie'], function($){
   
   var func = function(){
      if($.cookie("login-status")){
         var data =  JSON.parse($.cookie("login-status"));
         if(data.name != " "){
            $("#unlogin-status").css("display","none");
            $("#login-status").css("display","block");
            $("#user-login").html("你好，" + data.name +"&nbsp;&nbsp;");
         }
      }else{
         alert(1);
      }
      

   }   
   
   return {
      isLogin : func
   }
})