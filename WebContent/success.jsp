<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Title -->
    <title>Progress Bar</title>

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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Logo -->
                    <a class="navbar-brand" href="index.html"><img class="logo" id="logo" src="images/logo.gif" alt="logo"></a>

                </div>
                <!-- Navbar Toggle End -->

                <!-- navbar-collapse start-->
                <div id="nav-menu" class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav blete-menu-wrapper">
                        <li>
                            <a href="Home.jsp">首页</a>
                        </li>
                        <li>
                            <a href="BuyServlet">我想买</a>
                        </li>
                       
                        <li>
                            <a href="reward.jsp">悬赏区</a>
                        </li>
                        <li>
                            <a href="InformationServlet?username=${user.username }">个人信息</a>
                        </li>
                        <li>
                            <a href="sell.jsp">我想卖</a>
                        </li>
                         <li  class="active">
                            <a href="about.jsp">关于我们</a>
                        </li>
                         <li>
                            <a href="login.jsp">退出登录</a>
                        </li>
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
                    Skill Section
    ================================== -->
    <section id="skill" class="blete-our-skills blete-section-wrapper">
     <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header">
					<h2>
						<span class="blete-highlight-text">购买 成功</span>
					</h2>
					</div>
    </section>
    <!-- Skill seciton End -->


   <!-- =============================
                Footer Section
    ================================= -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h3>About</h3>
                    <ul>
                        <li><span>Ihave ipsum dolor sit amet, consectetur adipisicing elit. Illum vitae nihil, culpa nemo dolore explicabo ipsa? Qui, et, porro. Nemo officiis possimus assumenda quia reiciendis asperiores aliquam quae minima, eos.</span></li>
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
