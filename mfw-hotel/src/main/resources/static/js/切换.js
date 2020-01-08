// 住宿切换
$("a[data-id='1']").click(function () {
    $("a[data-id='1']").addClass("on");
    $("a[data-id='2']").removeClass("on");
    $("a[data-id='3']").removeClass("on");
    $("a[data-id='4']").removeClass("on");
    $("a[data-id='5']").removeClass("on");
    $("a[data-id='0']").removeClass("on");

    $("ul[data-id='1']").css("display", "block");
    $("ul[data-id='0']").css("display", "none");
    $("ul[data-id='2']").css("display", "none");
    $("ul[data-id='3']").css("display", "none");
    $("ul[data-id='4']").css("display", "none");
    $("ul[data-id='5']").css("display", "none");
});

$("a[data-id='0']").click(function () {
    $("a[data-id='0']").addClass("on");
    $("a[data-id='2']").removeClass("on");
    $("a[data-id='3']").removeClass("on");
    $("a[data-id='4']").removeClass("on");
    $("a[data-id='5']").removeClass("on");
    $("a[data-id='1']").removeClass("on");

    $("ul[data-id='0']").css("display", "block");
    $("ul[data-id='1']").css("display", "none");
    $("ul[data-id='2']").css("display", "none");
    $("ul[data-id='3']").css("display", "none");
    $("ul[data-id='4']").css("display", "none");
    $("ul[data-id='5']").css("display", "none");
});

$("a[data-id='2']").click(function () {
    $("a[data-id='2']").addClass("on");
    $("a[data-id='0']").removeClass("on");
    $("a[data-id='3']").removeClass("on");
    $("a[data-id='4']").removeClass("on");
    $("a[data-id='5']").removeClass("on");
    $("a[data-id='1']").removeClass("on");

    $("ul[data-id='2']").css("display", "block");
    $("ul[data-id='1']").css("display", "none");
    $("ul[data-id='0']").css("display", "none");
    $("ul[data-id='3']").css("display", "none");
    $("ul[data-id='4']").css("display", "none");
    $("ul[data-id='5']").css("display", "none");
});

$("a[data-id='3']").click(function () {
    $("a[data-id='3']").addClass("on");
    $("a[data-id='0']").removeClass("on");
    $("a[data-id='2']").removeClass("on");
    $("a[data-id='4']").removeClass("on");
    $("a[data-id='5']").removeClass("on");
    $("a[data-id='1']").removeClass("on");

    $("ul[data-id='3']").css("display", "block");
    $("ul[data-id='1']").css("display", "none");
    $("ul[data-id='0']").css("display", "none");
    $("ul[data-id='2']").css("display", "none");
    $("ul[data-id='4']").css("display", "none");
    $("ul[data-id='5']").css("display", "none");
});

$("a[data-id='4']").click(function () {
    $("a[data-id='4']").addClass("on");
    $("a[data-id='0']").removeClass("on");
    $("a[data-id='2']").removeClass("on");
    $("a[data-id='3']").removeClass("on");
    $("a[data-id='5']").removeClass("on");
    $("a[data-id='1']").removeClass("on");

    $("ul[data-id='4']").css("display", "block");
    $("ul[data-id='1']").css("display", "none");
    $("ul[data-id='0']").css("display", "none");
    $("ul[data-id='2']").css("display", "none");
    $("ul[data-id='3']").css("display", "none");
    $("ul[data-id='5']").css("display", "none");
});

$("a[data-id='5']").click(function () {
    $("a[data-id='5']").addClass("on");
    $("a[data-id='0']").removeClass("on");
    $("a[data-id='2']").removeClass("on");
    $("a[data-id='3']").removeClass("on");
    $("a[data-id='4']").removeClass("on");
    $("a[data-id='1']").removeClass("on");

    $("ul[data-id='5']").css("display", "block");
    $("ul[data-id='1']").css("display", "none");
    $("ul[data-id='0']").css("display", "none");
    $("ul[data-id='2']").css("display", "none");
    $("ul[data-id='3']").css("display", "none");
    $("ul[data-id='4']").css("display", "none");
});


// 酒店切换
$("a[date-id='1']").click(function () {
    $("a[date-id='1']").addClass("on");
    $("a[date-id='2']").removeClass("on");
    $("a[date-id='3']").removeClass("on");
    $("a[date-id='4']").removeClass("on");
    $("a[date-id='5']").removeClass("on");
    $("a[date-id='0']").removeClass("on");

    $("ul[date-id='1']").css("display", "block");
    $("ul[date-id='0']").css("display", "none");
    $("ul[date-id='2']").css("display", "none");
    $("ul[date-id='3']").css("display", "none");
    $("ul[date-id='4']").css("display", "none");
    $("ul[date-id='5']").css("display", "none");
});

$("a[date-id='0']").click(function () {
    $("a[date-id='0']").addClass("on");
    $("a[date-id='2']").removeClass("on");
    $("a[date-id='3']").removeClass("on");
    $("a[date-id='4']").removeClass("on");
    $("a[date-id='5']").removeClass("on");
    $("a[date-id='1']").removeClass("on");

    $("ul[date-id='0']").css("display", "block");
    $("ul[date-id='1']").css("display", "none");
    $("ul[date-id='2']").css("display", "none");
    $("ul[date-id='3']").css("display", "none");
    $("ul[date-id='4']").css("display", "none");
    $("ul[date-id='5']").css("display", "none");
});

$("a[date-id='2']").click(function () {
    $("a[date-id='2']").addClass("on");
    $("a[date-id='0']").removeClass("on");
    $("a[date-id='3']").removeClass("on");
    $("a[date-id='4']").removeClass("on");
    $("a[date-id='5']").removeClass("on");
    $("a[date-id='1']").removeClass("on");

    $("ul[date-id='2']").css("display", "block");
    $("ul[date-id='1']").css("display", "none");
    $("ul[date-id='0']").css("display", "none");
    $("ul[date-id='3']").css("display", "none");
    $("ul[date-id='4']").css("display", "none");
    $("ul[date-id='5']").css("display", "none");
});

$("a[date-id='3']").click(function () {
    $("a[date-id='3']").addClass("on");
    $("a[date-id='0']").removeClass("on");
    $("a[date-id='2']").removeClass("on");
    $("a[date-id='4']").removeClass("on");
    $("a[date-id='5']").removeClass("on");
    $("a[date-id='1']").removeClass("on");

    $("ul[date-id='3']").css("display", "block");
    $("ul[date-id='1']").css("display", "none");
    $("ul[date-id='0']").css("display", "none");
    $("ul[date-id='2']").css("display", "none");
    $("ul[date-id='4']").css("display", "none");
    $("ul[date-id='5']").css("display", "none");
});

$("a[date-id='4']").click(function () {
    $("a[date-id='4']").addClass("on");
    $("a[date-id='0']").removeClass("on");
    $("a[date-id='2']").removeClass("on");
    $("a[date-id='3']").removeClass("on");
    $("a[date-id='5']").removeClass("on");
    $("a[date-id='1']").removeClass("on");

    $("ul[date-id='4']").css("display", "block");
    $("ul[date-id='1']").css("display", "none");
    $("ul[date-id='0']").css("display", "none");
    $("ul[date-id='2']").css("display", "none");
    $("ul[date-id='3']").css("display", "none");
    $("ul[date-id='5']").css("display", "none");
});

$("a[date-id='5']").click(function () {
    $("a[date-id='5']").addClass("on");
    $("a[date-id='0']").removeClass("on");
    $("a[date-id='2']").removeClass("on");
    $("a[date-id='3']").removeClass("on");
    $("a[date-id='4']").removeClass("on");
    $("a[date-id='1']").removeClass("on");

    $("ul[date-id='5']").css("display", "block");
    $("ul[date-id='1']").css("display", "none");
    $("ul[date-id='0']").css("display", "none");
    $("ul[date-id='2']").css("display", "none");
    $("ul[date-id='3']").css("display", "none");
    $("ul[date-id='4']").css("display", "none");
});