<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Rectangle Mobile Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style_3.css">
        
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
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body>
    
   <!-- Preloader -->
   
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
                        <li >
                            <a href="Home.jsp">首页</a>
                        </li>
                        <li >
                            <a href="BuyServlet">我想买</a>
                        </li>
                       
                        <li>
                            <a href="reward.jsp">悬赏区</a>
                        </li>
                        <li class="active">
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
	
      
            <div class="row">


                
                <div class="col-md-9 col-sm-12 content-holder">
                    <!-- CONTENT -->
                    <div id="menu-container">
                        
                     
                        
                        <div id="menu-1" class="homepage home-section text-center">
                            <div class="row">
                                <div class="col-md-8 col-sm-8">
                                    <div class="box-content profile">
                                      
                                        <div class="profile-thumb">
                                            <img src="images/img-portfolio/portfolio1.jpg" alt="">
                                        </div>
                                        <div class="profile-content">
                                            <h5 class="profile-name">用户名</h5>
                                            <span class="profile-role">${user.username}</span>
                                            <p>所在大学: ${user.school}<br>
                                                                                                                                                                   个性签名: ${user.qianming}<br>
                                               email: ${user.email}<br>
                                                                                                                                                                    详细地址 : ${user.address}<br>
                                                                                                                                                                   联系方式: ${user.tel}</p>
                                        </div>
                                    </div>
                                </div>
                              
                            </div>
                            <div class="row">
                                <div class="col-md-5 col-sm-5">
                                    <div class="box-content">
                                        <h3 class="widget-title">最满意物品</h3>
                                        <div class="project-item">
                                            <img src="images/img-portfolio/portfolio3.jpg" alt="">
                                            <div class="project-hover">
                                                <h4>Great Nature Capture</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 col-sm-7">
                                    <div class="box-content">
                                        <h3 class="widget-title">所参与业务:</h3>
                                        <ul class="progess-bars">
                                            <li>
                                                <span>二手商品购买  80%</span>
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <span>二手商品上架  20%</span>
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <span>发布信息  10%</span>
                                                <div class="progress">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%;"></div>
                                                </div>
                                            </li>
                                           
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="menu-2" class="content about-section">
                          <div class="welcome-text">
                               <form action="UpdateUsernameServlet" method="get" class="subscribe-form">
                                    <div class="row">
                                        <fieldset class="col-md-offset-2 col-md-6">
                                            <input name="id"  value="${user.id}" hidden="hidden">
                                            <input name="username" type="text" class="email" id="subscribe-email" placeholder="输入新的用户名">
                                        </fieldset>
                                        <fieldset class="col-md-4 button-holder">
                                        <input name="id"  value="${user.id}" hidden="hidden">
                                            <input name="submit" type="submit" class="button default" id="submit" value="应用">
                                        </fieldset><br><br><br><br>
                                        </div>
                                        </form>
                                         <form action="UpdatePasswordServlet" method="get" class="subscribe-form">
                                           <div class="row">
                                        <fieldset class="col-md-offset-2 col-md-6">
                                            <input name="id"  value="${user.id}" hidden="hidden">
                                            <input name="password"  type="text" class="email"  id="subscribe-email" placeholder="输入新的密码">
                                        </fieldset>
                                        <fieldset class="col-md-4 button-holder">
                                       
                                            <input name="submit" type="submit" class="button default" id="submit" value="应用">
                                        </fieldset><br><br><br><br>
                                        </div>
                                        </form>
                                        <form action="UpdateTelServlet" method="get" class="subscribe-form">
                                        <div class="row">
                                        <fieldset class="col-md-offset-2 col-md-6">
                                                <input name="id"  value="${user.id}" hidden="hidden">
                                            <input name="tel"  type="text" class="email" id="subscribe-email" placeholder="输入新的联系方式">
                                        </fieldset>
                                        <fieldset class="col-md-4 button-holder">
                                            <input name="submit" type="submit" class="button default" id="submit" value="应用">
                                        </fieldset><br><br><br><br>
                                        </div>
                                        </form>
                                         <form action="UpdateAddressServlet" method="get" class="subscribe-form">
                                         <div class="row">
                                         <fieldset class="col-md-offset-2 col-md-6">
                                            <input name="id"  value="${user.id}" hidden="hidden">
                                            <input name="address"  type="text" class="email" id="subscribe-email" placeholder="输入新的地址">
                                        </fieldset>
                                        <fieldset class="col-md-4 button-holder">
                                            <input name="submit" type="submit" class="button default" id="submit" value="应用">
                                        </fieldset>
                                    </div>
                                    <p class="subscribe-text">请输入你要修改的信息!</p>
                                </form>
                            </div>
                            
                        </div>




                        <div id="menu-3" class="content gallery-section">
                            <div class="box-content">
                                <h3 class="widget-title">购买足迹</h3>
                                <div class="row">
                                 <c:forEach items="${selllist}" var="s">

                                    <div class="col-md-4 col-sm-6 col-xs-12">
                                        <div class="project-item">
                                            <img src="${s.url}" alt="">
                                            <div class="project-hover">
                                                <h4>商品名称:${s.name}<br>
                                                                                                                                                                                      商品种类:${s.kind}<br>
                                                                                                                                                                                      商品价格:${s.price}<br>
                                                                                                                                                                                      商品信息:${s.word}</h4>
                                            </div>
                                        </div>
                                    </div>
                               
                                </c:forEach>
                                 </div>
                            </div>
                        </div>

                        <div id="menu-4" class="content contact-section">
                             <div class="box-content">
                                <h3 class="widget-title">上架商品</h3>
                                <div class="row">
                                 <c:forEach items="${oldlist}" var="s">

                                    <div class="col-md-4 col-sm-6 col-xs-12">
                                        <div class="project-item">
                                            <img src="${s.url}" alt="">
                                            <div class="project-hover">
                                                <h4>商品名称:${s.name}<br>
                                                                                                                                                                                      商品种类:${s.kind}<br>
                                                                                                                                                                                      商品价格:${s.price}<br>
                                                                                                                                                                                      商品信息:${s.word}<br>
                                               
                                            </div>
                                            
                                        </div>
                                        <br>
                                    </div>
                               
                                </c:forEach>
                                 </div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col-md-3 hidden-sm">
                    
                    <nav id="nav" class="main-navigation hidden-xs hidden-sm">
                        <ul class="main-menu">
                            <li>
                                <a class="show-1 active homebutton" href="#"><i class="fa fa-home"></i>用户信息</a>
                            </li>
                            <li>
                                <a class="show-2 aboutbutton" href="#"><i class="fa fa-user"></i>修改信息</a>
                            </li>
                            <li>
                                <a class="show-3 projectbutton" href="#"><i class="fa fa-camera"></i>购买足迹</a>
                            </li>
                            <li>
                                <a class="show-5 contactbutton" href="#"><i class="fa fa-envelope"></i>上架商品</a>
                            </li>
                        </ul>
                    </nav>

                </div>
            </div>
   

     
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
    <script src="js/vendor/jquery-1.11.0.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
		<!-- templatemo 439 rectangle -->
    </body>
</html>