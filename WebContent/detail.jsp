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
<title>detail</title>

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
<link href="css/page_02.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/ie6.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/ie7.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_4.css" rel="stylesheet" type="text/css" media="all" />	

<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css" />
<link rel="stylesheet" href="css/color.css" id="colors" />

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
						<li class="active"><a href="buy.jsp">我想买</a></li>

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
    
    <section id="featured-works"
		class="blete-section-wrapper blete-section-work">
<c:forEach items="${detaillist1}" var="s">
<c:forEach items="${detaillist2}" var="u">
		<div class="row02_pic">
			<a href="#"><img src="${s.url }" /></a><br />
			<br /> <span>分享到：</span><a href="#">新浪微博</a> | <a href="#">腾讯微博</a>
			| <a href="#">人人网</a>
		</div>
	
	
	<div class="col-md-7 single-top-in simpleCart_shelfItem">
						<div class="single-para ">
						<h4>${s.name }</h4>
							<div class="star-on">
								<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
									</ul>
								<div class="review">
									<a href="#"> 出售人:${u.username} </a>
									
								</div>
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">$ ${s.price }</h5>
							<p>${s.word } </p>
						
							<ul class="tag-men">
								<li><span>联系方式(TEL)</span>
								<span class="women1">:${u.tel }</span></li>
								<li><span>(EMAIL)</span>
								<span class="women1">:${u.email }</span></li>
							</ul>
								<a href="AddSellServlet?userid=${user.id}&&oldid=${s.id}" class="add-cart item_add">购买</a>
							
						</div>
					</div>
					</c:forEach>
					</c:forEach>
					</section>
				
	
	


	<!-- =============================
                Featured Work Section
    ================================== -->
	<section id="featured-works"
		class="blete-section-wrapper blete-section-work">
		<!-- Container -->
		<div class="container">
			<div class="row">

				<!-- Section Header -->
				<div class="col-md-12 col-sm-12 col-xs-12 blete-section-header">
					<h2>
						找 <span class="blete-highlight-text">相似</span>
					</h2>
					<div class="blete-section-divider"></div>
					<p
						class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">这里可能会有一些对你有用的物品。
					</p>
				</div>
				<!-- Section Header End -->

			</div>
		</div>
		<!-- Container End -->

		<!-- Featured Works Slider -->
		<div class="container-fluid">
			<div class="row-fluid">

				<div class="blete-portfolio-work-slider-section wow fadeIn"
					data-wow-duration="2s">
					<div id="featured-work-slider"
						class="owl-carousel blete-portfolio-works-slider">

						<!-- Work 1 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work1.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work1.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 1 End -->

						<!-- Work 2 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work2.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work2.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 2 End -->

						<!-- Work 3 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work3.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work3.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 3 End -->

						<!-- Work 4 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work4.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work4.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 4 End -->

						<!-- Work 5 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work5.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work5.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 5 End -->

						<!-- Work 6 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work6.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work6.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 6 End -->

						<!-- Work 7 -->
						<div class="blete-portfolio-work-item">

							<img src="images/img-work/work7.jpg" alt="work">
							<div class="blete-port-work-details">
								<ul class="blete-work-meta">
									<li class="blete-lighbox"><a
										href="images/img-work/work7.jpg"
										class="blete-featured-work-img"><i class="fa fa-search"></i></a></li>
								</ul>
							</div>

						</div>
						<!-- Work 7 End -->

					</div>
				</div>
			</div>
		</div>
		<!-- Featured Works Slider -->

	</section>
	<!-- Featured Work End -->



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
