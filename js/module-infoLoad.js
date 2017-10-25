define(function(){
   var func = function(){
      $.ajax({
         type: "POST",
         data: {sort:"热销商品"},
         url: "../servlet/ProductServlet?method=showInfo",
         success: function (response) {
            alert(response);
         }
      });
   }

   return {
      load : func
   }
})