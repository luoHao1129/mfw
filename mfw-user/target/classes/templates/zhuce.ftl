<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/zhuce.css"/>
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <title>Insert title here</title>
</head>

<body background="img/17.jpg">
<a href="index.html"><img src="img/fdc64b35ee7ea54908991461b31ca6f.png"
                          style="height: 200px ;width: 50px; margin-left: 820px;margin-top: 40px;"></a>
<div id="d1">
    <div id="d5">

        <form action="/doRegister" method="post">
            <span id="bo"><strong>注册验证</strong></span><span style="color: red">${error}</span>
            <input type="text" name="tel" id="input12" value="${user.tel}" placeholder="您的手机号码"/><span class="arr8"
                                                                                                       style="font-size: 8px; color: red;"></span>
            <!--<input type="text" name="usertel" id="input3" value="" placeholder="请输入手机号" /><span class="arr6" style="font-size: 8px; color: red;"></span>-->
            <input type="text" name="account" id="input1" value="${user.account}" placeholder="您的账号"/><span class="arr1"
                                                                                                            style="font-size: 8px; color: red;"></span>
            <input type="password" name="pwd" id="input7" value="" placeholder="您的密码"/><span class="arr2"
                                                                                             style="font-size: 8px; color: red;"></span>
            <input type="password" name="userpwd1" id="input8" value="" placeholder="确认密码"/><span class="arr3"
                                                                                                  style="font-size: 8px; color: red;"></span>
            <input type="text" name="name" id="input9" value="${user.name}" placeholder="真实姓名"/><br><span class="arr4"
                                                                                                          style="font-size: 8px; color: red;"></span>
            <input type="text" name="idcard" id="input10" value="${user.idcard}" placeholder="身份证号码"/><span class="arr5"
                                                                                                            style="font-size: 8px; color: red;"></span><br/>
            <input type="radio" id="input3" name="sex" checked value="男"/> 男<span class="arr6"
                                                                                  style="font-size: 8px; color: red;"></span>
            <input type="radio" id="input3" name="sex" value="女"/>女<span class="arr7"
                                                                         style="font-size: 8px; color: red;"></span><br/>
            <input type="text" name="smscode" id="smscode"
                   style="height: 30px;margin-left: 30px;border-radius: 5px; border: #ABABAB 1px solid;"
                   placeholder="请输入验证码"/>
            <input type="button" id="get_code" value="发送验证码"/><span class="code_msg"
                                                                    style="font-size: 8px; color: red;"></span>
            <div id="d2">
                <input type="submit" name="" id="input2" value="免费注册"/>

            </div>
        </form>

        <div id="d3">
            <span id="span1">注册视为同意</span><span id="span2">《马蜂窝用户协议》</span>
        </div>


    </div>
    <script>
        $("#input12").blur(function () {
            var phoneNumReg = /^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;
            // 通过正则表达式验证手机号
            if (!phoneNumReg.test($('#input12').val())) {
                $(".arr8").text("手机号码不能为空");
                return false;
            } else {
                $.ajax({
                    async: true,
                    type: "GET",
                    dataType: "json",
                    url: "/isPhone",
                    data: {"phone": $('#input12').val()},
                    success: function (msg) {
                        if (msg.msg == "手机号可用") {
                            $(".arr8").css("color", "green");
                        }
                        $(".arr8").text(msg.msg);
                    }
                });


            }
        });

        $('#input1').blur(function () {
            var user = $("#input1").val();
            if (user == "") {
                $(".arr1").text("姓名不能为空");
                return false;
            } else {
                $(".arr1").text("");
            }
        })

        $("#input7").blur(function () {
            var pwd = $("#input7").val();
            if (pwd == "") {
                $(".arr2").text("密码不能为空");
                return false;

            } else if (pwd.length < 6) {
                $(".arr2").text("密码必须等于或大于6个字符");
                return false;
            } else {
                $(".arr2").text("");
            }
        });
        $("#input8").blur(function () {
            var repwd = $("#input8").val();
            var pwd = $("#input7").val();
            if (pwd != repwd) {
                $(".arr3").text("两次输入的密码不一致");
                return false;
            } else {
                $(".arr3").text("");
            }
        });
        $("#input10").blur(function () {
            var idcard_patter =
                /^[1-9][0-9]{5}([1][9][0-9]{2}|[2][0][0|1][0-9])([0][1-9]|[1][0|1|2])([0][1-9]|[1|2][0-9]|[3][0|1])[0-9]{3}([0-9]|[X])$/;
            if (!idcard_patter.test($("#input10").val())) {
                $(".arr5").text("身份证号输入有误");
            } else {
                $(".arr5").text("");
            }
        });

        var maxtime = 60; //

        $("#get_code").click(function () {
            timer = setInterval("CountDown()", 1000);
            var phone = $("#input12").val();
            if (phone != null) {
                $.ajax({
                    async: true,
                    type: "GET",
                    dataType: "json",
                    url: "/sms",
                    data: {"phone": phone},
                    success: function (json) {

                        if (json.code == "y") {
                            $(".code_msg").text("发送成功！");
                        } else {
                            $(".code_msg").text("发送失败！");
                            maxtime = 0;
                        }

                    }
                });
            }
            $("#get_code").css("disabled", "disabled");
        });


        function CountDown() {
            if (maxtime >= 0) {
                var msg = maxtime + "秒后再次获取";
                $("#get_code").val(msg);
                --maxtime;
            } else {
                clearInterval(timer);
                msg = "点击获取验证码";
                $("#get_code").val(msg);
                maxtime = 60;
            }

        }
    </script>
    <script type="text/javascript">


    </script>

</body>

</html>
