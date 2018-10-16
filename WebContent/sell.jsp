<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Title -->
<title>Sell</title>

<!-- Favicon Ico -->
<link rel="shortcut icon" href="images/favicon.ico">

<!-- =============================
                stylesheets
    ================================== -->

<!-- Normalize And Bootstrap -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/bootstrap.min.css">


<!-- Font Icons -->
<link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css" />

<!-- Plugin Default Stylesheets -->
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/slider-pro.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.transitions.css">
<link rel="stylesheet" href="css/animate.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css" />
<link rel="stylesheet" href="css/color.css" id="colors" />

<link href="css/page_01.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/ie6.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/ie7.css" rel="stylesheet" type="text/css" media="all" />
<!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script type="text/javascript" src="js/selectivizr.js"></script>
    <![endif]-->
    <script type="text/javascript">
    	function submit1(){
    		var n = document.getElementById("name").value;
    		var p = document.getElementById("price").value;
    		var m = document.getElementById("message").value;

    		if (n == null || n.length == 0) {
    			return;
    		}
    		if (p == null || p.length == 0) {
    			return;
    		}
    		if (m == null || m.length == 0) {
    			return;
    		}
    		document.getElementById("sub").submit();
    	}
    </script>
</head>

<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="status"></div>
	</div>

	<!-- =============================
                    Header
    ================================== -->
	<header>
		<!-- Navigation Menu start-->
		<nav class="navbar blete-main-menu" role="navigation">
			<div class="container">

				<!-- Navbar Toggle -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<!-- Logo -->
					<a class="navbar-brand" href="index.html"><img class="logo"
						id="logo" src="images/logo.gif" alt="logo"></a>

				</div>

				<!-- Navbar Toggle End -->

				<!-- navbar-collapse start-->
				<div id="nav-menu" class="navbar-collapse collapse"
					role="navigation">
					<ul class="nav navbar-nav blete-menu-wrapper">
						<li><a href="Home.jsp">首页</a></li>
						<li><a href="BuyServlet">我想买</a></li>
						<li><a href="reward.jsp">悬赏区</a></li>
						<li><a href="InformationServlet?username=${user.username }">个人信息</a></li>
						<li class="active"><a href="sell.jsp">我这有</a></li>
						<li><a href="about.jsp">关于我们</a></li>
						<li><a href="login.jsp">退出登录</a></li>
					</ul>
				</div>
				<!-- navbar-collapse end-->

			</div>
		</nav>
		<!-- Navigation Menu end-->
	</header>
	<!-- Header End -->

	<div class="header-img">
		<img src="images/img-header/slider-img-1.jpg" alt="">
	</div>


	<!-- =============================
                Contact Section
    ================================== -->
	<section id="contact"
		class="blete-section-wrapper blete-contact-section"
		data-stellar-background-ratio="0.5">
		<div class="blete-parallax-overlay"></div>
		<div class="container">
			<div class="row">

				<!-- Section Header -->
				<div
					class="col-md-12 col-sm-12 col-xs-12 blete-section-header blete-section-header-parallax">
					<h2>
						我<span class="blete-highlight-text">这有</span>
					</h2>
					<div class="blete-section-divider"></div>
					<p
						class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">如果你有一些二手资源是可以再次利用的，请通过下面方式联系我们。</p>
				</div>
				<!-- Section Header End -->

				<div class="blete-contact-details">

					<!-- Address Area -->
					<div
						class="col-md-5 col-sm-4 col-xs-12 blete-contact-address wow bounceInLeft">
						<p>请输入你的姓名和联系方式在右侧的表单，并且务必要填写完整详细的商品信息。以供我们参考和检验。。</p>
						<ul>
							<li class="blete-office-address"><i class="fa fa-home"></i>${user.address }</li>
							<li class="blete-phone"><i class="fa fa-phone"></i>${user.tel }</li>
							<li class="blete-email"><i class="fa fa-envelope-o"></i>${user.email }</li>
							<li class="blete-web"><i class="fa  fa-globe"></i>www.Ihave.com</li>
						</ul>
					</div>

					<!-- Address Area End -->
					<form action="AddOldServlet" id="sub" enctype="multipart/form-data" method="post">
						<!-- Contact Form -->
						<div
							class="col-md-7 col-sm-8 col-xs-12 blete-contact-form wow bounceInRight">
							<div id="contact-result"></div>

							<div id="contact-form">
								<div class="radios">
									<div class="blete-input-name blete-input-fields">
										&nbsp;&nbsp; 商品属性</div>
									&nbsp;&nbsp; <label for="radio-01" class="label_radio">
										<input type="radio" name="old" value="book"> 图书
									</label> <label for="radio-02" class="label_radio"> <input
										type="radio" name="old" value="compute"> 数码
									</label> <label for="radio-01" class="label_radio"> <input
										type="radio" name="old" value="coat"> 衣帽
									</label> <label for="radio-02" class="label_radio"> <input
										type="radio" name="old" value="other">其他
									</label>
								</div>
								<input type="text" name="userid" hidden="hidden"
									value="${user.id}">
								<div class="blete-input-name blete-input-fields">
									<input type="text" name="name" id="name" placeholder="商品名称">
								</div>

								<div class="blete-input-email blete-input-fields">
									<input type="text" name="price" id="price" placeholder="商品价格(请输入整数)" onkeyup="if(!/^\d+$/.test(this.value)) { this.value=this.value.replace(/[^\d]+/g,'');}"
						onkeypress="if(event.keyCode==13) {text();return false;}">
								</div>
								

								<div class="blete-input-message blete-input-fields">
									<textarea name="word" id="message" cols="20" rows="10"
										placeholder="商品详情"></textarea>
								</div>
								<div class="blete-input-email blete-input-fields">
									  <input type="file" name="uploadFile" >
								</div>

								<input type="button" value="SEND MESSAGE" class="btn btn-lg btn-success1 btn-block" onclick="submit1()">
							</div>
						</div>
					</form>
					<!-- Contact Form End -->

				</div>
			</div>
		</div>
	</section>

	<!-- Contact Section End -->


	<!-- =============================
                Footer Section
    ================================= -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h3>About</h3>
					<ul>
						<li><a href="">Ihave ipsum</a></li>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave dolor</a></li>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3>Related Post</h3>
					<ul>
						<li><a href="">Ihave ipsum</a></li>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave dolor</a></li>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3>Page</h3>
					<ul>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave sit eta</a></li>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave Ihave ipsum</a></li>
						<li><a href="">Ihave ipsumlor</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3>Featured Post</h3>
					<ul>
						<li><a href="">Ihave meta tag</a></li>
						<li><a href="">Ihave intan sipsum</a></li>
						<li><a href="">Ihave ipsum</a></li>
						<li><a href="">Ihave</a></li>
						<li><a href="">Ihave mata</a></li>
					</ul>
				</div>
			</div>
		</div>

	</footer>
	<!-- Footer End -->
	<div class="thn">
		<div class="container thn">
			<div class="row">
				<div class="blete-footer-content">

					<h6 class="blete-copyright-info">©2017</h6>

				</div>
			</div>
		</div>
	</div>


	<!-- =============================
                SCRIPTS
    ================================== -->
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/jquery.easypiechart.js"></script>
	<script src="js/jquery.countTo.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/jflickrfeed.min.js"></script>
	<script src="js/jquery.fitvids.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/smooth-scroll.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.sliderPro.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
