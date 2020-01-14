<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/css/travelscontent.css"/>
    <link rel="stylesheet" type="text/css" href="/css/index.css"></li>
    <script type="text/javascript" src="/js/jquery-1.12.4.js"></script>
    <link rel="shortcut icon" href="/img/MFW头像.jfif" />
    <style type="text/css">

    </style>
</head>
<body>
<div class="topA">
    <div class="logoA">
        <a title="马蜂窝自由行" href="http://www.mafengwo.cn/"><img src="img/gerenzhuye1.jpg" ></a>
    </div>
    <div class="biaotihang">
        <ul>
            <li>
                <a href="http://localhost:8089/main">首页</a>
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
                <img src="${user.avatar}">
            </li>
        </ul>
    </div>
</div>
<div class="sjdt">
    <img src="img/shijieditu.jpg" />
</div>
<div class="per_mid">
    <div class="center">
        <ul class="my">
            <li class="down_line">
                <a class="my_link" href="http://localhost:8081/toPersonal">我的窝</a>
            </li>
            <li>
                <a class="my_link" href="">我的游记</a>
            </li>
            <li>
                <a class="my_link" href="">我的问答</a>
            </li>
            <li>
                <a class="my_link" id="myOrder" >我的订单</a>
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

<div class="touxiangB"><img src="${user.avatar}" /></div>

<div class="center_bottom">
    <div class="center_left">

        <div class="center_leftX">
            <div class="center_left1">
                <div class="center_left1_name">
                    ${user.name}
                    <div class="center_left1_sex"></div>
                </div>
            </div>
            <div class="center_left2">
                <a href="" target="_blank" title="VIP">
                    <i class="vip"></i>
                </a>
                <a href="" target="_blank" title="分舵">
                    <i class="duo"></i>
                </a>
                <a href="" target="_blank" title="指路人">
                    <i class="zhiluren"></i>
                </a>
            </div>
            <div class="center_left3">
						<span class="dengji">等级:
							<a href="" title="Lv.5" target="_blank">Lv.5</a>
						</span>
                <span class="place">现居:成都
						</span>
                <span class="set">
							<a title="设置" href="/setting/" target="_blank"></a>
						</span>
            </div>
        </div>

        <div class="touming">
        </div>

        <div class="liuyanban">
            <div class="liuyanban_title">留言板</div>
            <div class="liuyanban_input">
                <textarea class="liuyanban_text" rows="7" cols="36">说点什么....</textarea>
                <input type="button" class="liuyan_btn" value="留言"></a>
            </div>
            <div class="liuyanban_list"></div>
        </div>
    </div>
    <div class="center_right">


        <div class="center_right3">
            <div class="xieyouji">
                <div class="youji_list">
                    <ul>
                        <li>
                            <div>
                                <div id="">
                                    ${publish}

                                </div>
                                <div>
                                    <a href="" id="publish">已发表</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div id="">
                                    ${audit}

                                </div>
                                <div>
                                    <a href="" id="audit">待审核</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div id="">
                                    ${draft}


                                </div>
                                <div>
                                    <a href="" id="braft">草稿箱</a>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>
            <div class="notes">
                <#list drafts as travels>
                    <a href="/editTravels/${travels.id }" style="color: black;">
                        <div class="youji_item" >
                            <img src="${travels.tpic }" style="float: left;" >
                            <input type="submit" style="display: none;" id="sub"/>
                            <input type="hidden" value="${travels.id }" name="id" class="travelsIde">

                            <div class="youji_item_text">
                                <label class="youji_item_title">${travels.title}</label><br />
                                <label>
                                    ${travels.contents[0].text }
                                </label>
<#--                                <ul>-->
<#--                                    <li>-->
<#--                                        <img src="img/dingwei.png" >-->
<#--                                        <label>${travels.destination }，by  <a href="#">九山行</a></label>-->

<#--                                    </li>-->
<#--                                    <li>-->
<#--                                        <img src="img/liul.PNG"  id="liu">-->
<#--                                        <label>${travels.pageviews }/44</label>-->

<#--                                    </li>-->
<#--                                    <li class="youji_item_text_d">-->
<#--                                        <label class="youji_item_text_t">${travels.likeNum }</label>-->
<#--                                        <img src="img/ding.PNG" id="ding">-->
<#--                                    </li>-->
<#--                                </ul>-->
                            </div>
                        </div>
                    </a>
                </#list>
                <!-- 	<div class="notes_pic"></div> -->
            </div>
        </div>

    </div>



</div>
<div class="footer"></div>

<script type="text/javascript">
    $('#publish').cli
</script>
</body>

</html>
