define(function(){
   

   
   
   var func = function(){

      loadmain($("#mobile"),"../servlet/ProductServlet?method=mobileShowInfo");
      loadmain($("#laptop"),"../servlet/ProductServlet?method=computerShowInfo");
      loadmain($("#pad"),"../servlet/ProductServlet?method=padShowInfo");
      loadmain($("#watch"),"../servlet/ProductServlet?method=wearShowInfo");
      loadmain($("#smartHome").find(".part-content"),"../servlet/ProductServlet?method=homeShowInfo");
      loadpart($("#smartHome").find(".scroll-box"), "../servlet/ProductServlet?method=qualityDescShowInfo");

      loadmain($("#hotsellpart").find(".part-content"),"../servlet/ProductServlet?method=hotPartsShowInfo");
      loadpart($("#hotsellpart").find(".scroll-box"), "../servlet/ProductServlet?method=qualityShowInfo");

      loadmain($("#brandpart").find(".part-content"),"../servlet/ProductServlet?method=brandShowInfo");
      loadpart($("#brandpart").find(".scroll-box"), "../servlet/ProductServlet?method=qualityDescShowInfo");

      loadmain($(".hotsell"),"../servlet/ProductServlet?method=showInfo");
      loadpart($(".recommend"),"../servlet/ProductServlet?method=qualityShowInfo");
      
      function loadmain(node,url){
         $.ajax({
            type: "POST",
            data: {sort:"hotsell"},
            url: url,
            success: function (response) {
               var count = 0;
               var data = JSON.parse(response);
               node.find(".grid-items").each(function(index, element){
                  if(index >= 1){
                     $(this).find(".grid-img").find("img").attr("src", "../" + data[count].image);
                     $(this).find(".grid-title").html(data[count].name);
                     $(this).find(".grid-desc").html(data[count].desca);
                     $(this).find(".grid-price").html(data[count].price);
                     $(this).find(".grid-tips").find("i").addClass(data[count].tag);
                     count++;
                  }
               })

               node.find(".grid-items").eq(0).find("img").removeClass().attr("src", "../" + data[count + 1].image);
            }
         });
      }

      function loadpart(node,url){
         $.ajax({
            type: "POST",
            data: {sort:"hotsell"},
            url: url,
            success: function (response) {
               var count = 0;
               var data = JSON.parse(response);
               node.find(".grid-items").each(function(){
                  $(this).find(".grid-img").find("img").attr("src", "../" + data[count].image);
                  $(this).find(".grid-title").html(data[count].name);
                  $(this).find(".grid-desc").html(data[count].desca);
                  $(this).find(".grid-price").html(data[count].price);
                  $(this).find(".grid-tips").find("i").removeClass().addClass(data[count].tag);
                  count++;
               })
            }
         });
      }
      ///servlet/ProductServlet?method=mobileShowInfo  手机
      
   }

   return {
      load : func
   }
})