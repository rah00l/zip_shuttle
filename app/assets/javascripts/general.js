$(document).ready(function(){
	
  $(document).on('change',"#pickup_point_time_detail_route_id",function(event){
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


  $(document).on("change","#pickup_point_time_detail_pickup_route_start_time_id",function(event){
        if ($("#pickup_point_time_detail_route_id").val()!=="")
        {
          var routeId = $("#pickup_point_time_detail_route_id").val();  
          $.ajax({
              type: 'GET',
              url: 'get_location',
              data: 'route_id='+routeId,
              success: function(msg) {
                 // $(".pickup_time_field").show();
                 $(".pickup_time_field").focus();
              }
        });

    }
    return false;
});

  });