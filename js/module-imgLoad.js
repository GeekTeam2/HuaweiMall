define(function(){
	var func = function(node){
		$.ajax({
			url:"../data/banner.json",
			type:"get",
			dataType:'json',
			success: function(results){
				var count = 0;
				node.find('img').each(function(){
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