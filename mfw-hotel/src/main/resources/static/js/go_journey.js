var flag;
// 国内旅游联动
$("#gn").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "477px");
    $(".guonei").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$(".icon").mouseenter(function () {
    flag = 1;
});

$(".guojia_xiangqing").mouseenter(function () {
    flag = 1;
});
$(".guojia_xiangqing").mouseleave(function () {
    $(".guojia_xiangqing").css("border-top", "none");
    $(".guojia_xiangqing").css("border-bottom", "none");
    $(".guojia_xiangqing").css("border-right", "none");
    $(".guojia_xiangqing").css("height", "476px");
    $(".guonei").css("opacity", "0");
    $(".riben").css("opacity", "0");
    $(".dny").css("opacity", "0");
    $(".gat").css("opacity", "0");
    $(".om").css("opacity", "0");
    $(".az").css("opacity", "0");
    $(".rm").css("opacity", "0");
    $(".jinka").css("display", "block");

    flag = 0;
});

$("#gn").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".guonei").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;

});


// 日本旅游联动
$("#rb").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "479px");
    $(".riben").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$("#rb").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".riben").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;
});
// 东南亚联动
$("#bny").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "479px");
    $(".dny").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$("#bny").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".dny").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;
});
// 港澳台联动
$("#gat").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "479px");
    $(".gat").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$("#gat").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".gat").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;
});
// 欧美联动
$("#om").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "479px");
    $(".om").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$("#om").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".om").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;
});
// 澳洲联动
$("#az").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "479px");
    $(".az").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$("#az").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".az").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;
});
// 热门联动
$("#rm").mouseenter(function () {
    $(".guojia_xiangqing").css("border-top", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-bottom", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("border-right", "#FF9D00 2px solid");
    $(".guojia_xiangqing").css("height", "478px");
    $(".rm").css("opacity", "1");
    $(".jinka").css("display", "none");
    flag = 0;
});
$("#rm").mouseleave(function () {
    if (flag != 1) {
        $(".guojia_xiangqing").css("border-top", "none");
        $(".guojia_xiangqing").css("border-bottom", "none");
        $(".guojia_xiangqing").css("border-right", "none");
        $(".guojia_xiangqing").css("height", "476px");
        $(".rm").css("opacity", "0");
        $(".jinka").css("display", "block");
    }
    flag = 0;
});
