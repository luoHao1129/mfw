<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/personal.css"/>
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <link rel="shortcut icon" href="img/MFW头像.jfif"/>
    <style type="text/css">

    </style>
</head>
<body>
<div class="topA">
    <div class="logoA">
        <a title="马蜂窝自由行" href="http://www.mafengwo.cn/"><img src="img/gerenzhuye1.jpg"></a>
    </div>
    <div class="biaotihang">
        <ul>
            <li>
                <a href="http://www.mafengwo.cn/">首页</a>
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
            <input type="text" class="key" style="border: 0;"/>
            <input type="submit" value="" class="btn" style="border: 0;"/>
        </form>
    </div>
    <div class="info">
        <ul>
            <li class="daka">
                <input type="button" class="dakaA" value="打卡" style="border: 0;"/>
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
    <img src="img/shijieditu.jpg"/>
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
                <a class="my_link" id="myOrder">我的订单</a>
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

<div class="touxiangB"><img src="${user.avatar}"/></div>

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
        <div class="center_right1">
            <ul>
                <li>
                    <a href="http://www.mafengwo.cn/note/create_index.php" target="_parent">
                        <i class="note"></i>
                        <span>写游记</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.mafengwo.cn/wenda/" target="_parent">
                        <i class="ask"></i>
                        <span>问达人</span>
                    </a>
                </li>
                <li>
                    <a href="http://www.mafengwo.cn/path/" target="_parent">
                        <i class="foot"></i>
                        <span>添加足迹</span>
                    </a>
                </li>
                <li class="friendA">
                    <a href="http://www.mafengwo.cn/together/" target="_parent">
                        <i class="friend"></i>
                        <span>发布结伴</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="center_right2">
            <div class="jiyi">
                <p><strong>不怕得</strong>，这里是你的【窝】！</p>
                <p>是记录你的旅行记忆，结交各路豪杰的地盘儿。现在开启马蜂窝旅程！</p>
            </div>
            <div class="jiyi1">
                <ul>
                    <li>
                        <div class="jiyi1_ico">
                            <i class="ico_info"></i>
                        </div>
                        <div class="jiyi1_word">
                            <p>做一个有“脸面”的人<br>上传头像，完善资料！</p>
                        </div>
                        <div class="jiyi1_btn">
                            <input type="button" class="task" title="完善个人资料" value="完善个人资料"/>
                        </div>
                    </li>

                    <li>
                        <div class="jiyi1_ico">
                            <i class="ico_info1"></i>
                        </div>
                        <div class="jiyi1_word">
                            <p>这儿潜伏着哪些旅行大神？<br>他们都怎么玩儿？</p>
                        </div>
                        <div class="jiyi1_btn">
                            <input type="button" class="task" title="逛逛达人" value="逛逛达人"/>
                        </div>
                    </li>

                    <li>
                        <div class="jiyi1_ico">
                            <i class="ico_info2"></i>
                        </div>
                        <div class="jiyi1_word">
                            <p>马蜂窝会员升级有礼包。<br>第一步，从打卡开始。</p>
                        </div>
                        <div class="jiyi1_btn">
                            <div class="green">
                                <input type="button" class="task" title="" value="已完成"/>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="center_right3">
            <div class="xieyouji">
                <h2>我的游记</h2>
                <span href="" title="写游记" class="btn_write">写游记</span>
            </div>
            <div class="notes">
                <div class="notes_pic"></div>
            </div>
        </div>
        <div class="center_right4">
            <div class="xiedianping">
                <h2>我的点评</h2>
            </div>
            <div class="xiedianpingA">
                <i class="ico_notes"></i>
                <div>
                    <p>
                        点评，不仅是旅途记忆，
                        <br/>
                        更是帮助他人的宝贵财富。
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer"></div>
</body>
</html>
