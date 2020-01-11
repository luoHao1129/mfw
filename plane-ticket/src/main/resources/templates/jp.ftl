
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
                <select class="c1">
                    <option value="">起飞时间</option>
                    <option value="">02:00-09:59</option>
                    <option value="">03:00-09:59</option>
                    <option value="">04:00-09:59</option>
                </select>
                <select class="c1">
                    <option value="">起飞机场</option>
                    <option value="">民用机场</option>
                    <option value="">军用机场</option>
                    <option value="">私人机场</option>
                </select>
                <select class="c1">
                    <option value="">到达机场</option>
                    <option value="">空军基地</option>
                    <option value="">陆军基地</option>
                    <option value="">海军基地</option>
                </select>
                <select class="c1">
                    <option value="">航空公司</option>
                    <option value="">吴氏航空</option>
                    <option value="">温氏航空</option>
                    <option value="">罗氏航空</option>
                    <option value="">杨氏航空</option>
                </select>
                <select class="c1">
                    <option value="">机型</option>
                    <option value="">歼20</option>
                    <option value="">F16</option>
                    <option value="">图灵轰炸机</option>
                </select>
            </form>
        </div>

        <div id="information">
            <a href=""><span class="ift">航空信息</span></a><a href=""><span class="ift">起飞时间</span></a><a href=""><span class="ift">到达时间</span></a><a
                    href=""><span class="ift">价格</span></a>
        </div>

        <#list fightDTOS as fight>

                <div id="flight">

                    <img src="${fight.img }" class="aviation"><span class="fi">${fight.company }</span>&nbsp;<span class="number">${fight.fightNum }</span>
                    <span class="fly">${fight.departureTime?string('hh:mm')}</span><span class="travel-time">2小时55分钟</span><span class="flys"> ${fight.landingTime?string('hh:mm')}</span><span class="qian">￥</span><span
                            id="Price">${fight.price?string("0") }</span><span class="qi">起</span>
                    <div id="dp" class="dp11">
                        <input type="hidden" value="${fight.fightNum }" id="hbid">
                        <a href="/dingdan/${fight.fightNum }"><span class="dp1">订票</span></a>
                    </div>
                    <!-- <img src="img/304894340e716debfd6c7cbb2ff20d9.png" class="dp" > -->
                    <br><span class="jc">浦东机场</span><span class="xian">--------&gt;</span><span class="jc2">江北机场</span>

                </div>




        </#list>


    </div>
</div>
<#--<script type="text/javascript">-->
<#--    $(".dp11").click(function (){-->
<#--        var id= $(this).find("#hbid").val();-->

<#--        var params={"id":id};-->
<#--        $.get("<%=request.getContextPath()%>/dingdanServlet",params,function(obj){-->

<#--        },"josn");-->

<#--        location.href = "${pageContext.request.contextPath }/main.jsp?f=dingdan";-->

<#--    });-->
<#--</script>-->
</body>
</html>
