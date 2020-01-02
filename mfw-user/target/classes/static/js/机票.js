var province = ["成都", "北京", "上海", "广州", "重庆", "西安", "昆明", "杭州", "深圳", "三亚", "厦门", "南京"];

var city = [["成都-北京", "成都-大凉", "成都-阿富", "成都-欧洲", "成都-杭州", "成都-北京", "成都-亚洲", "成都-青海", "成都-魔界"],
    ["北京-成都", "北京-东京", "北京-南京", "北京-内山", "北京-峨眉", "北京-汴梁", "北京-内江", "北京-怡宝", "北京-可乐"],
    ["上海-北京", "上海-天津", "上海-山东", "上海-宿迁", "上海-乐山", "上海-南充", "上海-乐山", "上海-师大", "上海-厦大"],
    ["广州-北京", "广州-深圳", "广州-泸州", "广州-广东", "广州-广西", "广州-法国", "广州-澳洲", "广州-复旦", "广州-交大"],
    ["重庆-北京", "重庆-北京", "重庆-亚洲", "重庆-青海", "重庆-魔界", "重庆-美国", "重庆-英国", "重庆-北大", "重庆-清华"],
    ["西安-北京", "西安-美洲", "西安-非洲", "西安-南极", "西安-北极", "西安-雪碧", "西安-怡宝", "西安-芬达", "西安-百事"],
    ["昆明-北京", "昆明-吉林", "昆明-长春", "昆明-资中", "昆明-达州", "昆明-雪碧", "昆明-怡宝", "昆明-芬达", "昆明-百事"],
    ["杭州-北京", "杭州-广安", "杭州-雅安", "杭州-神界", "杭州-地狱", "杭州-雪碧", "杭州-怡宝", "杭州-芬达", "杭州-百事"],
    ["深圳-北京", "深圳-美国", "深圳-英国", "深圳-北大", "深圳-清华", "深圳-雪碧", "深圳-怡宝", "深圳-芬达", "深圳-百事"],
    ["三亚-北京", "三亚-法国", "三亚-澳洲", "三亚-复旦", "三亚-交大", "三亚-雪碧", "三亚-怡宝", "三亚-芬达", "三亚-百事"],
    ["厦门-北京", "厦门-南充", "厦门-乐山", "厦门-师大", "厦门-厦大", "厦门-雪碧", "厦门-怡宝", "厦门-芬达", "厦门-百事"],
    ["南京-北京", "南京-汴梁", "南京-内江", "南京-怡宝", "南京-可乐", "南京-雪碧", "南京-怡宝", "南京-芬达", "南京-百事"]];

var price = [["￥500", "￥900", "￥489", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥478", "￥1200", "￥889", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥258", "￥700", "￥409", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥000", "￥300", "￥189", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥5100", "￥9200", "￥4389", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥500", "￥900", "￥489", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥500", "￥9030", "￥4389", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥5030", "￥900", "￥4389", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥500", "￥9030", "￥4839", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥5030", "￥9300", "￥4389", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥500", "￥9030", "￥489", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"],
    ["￥5300", "￥9300", "￥4839", "￥300", "￥189", "￥900", "￥489", "￥300", "￥189"]]
//鼠标点击事件  点击到对应的ID标签时就会触发
$("#sh").click(function () {
    //获取当前文本
    var a = $("#sh").text();

    var index;
    //循环城市数组
    for (var i = 0; i < province.length; i++) {
        //判断 当前点击事件的文本和数组的某个文本相对应时  将这个文本赋值给index
        if (a == province[i]) {
            index = i;
        }
    }
    //循环 条件为点击事件获取的index值
    for (var b = 0; b < city[index].length; b++) {
        //在ID为#C的标签进行输出  city时到达城市的数组 b为能和index值想匹配的下标（比如说index为成都 那b能匹配到的就是带有成都的值）
        $("#c" + b).html(city[index][b]);
        //这是输出钱  输出方式和城市机票的方法一样
        $("#p" + b).html(price[index][b]);
    }
});

$("#bj").click(function () {

    var a = $("#bj").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#cd").click(function () {

    var a = $("#cd").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#cq").click(function () {

    var a = $("#cq").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#gz").click(function () {

    var a = $("#gz").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#xa").click(function () {

    var a = $("#xa").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#hz").click(function () {

    var a = $("#hz").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#sy").click(function () {

    var a = $("#sy").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#km").click(function () {

    var a = $("#km").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#sz").click(function () {

    var a = $("#sz").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#xm").click(function () {

    var a = $("#xm").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});

$("#nj").click(function () {

    var a = $("#nj").text();

    var index;
    for (var i = 0; i < province.length; i++) {
        if (a == province[i]) {
            index = i;
        }
    }

    for (var b = 0; b < city[index].length; b++) {
        $("#c" + b).html(city[index][b]);
        $("#p" + b).html(price[index][b]);
    }
});	
