define(function(){
   var func = function(){
      $.ajax({
         type: "POST",
         url: "url",
         data: "sort",
         success: function (response) {
            alert(response);
         }
      });
   }

   return {
      load : func
   }
})