<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>【${hotelNum.city }酒店预订】${hotelNum.city }酒店价格查询，${hotelNum.city }酒店推荐 - 马蜂窝</title>
    <link rel="shortcut icon" href="../img/MFW头像.jfif" />
    <link rel="stylesheet" href="../css/hotel-main.css" />
    <link rel="stylesheet" href="../css/chotel.css" />
    <link rel="stylesheet" href="../css/select-city1.css" />
    <link rel="stylesheet" href="../css/kind.css"/>
    <link rel="stylesheet" href="../css/style.css"/>
    <link rel="stylesheet" href="../css/train.css"/>
    <link rel="stylesheet" href="../css/hotel-sort.css"/>
    <link rel="stylesheet" href="../css/hotel-info.css"/>


    <script src="../js/prefixfree.min.js"></script>
    <script src="../js/cityTemplate.js"></script>
    <script src="../js/jquery-1.9.1.min.js"></script>



</head>
<#--<body>-->




<div class="hotel-main">
    <div class="top-info" >
        <p style="font-size: 20px;" >您在这里：酒店  >  中国酒店  ></p>&nbsp;<p class="chotel" style="font-size: 20px;color: #FF9D00;"> ${hotelNum.city }酒店预订</p>
    </div>
    <form method="post" action="/selectHotelCity">
    <div class="select-city1">
        <input type="text" placeholder="出行目的地" id="destination" name="city" value="${hotelNum.city }">
        <!-- 城市 -->
        <div id="in_city" style="display: none"></div>

        <script type="text/javascript" src="../js/cityTemplate.js"></script>
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

            // inCity.place(pla); //出发地
            inCity.destination(dest); //目的地
            inCity.cityClick(cityA); //显示赋值城市
        </script>
        <div style="text-align:center;">

        </div>


    </div>

    <div class="datatime">
        <span>&nbsp;入住日期</span>
        <input type="date" id="intoTime" name="intoTime" value="${hotelNum.intoTime }" >

    </div>
    <div class="datatime">
        <span>&nbsp;离店日期</span>
        <input type="date" id="leaveTime" name="leaveTime" value="${hotelNum.leaveTime }">

    </div>&nbsp;

    <select style="width:70px;height:32px;border-radius:4px;" name="peopleNum" id="peopleNum" >
        <option value="${hotelNum.peopleNum }">${hotelNum.peopleNum }</option>
        <option value="1">1人</option>
        <option value="2">2人</option>
        <option value="3">3人</option>
        <option value="4">4人</option>
        <option value="5">5人</option>
        <option value="6">6人</option>
        <option value="7">7人</option>
        <option value="8">8人</option>
    </select>

    <img width="100" height="36" src="../img/查看价格.png">
    <input type="submit" style="cursor: pointer;position: absolute;height: 30px;left: 735px;top: 110px;width: 100px;opacity: 0" value="提交">
    </form>
    <br>
    .

    <div class="chotel">

        <p>区域：</p>
        <p><a>春熙路</a></p>&nbsp;
        <p><a>文殊院</a></p>&nbsp;
        <p><a>天府广场</a></p>&nbsp;
        <p><a>金沙</a></p>&nbsp;
        <p><a>一品天下</a></p>&nbsp;
        <p><a>望江公园</a></p>&nbsp;
        <p><a>锦里</a></p>&nbsp;
        <p><a>武侯祠</a></p>&nbsp;
        <p><a>城南区</a></p>&nbsp;
        <p><a>三圣乡</a></p>&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p><a>成都北站</a></p>&nbsp;
        <p><a>宽窄巷子</a></p>&nbsp;
        <p><a>青羊宫</a></p>&nbsp;
        <p><a>动物园</a></p>&nbsp;
        <p><a>四川大学</a></p>&nbsp;
        <p><a>科华路</a></p>&nbsp;
        <p><a>火车南站</a></p>&nbsp;
        <p><a>红牌楼</a></p>&nbsp;
        <p><a>新南门</a></p>&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p><a>东郊记忆</a></p>&nbsp;
        <p><a>太古里</a></p>&nbsp;
        <p><a>世纪城</a></p>
        <br />
        <img class="mapIp" src="../img/酒店坐标.png" />
        <p>周边：</p>
        <p><a>海螺沟</a></p>&nbsp;
        <p><a>西岭雪山</a></p>&nbsp;
        <p><a>都江堰</a></p>&nbsp;
        <p><a>青城山</a></p>&nbsp;
        <p><a>四姑娘山</a></p>&nbsp;
        <p><a>金堂县</a></p>&nbsp;
        <p><a>光雾山</a></p>&nbsp;
        <br />
        <p>攻略：</p>
        <li class="talk">成都是美女的摇篮，大熊猫的故乡，也是吃货的天堂。</li>
        <li class="talk">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在成都就是要享受闲适的慢生活，要慢慢看、慢慢逛、慢慢吃。</li>
        <li class="talk">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在这里不要错过正宗的川剧变脸，还有美味的火锅和串串。</li>
        <br />
        <br />
        <p>均价：</p>
        <li class="talk"><img src="../img/3星.png">￥242</li>
        <li class="talk">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../img/4星.png">￥357</li>
        <li class="talk">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../img/5星.png">￥658</li>
    </div>
    <br />
    <br />

    <!-- 搜索条件排 -->
    <div class="kind">
        <div id="kind1" >

            <input style="width:70px;height:25px;border-radius:4px;" id="min" type="number" name="min" placeholder="最低价格"/>
            --<input style="width:70px;height:25px;border-radius:4px;" id="max" type="number" name="max" placeholder="最高价格" />
            <input style="width:70px;height:25px;border-radius:4px;cursor:pointer" id="getPrice" type="button" value="搜索"/>

        </div>



        <div id="kind2" >
            <p>住宿等级</p>
            <br />
            <select style="width:80px;height:32px;border-radius:4px;" name="leve" id="leve">
                <option value="不限">不限</option>
                <option value="★★★★★">★★★★★</option>
                <option value=" ★★★★ "> ★★★★ </option>
                <option value="  ★★★ ">  ★★★ </option>
                <option value="   ★★ ">   ★★ </option>
            </select>
        </div>
        <div id="kind3" >
            <p>住宿类型</p>
            <br />
            <select style="width:90px;height:32px;border-radius:4px;" name="mold" id="mold">
                <option value="不限">不限</option>
                <option value="经济/连锁">经济/连锁</option>
                <option value="度假村">度假村</option>
                <option value="客栈">客栈</option>
                <option value="青年旅馆">青年旅馆</option>
                <option value="民宿">民宿</option>
            </select>
        </div>
        <div id="kind4" >
            <p>设施</p>
            <br />
            <select style="width:90px;height:32px;border-radius:4px;" name="facility" id="facility">
                <option value="不限">不限</option>
                <option value="电梯">电梯</option>
                <option value="24h热水">24h热水</option>
                <option value="家庭套房">家庭套房</option>
                <option value="SPA">SPA</option>
                <option value="WIFI">WIFI</option>
                <option value="停车场">停车场</option>
            </select>
        </div>
        <div id="kind5" >
            <p>品牌</p>
            <br />
            <select style="width:90px;height:32px;border-radius:4px;" name="brand" id="brand">
                <option value="不限">不限</option>
                <option value="7天连锁">7天连锁</option>
                <option value="如家">如家</option>
                <option value="汉庭">汉庭</option>
                <option value="锦江之星">锦江之星</option>
                <option value="皇冠假日">皇冠假日</option>
                <option value="香格里拉">香格里拉</option>
                <option value="喜来登">喜来登</option>
            </select>
        </div>
    </div>


    <div class="search-hotel">
        <div class="total-hotel"  >
            <span id="total-text">10</span>
            家酒店
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="move">
                有房<a href="#" class="toggle toggle--on"></a>全部酒店
            </div>

            <div class="train">
                <a>
                    <img id="round" src="../img/圆圈.png" />
                    临地铁
                </a>
            </div>
            <div class="train">
                <a class="round1">
                    <img id="round-one" src="../img/圆圈.png" />
                    收藏
                </a>
            </div>

            <!-- 酒店名字查询 -->
            <div class="train">
                <input id="theWord" type="text" placeholder="搜索关键词">
                <a style="cursor:pointer">
                <img src="../img/sui.png" id="search-word"/>
                </a>
            </div>




            <div class="hotel-sort">
                <a id="search1">综合排序</a>
                <a id="search2">销量</a>
                <a id="search3">价格</a>
            </div>



            <script src="../js/jquery.js"></script>
            <script src="../js/button.js"></script>
        </div>
    </div>


    <!-- 循环遍历酒店信息 -->
    <div id="suibian">
    <#list hdtols as each>
        <a href="/hotelId/${each.hotelId }">
            <div class="hotel-info">
                <input type="hidden" id="hotel_id" value="${each.hotelId }" >
                <img src="${each.hotelPic } "/>
                <div class="hote-detail">
                    <h2>
                        <a href="/hotelId/${each.hotelId }" style="cursor: pointer;" >${each.hotelName } </a>
                    </h2>
                    <br/>
                    <span>wu tong li international youth hostel</span>
                    <br />
                    <img id="pf" src="../img/评分.png" />
                    <br />
                    <span>
                            ${each.hotelDetails }
                            </span>
                    <br/><br/><br/>
                    <img id="dw" src="../img/小定位.png" />
                    <span>
                                位于:
                                <a>${each.hotelAddress }</a>
                            </span>
                </div>
                <div class="hotel-rate">
                    <ul>
                        <li>
                            <img id="mfwyx" src="../img/mfwyx.png" />
                            <br />
                            <span id="mfrate">
                                        <strong style="font-size: 13px;color:#FF8A00;">￥${each.roomInfo[0].roomPrice }</strong>
                                        <strong style="font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                                        <img id="jiantou" src="../img/右箭头.png" />
                                    </span>
                        </li>
                        <li>
                            <img id="booking" src="../img/bookingrate.png" />
                            <br />
                            <span id="bookrate">
                                        <strong style="font-size: 13px;color:#FF8A00;">￥259</strong>
                                        <strong style="font-size: 5px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                                        <img id="jiantou1" src="../img/右箭头.png" />
                                    </span>
                        </li>
                    </ul>
                </div>
            </div>
        </a>
    </#list>
    </div>


    <div class="youji_bot">
        <ul>
            <li>共${page}页/${pagelength}条</li>
            <li class="upd">&lt;&lt;上一页</li>
            <#list pages as p>
                <li class="num"><a class="pageNo">${p}</a></li>
            </#list>
            <li class="upd">下一页&gt;&gt;</li>
        </ul>
    </div>









    <script type="text/javascript">
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
                var url ="/selectBrand"
                var params = {city:desCity,brand:brand};

                $.ajax({
                    async:true,
                    type:"POST",
                    dataType:"json",
                    url:url,
                    data:params,
                    success:function (json) {
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
    </script>



</div>



<#--</body>-->

</html>
