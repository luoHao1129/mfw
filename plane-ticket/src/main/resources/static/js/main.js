 
 $(document).ready(function(){
	 if("addtravels"==$('#tiaoz').val()){
		 $('#pages').load('./addTravels.jsp');
	 }
	 if("travels"==$('#tiaoz').val()){
		 $('#pages').load('./travels.jsp');
	 }
	 
	 if("index"==$('#tiaoz').val()){
		 $('#pages').load('./index.jsp');
	 }
	 if("dingdan"==$('#tiaoz').val()){
		 $('#pages').load('./dingdan.jsp');
	 }

	 if("hotel-data"==$('#tiaoz').val()){
		 $('#pages').load('./hotel-data.jsp');
	 }

	 if("main"==$('#tiaoz').val()){
		 $('#pages').load('./index.jsp');
	 }
	 if("hotel-data"==$('#tiaoz').val()){
		 $('#pages').load('./hotel-data.jsp');
	 }
	 if("hotel-info"==$('#tiaoz').val()){
		 $('#pages').load('./hotel-info.jsp');
	 }
	
	 
	 
            //页面加载的时候，内容框默认显示 index.html
          


            //单击 destination 链接，加载 destination.html
            $("#destination_index").click(function(){
                $('#pages').load('./destination.jsp');
				$('#destination').addClass('in');
				$('#destination_a').addClass('go_lv');
				$('#index').removeClass('in');
				$('#index_a').removeClass('go_lv');
				$('#hotel').removeClass('in');
				$('#hotel_a').removeClass('go_lv');
				$('#stratey').removeClass('in');
				$('#stratey_a').removeClass('go_lv');
				$('#go_journey').removeClass('in');
				$('#go_journey_a').removeClass('go_lv');
				$('#plane_ticket').removeClass('in');
				$('#plane_ticket_a').removeClass('go_lv');
				
				
            });
			
			$("#index").click(function(){
			    $('#pages').load('./index.jsp');
				$('#index').addClass('in');
				$('#index_a').addClass('go_lv');
				$('#destination').removeClass('in');
				$('#destination_a').removeClass('go_lv');
				$('#hotel').removeClass('in');
				$('#hotel_a').removeClass('go_lv');
				$('#stratey').removeClass('in');
				$('#stratey_a').removeClass('go_lv');
				$('#go_journey').removeClass('in');
				$('#go_journey_a').removeClass('go_lv');
				$('#plane_ticket').removeClass('in');
				$('#plane_ticket_a').removeClass('go_lv');
			});
			
			$("#hotel").click(function(){
			    $('#pages').load('./hotel.jsp');
				$('#hotel').addClass('in');
				$('#hotel_a').addClass('go_lv');
				$('#destination').removeClass('in');
				$('#destination_a').removeClass('go_lv');
				$('#index').removeClass('in');
				$('#index_a').removeClass('go_lv');
				$('#stratey').removeClass('in');
				$('#stratey_a').removeClass('go_lv');
				$('#go_journey').removeClass('in');
				$('#go_journey_a').removeClass('go_lv');
				$('#plane_ticket').removeClass('in');
				$('#plane_ticket_a').removeClass('go_lv');
			});
			
			// $("#stratey").click(function(){
			//     $('#pages').load('./stratey.jsp');
			// 	$('#stratey').addClass('in');
			// 	$('#stratey').addClass('go_lv');
			// 	$('#destination').removeClass('in');
			// 	$('#destination_a').removeClass('go_lv');
			// 	$('#hotel').removeClass('in');
			// 	$('#hotel_a').removeClass('go_lv');
			// 	$('#index').removeClass('in');
			// 	$('#index_a').removeClass('go_lv');
			// 	$('#go_journey').removeClass('in');
			// 	$('#go_journey_a').removeClass('go_lv');
			// 	$('#plane_ticket').removeClass('in');
			// 	$('#plane_ticket_a').removeClass('go_lv');
			// });
			// 
			$("#go_journey").click(function(){
			    $('#pages').load('./go_journey.jsp');
				$('#go_journey').addClass('in');
				$('#go_journey_a').addClass('go_lv');
				$('#destination').removeClass('in');
				$('#destination_a').removeClass('go_lv');
				$('#hotel').removeClass('in');
				$('#hotel_a').removeClass('go_lv');
				$('#stratey').removeClass('in');
				$('#stratey_a').removeClass('go_lv');
				$('#index').removeClass('in');
				$('#index_a').removeClass('go_lv');
				$('#plane_ticket').removeClass('in');
				$('#plane_ticket_a').removeClass('go_lv');
			});
			
			$("#plane_ticket").click(function(){
			    $('#pages').load('./plane_ticket.jsp');
				$('#plane_ticket').addClass('in');
				$('#plane_ticket_a').addClass('go_lv');
				$('#destination').removeClass('in');
				$('#destination_a').removeClass('go_lv');
				$('#hotel').removeClass('in');
				$('#hotel_a').removeClass('go_lv');
				$('#stratey').removeClass('in');
				$('#stratey_a').removeClass('go_lv');
				$('#go_journey').removeClass('in');
				$('#go_journey_a').removeClass('go_lv');
				$('#index').removeClass('in');
				$('#index_a').removeClass('go_lv');
			});	
			
        });

