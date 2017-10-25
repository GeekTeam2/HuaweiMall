define(['jquery','cookie'], function($){
   
   var func = function(){
      if($.cookie("login-status")){
         alert("已登录");
      }
   }   
   
   return {
      isLogin : func
   }
})