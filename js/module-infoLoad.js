define(function(){
   

   
   
   var func = function(){
      

      loadmain($("#mobile"),"servlet/ProductServlet?method=mobileShowInfo");

      function loadmain(node,url){
         $.ajax({
            type: "POST",
            data: {sort:hotsell},
            url: url,
            success: function (node,response) {
               var count = 0;
               var data = JSON.parse(response);
               node.find(".grid-items").each(function(index, element){
                  if(index >= 1){
                     $(this).find(".grid-img").find("img").attr("src", data[count].image);
                     $(this).find(".grid-title").html(data[count].name);
                     $(this).find(".grid-desc").html(data[count].desca);
                     $(this).find(".grid-price").html(data[count].price);
                     $(this).find(".grid-tips").find("i").addClass(data[count].tag);
                     count++;
                  }
               })

               node.find(".grid-items").eq(0).find("img").attr("src",data[count + 1].image);
            }
         });
      }
      ///servlet/ProductServlet?method=mobileShowInfo  手机
      
   }

   return {
      load : func
   }
})