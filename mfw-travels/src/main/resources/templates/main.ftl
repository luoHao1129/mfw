
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>旅游就选马蜂窝——马蜂窝</title>
    <!-- <link href="http://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup:css+mfw-header.2015^YlVS^1566868943.css"
     rel="stylesheet" type="text/css"> -->
    <!-- <link href="http://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup:css+mfw-header.2015^YlVS^1566868943.css"
     rel="stylesheet" type="text/css"> -->
    <link rel="shortcut icon" href="img/MFW头像.jfif" />
    <!-- <link href="http://css.mafengwo.net/css/cv/css+mfw-index.2015:css+jquery-ui-1.9.1.custom.min:css+hotel+datepicker-range^ZFM^1563871867.css"
    rel="stylesheet" type="text/css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="css/index.css"/> -->
    <link rel="stylesheet" type="text/css" href="css/head.css"/>

    <!-- <link rel="stylesheet" type="text/css" href="css/搜索框.css"/> -->
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
    </script>

    <style type="text/css">
        .banner_all{
            /* height: 3023px; */
            width: 1519px;
        }
    </style>

</head>
<body class="banner_all">

<input type="hidden" id="pageURL" value=""/>



<input type="hidden" value="<%=tiaoz%>" id="tiaoz">

<div class="hd">
    <div class="head">
        <img src="img/logo.PNG" class="logo" >
        <ul>
            <li class="hd_li  in " id="index"><a id="index_a" class="hd_li_a go_lv ">首页</a></li>
            <li class="hd_li" id="destination_index"><a id="destination_a" class="hd_li_a">目的地</a></li>
            <li class="hd_li" id="stratey"><a id="stratey_a" href="strategy.html" class="hd_li_a">旅游攻略</a></li>
            <li class="go hd_li" id="go_journey">
                <a id="go_journey_a" class="hd_li_a">去旅行&nbsp;v</a>
                <ul id="go_journey_list">
                    <li class="go_li"><a href="">自由行</a></li>
                    <li class="go_li"><a href="">跟团游</a></li>
                    <li class="go_li"><a href="">当地游</a></li>
                    <li class="go_li"><a href="">邮轮</a></li>
                    <li class="go_li"><a href="">签证</a></li>
                </ul>
            </li>
            <li class="hd_li" id="plane_ticket"><a id="plane_ticket_a" class="hd_li_a">机票</a></li>
            <li class="hd_li" id="hotel"><a id="hotel_a" class="hd_li_a">订酒店</a></li>
            <li class="hd_li" ><a href="" class="hd_li_a">社区&nbsp;v</a></li>
            <li class="hd_li"><a href="https://www.mafengwo.cn/app/intro/gonglve.php" class="hd_li_a">APP</a></li>

            <div class="logo_lxz">
                <a href=""><img src="img/logo2.PNG" ></a>
            </div>


            <div class="search_input">
                <input type="text" name="search" value=""/>
                <img src="img/search%20(2).png" />
            </div>
        </ul>
        <div class="login_div">
            <ul>
                <li><a href=""><img src="img/weibo.png" ></a></li>
                <li><a href=""><img src="img/qq.png" >    </a></li>
                <li><a href=""><img src="img/weixin.png"></a></li>

                <li class="login_li"><a href="login.jsp">登录</a></li>
                <li class="line">|</li>
                <li class="touxiang_li"><a href="zhuce.jsp">注册</a></li>

            </ul>
        </div>
    </div>
</div>


<div id="pages">
<#include "index.ftl">

</div>


<script type="text/javascript" src="js/main.js"></script>




<link href="https://css.mafengwo.net/css/mfw-footer.css?1558532347" rel="stylesheet" type="text/css">

<div id="footer">
    <div class="ft-content" style="width: 1105px">
        <div class="ft-info clearfix">
            <dl class="ft-info-col ft-info-intro">
                <dd><strong>马蜂窝旅游网</strong></dd>
                <dd>中国年轻一代用得更多的旅游网站</dd>
                <dd>上亿旅行者共同打造的<strong>"旅行神器"</strong></dd>
                <dd><strong>60,000</strong> 多个全球旅游目的地</dd>
                <dd><strong>600,000</strong> 个细分目的地新玩法</dd>
                <dd><strong>760,000,000</strong> 次攻略下载</dd>
                <dd><strong>38,000</strong> 家旅游产品供应商</dd>
            </dl>
            <dl class="ft-info-col ft-info-about">
                <dt>关于我们</dt>
                <dd><a href="http://www.mafengwo.cn/s/about.html" rel="nofollow">关于马蜂窝</a><a href="http://www.mafengwo.cn/s/contact.html"
                                                                                             class="m_l_10" rel="nofollow">联系我们</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/private.html" rel="nofollow">隐私政策</a><a href="http://www.mafengwo.cn/s/logo.html"
                                                                                              rel="nofollow" class="m_l_10">商标声明</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/agreement.html" rel="nofollow">服务协议</a><a href="http://www.mafengwo.cn/s/rules.html"
                                                                                                rel="nofollow" class="m_l_10">游记协议</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/salesagreement.html" rel="nofollow">商城平台服务协议</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/property.html" rel="nofollow">网络信息侵权通知指引</a></dd>
                <dd style="white-space: nowrap;"><a href="http://www.mafengwo.cn/s/monitor.html" rel="nofollow">马蜂窝旅游网服务监督员</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/sitemap.html" target="_blank">网站地图</a><a class="joinus highlight m_l_10"
                                                                                               title="马蜂窝团队招聘" target="_blank" href="https://app.mokahr.com/apply/mafengwo1/173#/page/社会招聘?_k=j4j3ux" rel="nofollow">加入马蜂窝</a></dd>
            </dl>
            <dl class="ft-info-col ft-info-service">
                <dt>旅行服务</dt>
                <dd>
                    <ul class="clearfix">
                        <li><a target="_blank" href="http://www.mafengwo.cn/gonglve/">旅游攻略</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/hotel/">酒店预订</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/sales/">旅游特价</a></li>
                        <li><a target="_blank" href="http://zuche.mafengwo.cn/">国际租车</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/wenda/">旅游问答</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/insure/">旅游保险</a></li>
                        <li><a target="_blank" href="http://z.mafengwo.cn">旅游指南</a></li>
                        <li><a target="_blank" href="http://huoche.mafengwo.cn">订火车票</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/travel-news/">旅游资讯</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/app/intro/gonglve.php">APP下载</a></li>
                        <li style="width: 120px;"><a target="_blank" href="http://www.mafengwo.cn/sales/alliance.php" class="highlight">旅行商城全球商家入驻</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="ft-info-col ft-info-qrcode">
                <dd>
                    <span class="ft-qrcode-tejia"></span>
                    <p>马蜂窝良品<br>官方服务号</p>
                </dd>
                <dd>
                    <span class="ft-qrcode-weixin"></span>
                    <p>马蜂窝旅游<br>订阅号</p>
                </dd>
                <dd>
                    <span class="ft-qrcode-weixin" style="background-image: url('https://p3-q.mafengwo.net/s10/M00/48/A9/wKgBZ1t_4sSAVJ6uAAAlzJ0PZgU881.png?imageMogr2%2Fthumbnail%2F%2194x90r%2Fgravity%2FCenter%2Fcrop%2F%2194x90%2Fquality%2F90')"></span>
                    <p>马蜂窝APP<br>扫描立即下载</p>
                </dd>
            </dl>
            <dl class="ft-info-social">
                <dt>旅游之前，先上马蜂窝！</dt>
                <dd>
                    <a class="ft-social-weibo" target="_blank" href="http://weibo.com/mafengwovip" rel="nofollow"><i class="ft-social-icon"></i></a>
                    <a class="ft-social-qqt" target="_blank" href="http://t.qq.com/mafengwovip" rel="nofollow"><i class="ft-social-icon"></i></a>
                    <a class="ft-social-qzone" target="_blank" href="http://1213600479.qzone.qq.com/" rel="nofollow"><i class="ft-social-icon"></i></a>
                </dd>
            </dl>
        </div>

        <div class="ft-links">
            <a target="_blank" href="http://china.makepolo.com/">马可波罗</a><a target="_blank" href="http://www.onlylady.com/">Onlylady女人志</a><a
                    target="_blank" href="http://trip.elong.com/">艺龙旅游指南</a><a target="_blank" href="http://www.cncn.com">欣欣旅游网</a><a
                    target="_blank" href="http://www.8264.com/">户外运动</a><a target="_blank" href="http://www.yue365.com/">365音乐网</a><a
                    target="_blank" href="http://ishare.iask.sina.com.cn/">爱问共享资料</a><a target="_blank" href="http://www.uzai.com/">旅游网</a><a
                    target="_blank" href="http://www.zongheng.com/">小说网</a><a target="_blank" href="http://www.xuexila.com/">学习啦</a><a
                    target="_blank" href="http://www.yododo.com">游多多自助游</a><a target="_blank" href="http://www.zhcpic.com/">问答</a><a
                    target="_blank" href="http://huoche.mafengwo.cn/">火车时刻表</a><a target="_blank" href="http://www.lvmama.com">驴妈妈旅游网</a><a
                    target="_blank" href="http://www.haodou.com/">好豆美食网</a><a target="_blank" href="http://www.taoche.com/">二手车</a><a
                    target="_blank" href="http://www.lvye.cn">绿野户外</a><a target="_blank" href="http://www.tuniu.com/">途牛旅游网</a><a
                    target="_blank" href="http://www.mapbar.com/">图吧</a><a target="_blank" href="http://www.chnsuv.com">SUV联合越野</a><a
                    target="_blank" href="http://www.uc.cn/">手机浏览器</a><a target="_blank" href="http://sh.city8.com/">上海地图</a><a
                    target="_blank" href="http://www.tianqi.com/">天气预报查询</a><a target="_blank" href="http://www.ly.com/">同程旅游</a><a
                    target="_blank" href="http://www.tieyou.com/">火车票</a><a target="_blank" href="https://daxue.mafengwo.cn/#/">马蜂窝大学</a><a
                    target="_blank" href="https://m.weelv.com">马尔代夫旅游</a><a target="_blank" href="http://www.yunos.com/">YunOS</a><a
                    target="_blank" href="http://you.ctrip.com/">携程旅游</a><a target="_blank" href="http://www.jinjiang.com">锦江旅游</a><a
                    target="_blank" href="http://www.huoche.net/">火车时刻表</a><a target="_blank" href="http://www.tripadvisor.cn/">TripAdvisor</a><a
                    target="_blank" href="http://www.tianxun.com/">天巡网</a><a target="_blank" href="http://www.mayi.com/">短租房</a><a
                    target="_blank" href="http://www.zuzuche.com">租租车</a><a target="_blank" href="http://www.5fen.com/">五分旅游网</a><a
                    target="_blank" href="http://www.zhuna.cn/">酒店预订</a><a target="_blank" href="http://www.ailvxing.com">爱旅行网</a><a
                    target="_blank" href="http://360.mafengwo.cn/all.php">旅游</a><a target="_blank" href="http://vacations.ctrip.com/">旅游网</a><a
                    target="_blank" href="http://www.wed114.cn">wed114结婚网</a><a target="_blank" href="http://www.chexun.com/">车讯网</a><a
                    target="_blank" href="http://www.aoyou.com/">遨游旅游网</a><a target="_blank" href="http://www.91.com/">手机</a>
            <a href="http://www.mafengwo.cn/s/link.html" target="_blank">更多友情链接&gt;&gt;</a>
        </div>

        <div class="ft-copyright">
            <a href="http://www.mafengwo.cn"><i class="ft-mfw-logo"></i></a>
            <p>© 2019 Mafengwo.cn
                <a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP备11015476号</a>
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502013401" target="_blank"><img src="https://images.mafengwo.net/images/footer/police_record.png"
                                                                                                                           width="12" style="margin:0 2px 4px 0;">京公网安备11010502013401号</a>
                <a href="https://n2-q.mafengwo.net/s14/M00/CB/D1/wKgE2l1eMEaAY8n4AA4wSFefaLc94.jpeg" target="_blank" rel="nofollow">京ICP证110318号</a>
                <span class="m_l_10">违法和不良信息举报电话: 010-83416877 举报邮箱: mfwjubao@mafengwo.com</span>
            </p>
            <p>
                <a href="https://n2-q.mafengwo.net/s14/M00/CB/4C/wKgE2l1eMB-AFs0sAB7jJAiDaNA17.jpeg" target="_blank" rel="nofollow"
                   class="m_l_10">网络出版服务许可证</a>
                <a href="https://b4-q.mafengwo.net/s14/M00/CB/FA/wKgE2l1eMFGAQI4LABmNJYlBasQ00.jpeg" target="_blank" rel="nofollow"
                   class="m_l_10">增值电信业务经营许可证</a>
                <a href="https://p1-q.mafengwo.net/s14/M00/B0/74/wKgE2l1CgbCAXc97ACZLiibfY8M62.jpeg" target="_blank" rel="nofollow"
                   class="m_l_10">营业执照</a>
                <a href="https://p1-q.mafengwo.net/s14/M00/CC/28/wKgE2l1eMF2AcAOpABhXGZtsUJ820.jpeg" target="_blank" rel="nofollow"
                   class="m_l_10">广播电视节目制作经营许可证</a>
                <a href="/sales/uhelp/doc" target="_blank" rel="nofollow" class="m_l_10">帮助中心</a>
                <span class="m_l_10">马蜂窝客服：国内</span><span class="highlight">4006-345-678</span>
                <span class="m_l_10">海外</span> <span class="highlight">+86-10-8341-6888</span>
            </p>
        </div>
        <div class="ft-safety">
            <a class="s-a" target="_blank" href="https://search.szfw.org/cert/l/CX20140627008255008321" id="___szfw_logo___"></a>
            <a class="s-b" href="https://ss.knet.cn/verifyseal.dll?sn=e130816110100420286o93000000&amp;ct=df&amp;a=1&amp;pa=787189"
               target="_blank" rel="nofollow"></a>
            <a class="s-c" href="http://www.itrust.org.cn/Home/Index/itrust_certifi/wm/1669928206.html" target="_blank" rel="nofollow"></a>
            <a class="s-d" href="http://www.itrust.org.cn/Home/Index/satification_certificate/wm/MY2019051501.html" target="_blank"
               rel="nofollow"></a>
        </div>

    </div>
</div>

</body>
</html>