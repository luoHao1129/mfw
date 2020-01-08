$(document).ready(function () {
    //页面加载的时候，内容框默认显示 index.html

    $('#pages').load('./index.html');


    //单击 destination 链接，加载 destination.html
    $("#destination").click(function () {
        $('#pages').load('./destination.html');
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

    $("#index").click(function () {
        $('#pages').load('./index.html');
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

    $("#hotel").click(function () {
        $('#pages').load('./hotel.html');
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
    //     $('#pages').load('./stratey.html');
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
    $("#go_journey").click(function () {
        $('#pages').load('./go_journey.html');
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

    $("#plane_ticket").click(function () {
        $('#pages').load('./plane_ticket.html');
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
})

