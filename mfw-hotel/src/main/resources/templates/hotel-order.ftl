<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${hdto.hotelName }预订 - 马蜂窝优选</title>
    <link rel="shortcut icon" href="../img/MFW头像.jfif" />
    <link rel="stylesheet" href="../css/order-main.css" />
    <link rel="stylesheet" href="../css/info-hd.css" />

    <script src="../js/jquery-1.9.1.min.js" ></script>


    <script type="text/javascript">
        function getWeek(){
            //把String类型的日期转成date格式后 获取具体 几号
            var weekDay = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
            var dateInst = $("#intoTime").val();
            var datelve = $("#leaveTime").val();
            var myDate = new Date(Date.parse(dateInst.replace(/-/g, "/")));
            var myDate1 = new Date(Date.parse(datelve.replace(/-/g, "/")));
            $("#inDay").text(weekDay[myDate.getDay()]+"入住");
            $("#lvDay").text(weekDay[myDate1.getDay()]+"离店");


            //计算入住天数
            var lifeDay;
            var regretDay;
            sDate1 = Date.parse(dateInst);
            sDate2 = Date.parse(datelve);
            dateSpan = sDate2 - sDate1;
            dateSpan = Math.abs(dateSpan);
            lifeDay = Math.floor(dateSpan / (24 * 3600 * 1000));
            $("#lifeDays").text(lifeDay);

            //获取免费退房时间
            dateSpan1 = sDate1 - 4*(24 * 3600 * 1000);
            dateSpan1 = Math.abs(dateSpan1);
            var date =new Date(dateSpan1);
            date_value=date.getFullYear() + '年' + (date.getMonth() + 1) + '月' + date.getDate() + '日';
            $("#regretTime").text(date_value);

            //根据天数获取订单金额
            var rates=${price.roomPrice };
            var rate=rates * lifeDay;
            $(".roomRate").text(rate);
            $(".title3").val("提交订单（¥"+rate+"）");
            $("#amount").val(rate);
        }

    </script>
</head>

<body onload="getWeek()">


<img style="width: 1000px;margin: 0 auto;padding-left: 250px;padding-top: 60px;position: relative;" src="../img/hd4.png" />
<div class="order-main">
    <div class="title1">
        <img style="width:180px;height:180px;margin:10px;float: left;" src="../img/orderp.jpeg" />
        <div class="info-hd">
            <div class="hd1 hdd">
                <h1>${hdto.hotelName }</h1>
                <br />
                <span style="font-size: 13px;line-height: 24px;" >wu tong li international youth hostel</span>
                <br />
                <span style="line-height: 24px;font-size: 12px;color: #999" >地址：${hdto.hotelAddress },成都,中国</span>
            </div>
        </div>
        <div class="time1">
            <input type="hidden" value="${hotelNum.intoTime }" id="intoTime"/>
            <span style="font-size: 12px;margin: 5px;" id="inTime" >
							<script type="text/javascript">
								var time1=$("#intoTime").val();
                                var insetTime=time1.substr(0,7);
                                $("#inTime").text(insetTime);
							</script>月
						</span>
            <span style="font-family: '黑体';font-size: 25px;margin: 25px;" id="inTimeDay">
							<script type="text/javascript">
								var time1=$("#intoTime").val();
                                var insetTime=time1.substr(8,9);
                                $("#inTimeDay").text(insetTime);
							</script>
						</span>
            <span style="color: #ABABAB;font-size: 12px;margin: 9px;" id="inDay"></span>

        </div>

        <div class="time1">
            <input type="hidden" value="${hotelNum.leaveTime }" id="leaveTime"/>
            <span style="font-size: 12px;margin: 5px;" id="lvTime" >
							<script type="text/javascript">
								var time2=$("#leaveTime").val();
                                var leaveTime=time2.substr(0,7);
                                $("#lvTime").text(leaveTime);
							</script>月
						</span>
            <span style="font-family: '黑体';font-size: 25px;margin: 25px;" id="lvTimeDay" >
							<script type="text/javascript">
								var time2=$("#leaveTime").val();
                                var leaveTime=time2.substr(8,9);
                                $("#lvTimeDay").text(leaveTime);
							</script>
						</span>
            <span style="color: #ABABAB;font-size: 12px;margin: 9px;" id="lvDay"></span>
        </div>
        <div class="time1">
            <span style="font-size: 12px;margin: 20px;" >客房数</span>
            <span style="font-family: '黑体';font-size: 25px;margin: 32px;" >1</span>
            <span style="color: #ABABAB;font-size: 12px;margin: 32px;">间</span>
        </div>
    </div>

    <div class="title2">
        <div class="room-info" >
            房间 - 标准间
            <br /><br />
            <span style="font-weight: initial;font-size: 12px;" >入住信息: ${hotelNum.peopleNum }成人  ${price.numOfBeds }张床位(宽1.8-2.0m)</span>
            <br /><br />联系人信息(必填)<br /><br />
            <input name="name" type="text" style="width: 100px;height: 25px;border-radius: 4px;" placeholder="姓名" />
            <br />
            <input name="tel" type="number" style="width: 100px;height: 20px;border-radius: 4px;" placeholder="手机" />
            <br />
            <span style="color: #ABABAB;font-size: 12px;">*请按相应证件准确填写第一入住人信息，订单提交后将无法变更或收费变更。</span>
            <br />
            <span style="color: #ABABAB;font-size: 12px;">*与证件姓名一致，填写1人即可。</span>
        </div>
    </div>


    <form action="<%=request.getContextPath() %>/AddOrderServlet"  method="post">
        <input type="hidden" value="${price.roomId } " name="commodityId" >
        <input type="hidden" value="" name="amount" id="amount"/>
        <input type="hidden" value="1" name="typeId" id="typeId"/>
        <input type="hidden" value="${hotelNum.intoTime }"  name="checkInTime">
        <input type="hidden" value="${hotelNum.leaveTime }" name="checkOutTime">
        <input class="title3" type="submit" style="cursor: pointer;color: #fff;font-size:20px;font-weight: bold;" value="提交订单（¥ ）"/>


        <!-- 	<a style="cursor: pointer;" >
                <div class="title3">
                    <div class="put-in">
                    提交订单（¥
                    <span class="roomRate" ></span>
                    ）
                    </div>
                </div>
            </a>
        -->
    </form>
</div>

<div class="edit_util">
    <div class="rate-detail">
        <p>预订费用明细</p>
        <span style="display: inline-block;color: #ABABAB;font-size: 12px;margin: 8px;">1间客房 x
						<span id="lifeDays"></span>


					晚</span>
        <span style="display: inline-block;margin-left:110px;color: #666666;font-size: 12px;">￥
						<span class="roomRate" ></span>
					</span>
        <br />
        <span style="color: #DDDDDD;">&nbsp;&nbsp;-------------------------------------</span>
        <p style="display: inline-block;">总价 ( 含税 )</p>
        <span style="margin-left: 100px;display: inline-block;color: #ff9d00;">￥
							<span class="roomRate" ></span>
						</span>
    </div>
    <hr />
    <div class="info-time">
        北京时间
        <span id="regretTime"></span>
        19:00:00前 该订单可免费取消
    </div>
    <div class="info-sp">
        特别提示：此订单发票/收据由酒店前台开具，请在入住完成后向酒店前台索取。
    </div>
    <span style="text-align: right;color: #666;margin-left:110px;font-size: 11px;" >执行方: 青羊区泊客吾桐里青年客栈</span>
    <hr />
    <div class="have-house">
        <p style="margin: 8px;font-size: 14px;" >有房保障</p>
        <span style="display: inline-block;" class="orderwuyou"></span>
        <span style="font-size: 10px;display: inline-block;margin-top: 0;">有房保障 订单无忧</span><br />
        <span style="display: inline-block;color: #ABABAB;font-size: 12px;margin-left: 10px;">为您的订单负责，确认订单后发生无房，经马蜂窝协调处理，仍无法安排原订单入住，最高承担原订单首晚房费。</span>
        <br />
        <span style="display: inline-block;" class="orderwuyou"></span>
        <span style="font-size: 10px;display: inline-block;margin-top: 0;">专业服务 安心出行</span><br />
        <span style="display: inline-block;color: #ABABAB;font-size: 12px;margin-left: 10px;">为您的出行负责，7 X 24小时海内外服务热线。</span>
        <br /><br />

        <a style="color: #FF8A00;font-size: 10px;margin-left: 10px;cursor: pointer;">有房保障说明 > </a>


    </div>

</div>

<script type="text/javascript" charset="utf-8">
    // 获取滑动事件
    $(window).scroll(function(){
        // 判断滑动量大小,根据滑动的大小来调整滑块的偏移量
        if(window.pageYOffset>161){
            $('.edit_util').css('top','0');
        }
        else{
            $('.edit_util').css('top',(161-window.pageYOffset)+'px');
        }
    });
</script>

</body>
</html>
