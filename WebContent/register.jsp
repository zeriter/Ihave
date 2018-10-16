
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% request.setCharacterEncoding("utf-8");%> 
<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
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
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
	function getXHR() {
		var xmlHttp;
		try {
			xmlHttp = new XMLHttpRequest();
		} catch (e) {
			try {
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					alert("你的浏览器不支持ajax");
					return false;
				}
			}
		}
		return xmlHttp;
	}

	function ajaxfunction1() {
		if (document.getElementById("email").value=="") {
			return;
		}
		//发出已补请求  
		//1/得到xhr对象  
		var xhr = getXHR();
		//2.注册状态变化监听器  

		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					document.getElementById("msg").innerHTML = xhr.responseText;
				}
			}

		}
		//3.建立与服务器的连接  
		xhr.open("POST", "AddServletAjax" + "?time=" + new Date().getTime());
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		//4.向服务器发出请求  
		xhr.send("email=" + document.getElementById("email").value);
	}
	</script>
	<script>
		function ajaxfunction2() {
		if (document.getElementById("username").value=="") {
			return;
		}
		//发出已补请求  
		//1/得到xhr对象  
		var xhr = getXHR();
		//2.注册状态变化监听器  

		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					document.getElementById("usn").innerHTML = xhr.responseText;
				}
			}

		}
		//3.建立与服务器的连接  
		xhr.open("POST", "AddServletAjax1" + "?time=" + new Date().getTime());
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		//4.向服务器发出请求  
		xhr.send("username=" + document.getElementById("username").value);
	}
	</script>
	<script>
		function ajaxpassword() {
		if (document.getElementById("password2").value=="") {
			return;
		}
		//发出已补请求  
		//1/得到xhr对象  
		var xhr = getXHR();
		//2.注册状态变化监听器  

		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				if (xhr.status == 200) {
					document.getElementById("pas").innerHTML = xhr.responseText;
				}
			}

		}
		//3.建立与服务器的连接  
		xhr.open("POST", "AddServletPasswordAjax" + "?time=" + new Date().getTime());
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		//4.向服务器发出请求  
		xhr.send("password1=" + document.getElementById("password1").value + "&password2=" + document.getElementById("password2").value);
	}
	</script>
	

<script type="text/javascript">
	function notnull1(){
		var n = document.getElementById("name").value;
		var a = document.getElementById("address").value;
		var e = document.getElementById("email").value;
		var s = document.getElementById("school").value;
		var t = document.getElementById("tel").value;
		var un = document.getElementById("username").value;
		var p1 = document.getElementById("password1").value;
		var p2 = document.getElementById("password2").value;

		if (n == null || n.length == 0) {
			alert("不能没有名字的～");
			return;
		}
		if (a == null || a.length == 0) {
			alert("地址不能为空哦");
			return;
		}
		if (e == null || e.length == 0) {
			alert("没有邮箱不可以注册");
			return;
		}
		if (s == null || s.length == 0) {
			alert("学校不能为空");
			return;
		}
		if (un == null || un.length == 0) {
			alert("请输入用户名");
			return;
		}
		if (p1 == null || p1.length == 0) {
			alert("请输入密码");
			return;
		}
		if (p2 == null || p2.length == 0) {
			alert("请确认密码");
			return;
		}
		if (t == null || t.length == 0) {
			alert("请输入电话号码");
			return;
		}

		if (!checkbox1.checked) {
			alert("同意条款之后才能注册哦");
			return;
		}
		//用代码来提交表单，首先获得表单控件

		document.getElementById("go").submit();
	}
</script>

</head>
<body id="login">
  <div class="login-logo">
    <a href="#"><img src="images/logo.gif" alt=""/></a>
  </div>
  <h2 class="form-heading">Register</h2>.
  <form class="form-signin app-cam" action="AddServlet" id="go">
      <p>请输入你的详细信息</p>
   <input type="text" class="form-control1" placeholder="真实姓名"  name="name" id="name" >
   <input type="text" class="form-control1" placeholder="地址"  name="address" id="address" >
   <input type="text" class="form-control1" placeholder="Email"  name="email" id="email" onblur="ajaxfunction1()"><span id="msg"></span>
   <input type="text" class="form-control1" placeholder="所在大学"  name="school" id="school">
      <input type="text" class="form-control1" placeholder="电话"  name="tel" id="tel" MaxLength="11" onkeyup="if(!/^\d+$/.test(this.value)) { this.value=this.value.replace(/[^\d]+/g,'');}"
						onkeypress="if(event.keyCode==13) {text();return false;}">
      <div class="radios">
        <label for="radio-01" class="label_radio">
            <input type="radio" name="sex" value="1" checked="1"> Male
        </label>
        <label for="radio-02" class="label_radio">
            <input type="radio" name="sex" value="2"> Female
        </label>
	  </div>
	  <p> 请输入你的用户名和密码</p>
      <input type="text" class="form-control1" placeholder="用户名"  name="username" id="username" onblur="ajaxfunction2()"><span id="usn"></span>
      <input type="password" class="form-control1" placeholder="密码" name="password" id="password1">
      <input type="password" class="form-control1" placeholder="确认密码" id="password2" onblur="ajaxpassword()"><span id="pas"></span>
      <label class="checkbox-custom check-success">
          <input type="checkbox" value="agree this condition" id="checkbox1">
           <label for="checkbox1">I agree to the Terms of Service and Privacy Policy</label>
      </label>
      <button class="btn btn-lg btn-success1 btn-block" type="button" onclick="notnull1()">Submit</button>
      <div class="registration">
                           已经注册
          <a class="" href="login.jsp">
              Login
          </a>
      </div>
  </form>

    <div class="copy_layout login">
      <p>《我这有》--- 属于你的资源和平台</p>
   </div>
</body>
</html>