<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>

    <style type="text/css">
        *{
            margin: 0px;
            padding: 0px;
        }

        .title_div{
            height: 506px;
        }
        .title_bj{
            position: absolute;
            /* opacity: 0.5; */
            width: 100%;
            height: 506px;
            z-index: -1;
        }

        .title_text{
            display: block;
            margin: auto;
            position: relative;
            top: 400px;
            left: 30px;
            height: 30px;
            width: 700px;
            font-size: 30px;
            font-weight: bold;
            color: #FFFFFF;
            padding: 10px;
        }
        .ding{
            width: 40px;
            position: relative;
            left: 700px;
            top: -50px;
        }
        .ding_img{
            display: block;
            width: 45px;
            height: 40px;
        }
        .ding span{
            display: block;
            font-size: 20px;
            margin-left: 10px;
        }

        .head_pic{
            /* background-image: url(img/3月/西安.jpeg); */
            height: 140px;
            width: 140px;
            border-radius: 50%;
            position: absolute;
            left: -160px;
            top: 0px;
        }

        .head_pic img{
            height: 140px;
            width: 140px;
            border-radius: 50%;
        }
        .user_text{
            height: 80px;
            box-shadow: 2px 0px 5px #B7B7B7;
        }
        .user_data{
            width: 600px;
            margin-left: 450px;
        }

        .user_data ul li{
            display: inline-block;
            margin-right: 10px;
        }

        .user_data ul li:hover{
            cursor: pointer;
        }
        .user_name{
            color: #FEA901;
        }
        .user_LV{
            color: #C92436;
            font-weight: bold;
        }
        .user_time{
            color: #BBBBBB;
        }
        .user_liul_icn{
            height: 20px;
            width: 30px;
            opacity: 0.5;
        }
        .user_liul{
            color: #BBBBBB;
        }

        .shoucang{
            border-left: 1px #EEEEEE solid;
            border-right: 1px #EEEEEE solid;
            width: 100px;
            height: 80px;
            text-align: center;
            float: right;
            margin-top: -22px;

        }
        .shoucang img{

            display: block;
            margin: auto;
        }

        .fenxiang{
            border-right: 1px #EEEEEE solid;
            width: 100px;
            height: 80px;
            text-align: center;
            float: right;
            margin-top: -22px;
            margin-right: 200px;
        }
        .fenxiang img{

            display: block;
            margin: auto;
        }

        .travels_content{
            width: 70%;
            margin: auto;
            margin-top: 30px;
        }

        .travels_content_left{

            width: 70%;
            display: inline-block;
        }
        .travels_content_left_text{
            line-height: 30px;
            font-family: "宋体";
        }

        .travels_content_left img{
            width: 100%;
        }

        .travels_content_right{
            float: right;
            width: 29%;
            margin-left: 10px;

        }
        .travels_content_right .right_d{
            display: block;
        }

        .rigth_img{
            width: 200px;
            height: 200px;
        }


        .right_jilian{
            height: 200px;
            width: 200px;
        }



    </style>
</head>
<body>

    <div class="title_div">
        <img class="title_bj" src="../${travels.tpic }" >

        <span class="title_text">${travels.title } <span/>
                <div class="ding">
                    <img class="ding_img" src="../img/ding.PNG" />
                    <span>${travels.likeNum }</span>
                </div>

                <div class="head_pic">
                    <img src="../img/3月/西安.jpeg" >
                </div>
    </div>

<div class="user_text">
    <div class="user_data">
        <ul>
            <li><span class="user_name">darkangel (深圳) </span></li>
            <li><span class="user_LV">LV.15</span></li>
            <li><img class="user_guanzhu" src="../img/guanzhu.PNG"></li>
            <li><span class="user_time">${travels.date?string('yyyy-MM-dd hh:mm:ss')}</span></li>
            <li><img class="user_liul_icn" src="../img/liul.PNG"></li>
            <li><span class="user_liul">${travels.pageviews }/15</span></li>

        </ul>
    </div>

    <div class="fenxiang">
        <img src="../img/fenxiang.PNG" />
        <span>6</span><span>分享</span>
    </div>
    <div class="shoucang">
        <img src="../img/shoucang.PNG" />
        <span>24</span><span>收藏</span>
    </div>
</div>
<div class="travels_content">
    <div class="travels_content_left">
		<#list travels.contents as cont>
				<span class="travels_content_left_text">
					${cont.text }
				</span>
            <img src="../${cont.pic }" />



        </#list>
    </div>

    <div class="travels_content_right">
        <span class="right_d">相关目的地:</span>
        <img class="rigth_img" src="../img/10月/澳大利亚.png"/>
        <div class="right_num">
            <span>有</span><span>933568</span><span>张照片</span>
        </div>
        <img class="right_jilian" src="../img/11月/更多11.png" />


    </div>
</div>

</body>
</html>