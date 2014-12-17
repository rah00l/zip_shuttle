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
          $("#pickup_point_time_detail_pickup_route_start_time_id").focus();
  			}
  		});

  	}
  	return false;
  });

  $("#route_start_time_container").on("change",function(event){
        if ($("#pickup_point_time_detail_route_id").val()!=="")
        {
          var routeId = $("#pickup_point_time_detail_route_id").val();  
          $.ajax({
              type: 'GET',
              url: 'get_location',
              data: 'route_id='+routeId,
              success: function(msg) {
                // $("#pickup_point_time_detail_pickup_route_start_time_id").focus();
              }
        });

    }
    return false;
});