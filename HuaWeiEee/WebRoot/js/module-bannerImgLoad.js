define(function(){
	var func = function(node){
		alert(1);
		$.ajax({
			url:"../data/banner.json",
			type:"get",
			dataType:'json',
			success: function(results){
				var count = 0;
				alert(2);
				node.find('img').each(function(){
					alert(3);
					$(this).attr('src',results[count].src);
					count++;
				})
			}
		})
	}

	return{
		load:func
	}
})