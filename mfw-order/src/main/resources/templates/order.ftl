<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/order.css"/>
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <link rel="shortcut icon" href="img/MFW头像.jfif" />
    <style type="text/css">

    </style>
</head>
<body>
<div class="topA">
    <div class="logoA">
        <a title="马蜂窝自由行" href="http://localhost:8080/mfw/"><img src="img/gerenzhuye1.jpg" ></a>
    </div>
    <div class="biaotihang">
        <ul>
            <li>
                <a href="http://localhost:8080/mfw/">首页</a>
            </li>
            <li>
                <a href="http://www.mafengwo.cn/wenda/">问答</a>
            </li>
            <li>
                <a href="http://www.mafengwo.cn/mall/things.php">马蜂窝周边</a>
            </li>
            <li>
                <a href="http://www.mafengwo.cn/together/">结伴</a>
            </li>
            <li>
                <a href="http://www.mafengwo.cn/group/">小组</a>
            </li>
            <li>
                <a href="http://www.mafengwo.cn/club/">蜂首俱乐部</a>
            </li>
            <li>
                <a href="http://www.mafengwo.cn/">更多</a>
            </li>
        </ul>
    </div>
    <div class="search">
        <form method="post" action="" name="searchA">
            <input type="text" class="key" style="border: 0;" />
            <input type="submit" value="" class="btn" style="border: 0;" />
        </form>
    </div>
    <div class="info">
        <ul>
            <li class="daka">
                <input type="button" class="dakaA" value="打卡" style="border: 0;" />
            </li>
            <li class="xiaoxi">
                <span>消息</span>
            </li>
            <li class="touxiang">
                <img src="${user.avatar }">
            </li>
        </ul>
    </div>
</div>
<div class="sjdt">
    <img src="img/orderBG.PNG" />
    <div class="order_user">
        <span class="user_name_order">${user.name }</span><span class="lv_order">&nbsp;Lv.5</span>
    </div>

</div>
<div class="per_mid">
    <div class="center">
        <ul class="my">
            <li class="down_line">
                <a class="my_link" href="">我的窝</a>
            </li>
            <li>
                <a class="my_link" href="">我的游记</a>
            </li>
            <li>
                <a class="my_link" href="">我的问答</a>
            </li>
            <li>
                <a class="my_link" href="">我的足迹</a>
            </li>
            <li>
                <a class="my_link" href="">我的点评</a>
            </li>
            <li>
                <a class="my_link" href="">我的结伴</a>
            </li>
            <li>
                <a class="my_link" href="">更多</a>
            </li>
        </ul>
    </div>
</div>

<div class="touxiangB"><img src="${user.avatar }" /></div>

<div class="center_bottom">
    <div class="center_order">
        <div class="center_map">
            <ul>
                <li><span>我的活动</span></li>
                <li><span>我的小组</span></li>
                <li><span>我的收藏</span></li>
                <li><span class="map_in">我的订单</span></li>
                <li><span>我的优惠券</span></li>
                <li><span>我的兑换</span></li>
                <li><span>我的路线</span></li>
                <li><span>我的常用信息</span></li>
            </ul>
        </div>
        <div class="order_content">
            <div class="order_state">
                <ul>
                    <li class="state_in">全部</li>
                    <li>待支付</li>
                    <li>待出行</li>
                    <li>待评价</li>
                    <li>取消/退款</li>
                </ul>
            </div>

            <div class="order_table">
                <ul>
                    <li class="order_data">订单信息</li>
                    <li class="order_type">类型</li>
                    <li class="order_date">行程日期</li>
                    <li class="order_price">支付金额</li>
                    <li class="order_state_li">订单状态</li>
                    <li class="order_cz">操作</li>
                </ul>
            </div>

            <#list orders as meige>
                <div class="order_xq">
                    <div class="order_xq_title">
                        <ul>
                            <li>订单号：<a> ${meige.orderId } </a></li>
                            <li class="order_xq_title_time">下单时间：<span>${meige.orderTime?string("yyyy-MM-dd") }</span> </li>
                            <li>联系电话：4006-345-678</li>
                        </ul>
                    </div>



                            <div class="order_xq_content">
                                <ul>
                                    <li><img class="order_xq_img" src="${meige.companyPic }"/></li>
                                    <li><span class="order_xq_name">${meige.companyName }</span></li>
                                    <li><span class="order_xq_type">${meige.type }</span></li>


                                    <li><div class="order_xq_xc"><span>入住: ${meige.inTime?string("yyyy-MM-dd") }</span><span>离店: ${meige.outTime?string("yyyy-MM-dd") }</span></div></li>
                                    <li><span class="order_xq_price">￥${meige.orderAmount }</span></li>

                                    <#if meige.status==1>
                                            <li><span>已支付</span></li>
                                        <li><div class="order_xq_cz"><a><span>查看订单 </span></a></div></li>
                                    <#elseif meige.status==2>
                                            <li><span>未支付</span></li>
                                        <li><div class="order_xq_cz"><a href="/pay/${meige.orderId }" ><span>支付订单 </span></a></div></li>
                                    </#if>

                                </ul>
                            </div>



<#--                        <#if meige.typeId=='2'>-->

<#--                            <div class="order_xq_content">-->
<#--                                <ul>-->
<#--                                    <li><img class="order_xq_img" src="${fd.img }"/></li>-->
<#--                                    <li><span class="order_xq_name">${fd.company }</span></li>-->
<#--                                    <li><span class="order_xq_type">机票</span></li>-->

<#--                                    <li><div class="order_xq_xc"><span>起飞时间: ${fd.departureTime?time('hh:mm')} </span><span>到达时间: ${fd.landingTime?time('hh:mm') }</span></div></li>-->
<#--                                    <li><span class="order_xq_price">￥${meige.amount }</span></li>-->

<#--                                    <#if meige.status=='1'>-->
<#--                                        <li><span>已支付</span></li>-->
<#--                                    <#elseif meige.status=='2'>-->
<#--                                        <li><span>未支付</span></li>-->
<#--                                    </#if>-->
<#--                                    <li><div class="order_xq_cz"><span>删除订单 </span><span>查看订单 </span></div></li>-->
<#--                                </ul>-->
<#--                            </div>-->
<#--                        </#if>-->


                </div>

            </#list>


        </div>
        <img class="order_xq_bottom" src="img/kuaisulianjie.PNG" />
    </div>


</div>
<div class="footer"></div>
</body>
</html>