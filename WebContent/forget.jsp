<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<head>
<title>Forget</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style_2.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->

<!-- Bootstrap Core JavaScript -->
<link href="css/slide-unlock.css" rel="stylesheet">
<script src="js/bootstrap.min.js"></script>
 <script src="js/jquery.min.js"></script> 
<script src="js/jquery.slideunlock.js"></script> 
</head>
<body id="login">
  <div class="login-logo">
    <a href="#"><img src="images/logo.gif" alt=""/></a>
  </div>
  <h2 class="form-heading">Forget</h2>
  <form class="form-signin app-cam" action="ForgetServlet">
      <p>请输入你的手机号码</p>
      <input type="text" class="form-control1" placeholder="手机号码" autofocus="" name="tel">
      <p>请输入新的用户名</p>
      <input type="username" class="form-control1" placeholder="用户名" name="username">
      <p>请输入新的密码</p>
      <input type="password" class="form-control1" placeholder="密码" name="password">
    <div id="slider">
    <div id="slider_bg"></div>
    <span id="label">>></span> <span id="labelTip">拖动滑块验证</span> </div>
  
      <script>
    $(function () {
        var slider = new SliderUnlock("#slider",{
				successLabelTip : "验证成功"	
			},function(){
		
        	});
        slider.init();
    })
  
</script> 

 <div class="submit"><input type="submit" value="确认修改"></div>

      </form>
   <div class="copy_layout login">
   <p>《我这有》--- 属于你的资源和平台</p>
   </div>

</body>
</html>