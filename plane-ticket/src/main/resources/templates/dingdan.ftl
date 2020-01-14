
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/dingdan.css"/>
</head>
<body>
<div id="d1">

    <div id="d2">
        <div id="frame">

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;<span class="word" >${fdto.departure }-${fdto.arrival }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="word"></span>
            <br>
            <br>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="date">${fdto.departureTime}</span >&nbsp;<span class="line">--------------------------</span>&nbsp;<span class="date">${fdto.landingTime}</span>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Airpo">${fdto.takeOffAirport}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Airpo">${fdto.arrivalAtTheAirport}</span>
            <br>
            <br>
            <span style="" class="line">--------------------------------------------------</span>
            <br />
            <br>

            &nbsp;&nbsp;&nbsp;&nbsp;<span class="ticket">机票&nbsp;成人</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Ticket-Price">￥${fdto.price }</span>&nbsp;<span class="ride">x&nbsp;1</span>
            <br>

            &nbsp;&nbsp;&nbsp;&nbsp;<span class="ticket">机票&nbsp;燃油</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Ticket-Price">￥${fdto.price }</span>&nbsp;<span class="ride">x&nbsp;1</span>
            <br>

            &nbsp;&nbsp;&nbsp;&nbsp;<span class="Set-meal">优享套餐</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Ticket-Price">￥0</span>
            <br>
            <br>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;<span class="Total-price">应付总额</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mony">￥</span><span class="wyx">${fdto.price }</span>
        </div>
        <div id="d3">
            <span class="p1">乘机人</span>
            <br />
            <span class="s1">1</span><input type="" name="" id="input1" value="" placeholder="输入乘机人姓名" />
            <img src="../img/1f343e533a15d1facad02d6a3e9a678.png" style="margin-bottom: -13px;" >
            <div id="d5">
                <span style="font-size: 15px; margin: 5px 0 0 10px; line-height: 20px;color: #129ACE;">成人票</span>
            </div>
            <form action="" method="">
                <select class="Certificates">
                    <option value ="">身份证</option>
                    <option value ="">护照</option>
                    <option value ="">士兵证</option>
                    <option value ="">军官证</option>
                    <option value ="">回乡证</option>
                    <input type="" name="" id="input2" value="" placeholder="请输入证件号" />
                    <a href="" class="a1"><span style="font-size: 12px; color: #FFA800;">删除</span></a>
                </select>
            </form>

        </div>
        <br>
        <div id="Insurance">
            <span class="s2" style="font-size: 20px;">保险</span>
            <br>


            <div class="dd1">

                <div class="ckb_div">
                    <input type="checkbox" value="1" class="ckb" /><span style="font-size: 18px;color: #666666;">航空意外险</span>
                    <span class="ckb_price" style="font-size: 13px;">¥0/份 x 1人 x 1航段</span><span style="font-size: 13px;">旅行意外保障 最高赔付300万</span>
                </div>

            </div>

            <br>
            <div class="dd1">

                <div class="ckb_div">
                    <input type="checkbox" value="1" class="ckb" /><span style="font-size: 18px;color: #666666;">航空延误险</span>
                    <span class="ckb_price" style="font-size: 13px;">¥0/份 x 1人 x 1航段</span><span style="font-size: 13px;">保你出行无忧</span>
                </div>
            </div>

        </div>
        <br>
        <div id="Contacts">
            <span id="Contacts-1">联系人</span>
            <br />
            <span class="one">1</span><input type="" name="" id="input1" value="" placeholder="输入联系人姓名" />
            <img src="../img/1f343e533a15d1facad02d6a3e9a678.png" style="margin-bottom: -13px;" >

            <form action="" method="">
                <select class="Certificates">
                    <option value ="">86</option>
                    <option value ="">中国香港852</option>
                    <option value ="">美国110</option>
                    <option value ="">阿富汗120</option>
                    <option value ="">伊拉克119</option>
                    <input type="" name="" id="phone" value="" placeholder="请输入联系人手机号" />
                    <a href="" class="a1"><span style="font-size: 12px; color: #FFA800;">删除</span></a>
                </select>
            </form>

        </div>
        <br>
        <div id="Reimbursement">
            <span style="font-size: 20px;">报销凭证</span>
            <br />
            <br/>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="checkbox" name="" id="" value="1" style="height: 20px;width: 20px;" />
            <span style="color: #5C5C5C;" >需要报销凭证(航班起飞后28天内可补开纸质行程单)</span>
        </div>
        <br>
        <div id="Coupon">
            <span style="font-size: 20px;">优惠券</span>

            <br />
            <br>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="" id="" value="1" style="height: 20px;width: 20px;"/><span style="color: #5C5C5C;">&nbsp;没有可用优惠券</span>
        </div>

        <br>
        <form action="" method="post">
            <input type="hidden" value="${fdto.company }" name="" id="" >
            <input type="hidden" value="2" name="typeId" id="typeId" >
            <input type="hidden" value="${fdto.departureTime?time }" name="checkInTime" id="" >
            <input type="hidden" value="${fdto.landingTime?time }" name="checkOutTime" id="" >
            <input type="hidden" value="${fdto.price }" name="amount" id="" >
            <input type="hidden" value="${fdto.fightNum }" name="commodityId" id="" >
            <input type="hidden" value="1" name="status" id="status" >


            <input type="submit" value="提交订单" id="" style="height: 50px; width: 550px;background-color: #EDA000; color:#fff ;font-size: 25px;margin-left: 370px; cursor: pointer; ">

        </form>


    </div>

</div>

</body>
</html>
