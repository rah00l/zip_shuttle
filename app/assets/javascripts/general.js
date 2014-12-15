$(document).ready(function(){
	
  $("#pickup_point_time_detail_route_id").on("change",function(event){
  	if ($("#pickup_point_time_detail_route_id").val()!=="")
  	{
  		var routeId = $("#pickup_point_time_detail_route_id").val();	
  		$.ajax({
  			type: 'GET',
  			url: 'get_route_start_time',
  			data: 'route_id='+routeId,
  			success: function(msg) {

  			}
  		});

  	}
  	return false;
  });


});