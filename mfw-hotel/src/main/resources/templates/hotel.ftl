<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>马蜂窝酒店预订,网上预订酒店,国内外酒店价格查询预订平台</title>
    <link rel="shortcut icon" href="img/MFW头像.jfif" />

    <link rel="stylesheet" href="../css/hotel-main.css" />
    <link rel="stylesheet" href="../css/h-title.css" />
    <link rel="stylesheet" href="../css/add-travle.css" />
    <link rel="stylesheet" href="../css/head.css"/>

    <link rel="stylesheet" href="../css/clearfix.css" />
    <script src="../js/cityTemplate.js"></script>
    <script src="../js/jquery-1.9.1.min.js"></script>
    <script src="../js/cut.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/global.css"/>
    <link rel="stylesheet" href="../css/smoothness/jquery.ui.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/css.css"/>
    <style type="text/css">
        .sea-div{
            display: inline-block;
        }
        .search-lab{
            font-family:arial,"microsoft yahei";
            color: #666;
            font-size: 19px;
        }
        #num-div{
            top: -10px;
        }
    </style>


</head>
<!-- 	<body> -->





<!-- 酒店预订 -->
<div class="hotel-main">
    <div class="h-title">订酒店</div>
    <form method="post" action="/selectHotelCity">
        <div class="clearfix date-warp">
            <div class="add-travle">
                <input type="text" placeholder="出行目的地" autocomplete="off" id="destination" name="city">
                <!-- 城市 -->
                <div id="in_city" style="display: none"></div>


                <script type="text/javascript">
                    var cityA = $(".city_a_le1 a"); //城市
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


                    inCity.destination(dest); //目的地
                    inCity.cityClick(cityA); //显示赋值城市
                </script>
                <div style="text-align:center;">

                </div>
            </div>
            <div class="stay-list clearFloat">
                <div class="stay-list-left">
                    <span class="search-sign"></span>
                    <div class="sea-div">
                        <label class="search-lab">入住日期</label><input type="text" readonly name="intoTime" id="startDate"/>
                    </div>
                    <div class="sea-div">
                        <label class="search-lab">退房日期</label><input type="text" readonly name="leaveTime" id="endDate"/>
                    </div>
                    <div class="sea-div" id="num-div">
                        <select style="width:70px;height:32px;border-radius:4px;" name="peopleNum" id="peopleNum" >
                            <option value="人数">人数</option>
                            <option value="1">1人</option>
                            <option value="2">2人</option>
                            <option value="3">3人</option>
                            <option value="4">4人</option>
                            <option value="5">5人</option>
                            <option value="6">6人</option>
                            <option value="7">7人</option>
                            <option value="8">8人</option>
                        </select>

                        <img id="search" width="36" height="36" style="width:36px;height:36px;" src="img/放大镜.png">
                        <input type="submit" style="position: absolute;height: 30px;left: 73px;top: 5px;opacity: 0" value="提交">
                    </div>
                </div>
            </div>

        </div>
    </form>

    <div class="h-notice clearfix">
        <ul>
            <li>
                <i class="notice01"></i>
                <div class="flt1"><img width="36" height="36" style="width:36px;height:36px;" src="img/住宿.png">
                    <h2>住宿攻略</h2>
                    <p>区域攻略到特色主题，应有尽有</p>
                </div>
            </li>
            <li>
                <i class="notice02"></i>
                <div class="flt1"><img width="36" height="36" style="width:36px;height:36px;" src="img/价格.png">
                    <h2>专享价格</h2>
                    <p>多平台价格对比，天天专享特惠</p>
                </div>
            </li>
            <li>
                <i class="notice03"></i>
                <div class="flt1"><img width="36" height="36" style="width:36px;height:36px;" src="img/点评.png">
                    <h2>真实点评</h2>
                    <p>超过100万真实用户点评</p>
                </div>
            </li>
        </ul>
    </div>


    <div class="h-theme">
        <div class="h-title" style="margin-top: 50px;">主题住宿</div>
        <div class="tab-theme">
            <div class="themeList clearfix _j_tab_trigger">
                <a data-id="0" class="on">爱彼迎民宿推荐</a>
                <a data-id="1">迪士尼乐园</a>
                <a data-id="2">设计酒店</a>
                <a data-id="3">亲子之选</a>
                <a data-id="4">潜水胜地</a>
                <a data-id="5">目的地特色</a>
            </div>
            <div class="_j_tab_content">
                <ul class="clearfix" style="display:block ;" data-id="0">
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/民宿_巴厘岛.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>巴厘岛</h2>
                                    <p>印度尼西亚</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/民宿_大阪.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>大阪</h2>
                                    <p>日本</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/民宿_东京.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>东京</h2>
                                    <p>日本</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/民宿_伦敦.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>伦敦</h2>
                                    <p>英国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/民宿_上海.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>上海</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/民宿_宣汉.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>台北</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul class="clearfix" style="display: none;" data-id="1">
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/迪士尼_奥兰多.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>奥兰多</h2>
                                    <p>美国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/迪士尼_上海.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>上海</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/迪士尼_香港.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>香港</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/迪士尼_洛杉矶.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>洛杉矶</h2>
                                    <p>美国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/迪士尼_巴黎.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>巴黎</h2>
                                    <p>法国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/迪士尼_东京.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>东京</h2>
                                    <p>日本</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul class="clearfix" style="display: none;" data-id="2">
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/设计酒店_上海.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>上海</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/设计酒店_首尔.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>首尔</h2>
                                    <p>韩国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/设计酒店_哥本哈根.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>哥本哈根</h2>
                                    <p>丹麦</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/设计酒店_纽约.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>纽约</h2>
                                    <p>美国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/设计酒店_柏林.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>柏林</h2>
                                    <p>德国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/设计酒店_台中.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>台中</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul class="clearfix" style="display: none;" data-id="3">
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/亲子_狗骨岛.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>狗骨岛</h2>
                                    <p>泰国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/亲子_三亚.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>三亚</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/亲子_大阪.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>大阪</h2>
                                    <p>日本</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/亲子_苏梅岛.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>苏梅岛</h2>
                                    <p>泰国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/亲子_皇后镇.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>皇后镇</h2>
                                    <p>新西兰</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/亲子_大堡礁.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>大堡礁</h2>
                                    <p>澳大利亚</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul class="clearfix" style="display: none;" data-id="4">
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/潜水_仙本那.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>仙本那</h2>
                                    <p>马来西亚</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/潜水_马尔代夫.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>马尔代夫</h2>
                                    <p>马尔代夫</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/潜水_涛岛.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>涛岛</h2>
                                    <p>阁拍岩</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/潜水_巴厘岛.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>巴厘岛</h2>
                                    <p>印度尼西亚</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/潜水_夏威夷.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>夏威夷</h2>
                                    <p>美国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
                <ul class="clearfix" style="display: none;" data-id="5">
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/特色_首尔韩屋.jpeg">
                                </div>
                                <div class="bag-opa"></div>

                                <div class="info">
                                    <h2>首尔韩屋</h2>
                                    <p>韩国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/特色_京都町屋.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>京都町屋</h2>
                                    <p>日本</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/特色_大理民居.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>大理民居</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/特色_北京四合院.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>北京四合院</h2>
                                    <p>中国</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/特色_北海道温泉.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>北海道温泉</h2>
                                    <p>日本</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fc-item">
                            <a>
                                <div>
                                    <img width="318" height="240" style="width:318px;height:240px;" src="img/特色_洞穴酒店.jpeg">
                                </div>
                                <div class="bag-opa"></div>
                                <div class="info">
                                    <h2>洞穴酒店</h2>
                                    <p>土耳其</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>














    <!-- 特价酒店 -->
    <div class="h-favorablle">
        <div class="h-title">特价酒店</div>
        <div class="tab-fav">
            <div class="favList clearfix _j_tab_trigger">
                <a date-id="0" class="on">曼谷</a>
                <a date-id="1">台北</a>
                <a date-id="2">东京</a>
                <a date-id="3">香港</a>
                <a date-id="4">首尔</a>
                <a date-id="5">新加坡</a>
            </div>
            <div class="tab-con _j_tab_content">
                <ul class="clearfix" date-id="0" style="display: block;">
                    <li><a>
                            <div><img src="img/曼谷威客3号酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">
                                <p>曼谷威客3号酒店（原曼谷胜利纪念碑全季酒店）</p>
                                <p class="eng">Vic3 Bangkok</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/穰南帝景酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">
                                <p>穰南帝景酒店</p>
                                <p class="eng">Royal View Resort - Rang Nam</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/璀璨专享服务公寓.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">
                                <p>璀璨专享服务公寓</p>
                                <p class="eng">Abloom Exclusive Serviced Apartments</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/曼谷暹罗安纳塔拉酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.7分</div>
                            <div class="info">
                                <p>曼谷暹罗安纳塔拉酒店</p>
                                <p class="eng">Anantara Siam Bangkok Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/彩虹云霄酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">7.7分</div>
                            <div class="info">
                                <p>彩虹云霄酒店</p>
                                <p class="eng">Baiyoke Sky Hotel apa</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/曼谷利特酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.7分</div>
                            <div class="info">
                                <p>曼谷利特酒店</p>
                                <p class="eng">LiT BANGKOK Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/暹罗四季酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.3分</div>
                            <div class="info">
                                <p>暹罗四季酒店</p>
                                <p class="eng">Seasons Siam Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/曼谷廊曼机场阿玛瑞酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.1分</div>
                            <div class="info">
                                <p>曼谷廊曼机场阿玛瑞酒店</p>
                                <p class="eng">Amari Don Muang Airport Bangkok</p>
                            </div>
                        </a></li>
                </ul>
                <ul class="clearfix" style="display:none;" date-id="1">
                    <li><a>
                            <div><img src="img/台北凯撒大酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">
                                <p>台北凯撒大饭店</p>
                                <p class="eng">Caesar Park Hotel Taipei</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北大师商旅.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">
                                <p>台北大师商旅</p>
                                <p class="eng">Master Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北帅客旅店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">

                                <p>台北帅客旅店</p>
                                <p class="eng">Saual Keh Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北君品酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">9.0分</div>
                            <div class="info">

                                <p>台北君品酒店</p>
                                <p class="eng">Palais de Chine Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北二十轮旅店西门町馆.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>台北二十轮旅店西门町馆</p>
                                <p class="eng">SWIIO Hotel Ximending</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北皇家季节酒店-南西馆.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.3分</div>
                            <div class="info">

                                <p>台北皇家季节酒店-南西馆</p>
                                <p class="eng">Royal Seasons Hotel Taipei Nanjing W</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北一乐园大饭店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">7.8分</div>
                            <div class="info">

                                <p>台北一乐园大饭店</p>
                                <p class="eng">Onetel Taipei</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/台北王朝大酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">7.7分</div>
                            <div class="info">

                                <p>台北王朝大酒店</p>
                                <p class="eng">Sunworld Dynasty Hotel Taipei</p>
                            </div>
                        </a></li>
                </ul>
                <ul class="clearfix" style="display:none;" date-id="2">
                    <li><a>
                            <div><img src="img/东京湾希尔顿酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">

                                <p>东京湾希尔顿酒店</p>
                                <p class="eng">Hilton Tokyo Bay</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/东京京王广场酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.6分</div>
                            <div class="info">

                                <p>东京京王广场酒店</p>
                                <p class="eng">Keio Plaza Hotel Tokyo</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/日晖新宿酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">

                                <p>日晖新宿酒店</p>
                                <p class="eng">Hotel Sunlite Shinjuku</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/东京湾喜来登大酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>东京湾喜来登大酒店</p>
                                <p class="eng">Sheraton Grande Tokyo Bay Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/东新宿E酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">

                                <p>东新宿E酒店</p>
                                <p class="eng">E Hotel Higashi Shinjuku</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/馨乐庭中央东京新宿区酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">

                                <p>馨乐庭中央东京新宿区酒店</p>
                                <p class="eng">Citadines Central Shinjuku Tokyo</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/东京新宿馨乐庭酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.2分</div>
                            <div class="info">

                                <p>东京新宿馨乐庭酒店</p>
                                <p class="eng">Citadines Shinjuku Tokyo</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/新宿灿路都广场大饭店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">9.0分</div>
                            <div class="info">

                                <p>新宿灿路都广场大饭店</p>
                                <p class="eng">Hotel Sunroute Plaza Shinjuku</p>
                            </div>
                        </a></li>
                </ul>
                <ul class="clearfix" style="display:none;" date-id="3">
                    <li><a>
                            <div><img src="img/迪士尼好莱坞酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.9分</div>
                            <div class="info">

                                <p>迪士尼好莱坞酒店</p>
                                <p class="eng">Disney's Hollywood Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/香港迪士尼乐园酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">

                                <p>香港迪士尼乐园酒店</p>
                                <p class="eng">Hong Kong Disneyland Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/香港憙酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>香港憙酒店</p>
                                <p class="eng">Xi Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/香港英格兰豪华客栈.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">6.4分</div>
                            <div class="info">

                                <p>香港英格兰豪华客栈</p>
                                <p class="eng">UK Hostel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/香港珀丽酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>香港珀丽酒店</p>
                                <p class="eng">Rosedale Hotel Hong Kong</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/红茶馆酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">7.7分</div>
                            <div class="info">

                                <p>红茶馆酒店-土瓜湾邮轮码头店</p>
                                <p class="eng">Bridal Tea House To Kwa Wan Cruise Terminal Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/JPlus精品酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>J Plus精品酒店</p>
                                <p class="eng">J Plus Hotel by YOO</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/香港Casa酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>香港Casa酒店</p>
                                <p class="eng">Casa Hotel</p>
                            </div>
                        </a></li>
                </ul>
                <ul class="clearfix" style="display:none;" date-id="4">
                    <li><a>
                            <div><img src="img/中央明洞空中公園酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">9.0分</div>
                            <div class="info">

                                <p>中央明洞空中公園酒店</p>
                                <p class="eng">Hotel Skypark Central Myeongdong</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/明洞韦斯廷居住酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.1分</div>
                            <div class="info">

                                <p>明洞韦斯廷居住酒店</p>
                                <p class="eng">Vestin Residence Myeongdong</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/空中花园酒店明洞1号店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">

                                <p>空中花园酒店明洞1号店</p>
                                <p class="eng">Hotel Skypark Myeongdong 1</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/天空花园酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.7分</div>
                            <div class="info">

                                <p>天空花园酒店东大门1号店</p>
                                <p class="eng">Hotel Skypark Dongdaemun I</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/首尔东大门大使宜必思.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">

                                <p>首尔东大门大使宜必思快捷酒店</p>
                                <p class="eng">ibis Budget Ambassador Seoul Dongdaemun</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/宜必思仁寺洞大使酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.7分</div>
                            <div class="info">

                                <p>宜必思仁寺洞大使酒店</p>
                                <p class="eng">ibis Ambassador Insadong</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/太平洋酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">

                                <p>太平洋酒店</p>
                                <p class="eng">Pacific Hotel</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/首尔大使铂尔曼酒店7.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.8分</div>
                            <div class="info">

                                <p>首尔大使铂尔曼酒店</p>
                                <p class="eng">Grand Ambassador Seoul associated with Pullman</p>
                            </div>
                        </a></li>
                </ul>
                <ul class="clearfix" style="display:none;" date-id="5">
                    <li><a>
                            <div><img src="img/新加坡圣淘湾大酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.6分</div>
                            <div class="info">

                                <p>新加坡圣淘湾大酒店</p>
                                <p class="eng">Travelodge Harbourfront Singapore</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/新加坡滨海湾金沙酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.2分</div>
                            <div class="info">

                                <p>新加坡滨海湾金沙酒店</p>
                                <p class="eng">Marina Bay Sands</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/客莱福.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.2分</div>
                            <div class="info">

                                <p>客莱福 33 惹兰苏丹酒店</p>
                                <p class="eng">Hotel Clover 33 Jalan Sultan</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/智选假日酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.6分</div>
                            <div class="info">

                                <p>新加坡克拉码头智选假日酒店</p>
                                <p class="eng">Holiday Inn Express Singapore Clarke Quay</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/飞龙玫瑰酒.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.4分</div>
                            <div class="info">

                                <p>飞龙玫瑰酒店</p>
                                <p class="eng">Fragrance Hotel - Rose</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/飞龙水轩酒.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.6分</div>
                            <div class="info">

                                <p>飞龙水轩酒店</p>
                                <p class="eng">Fragrance Hotel - Waterfront</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/圣淘沙度假酒店.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.6分</div>
                            <div class="info">

                                <p>新加坡香格里拉圣淘沙度假酒店</p>
                                <p class="eng">Shangri-La's Rasa Sentosa Resort &amp; Spa</p>
                            </div>
                        </a></li>
                    <li><a>
                            <div><img src="img/丽思卡尔顿美年酒.jpeg"></div>
                            <div class="bag-opa"></div>
                            <div class="fraction">8.5分</div>
                            <div class="info">

                                <p>新加坡丽思卡尔顿美年酒店</p>
                                <p class="eng">The Ritz-Carlton, Millenia Singapore</p>
                            </div>
                        </a></li>
                </ul>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/jquery.ui.js"></script>
<script type="text/javascript" src="../js/moment.min.js"></script>
<script type="text/javascript" src="../js/hotel/hotel.search.js"></script>
<script type="text/javascript" src="../js/stay.js"></script>
<script src="../js/切换.js"></script>
<!-- </body> -->
</html>
