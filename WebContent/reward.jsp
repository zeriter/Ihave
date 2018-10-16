<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Title -->
    <title>Pricing Table</title>

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
                      
                        <li  class="active">
                            <a href="reward.jsp">悬赏区</a>
                        </li>
                        <li>
                            <a href="InformationServlet?username=${user.username }">个人信息</a>
                        </li>
                        <li>
                            <a href="sell.jsp">我这有</a>
                        </li>
                          <li>
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
            Pricing Section
    ================================== -->
    <section id="pricing" class="blete-pricing-section">
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 blete-section-header">
                    <h2><span class="blete-highlight-text">悬赏区</span></h2>
                    <div class="blete-section-divider"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">如果你急切的想得到什么或者急切的想出售什么，请来这里吧</p>
                </div>
                <!-- Section Header End -->

                <div class="blete-pricing-wrapper">

                    <!-- Plans -->
                    <div class="col-md-4 col-sm-4 col-xs-12 blete-pricing-plans wow bounceInLeft pricing-plan-one">
                        <div class="blete-pricing-titles">
                            <h2>招收兼职</h2>
                            <p><span>$120/</span>Day</p>
                        </div>
                        <div class="blete-pricing-service-name">
                            <ul>
                                <li>餐饮服务员</li>
                                <li>占用双休日时间</li>
                                <li>工作时间8小时</li>
                                <li>黑龙江科技大学</li>
                                 <li>联系方式</li>
                                <li>qq:21215</li>
                                <li>phone:91461</li>
                               
                            </ul>
                        </div>

                        <a href="#" class="blete-signup-btn">与我联系</a>
                    </div>
                    <!-- Plans End -->

                    <!-- Plans -->
                    <div class="col-md-4 col-sm-4 col-xs-12 blete-pricing-plans blete-recommended-pricing wow fadeInUp" data-wow-duration="1s">
                        <div class="blete-pricing-titles">
                            <h2>苹果电脑</h2>
                            <p><span>$3500</span>
                        </div>
                        <div class="blete-pricing-service-name">
                            <ul>
                                <li>九成新</li>
                                <li>使用期不到一年</li>
                                <li>黑龙江科技大学</li>
                                <li>联系方式</li>
                                <li>qq:12321564</li>
                                <li>phone:66334631</li>
                                <li>急需出售</li>
                            </ul>
                        </div>

                        <a href="#" class="blete-signup-btn">与我联系</a>
                    </div>
                    <!-- Plans End -->

                    <!-- Plans -->
                    <div class="col-md-4 col-sm-4 col-xs-12 blete-pricing-plans wow bounceInRight">
                        <div class="blete-pricing-titles">
                            <h2>三星手机</h2>
                            <p><span>$2500</span>
                        </div>
                        <div class="blete-pricing-service-name">
                            <ul>
                                <li>九成新</li>
                                <li>三星s7系列</li>
                                <li>黑龙江科技大学</li>
                                <li>联系方式</li>
                                <li>qq:84151</li>
                                <li>phone:9411212</li>
                                <li>急需购买</li>
                            </ul>
                        </div>

                        <a href="#" class="blete-signup-btn">与我联系</a>
                    </div>
                    <!-- Plans End -->

                </div>
            </div>
        </div>
    </section>
    <!-- Pricing End -->


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
