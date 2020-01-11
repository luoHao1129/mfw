$(function(){
	/*酒店登录信息验证*/
	$("#hm_username_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入酒店管理员账号'){
		$(this).val('');
		}
	});
	$("#hm_username_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入酒店管理员账号');
		}
	});
	$("#hm_password_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入密码'){
			$(this).val('');
		}
	});
	$("#hm_password_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入密码');
		}
	});
	$("#hm_code_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入验证码'){
			$(this).val('');
		}
	});
	$("#hm_code_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入验证码');
		}
	});
	$(".hm_login_error").Validform({
		tiptype:function(msg,o,cssctl){
			var objtip=$(".hm_error_box");
			cssctl(objtip,o.type);
			objtip.text(msg);
		},
		ajaxPost:true
	});
	
	
	/*航班登录信息验证*/
	$("#fm_username_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入航空部管理员帐号'){
			$(this).val('');
		}
	});
	$("#fm_username_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入航空部管理员帐号');
		}
	});
	$("#fm_password_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入密码'){
			$(this).val('');
		}
	});
	$("#fm_password_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入密码');
		}
	});
	$("#fm_code_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入验证码'){
			$(this).val('');
		}
	});
	$("#fm_code_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入验证码');
		}
	});
	$(".fm_login_error").Validform({
		tiptype:function(msg,o,cssctl){
			var objtip=$(".fm_error_box");
			cssctl(objtip,o.type);
			objtip.text(msg);
		},
		ajaxPost:true
	});
	
	
	/*超级管理员登录信息验证*/
	$("#sys_username_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入超级管理员账号'){
			$(this).val('');
		}
	});
	$("#sys_username_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入超级管理员账号');
		}
	});
	$("#sys_password_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入密码'){
			$(this).val('');
		}
	});
	$("#sys_password_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入密码');
		}
	});
	$("#sys_code_hide").focus(function(){
		var username = $(this).val();
		if(username=='输入验证码'){
			$(this).val('');
		}
	});
	$("#sys_code_hide").focusout(function(){
		var username = $(this).val();
		if(username==''){
			$(this).val('输入验证码');
		}
	});
	$(".sys_login_error").Validform({
		tiptype:function(msg,o,cssctl){
			var objtip=$(".sys_error_box");
			cssctl(objtip,o.type);
			objtip.text(msg);
		},
		ajaxPost:true
	});
		
		
});



$(function(){		
	// 验证码 及 刷新
	function code() {
		var str = "qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOPLKJHGFDSAZXCVBNM";
		var str1 = 0;
		for(var i = 0; i < 4; i++) {
			str1 += str.charAt(Math.floor(Math.random() * 62))
		}
		str1 = str1.substring(1)
		$(".codes").text(str1);
	};
	code();
	$(".codes").click(code);
});	



$(function(){	
	//背景
	$(".screenbg ul li").each(function(){
		$(this).css("opacity","0");
	});
	$(".screenbg ul li:first").css("opacity","1");
	var index = 0;
	var t;
	var li = $(".screenbg ul li");	
	var number = li.size();
	function change(index){
		li.css("visibility","visible");
		li.eq(index).siblings().animate({opacity:0},3000);
		li.eq(index).animate({opacity:1},3000);
	};
	function show(){
		index = index + 1;
		if(index<=number-1){
			change(index);
		}else{
			index = 0;
			change(index);
		}
	};
	t = setInterval(show,8000);
	//根据窗口宽度生成图片宽度
	var width = $(window).width();
	$(".screenbg ul img").css("width",width+"px");
});	
		
