
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <link rel="shortcut icon" href="img/MFW头像.jfif" />
    <link rel="stylesheet" type="text/css" href="css/jp.css" />
    <link rel="stylesheet" type="text/css" href="css/head.css" />
    <script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
    <title></title>
</head>
<body>


<div id="subject">
    <div style="background-color: #ECECEC;">


        <div id="Search-box">

            <form action="" method="" class="form1" style="padding-top: 20px;margin-left: 10px;">
                <select style="width: 60px;height: 30px;">
                    <option value="">单程</option>
                    <option value="">往返</option>
                </select>
                <input type="text" id="place" name="" class="input8" value="${departureDateDTO.departure }">
                <input type="text" id="destination"  name="" class="input8"  value="${departureDateDTO.arrival }">
                <input type="date" name="" id="" value="${departureDateDTO.departureDate }" class="p1"  />
                <input type="date" name="" id="" value="${departureDateDTO.returnDate }" class="p1" />
                <a href=""><img src="img/7d353bf98fafc5cdd6960639055bfef.png" class="search"></a>
            </form>

            <!-- 城市 -->
            <div id="in_city" style="display: none"></div>

            <script type="text/javascript" src="js/cityTemplate_1.js"></script>
            <script type="text/javascript">
                var cityA = $(".city_a_le1 a"); //城市
                var pla = $("#place"); //出发地
                var dest = $("#destination"); //目的地
                // 默认值
                inCity.width = "345"; //城市选择框  宽
                inCity.height = "auto"; //城市选择框  高
                inCity.id = "#in_city"; //城市选择框  父级ID
                inCity.Children = '.city_a_le1'; //城市名box
                // 初始化 城市HTML模板
                $(inCity.id).prepend(inCity._template.join(''));
                inCity.Hot(cityA);

                //城市 导航
                var apay = $(".screen a");

                var placeThis; //当前选择标签
                apay.click(function(obj) { //城市导航
                    inCity.payment($(this));
                })

                inCity.place(pla); //出发地
                inCity.destination(dest); //目的地
                inCity.cityClick(cityA); //显示赋值城市
            </script>
            <div style="text-align:center;">
            </div>
        </div>
    </div>
    <br>
    <div class="banner">
        <div class="bigdiv">
            <div id="Authentication">

            </div>
            <div class="hq">
                <div class="hq1"><span class="lscx">历史查询</span></div>
                <div class="hq2">
                    <span class="shcq">上海⇀重庆</span><span class="q">￥</span><span class="zj">569</span>
                    <span class="cls">2019-11-08&nbsp;周五</span>
                </div>
                <div class="hq3">
                    <span class="shcq">上海⇀重庆</span><span class="ck">查看</span>
                    <span class="cls">2019-11-08&nbsp;周五</span>
                </div>

            </div>
            <div class="feiji">


            </div>

        </div>

        <div id="Time-fare" style="">
            <#list map.prices as time>
            <div class="tp"><span class="tm">￥${time.price}</span><span class="date">&nbsp;${time.date?string("MM-dd EEE")} </span></div>
            </#list>

        </div>
        <br>
        <div id="screen">
            <form>
                <span class="choice">筛选：</span>
                <select class="c1" id="departureTime">
                    <option value="">起飞时间</option>
                    <#list fightDTOdepartureTime as fight>
                        <option value="${fight.departureTime}">${fight.departureTime?substring(0,5)}</option>
                    </#list>
                </select>
                <select class="c1" id="takeOffAirport">
                    <option value="">起飞机场</option>
                <#list fightDTO as fight>
                        <option value="${fight.takeOffAirport}">${fight.takeOffAirport}</option>
                </#list>
                </select>
                <select class="c1" id="arrivalAtTheAirport">
                    <option value="">到达机场</option>
                    <#list fightDTOS1 as fight>
                        <option value="${fight.arrivalAtTheAirport}">${fight.arrivalAtTheAirport}</option>
                    </#list>
                </select>
                <select class="c1" id="company">
                    <option value="">航空公司</option>
                    <#list fightDTOcompany as fight>
                        <option value="${fight.company}">${fight.company}</option>
                    </#list>
                </select>
                <select class="c1" id="aircraftType">
                    <option value="">机型</option>
                    <#list fightDTOaircraftType as fight>
                        <option value="${fight.aircraftType}">${fight.aircraftType}</option>
                    </#list>
                </select>
            </form>
        </div>

        <div id="information">
            <a href=""><span class="ift">航空信息</span></a><a href=""><span class="ift">起飞时间</span></a><a href=""><span class="ift">到达时间</span></a><a
                    href=""><span class="ift">价格</span></a>
        </div>
    <div id="f_id">
        <#list fightDTOS as fight>

                <div id="flight">

                    <img src="${fight.img }" class="aviation"><span class="fi">${fight.company }</span>&nbsp;<span class="number">${fight.fightNum }</span>
                    <span class="fly">${fight.departureTime?substring(0,5)}</span><span class="travel-time">2小时55分钟</span><span class="flys"> ${fight.landingTime?substring(0,5)}</span><span class="qian">￥</span><span
                            id="Price">${fight.price?string("0") }</span><span class="qi">起</span>
                    <div id="dp" class="dp11">
                        <input type="hidden" value="${fight.fightNum }" id="hbid">
                        <a href="/dingdan/${fight.fightNum }/${map.prices[0].date}"><span class="dp1">订票</span></a>
                    </div>
                    <!-- <img src="img/304894340e716debfd6c7cbb2ff20d9.png" class="dp" > -->

                    <br>

                    <span class="jc">${fight.takeOffAirport}</span>

                    <span class="xian">--------&gt;</span>

                    <span class="jc2">${fight.arrivalAtTheAirport}</span>

                </div>




        </#list>
    </div>

    </div>
</div>
<script type="text/javascript">
    $(function() {
        $("#departureTime").change(function () {
            var departureTime = $('#departureTime').val();
            var takeOffAirport = $('#takeOffAirport').val();
            var arrivalAtTheAirport = $('#arrivalAtTheAirport').val();
            var company = $('#company').val();
            var aircraftType = $('#aircraftType').val();
            var departure = $('#departure').val();
            var arrival = $('#arrival').val();
            var params = {
                "departureTime": departureTime,
                "takeOffAirport": takeOffAirport,
                "arrivalAtTheAirport": arrivalAtTheAirport,
                "company": company,
                "aircraftType": aircraftType
            };
            var params = {"departureTime":departureTime,"takeOffAirport":takeOffAirport,"arrivalAtTheAirport":arrivalAtTheAirport,"company":company,"aircraftType":aircraftType};
            var html = "";
            $.ajax({
                async: true,
                type: "POST",
                dataType: "json",
                url: "/screeningFlights",
                data: params,
                success: function (json) {
                    $("#total-text").text(json.length);
                    for (var index in json) {
                        html = html + "    <div id=\"flight\">\n" +
                            "\n" +
                            "                    <img src=\"" + json[index].img + "\" class=\"aviation\"><span class=\"fi\">" + json[index].company + " </span>&nbsp;<span class=\"number\">" + json[index].fightNum + "</span>\n" +
                            "                    <span class=\"fly\">" + json[index].departureTime + "</span><span class=\"travel-time\">2小时55分钟</span><span class=\"flys\">" + json[index].landingTime + "</span><span class=\"qian\">￥</span><span\n" +
                            "                            id=\"Price\">" + json[index].price + "</span><span class=\"qi\">起</span>\n" +
                            "                    <div id=\"dp\" class=\"dp11\">\n" +
                            "                        <input type=\"hidden\" value=\"" + json[index].fightNum + " \" id=\"hbid\">\n" +
                            "                        <a href=\"/dingdan/" + json[index].fightNum + "\"><span class=\"dp1\">订票</span></a>\n" +
                            "                    </div>\n" +
                            "                    <!-- <img src=\"img/304894340e716debfd6c7cbb2ff20d9.png\" class=\"dp\" > -->\n" +
                            "\n" +
                            "                    <br>\n" +
                            "\n" +
                            "                    <span class=\"jc\">" + json[index].takeOffAirport + "</span>\n" +
                            "\n" +
                            "                    <span class=\"xian\">--------&gt;</span>\n" +
                            "\n" +
                            "                    <span class=\"jc2\">" + json[index].arrivalAtTheAirport + "</span>\n" +
                            "\n" +
                            "                </div>\n"


                    }
                    $('#f_id').html(html);
                }
            });


        });
        $("#takeOffAirport").change(function () {
            var departureTime = $('#departureTime').val();
            var takeOffAirport = $('#takeOffAirport').val();
            var arrivalAtTheAirport = $('#arrivalAtTheAirport').val();
            var company = $('#company').val();
            var aircraftType = $('#aircraftType').val();
            var departure = $('#departure').val();
            var arrival = $('#arrival').val();
            var params = {
                "departureTime": departureTime,
                "takeOffAirport": takeOffAirport,
                "arrivalAtTheAirport": arrivalAtTheAirport,
                "company": company,
                "aircraftType": aircraftType
            };
            var params = {"departureTime":departureTime,"takeOffAirport":takeOffAirport,"arrivalAtTheAirport":arrivalAtTheAirport,"company":company,"aircraftType":aircraftType};
            var html = "";
            $.ajax({
                async: true,
                type: "POST",
                dataType: "json",
                url: "/screeningFlights",
                data: params,
                success: function (json) {
                    $("#total-text").text(json.length);
                    for (var index in json) {
                        html = html + "    <div id=\"flight\">\n" +
                            "\n" +
                            "                    <img src=\"" + json[index].img + "\" class=\"aviation\"><span class=\"fi\">" + json[index].company + " </span>&nbsp;<span class=\"number\">" + json[index].fightNum + "</span>\n" +
                            "                    <span class=\"fly\">" + json[index].departureTime + "</span><span class=\"travel-time\">2小时55分钟</span><span class=\"flys\">" + json[index].landingTime + "</span><span class=\"qian\">￥</span><span\n" +
                            "                            id=\"Price\">" + json[index].price + "</span><span class=\"qi\">起</span>\n" +
                            "                    <div id=\"dp\" class=\"dp11\">\n" +
                            "                        <input type=\"hidden\" value=\"" + json[index].fightNum + " \" id=\"hbid\">\n" +
                            "                        <a href=\"/dingdan/" + json[index].fightNum + "\"><span class=\"dp1\">订票</span></a>\n" +
                            "                    </div>\n" +
                            "                    <!-- <img src=\"img/304894340e716debfd6c7cbb2ff20d9.png\" class=\"dp\" > -->\n" +
                            "\n" +
                            "                    <br>\n" +
                            "\n" +
                            "                    <span class=\"jc\">" + json[index].takeOffAirport + "</span>\n" +
                            "\n" +
                            "                    <span class=\"xian\">--------&gt;</span>\n" +
                            "\n" +
                            "                    <span class=\"jc2\">" + json[index].arrivalAtTheAirport + "</span>\n" +
                            "\n" +
                            "                </div>\n"


                    }
                    $('#f_id').html(html);
                }
            });
        });
        $("#arrivalAtTheAirport").change(function () {
            var departureTime = $('#departureTime').val();
            var takeOffAirport = $('#takeOffAirport').val();
            var arrivalAtTheAirport = $('#arrivalAtTheAirport').val();
            var company = $('#company').val();
            var aircraftType = $('#aircraftType').val();
            var departure = $('#departure').val();
            var arrival = $('#arrival').val();
                var params = {"departureTime":departureTime,"takeOffAirport":takeOffAirport,"arrivalAtTheAirport":arrivalAtTheAirport,"company":company,"aircraftType":aircraftType,"departure":departure,"arrival":arrival};
                var html = "";
                $.ajax({
                    async:true,
                    type:"POST",
                    dataType:"json",
                    url:"/screeningFlights",
                    data:params,
                    success:function (json) {
                        $("#total-text").text(json.length);
                        for (var index in json) {
                            html = html + "    <div id=\"flight\">\n" +
                                "\n" +
                                "                    <img src=\""+json[index].img+"\" class=\"aviation\"><span class=\"fi\">"+json[index].company+" </span>&nbsp;<span class=\"number\">"+json[index].fightNum+"</span>\n" +
                                "                    <span class=\"fly\">"+json[index].departureTime+"</span><span class=\"travel-time\">2小时55分钟</span><span class=\"flys\">"+json[index].landingTime+"</span><span class=\"qian\">￥</span><span\n" +
                                "                            id=\"Price\">"+json[index].price+"</span><span class=\"qi\">起</span>\n" +
                                "                    <div id=\"dp\" class=\"dp11\">\n" +
                                "                        <input type=\"hidden\" value=\""+json[index].fightNum+" \" id=\"hbid\">\n" +
                                "                        <a href=\"/dingdan/"+json[index].fightNum+"\"><span class=\"dp1\">订票</span></a>\n" +
                                "                    </div>\n" +
                                "                    <!-- <img src=\"img/304894340e716debfd6c7cbb2ff20d9.png\" class=\"dp\" > -->\n" +
                                "\n" +
                                "                    <br>\n" +
                                "\n" +
                                "                    <span class=\"jc\">"+json[index].takeOffAirport+"</span>\n" +
                                "\n" +
                                "                    <span class=\"xian\">--------&gt;</span>\n" +
                                "\n" +
                                "                    <span class=\"jc2\">"+json[index].arrivalAtTheAirport+"</span>\n" +
                                "\n" +
                                "                </div>\n"


                        }
                        $('#f_id').html(html);
                    }
                });

            });


        });
        $("#company").change(function () {
            var departureTime = $('#departureTime').val();
            var takeOffAirport = $('#takeOffAirport').val();
            var arrivalAtTheAirport = $('#arrivalAtTheAirport').val();
            var company = $('#company').val();
            var aircraftType = $('#aircraftType').val();
            var departure = $('#departure').val();
            var arrival = $('#arrival').val();
            var params = {
                "departureTime": departureTime,
                "takeOffAirport": takeOffAirport,
                "arrivalAtTheAirport": arrivalAtTheAirport,
                "company": company,
                "aircraftType": aircraftType
            };
            var params = {"departureTime":departureTime,"takeOffAirport":takeOffAirport,"arrivalAtTheAirport":arrivalAtTheAirport,"company":company,"aircraftType":aircraftType};
            var html = "";
            $.ajax({
                async: true,
                type: "POST",
                dataType: "json",
                url: "/screeningFlights",
                data: params,
                success: function (json) {
                    $("#total-text").text(json.length);
                    for (var index in json) {
                        html = html + "    <div id=\"flight\">\n" +
                            "\n" +
                            "                    <img src=\"" + json[index].img + "\" class=\"aviation\"><span class=\"fi\">" + json[index].company + " </span>&nbsp;<span class=\"number\">" + json[index].fightNum + "</span>\n" +
                            "                    <span class=\"fly\">" + json[index].departureTime + "</span><span class=\"travel-time\">2小时55分钟</span><span class=\"flys\">" + json[index].landingTime + "</span><span class=\"qian\">￥</span><span\n" +
                            "                            id=\"Price\">" + json[index].price + "</span><span class=\"qi\">起</span>\n" +
                            "                    <div id=\"dp\" class=\"dp11\">\n" +
                            "                        <input type=\"hidden\" value=\"" + json[index].fightNum + " \" id=\"hbid\">\n" +
                            "                        <a href=\"/dingdan/" + json[index].fightNum + "\"><span class=\"dp1\">订票</span></a>\n" +
                            "                    </div>\n" +
                            "                    <!-- <img src=\"img/304894340e716debfd6c7cbb2ff20d9.png\" class=\"dp\" > -->\n" +
                            "\n" +
                            "                    <br>\n" +
                            "\n" +
                            "                    <span class=\"jc\">" + json[index].takeOffAirport + "</span>\n" +
                            "\n" +
                            "                    <span class=\"xian\">--------&gt;</span>\n" +
                            "\n" +
                            "                    <span class=\"jc2\">" + json[index].arrivalAtTheAirport + "</span>\n" +
                            "\n" +
                            "                </div>\n"


                    }
                    $('#f_id').html(html);
                }
            });

        });
        $("#aircraftType").change(function () {
            var departureTime = $('#departureTime').val();
            var takeOffAirport = $('#takeOffAirport').val();
            var arrivalAtTheAirport = $('#arrivalAtTheAirport').val();
            var company = $('#company').val();
            var aircraftType = $('#aircraftType').val();
            var departure = $('#departure').val();
            var arrival = $('#arrival').val();
            var params = {
                "departureTime": departureTime,
                "takeOffAirport": takeOffAirport,
                "arrivalAtTheAirport": arrivalAtTheAirport,
                "company": company,
                "aircraftType": aircraftType
            };
            var params = {"departureTime":departureTime,"takeOffAirport":takeOffAirport,"arrivalAtTheAirport":arrivalAtTheAirport,"company":company,"aircraftType":aircraftType};
            var html = "";
            $.ajax({
                async: true,
                type: "POST",
                dataType: "json",
                url: "/screeningFlights",
                data: params,
                success: function (json) {
                    $("#total-text").text(json.length);
                    for (var index in json) {
                        html = html + "    <div id=\"flight\">\n" +
                            "\n" +
                            "                    <img src=\"" + json[index].img + "\" class=\"aviation\"><span class=\"fi\">" + json[index].company + " </span>&nbsp;<span class=\"number\">" + json[index].fightNum + "</span>\n" +
                            "                    <span class=\"fly\">" + json[index].departureTime + "</span><span class=\"travel-time\">2小时55分钟</span><span class=\"flys\">" + json[index].landingTime + "</span><span class=\"qian\">￥</span><span\n" +
                            "                            id=\"Price\">" + json[index].price + "</span><span class=\"qi\">起</span>\n" +
                            "                    <div id=\"dp\" class=\"dp11\">\n" +
                            "                        <input type=\"hidden\" value=\"" + json[index].fightNum + " \" id=\"hbid\">\n" +
                            "                        <a href=\"/dingdan/" + json[index].fightNum + "\"><span class=\"dp1\">订票</span></a>\n" +
                            "                    </div>\n" +
                            "                    <!-- <img src=\"img/304894340e716debfd6c7cbb2ff20d9.png\" class=\"dp\" > -->\n" +
                            "\n" +
                            "                    <br>\n" +
                            "\n" +
                            "                    <span class=\"jc\">" + json[index].takeOffAirport + "</span>\n" +
                            "\n" +
                            "                    <span class=\"xian\">--------&gt;</span>\n" +
                            "\n" +
                            "                    <span class=\"jc2\">" + json[index].arrivalAtTheAirport + "</span>\n" +
                            "\n" +
                            "                </div>\n"


                    }
                    $('#f_id').html(html);
                }
            });
    });
</script>

</body>
</html>
