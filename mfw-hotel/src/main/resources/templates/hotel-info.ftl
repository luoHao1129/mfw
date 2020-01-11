<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${hdto.hotelName }预订，${hdto.hotelName }价格_地址_图片_点评，wo shi zhe ge jiu dian de ping yin预订</title>
    <link rel="shortcut icon" href="../img/MFW头像.jfif" />
    <link rel="stylesheet" href="../css/icon-info.css"/>
    <link rel="stylesheet" href="../css/hotel-main.css" />
    <link rel="stylesheet" href="../css/info-hd.css" />
    <link rel="stylesheet" href="../css/room-list.css" />
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />

    <!-- 地图大小 -->
    <style type="text/css">
        #container {width: 1000px;height: 500px}
    </style>




</head>

<body>
<div class="hotel-main">
    <div class="top-info" >
        <p style="font-size: 15px;" >您在这里：酒店  >  中国酒店  >  ${hotelNum.city }酒店预订  ></p>&nbsp;
        <p class="chotel" style="font-size: 15px;color: #FF9D00;"> ${hdto.hotelName }预订</p>
    </div>
    <br />
    <div class="info-hd">
        <div class="hd1">
            <h1>${hdto.hotelName }</h1>
            <img style="width: 40px;" src="../img/redbird.png" />
            <br />
            <span style="font-size: 14px;line-height: 24px;" >wu tong li international youth hostel</span>
            <br />
            <span style="line-height: 24px;font-size: 12px;color: #999" >地址：${hdto.hotelAddress }</span>
            <a href="https://www.mafengwo.cn/hotel/list_map.php?poiid=16046142#ht=16046142&ov=100">
                <img style="width: 15px;" src="../img/小定位.png" /><span style="font-size: 12px;" >查看地图</span>
            </a>
        </div>
    </div>
    <br />
    <img style="width: 1000px;height: 375px;" src="../img/wutong.png" >
    <br />
    <div class="hd-title">
        <ul>
            <li>
                <a>
                    预订&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <li>
                <a href="#container">
                    位置&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <li>
                <a href="#facility">
                    酒店设施&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
            </li>
            <li>
                <a href="#otherHotel">
                    周边酒店&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </a>
            </li>
        </ul>
    </div>
    <div class="hd-title">
        <a style="font-size: 15px;color: #111111;">
            <img src="../img/dianping.png" />点评</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="font-size: 15px;color: #111111;">
            <img src="../img/shoucang.PNG" /> 收藏</a>
    </div>
    <br />
    <hr />
    <a href="https://w.mafengwo.cn/sales_promotion/w/promotion/894?bus_type=hotel_promotion&mfw_chid=10697" ><img id="guanggao" src="../img/guanggao.png" /></a>
    <br />
    <br />

    <br /><br />

    <div class="room-list" >
        <div class="list1" >
            <div class="list1-1" >价格来源</div>
            <div class="list1-2">最低价房型</div>
            <div class="list1-3">最低价格/每晚</div>
        </div>

        <!-- 房间列表信息 -->
        <#list hdto.roomInfo as details>
            <div class="list2 hand">
                <a style="color:#666;" href = "/hotelOrder/${details.roomId}">
                    <div id="roomRate">
                        <div class="list2-1"><img style="height: 45px;margin-left: 30px;margin-top: 5px;" src="../img/mfwyx.png" /> </div>
                        <div class="list2-2" style="width:280px">${details.numOfBeds }个床位 ${details.numOfPeople }个成人 - 免费取消</div>
                        <div class="list2-3">
							<span id="mfrate">
								<strong style="font-size: 13px;color:#FF8A00;">￥${details.roomPrice }</strong>
								<strong style="font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
								<img id="jiantou" src="../img/右箭头.png" />
							</span>
                        </div>
                    </div>
                </a>
            </div>
        </#list>


    </div>
    <br /><br /><br /><br />
<#-- http://webapi.amap.com/maps?v=1.4.7&key=c571c7b3f5bd01e4a10f05f03801bcf6   -->

    <div id="container">这是一个地图
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.4.7&key=c571c7b3f5bd01e4a10f05f03801bcf6"></script>
    <script type="text/javascript">
        var map = new AMap.Map('container', {
            zoom:16,//级别
            center: [104.045311,30.651936],//中心点坐标
            viewMode:'3D'//使用3D视
        });
        var marker = new AMap.Marker({
            map:map,
            position: [104.045311, 30.651936],
            label:{
                offset:new AMap.Pixel(20,20),
                content:"点击打开酒店地图"
            }
        })
        marker.on('click',function(e){
            marker.markOnAMAP({
                name:'吾桐里国际青年旅舍',
                position:marker.getPosition()
            })
        })
        if(AMap.UA.mobile){
            document.getElementsByClassName('info')[0].style.display='none';
        }
        map.add(marker);
    </script>
    </div>




    <br /><br /><br /><br /><br /><br />


    <div id="facility" class="hotel-infomation">
        <dl class="info-section">
            <dt>基本信息</dt>
            <dd class="cell" style="width: 180px;">
                <span>入住时间:</span>
                <span style="width: 150px;">
							<strong>14:00 - 00:00</strong>
						</span>
            </dd>
            <dd class="cell" style="width: 180px;">
                <span>离店时间:</span>
                <span style="width: 150px;">
							<strong>12:00</strong>之前
						</span>
            </dd>
            <dd class="cell" style="width: 180px;">
                <span>建成于:</span>
                <span style="width: 150px;">
							<strong>2016</strong>年
						</span>
            </dd>
            <dd class="cell" style="width: 180px;">
                <span>翻修于:</span>
                <span style="width: 150px;">
							<strong>2018</strong>年
						</span>
            </dd>
            <br />
            <dd class="cell" style="width: 180px;margin-left: 105px;">
                <span>酒店规模:</span>
                <span style="width: 150px;">
							<strong>200</strong>间客房
						</span>
            </dd>
        </dl>
    </div>

    <div class="hotel-infomation hotelss">
        <div class="info-section hotel-s">
            <dt>主要设施</dt>
            <div class="icon-info">
                <ul>
                    <li>
                        <i class="icon-bg icon-wifi"></i>wifi服务
                    </li>
                    <li>
                        <i class="icon-bg icon-park"></i>免费停车场
                    </li>
                    <li>
                        <i class="icon-bg icon-elevator"></i>电梯
                    </li>
                    <li>
                        <i class="icon-bg icon-restaurant"></i>餐厅
                    </li>
                    <li>
                        <i class="icon-bg icon-consign"></i>行李寄存
                    </li>
                    <li>
                        <i class="icon-bg icon-24hours"></i>24小时服务
                    </li>
                    <li>
                        <i class="icon-bg icon-thermos"></i>热水壶
                    </li>
                    <li>
                        <i class="icon-bg icon-blower"></i>吹风机
                    </li>
                </ul>
            </div>
        </div>

        <div class="info-section hotel-s">
            <dt>酒店服务</dt>
            <div class="icon-info">
                <ul>
                    <li>
                        <i class="icon-bg icon-ok"></i>接机服务
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>客房服务
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>叫车服务
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>邮政服务
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>旅游服务
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>一次性账单结算
                    </li>

                    <li style="margin-left:77px">
                        <i class="icon-bg icon-ok" style="margin-left: 30px;"></i>快速入住服务
                    </li>
                    <li style="margin-left:45px">
                        <i class="icon-bg icon-ok"style="margin-left: -30px;"></i>旅游交通图
                    </li>
                </ul>
            </div>
        </div>
        <div class="info-section hotel-s">
            <dt>酒店设施</dt>
            <div class="icon-info">
                <ul>
                    <li>
                        <i class="icon-bg icon-ok"></i>吸烟区
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>充电车位
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>传真/复印
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>无电梯
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>公共区域监控
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>收费停车场
                    </li>
                </ul>
            </div>
        </div>
        <div class="info-section hotel-ss">
            <dt>房间设施</dt>
            <div class="icon-info">
                <ul>
                    <li>
                        <i class="icon-bg icon-ok"></i>叫醒服务
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>24小时热水
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>保险箱
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>小冰箱/迷你吧
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>宽带上网
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>空调
                    </li>
                    <li>
                        <i class="icon-bg icon-ok" style="margin-left: 45px;" ></i>电视
                    </li>
                    <li style="margin-left:80px">
                        <i class="icon-bg icon-ok" style="margin-left: 30px;" ></i>暖气
                    </li>
                    <li>
                        <i class="icon-bg icon-ok" style="margin-left: 30px;" ></i>独立卫浴间
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>洗衣机
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>沙发
                    </li>
                    <li>
                        <i class="icon-bg icon-ok" style="margin-left: 65px;"  ></i>拖鞋
                    </li>
                    <li>
                        <i class="icon-bg icon-ok" style="margin-left: 30px;" ></i>毯子或被子
                    </li>
                    <li>
                        <i class="icon-bg icon-ok"></i>智能门锁
                    </li>
                    <li style="margin-left:80px">
                        <i class="icon-bg icon-ok" style="margin-left: 30px;"></i>书桌
                    </li>
                    <li>
                        <i class="icon-bg icon-ok" style="margin-left: 30px;"></i>电动窗帘
                    </li>
                    <li>
                        <i class="icon-bg icon-ok" style="margin-left: 17px;"></i>电热水器
                    </li>
                </ul>
            </div>
        </div>
        <div class="info-section hotel-friend">
            <a style="color: #666;font-weight: bold;text-decoration: none;cursor: default;" target="_blank" href="https://www.mafengwo.cn/hotel/license?hotel_id=16046142">马蜂窝酒店平台合作伙伴</a>
        </div>
        <div class="info-section">
            <dt style="margin-top: 20px;">酒店攻略</dt>
            <dd class="gonglue">
                必读<br />
                客栈出门就是公交站，去哪都便利。<br />
                客栈距离宽窄巷子、锦里约7分钟车程。<br />
                客栈距离锦里、武侯祠地区约10分钟车程。<br />
                <br /><br />
                贴士 <br />
                客栈提供24小时前台服务。 <br />
                客栈为宿舍间提供床头灯和储物柜。 <br />
                客栈提供行李寄存、接送机、洗衣、自行车租赁等服务。<br />
            </dd>
        </div>

    </div>
    <br/><br/><br/><br/>
    <img id="otherHotel" style="width: 1000px;" src="../img/周边推荐.png" />
    <br/><br/><br/><br/>




</div>
</body>
</html>
