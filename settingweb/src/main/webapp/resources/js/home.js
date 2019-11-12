
$(document).ready(function(){
	load_movieList();
});

function load_movieList() {
	var movieList;
	var html;
	
	$('#load_movieList').click(function() {
		
		var url = "/settingweb/restex";
		
		$.ajax({
			type:"POST",
			url:url,
			
			success:function(args) {
				movieList=args;
				for(var i=0;i<args.length;i++){
					html="<tr>"
						+"<td>"+args[i].movie_name+"</td>"
						+"<td>"+args[i].director+"</td>"
						+"<td>"+args[i].types+"</td>"
						+"</tr>"
					$("#movieList").append(html);
				}
				
				console.log(args);
			},
			
			beforeSend:function(){
				$("#movieList").empty();
			},
			
			error:function(e) {
				alert(e.responseText);
			}
		});
	});
}