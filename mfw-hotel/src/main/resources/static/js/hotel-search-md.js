$(function () {
    // 分页显示
    $('.num').click(function(){

        var pageNo = $(this).find($('.pageNo')).text();
        var city = $('#destination').val();
        var url = "/selectLimit"
        var params = {city:city,pageNo:pageNo};

        $.ajax({
            async:true,
            type:"POST",
            dataType:"json",
            url:url,
            data:params,
            success:function (json) {
                var html= "";
                for(var index in json){
                    html=html+"   <a href=\"/hotelId/"+json[index].hotelId+" \">\n" +
                        "            <div class=\"hotel-info\">\n" +
                        "                <input type=\"hidden\" id=\"hotel_id\" value=\""+json[index].hotelId+"\" >\n" +
                        "                <img src=\""+json[index].hotelPic +" \"/>\n" +
                        "                <div class=\"hote-detail\">\n" +
                        "                    <h2>\n" +
                        "                        <a href=\"/hotelId/"+json[index].hotelId +"\" style=\"cursor: pointer;\" >"+json[index].hotelName +" </a>\n" +
                        "                    </h2>\n" +
                        "                    <br/>\n" +
                        "                    <span>wu tong li international youth hostel</span>\n" +
                        "                    <br />\n" +
                        "                    <img id=\"pf\" src=\"../img/评分.png\" />\n" +
                        "                    <br />\n" +
                        "                    <span>\n" +
                        "                            "+json[index].hotelDetails+"\n" +
                        "                            </span>\n" +
                        "                    <br/><br/><br/>\n" +
                        "                    <img id=\"dw\" src=\"../img/小定位.png\" />\n" +
                        "                    <span>\n" +
                        "                                位于:\n" +
                        "                                <a>"+json[index].hotelAddress +"</a>\n" +
                        "                            </span>\n" +
                        "                </div>\n" +
                        "                <div class=\"hotel-rate\">\n" +
                        "                    <ul>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"mfwyx\" src=\"../img/mfwyx.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"mfrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥"+json[index].roomInfo[0].roomPrice +"</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"booking\" src=\"../img/bookingrate.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"bookrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥259</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou1\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                    </ul>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </a>\n"

                }

                $('#suibian').html(html);
            },
            //请求失败时被调用的函数,如请求的url不正确等
            error:function() {
                alert("一定是你的打开方式不对!");
            }
        });
    });


    //搜索酒店关键字
    $('#search-word').click(function () {
        $('.youji_bot').css("display","none");
        var desCity = $('#destination').val();
        var word = $('#theWord').val();
        var url ="/selectWord"
        var params = {city:desCity,name:word};

        $.ajax({
            async:true,
            type:"POST",
            dataType:"json",
            url:url,
            data:params,
            success:function (json) {
                $("#total-text").text(json.length);
                var html= ""
                for(var index in json){
                    html=html+"   <a href=\"/hotelId/"+json[index].hotelId+" \">\n" +
                        "            <div class=\"hotel-info\">\n" +
                        "                <input type=\"hidden\" id=\"hotel_id\" value=\""+json[index].hotelId+"\" >\n" +
                        "                <img src=\""+json[index].hotelPic +" \"/>\n" +
                        "                <div class=\"hote-detail\">\n" +
                        "                    <h2>\n" +
                        "                        <a href=\"/hotelId/"+json[index].hotelId +"\" style=\"cursor: pointer;\" >"+json[index].hotelName +" </a>\n" +
                        "                    </h2>\n" +
                        "                    <br/>\n" +
                        "                    <span>wu tong li international youth hostel</span>\n" +
                        "                    <br />\n" +
                        "                    <img id=\"pf\" src=\"../img/评分.png\" />\n" +
                        "                    <br />\n" +
                        "                    <span>\n" +
                        "                            "+json[index].hotelDetails+"\n" +
                        "                            </span>\n" +
                        "                    <br/><br/><br/>\n" +
                        "                    <img id=\"dw\" src=\"../img/小定位.png\" />\n" +
                        "                    <span>\n" +
                        "                                位于:\n" +
                        "                                <a>"+json[index].hotelAddress +"</a>\n" +
                        "                            </span>\n" +
                        "                </div>\n" +
                        "                <div class=\"hotel-rate\">\n" +
                        "                    <ul>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"mfwyx\" src=\"../img/mfwyx.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"mfrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥"+json[index].roomInfo[0].roomPrice +"</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"booking\" src=\"../img/bookingrate.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"bookrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥259</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou1\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                    </ul>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </a>\n"
                }
                $('#suibian').html(html);
            },
            //请求失败时被调用的函数,如请求的url不正确等
            error:function() {
                alert("一定是你的打开方式不对!");
            }
        });
    });


    //搜索酒店品牌
    $('#brand').change(function () {
        $('.youji_bot').css("display","none");
        var desCity = $('#destination').val();
        var brand = $('#brand').val();
        if (brand=="不限"){
            $('.youji_bot').css("display","inline");
            var city = $('#destination').val();
            var url = "/selectLimit"
            var params = {city:city,pageNo:1};

            $.ajax({
                async:true,
                type:"POST",
                dataType:"json",
                url:url,
                data:params,
                success:function (json) {
                    $("#total-text").text(json.length);
                    var html= ""
                    for(var index in json){
                        html=html+"   <a href=\"/hotelId/"+json[index].hotelId+" \">\n" +
                            "            <div class=\"hotel-info\">\n" +
                            "                <input type=\"hidden\" id=\"hotel_id\" value=\""+json[index].hotelId+"\" >\n" +
                            "                <img src=\""+json[index].hotelPic +" \"/>\n" +
                            "                <div class=\"hote-detail\">\n" +
                            "                    <h2>\n" +
                            "                        <a href=\"/hotelId/"+json[index].hotelId +"\" style=\"cursor: pointer;\" >"+json[index].hotelName +" </a>\n" +
                            "                    </h2>\n" +
                            "                    <br/>\n" +
                            "                    <span>wu tong li international youth hostel</span>\n" +
                            "                    <br />\n" +
                            "                    <img id=\"pf\" src=\"../img/评分.png\" />\n" +
                            "                    <br />\n" +
                            "                    <span>\n" +
                            "                            "+json[index].hotelDetails+"\n" +
                            "                            </span>\n" +
                            "                    <br/><br/><br/>\n" +
                            "                    <img id=\"dw\" src=\"../img/小定位.png\" />\n" +
                            "                    <span>\n" +
                            "                                位于:\n" +
                            "                                <a>"+json[index].hotelAddress +"</a>\n" +
                            "                            </span>\n" +
                            "                </div>\n" +
                            "                <div class=\"hotel-rate\">\n" +
                            "                    <ul>\n" +
                            "                        <li>\n" +
                            "                            <img id=\"mfwyx\" src=\"../img/mfwyx.png\" />\n" +
                            "                            <br />\n" +
                            "                            <span id=\"mfrate\">\n" +
                            "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥"+json[index].roomInfo[0].roomPrice +"</strong>\n" +
                            "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                            "                                        <img id=\"jiantou\" src=\"../img/右箭头.png\" />\n" +
                            "                                    </span>\n" +
                            "                        </li>\n" +
                            "                        <li>\n" +
                            "                            <img id=\"booking\" src=\"../img/bookingrate.png\" />\n" +
                            "                            <br />\n" +
                            "                            <span id=\"bookrate\">\n" +
                            "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥259</strong>\n" +
                            "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                            "                                        <img id=\"jiantou1\" src=\"../img/右箭头.png\" />\n" +
                            "                                    </span>\n" +
                            "                        </li>\n" +
                            "                    </ul>\n" +
                            "                </div>\n" +
                            "            </div>\n" +
                            "        </a>\n"

                    }

                    $('#suibian').html(html);
                },
                //请求失败时被调用的函数,如请求的url不正确等
                error:function() {
                    alert("一定是你的打开方式不对!");
                }
            });
        }
        var url ="/selectBrand"
        var params = {city:desCity,brand:brand};

        $.ajax({
            async:true,
            type:"POST",
            dataType:"json",
            url:url,
            data:params,
            success:function (json) {
                $("#total-text").text(json.length);
                var html= ""
                for(var index in json){
                    html=html+"   <a href=\"/hotelId/"+json[index].hotelId+" \">\n" +
                        "            <div class=\"hotel-info\">\n" +
                        "                <input type=\"hidden\" id=\"hotel_id\" value=\""+json[index].hotelId+"\" >\n" +
                        "                <img src=\""+json[index].hotelPic +" \"/>\n" +
                        "                <div class=\"hote-detail\">\n" +
                        "                    <h2>\n" +
                        "                        <a href=\"/hotelId/"+json[index].hotelId +"\" style=\"cursor: pointer;\" >"+json[index].hotelName +" </a>\n" +
                        "                    </h2>\n" +
                        "                    <br/>\n" +
                        "                    <span>wu tong li international youth hostel</span>\n" +
                        "                    <br />\n" +
                        "                    <img id=\"pf\" src=\"../img/评分.png\" />\n" +
                        "                    <br />\n" +
                        "                    <span>\n" +
                        "                            "+json[index].hotelDetails+"\n" +
                        "                            </span>\n" +
                        "                    <br/><br/><br/>\n" +
                        "                    <img id=\"dw\" src=\"../img/小定位.png\" />\n" +
                        "                    <span>\n" +
                        "                                位于:\n" +
                        "                                <a>"+json[index].hotelAddress +"</a>\n" +
                        "                            </span>\n" +
                        "                </div>\n" +
                        "                <div class=\"hotel-rate\">\n" +
                        "                    <ul>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"mfwyx\" src=\"../img/mfwyx.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"mfrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥"+json[index].roomInfo[0].roomPrice +"</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"booking\" src=\"../img/bookingrate.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"bookrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥259</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou1\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                    </ul>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </a>\n"
                }
                $('#suibian').html(html);
            },
            //请求失败时被调用的函数,如请求的url不正确等
            error:function() {
                alert("一定是你的打开方式不对!");
            }
        });
    });




    //搜索酒店价格区间
    $('#getPrice').click(function () {
        $('.youji_bot').css("display","none");
        var desCity = $('#destination').val();
        var min = $('#min').val();
        if(min == "" || min < 0){
            min=0;
        }
        var max = $('#max').val();
        if(max == "" || max < 0){
            max=99999;
        }
        var url ="/selectPrice"
        var params = {city:desCity,min:min,max:max};

        $.ajax({
            async:true,
            type:"POST",
            dataType:"json",
            url:url,
            data:params,
            success:function (json) {
                var html= ""
                $("#total-text").text(json.length);
                for(var index in json){
                    html=html+"   <a href=\"/hotelId/"+json[index].hotelId+" \">\n" +
                        "            <div class=\"hotel-info\">\n" +
                        "                <input type=\"hidden\" id=\"hotel_id\" value=\""+json[index].hotelId+"\" >\n" +
                        "                <img src=\""+json[index].hotelPic +" \"/>\n" +
                        "                <div class=\"hote-detail\">\n" +
                        "                    <h2>\n" +
                        "                        <a href=\"/hotelId/"+json[index].hotelId +"\" style=\"cursor: pointer;\" >"+json[index].hotelName +" </a>\n" +
                        "                    </h2>\n" +
                        "                    <br/>\n" +
                        "                    <span>wu tong li international youth hostel</span>\n" +
                        "                    <br />\n" +
                        "                    <img id=\"pf\" src=\"../img/评分.png\" />\n" +
                        "                    <br />\n" +
                        "                    <span>\n" +
                        "                            "+json[index].hotelDetails+"\n" +
                        "                            </span>\n" +
                        "                    <br/><br/><br/>\n" +
                        "                    <img id=\"dw\" src=\"../img/小定位.png\" />\n" +
                        "                    <span>\n" +
                        "                                位于:\n" +
                        "                                <a>"+json[index].hotelAddress +"</a>\n" +
                        "                            </span>\n" +
                        "                </div>\n" +
                        "                <div class=\"hotel-rate\">\n" +
                        "                    <ul>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"mfwyx\" src=\"../img/mfwyx.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"mfrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥"+json[index].roomInfo[0].roomPrice +"</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                        <li>\n" +
                        "                            <img id=\"booking\" src=\"../img/bookingrate.png\" />\n" +
                        "                            <br />\n" +
                        "                            <span id=\"bookrate\">\n" +
                        "                                        <strong style=\"font-size: 13px;color:#FF8A00;\">￥259</strong>\n" +
                        "                                        <strong style=\"font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;\">起</strong>\n" +
                        "                                        <img id=\"jiantou1\" src=\"../img/右箭头.png\" />\n" +
                        "                                    </span>\n" +
                        "                        </li>\n" +
                        "                    </ul>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </a>\n"
                }
                $('#suibian').html(html);
            },
            //请求失败时被调用的函数,如请求的url不正确等
            error:function() {
                alert("一定是你的打开方式不对!");
            }
        });
    });




});