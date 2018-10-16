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
                            <a href="sell.jsp">我这有</a>
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
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header">
                    <h2>关于<span class="blete-highlight-text">我们</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">在这里你可以看到一些关于本网站的结构以及你所需要的业务所占的份额。</p>
                </div>
                <!-- Section Header End -->

                <!-- Skills -->
                <div class="blete-skills-wrapper">

                    <div class="col-md-3 col-sm-6 col-xs-12 blete-skill-item">
                        <div class="chart chart-ps" data-percent="60">
                            <span class="percent"></span>
                            <h3>二手市场</h3>
                        </div>
                        <p>本网站是以二手资源交易为主，二手市场在本网站所占份额较大。</p>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 blete-skill-item">
                        <div class="chart chart-php" data-percent="10">
                            <span class="percent"></span>
                            <h3>信息发布</h3>
                        </div>
                        <p>本网站信息发布的功能不算十分完善，会在以后进行陆续更新。</p>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 blete-skill-item">
                        <div class="chart chart-js" data-percent="20">
                            <span class="percent"></span>
                            <h3>商家广告</h3>
                        </div>
                        <p>本网站会提供一部分资源给商家，让他为自己的产品进行销售。</p>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 blete-skill-item">
                        <div class="chart chart-wp" data-percent="10">
                            <span class="percent"></span>
                            <h3>用户管理</h3>
                        </div>
                        <p>会定期的对一些信誉较低用户进行账号冻结。</p>
                    </div>

                </div>
                <!-- Skills End -->
            </div>
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
