<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style_2.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<body id="login">
	<div class="login-logo">
		<a href="index.html"><img src="images/logo.gif" alt="" /></a>
	</div>
	<h2 class="form-heading">login</h2>
	<div class="app-cam">
		<form action="CheckServlet">
			<input type="text" class="text" value="请输入用户名"
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = '请输入用户名';}"
				name="username" id="name"> 
			<input type="password"
				value="请输入密码" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Password';}"
				name="password">
			<c:if test="${param.error==1}">
				<font color="red">用户名或密码错误</font>
			</c:if>
			<div class="submit">
				<input type="submit" onclick="myFunction()" value="Login">
			</div>


			<ul class="new">
				<li class="new_left"><p>
						<a href="forget.jsp">Forgot Password ?</a>
					</p></li>
				<li class="new_right"><p class="sign">
						New here ?<a href="register.jsp"> Sign Up</a>
					</p></li>

			</ul>
		</form>
	</div>
	<div class="copy_layout login">
		<p>《我这有》--- 属于你的资源和平台</p>
	</div>
</body>
</html>
