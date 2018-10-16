<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />

<!-- Title -->
<title>Buy</title>

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
<link rel="stylesheet" href="css/templatemo-style.css">

<!--[if lt IE 9]>
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script type="text/javascript" src="js/selectivizr.js"></script>
    <![endif]-->
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
						<li class="active"><a href="BuyServlet">我想买</a></li>

						<li><a href="reward.jsp">悬赏区</a></li>
						<li><a href="InformationServlet?username=${user.username }">个人信息</a></li>
						<li><a href="sell.jsp">我这有</a></li>
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
                Portfolio Section
    ================================== -->
	<section id="portfolio" class="blete-portfolio-section">
		<div class="container">
			<div class="row">

				<!-- Section Header -->
				<div class="col-md-12 col-sm-12 col-xs-12 blete-section-header">
					<h2>
						我 <span class="blete-highlight-text">想买</span>
					</h2>
					<div class="blete-section-divider"></div>
					<p
						class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">
						<font color="black">在这里有一些你需要的二手资源供你使用.</font>
					</p>
				</div>
				<!-- Section Header End -->

			</div>
		</div>

		<!-- Works -->
		<div class="blete-portfolio-works wow fadeIn" data-wow-duration="2s">

			<!-- Filter Button Start -->
			<div id="blete-portfolio-filter"
				class="blete-portfolio-filter-btn-group">
				<ul>
					<li><a href="#" class="selected" data-filter="*">所有物品</a> <a
						href="#" data-filter=".web-design">图书</a> <a href="#"
						data-filter=".web-development">数码</a> <a href="#"
						data-filter=".app-development">服饰</a> <a href="#"
						data-filter=".photography">其他物品</a></li>
				</ul>
			</div>

			<div class="blete-portfolio-items">
				<!-- Portfolio Items -->
				<c:forEach items="${coatlist}" var="s">
					<div class="item blete-portfolio-item  app-development">

						<div class="project-item">

							<a href="DetailServlet?id=${s.id}&userid=${s.userid}"><img src="${s.url}"></a>
							<div class="project-hover">
								<h4>
									商品名称:${s.name}<br> 商品价格:${s.price}<br> 详细信息:${s.word}<br>
								</h4>
							</div>
						</div>


					</div>
				</c:forEach>
				<c:forEach items="${booklist}" var="s">
					<div class="item blete-portfolio-item web-design">

						<div class="project-item">

							<a href="DetailServlet?id=${s.id}&userid=${s.userid}"><img src="${s.url}"></a>
							<div class="project-hover">
								<h4>
									商品名称:${s.name}<br> 商品价格:${s.price}<br> 详细信息:${s.word}
									<br>
								</h4>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${computelist}" var="s">
					<div class="item blete-portfolio-item web-development">

						<div class="project-item">

							<a href="DetailServlet?id=${s.id}&userid=${s.userid}"><img src="${s.url}"></a>
							<div class="project-hover">
								<h4>
									商品名称:${s.name}<br> 商品价格:${s.price}<br> 详细信息:${s.word}<br>
								</h4>
							</div>
						</div>


					</div>
				</c:forEach>
				<c:forEach items="${otherlist}" var="s">
					<div class="item blete-portfolio-item photography">

						<div class="project-item">

							<a href="DetailServlet?id=${s.id}&userid=${s.userid}"><img src="${s.url}"></a>
							<div class="project-hover">
								<h4>
									商品名称:${s.name}<br> 商品价格:${s.price}<br> 详细信息:${s.word}<br>
								</h4>
							</div>
						</div>

					</div>
				</c:forEach>





				<!-- Portfolio Items End -->
				<!-- Portfolio Items -->


				<!-- Portfolio Items End -->
			</div>
			<!-- Filter Button End -->
		</div>
		<!-- Works End -->


	</section>
	<!-- Portfolio Section End -->



	<!-- =============================
                Footer Section
    ================================= -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h3>About</h3>
					<ul>
						<li><span>Ihave ipsum dolor sit amet, consectetur
								adipisicing elit. Illum vitae nihil, culpa nemo dolore explicabo
								ipsa? Qui, et, porro. Nemo officiis possimus assumenda quia
								reiciendis asperiores aliquam quae minima, eos.</span></li>
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
