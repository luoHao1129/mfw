<!DOCTYPE html>
<html>
<head lang="en">
	<title>Spring Boot Demo - FreeMarker</title>
	
	<link href="/css/index.css" rel="stylesheet" />
</head>
<body>
		<img src="/images/你好.jpg" />
		<img src="/ni.jpg" />
		<h1 id="title">${title}</h1>
		
		
		<input type="text" name="email" id="email" />
		<button id="send">发送邮件</button>

	<script type="text/javascript" src="/webjars/jquery/2.1.4/jquery.min.js"></script>
	
	<script>
		$(function(){
			$('#send').click(function(){
				var email = $('#email').val();
				$.ajax({
					url:'/api/mail',
					type:'post',
					data:{'email':email},
					success:function(msg){
						alert(msg);
					}
				});
			});
		})
	</script>
</body>
</html>