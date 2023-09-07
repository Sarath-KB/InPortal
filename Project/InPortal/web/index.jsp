<%-- 
    Document   : GuestHomePage
    Created on : Aug 11, 2022, 3:30:15 PM
    Author     : Angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>InPortal an Education Category Bootstrap Responsive Website Template - Home : W3Layouts</title>
        <!--/google-fonts-->
        <link href="//fonts.googleapis.com/css2?family=Nunito:ital,wght@0,400;0,600;0,700;1,400&display=swap"
              rel="stylesheet">
        <!--//google-fonts-->
        <!-- Template CSS -->
        <link rel="stylesheet" href="Assets/GuestHomeProperties/css/style-starter.css">
        <title>InPortal::Guest Home</title>
        <style>
            ::-webkit-scrollbar {
                width: 0px;
                background: transparent;  make scrollbar transparent 
            }
        </style>
    </head>
    <body>
        <header id="site-header" class="fixed-top">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-dark stroke">
                    <h1> <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin" style="color:orange;margin-top: 4px;"></span></a>Portal
                    </h1>
                    <!-- if logo is image enable this   
          <a class="navbar-brand" href="#index.html">
              <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
          </a> -->
                    <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                            data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                        <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                        </span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <nav class="mr-auto ml-lg-5">
                            <div class="search-bar">
                                <form class="search">
                                    <input type="search" class="search__input" name="search"
                                           placeholder="Search for Courses.." onload="equalWidth()" required>
                                    <span class="fa fa-search search__icon"></span>
                                </form>
                            </div>
                        </nav>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="./">Home <span class="sr-only">(current)</span></a>
                            </li>
                           
                            <li class="nav-item">
                                <a class="nav-link dropdown-toggle d-lg-flex align-items-center" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Register <span class="sr-only">(current)</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Guest/CompanyRegistration.jsp">Company</a>
                                    <a class="dropdown-item" href="Guest/StudentRegistration.jsp">Student</a>

                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Guest/Login.jsp">Login</a>
                            </li>
                        </ul>
                    </div>
                    <!-- toggle switch for light and dark theme -->

                    <div class="mobile-position">
                        <nav class="navigation">
                            <div class="theme-switch-wrapper">
                                <label class="theme-switch" for="checkbox">
                                    <input type="checkbox" id="checkbox">
                                    <div class="mode-container py-1">
                                        <i class="gg-sun"></i>
                                        <i class="gg-moon"></i>
                                    </div>
                                </label>
                            </div>
                        </nav>
                    </div>
                    <!-- //toggle switch for light and dark theme -->
                </nav>
            </div>
        </header>
        <!--/header-->
        <!-- main-slider -->
        <section class="w3l-main-slider" id="home">
            <div class="companies20-content">
                <div class="owl-one owl-carousel owl-theme">
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view bg bg2">
                                <div class="banner-info">
                                    <div class="container">
                                        <div class="banner-info-bg">
                                            <h5>A Great Place for Learning</h5>
                                            <p class="mt-4 pr-lg-4">Choose from over 100,000 online video courses with new
                                                additions published every month</p>
                                            <a class="btn btn-style btn-primary mt-xl-5 mt-4 mr-2" href="about.html"> Get
                                                Started <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                            <a class="btn btn-style btn-white mt-xl-5 mt-4" href="services.html"> View
                                                Courses <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info  banner-view banner-top1 bg bg2">
                                <div class="banner-info">
                                    <div class="container">
                                        <div class="banner-info-bg">
                                            <h5>Learning to Love, Loving to Learn</h5>
                                            <p class="mt-4 pr-lg-4">Choose from over 100,000 online video courses with new
                                                additions published every month</p>
                                            <a class="btn btn-style btn-primary mt-xl-5 mt-4 mr-2" href="about.html"> Get
                                                Started <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                            <a class="btn btn-style btn-white mt-xl-5 mt-4" href="services.html"> View
                                                Courses <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view banner-top2 bg bg2">
                                <div class="banner-info">
                                    <div class="container">
                                        <div class="banner-info-bg">
                                            <h5>A Great Place for Learning</h5>
                                            <p class="mt-4 pr-lg-4">Choose from over 100,000 online video courses with new
                                                additions published every month </p>
                                            <a class="btn btn-style btn-primary mt-xl-5 mt-4 mr-2" href="about.html"> Get
                                                Started <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                            <a class="btn btn-style btn-white mt-xl-5 mt-4" href="services.html"> View
                                                Courses <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                    <div class="item">
                        <li>
                            <div class="slider-info banner-view banner-top3 bg bg2">
                                <div class="banner-info">
                                    <div class="container">
                                        <div class="banner-info-bg">
                                            <h5>Learning to Love, Loving to Learn</h5>
                                            <p class="mt-4 pr-lg-4">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                Velit
                                                quisquam, doloremque placeat aut numquam ipsam. </p>
                                            <a class="btn btn-style btn-primary mt-xl-5 mt-4 mr-2" href="about.html"> Get
                                                Started <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                            <a class="btn btn-style btn-white mt-xl-5 mt-4" href="services.html"> View
                                                Courses <span class="fa fa-chevron-right ml-2"
                                                              aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                </div>
                <div class="w3l-banner-grids">
                    <div class="bangrids-inn">
                        <div class="banhny-grid-1">
                            <div class="banhny-grid-icon">
                                <span class="fa fa-laptop"></span>
                            </div>
                            <div class="banhny-grid-right-info">
                                <h6><a href="#url">100,000 online courses</a></h6>
                                <p>Focus is having the unwavering attention.</p>
                            </div>
                        </div>
                        <div class="banhny-grid-1">
                            <div class="banhny-grid-icon">

                                <span class="fa fa-users"></span>

                            </div>
                            <div class="banhny-grid-right-info">
                                <h6><a href="#url">Lifetime entrance</a></h6>
                                <p>New skills online the best way is to develop and follow.</p>
                            </div>
                        </div>
                        <div class="banhny-grid-1">
                            <div class="banhny-grid-icon">
                                <span class="fa fa-book"></span>
                            </div>
                            <div class="banhny-grid-right-info">
                                <h6><a href="#url">Live learning</a></h6>
                                <p>Start with your goals in mind and then work.</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- /main-slider -->
        <!-- //banner section -->
        <!-- /content-1-->
        <div class="content-1 py-5">
            <div class="container py-md-5">
                <div class="row content-1-grids">
                    <div class="col-lg-4 content-1-left forms-25-info">
                        <div class="header-title">
                            <span class="sub-title">About Us</span>
                            <h3 class="hny-title">Learn at Your Own Place</h3>

                        </div>
                    </div>
                    <div class="col-lg-4 content-1-right pl-lg-5 mt-lg-0 mt-4">
                        <p class="">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo,
                            ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet
                            elit. Non quae, fugiat nihil ad. Lorem ipsum dolor sit amet. Lorem ipsum init
                            dolor sit, amet elit. Dolor ipsum non velit.
                        </p>
                    </div>
                    <div class="col-lg-4 content-1-right pl-lg-5 mt-lg-0 mt-4">
                        <p class="">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo,
                            ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet
                            elit. Non quae, fugiat nihil ad. Lorem ipsum dolor sit amet. Lorem ipsum init
                            dolor sit, amet elit. Dolor ipsum non velit.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //content-1-->
        <!--/courses-->
        <div class="w3l-homeblog py-5" id="homeblog">
            <div class="container py-lg-5 py-md-4">
                <div class="header-title mb-3">
                    <span class="sub-title">Top Courses</span>
                    <h3 class="hny-title text-left">Browse Our Top Courses.</h3>
                </div>
                <div class="row top-pics ">
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic1">
                            <div class="card-body blog-details">
                                <p class="course-sub">283 online courses</p>
                                <a href="services.html" class="blog-desc">Business
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <ul class="blog-meta">
                                            <li class="meta-item blog-lesson">
                                                <span class="meta-value"> 40 Lessons </span>. <span
                                                    class="meta-value text-bold">$89.00</span>
                                            </li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic2">
                            <div class="card-body blog-details">
                                <p class="course-sub">383 online courses</p>
                                <a href="services.html" class="blog-desc">Creative Art
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <ul class="blog-meta">
                                            <li class="meta-item blog-lesson">
                                                <span class="meta-value"> 30 Lessons </span>. <span
                                                    class="meta-value text-bold">$49.00</span>
                                            </li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic3">
                            <div class="card-body blog-details">
                                <p class="course-sub">483 online courses</p>
                                <a href="services.html" class="blog-desc">Development
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <ul class="blog-meta">
                                            <li class="meta-item blog-lesson">
                                                <span class="meta-value"> 30 Lessons </span>. <span
                                                    class="meta-value text-bold">$59.00</span>
                                            </li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic4">
                            <div class="card-body blog-details">
                                <p class="course-sub">583 online courses</p>
                                <a href="services.html" class="blog-desc">Photography
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <li class="meta-item blog-lesson">
                                            <span class="meta-value"> 20 Lessons </span>. <span
                                                class="meta-value text-bold">$49.00</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic5">
                            <div class="card-body blog-details">
                                <p class="course-sub">283 online courses</p>
                                <a href="services.html" class="blog-desc">Business
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <ul class="blog-meta">
                                            <li class="meta-item blog-lesson">
                                                <span class="meta-value"> 40 Lessons </span>. <span
                                                    class="meta-value text-bold">$89.00</span>
                                            </li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic6">
                            <div class="card-body blog-details">
                                <p class="course-sub">383 online courses</p>
                                <a href="services.html" class="blog-desc">Creative Art
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <ul class="blog-meta">
                                            <li class="meta-item blog-lesson">
                                                <span class="meta-value"> 30 Lessons </span>. <span
                                                    class="meta-value text-bold">$49.00</span>
                                            </li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic7">
                            <div class="card-body blog-details">
                                <p class="course-sub">483 online courses</p>
                                <a href="services.html" class="blog-desc">Development
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <ul class="blog-meta">
                                            <li class="meta-item blog-lesson">
                                                <span class="meta-value"> 30 Lessons </span>. <span
                                                    class="meta-value text-bold">$59.00</span>
                                            </li>
                                        </ul>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mt-5">
                        <div class="top-pic8">
                            <div class="card-body blog-details">
                                <p class="course-sub">583 online courses</p>
                                <a href="services.html" class="blog-desc">Photography
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <li class="meta-item blog-lesson">
                                            <span class="meta-value"> 20 Lessons </span>. <span
                                                class="meta-value text-bold">$49.00</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="readhny-btm text-center mx-auto mt-md-4">
                        <a class="btn btn-primary btn-style mt-md-5 mt-4" href="about.html">Read More <span
                                class="fa fa-chevron-right ml-2" aria-hidden="true"></span></a>
                    </div>
                </div>
            </div>
        </div>
        <!--//courses-->
        <section class="w3l-bottom-grids-6 py-5" id="features">
            <div class="container py-lg-5 py-md-4">
                <div class="grids-area-hny main-cont-wthree-fea row">
                    <!-- /feature-left-->
                    <div class="col-md-6 grids-feature mt-4">
                        <div class="area-box">
                            <div class="row">
                                <div class="col-sm-2 icon">
                                    <span class="fa fa-video-camera"></span>
                                </div>
                                <div class="col-sm-10 area-box-info">
                                    <h4><a href="#feature" class="title-head">Become a instructor on InPortal</a></h4>
                                    <p class="mt-3">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet.</p>
                                    <a class="btn btn-primary btn-style mt-4" href="about.html">Start today <span class="fa fa-chevron-right ml-2" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 grids-feature mt-4">
                        <div class="area-box">
                            <div class="row">
                                <div class="col-sm-2 icon">
                                    <span class="fa fa-tasks"></span>
                                </div>
                                <div class="col-sm-10 area-box-info">
                                    <h4><a href="#feature" class="title-head">InPortal for business & Community</a></h4>
                                    <p class="mt-3">Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. Semper at tempufddfel. Lorem ipsum dolor sit amet..</p>
                                    <a class="btn btn-primary btn-style mt-4" href="about.html">Start today <span class="fa fa-chevron-right ml-2" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //bottom-grids-->

        <!-- middle -->
        <div class="middle py-5">
            <div class="container pt-lg-2 pb-lg-4 py-4">
                <div class="welcome-left text-center py-lg-4">
                    <h3 class="hny-title">Educating Champions of a Just and Sustainable World.</h3>
                    <div class="middle-buttons pb-5">
                        <a href="about.html" class="btn btn-style btn-white mt-sm-5 mt-4 mr-2">Read More <span
                                class="fa fa-chevron-right ml-2" aria-hidden="true"></span></a>
                        <a href="contact.html" class="btn btn-style btn-primary mt-sm-5 mt-4">Contact Us <span
                                class="fa fa-chevron-right ml-2" aria-hidden="true"></span></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //middle -->
        <!-- stats -->
        <section class="w3_stats py-lg-0 py-5" id="stats">
            <div class="container">
                <div class="w3-stats">
                    <div class="row">
                        <div class="col-md-3 col-6 mt-md-0 mt-5">
                            <div class="counter">
                                <span class="fa fa-clone"></span>
                                <div class="timer count-title count-number mt-3" data-to="15100" data-speed="1500"></div>
                                <p class="count-text">Successfully Trained</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-6 mt-md-0 mt-5">
                            <div class="counter">
                                <span class="fa fa-video-camera"></span>
                                <div class="timer count-title count-number mt-3" data-to="19256" data-speed="1500"></div>
                                <p class="count-text ">We Proudly Received</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-6 mt-md-0 mt-5">
                            <div class="counter">
                                <span class="fa fa-smile-o"></span>
                                <div class="timer count-title count-number mt-3" data-to="12100" data-speed="1500"></div>
                                <p class="count-text">Getting Featured On</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-6 mt-md-0 mt-5">
                            <div class="counter">
                                <span class="fa fa-users"></span>
                                <div class="timer count-title count-number mt-3" data-to="2560" data-speed="1500"></div>
                                <p class="count-text">Firmly Eastablished</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //stats -->
        <!-- home page video popup section -->
        <section class="w3l-videohny" id="video">
            <div class="new-block py-5">
                <div class="container py-lg-5">
                    <div class="history-info position-relative">
                        <!--//video-->
                        <a href="#small-dialog" class="popup-with-zoom-anim play-view text-center pl-3">
                            <span class="video-play-icon">
                                <span class="fa fa-play"></span>
                            </span>
                        </a>

                        <!-- dialog itself, mfp-hide class is required to make dialog hidden -->
                        <div id="small-dialog" class="zoom-anim-dialog mfp-hide">
                            <iframe src="https://player.vimeo.com/video/18212142" frameborder="0"
                                    allow="autoplay; fullscreen" allowfullscreen></iframe>
                        </div>
                        <!--//video-->
                    </div>

                    <!-- dialog itself, mfp-hide class is required to make dialog hidden -->
                    <div id="small-dialog" class="zoom-anim-dialog mfp-hide">
                        <iframe src="https://player.vimeo.com/video/18212142" frameborder="0"
                                allow="autoplay; fullscreen" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </section>
        <!-- //home page video popup section -->
        <!--/blog-post-->
        <section class="w3l-blogpost-content py-5">
            <div class="container py-md-5">
                <div class="header-title mb-md-5 mt-4">
                    <span class="sub-title">Latest Posts</span>
                    <h3 class="hny-title text-left">Our Blog Posts</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 item">
                        <div class="card">
                            <div class="card-header p-0 position-relative">
                                <a href="blog-single.html">
                                    <img class="card-img-bottom d-block radius-image-full" src="Assets/GuestHomeProperties/images/ab8.jpg" alt="Card image cap">
                                </a>
                            </div>
                            <div class="card-body blog-details">
                                <a href="blog-single.html" class="blog-desc">Learning to Write as a Professional Author
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <li>
                                            <a href="#">Isabella ava</a> 
                                        </li>
                                        <li class="meta-item blog-lesson">
                                            <span class="meta-value"> Sep 13, 2020 </span>. <span class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-md-0 mt-4">
                        <div class="card">
                            <div class="card-header p-0 position-relative">
                                <a href="blog-single.html">
                                    <img class="card-img-bottom d-block radius-image-full" src="Assets/GuestHomeProperties/images/ab2.jpg" alt="Card image cap">
                                </a>
                            </div>
                            <div class="card-body blog-details">
                                <a href="blog-single.html" class="blog-desc">Learning to Write as a Professional Author</a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <li>
                                            <a href="#">Charlotte mia</a> 
                                        </li>
                                        <li class="meta-item blog-lesson">
                                            <span class="meta-value"> Sep 13, 2020 </span>. <span class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mt-md-0 mt-4">
                        <div class="card">
                            <div class="card-header p-0 position-relative">
                                <a href="blog-single.html">
                                    <img class="card-img-bottom d-block radius-image-full" src="Assets/GuestHomeProperties/images/ab6.jpg" alt="Card image cap">
                                </a>
                            </div>
                            <div class="card-body blog-details">
                                <a href="blog-single.html" class="blog-desc">Learning to Write as a Professional Author
                                </a>
                                <div class="author align-items-center">
                                    <img src="Assets/GuestHomeProperties/images/admin.jpg" alt="" class="img-fluid rounded-circle">
                                    <ul class="blog-meta">
                                        <li>
                                            <a href="#">Elizabeth</a> 
                                        </li>
                                        <li class="meta-item blog-lesson">
                                            <span class="meta-value"> Sep 13, 2020 </span>. <span class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--//blog-posts-->
        <!--/w3l-newsletter-->
        <!--    <section class="w3l-newsletter">
                 /form-25-section 
                <div class="form-25-main py-5">
                    <div class="container py-lg-5">
                        <div class="forms-25-info">
        
                            <div class="header-title mb-md-5 mt-4">
                                <span class="sub-title">Subscribe to our Newsletter</span>
                                <h3 class="hny-title text-left">Join our Community of Students</h3>
                            </div>
                            <form action="#" method="post" class="signin-form mt-4 mb-2">
                                <div class="forms-gds">
                                    <input type="text" name="" placeholder="Name" required />
                                    <input type="email" name="" placeholder="Email" required />
                                    <button class="btn btn-style btn-primary">Subscribe</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>-->
        <!--//w3l-newsletter-->
        <!--Company testimonials-->

        <section class="w3l-clients-1" id="testimonials">
            <!-- /grids -->
            <div class="cusrtomer-layout py-5">
                <div class="container py-lg-5 py-md-4">
                    <div class="header-title mb-md-5 mb-4">
                        <span class="sub-title">Testimonials</span>
                        <h3 class="hny-title text-left">What Company Say</h3>
                    </div>
                    <!-- /grids -->
                    <div class="testimonial-row">
                        <div id="owl-demo1" class="owl-two owl-carousel owl-theme mb-md-3 mb-sm-5 mb-4">
                            <%
                                String select2 = "select * from tbl_feedback fe inner join tbl_company co on fe.company_id=co.company_id ";
                                ResultSet rs2 = con.selectCommand(select2);
                                while (rs2.next()) {
                            %>
                            <div class="item">
                                <div class="testimonial-content">
                                    <div class="testimonial" style="min-width:560px;min-height: 251.2px;max-width:560px;max-height: 251.2px;overflow: scroll;">
                                        <blockquote>
                                            <q><%=rs2.getString("feedback_content")%></q>
                                        </blockquote>
                                    </div>
                                    <div class="testi-des">
                                        <div class="test-img">
                                            <img src="Assets/CompanyLogo/<%=rs2.getString("company_logo")%>" class="img-fluid" alt="client-img">
                                        </div>
                                        <div class="peopl align-self">
                                            <h4><%=rs2.getString("company_name")%></h4>
                                            <p class="indentity">Company </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>

                        </div>
                    </div>
                </div>
                <!-- /grids -->
            </div>
            <!-- //grids -->
        </section>


        <!--Student testimonials -->
        <section class="w3l-clients-1" id="testimonials">
            <!-- /grids -->
            <div class="cusrtomer-layout py-5">
                <div class="container py-lg-5 py-md-4">
                    <div class="header-title mb-md-5 mb-4">
                        <span class="sub-title">Testimonials</span>
                        <h3 class="hny-title text-left">What Student Say</h3>
                    </div>
                    <!-- /grids -->
                    <div class="testimonial-row">
                        <div id="owl-demo2" class="owl-two owl-carousel owl-theme mb-md-3 mb-sm-5 mb-4">
                            <%
                                String select = "select * from tbl_feedback fe inner join tbl_student st on fe.student_id=st.student_id ";
                                ResultSet rs1 = con.selectCommand(select);
                                while (rs1.next()) {
                            %>
                            <div class="item">
                                <div class="testimonial-content">
                                    <div class="testimonial" style="min-width:560px;min-height: 251.2px;max-width:560px;max-height: 251.2px;overflow: scroll;">
                                        <blockquote>
                                            <q><%=rs1.getString("feedback_content")%></q>
                                        </blockquote>
                                    </div>
                                    <div class="testi-des">
                                        <div class="test-img">
                                            <img src="Assets/StudentPhoto/<%=rs1.getString("student_photo")%>" class="img-fluid" alt="client-img">
                                        </div>
                                        <div class="peopl align-self">
                                            <h4><%=rs1.getString("student_name")%></h4>
                                            <p class="indentity">Student </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                            <!--                        <div class="item">
                                                        <div class="testimonial-content">
                                                            <div class="testimonial">
                                                                <blockquote>
                                                                    <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                                                        laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                                                        facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                                                        voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                                                </blockquote>
                                                            </div>
                                                            <div class="testi-des">
                                                                <div class="test-img"><img src="Assets/GuestHomeProperties/images/team2.jpg" class="img-fluid"
                                                                    alt="client-img">
                                                            </div>
                                                                <div class="peopl align-self">
                                                                    <h4>Tommy sakura</h4>
                                                                    <p class="indentity">Student </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>-->
                            <!--                        <div class="item">
                                                        <div class="testimonial-content">
                                                            <div class="testimonial">
                                                               
                                                                <blockquote>
                                                                    <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                                                        laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                                                        facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                                                        voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                                                </blockquote>
                                                               
                                                            </div>
                                                            <div class="testi-des">
                                                                <div class="test-img"><img src="Assets/GuestHomeProperties/images/team3.jpg" class="img-fluid"
                                                                    alt="client-img">
                                                                </div>
                                                                <div class="peopl align-self">
                                                                    <h4>Bruce Bailey </h4>
                                                                    <p class="indentity">Student </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>-->
                            <!--                        <div class="item">
                                                        <div class="testimonial-content">
                                                            <div class="testimonial">
                                                                <blockquote>
                                                                    <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                                                        laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                                                        facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                                                        voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                                                </blockquote>
                                                              
                                                            </div>
                                                            <div class="testi-des">
                                                                <div class="test-img"><img src="Assets/GuestHomeProperties/images/team3.jpg" class="img-fluid"
                                                                    alt="client-img">
                                                                </div>
                                                                <div class="peopl align-self">
                                                                    <h4>Ruth Edwards</h4>
                                                                    <p class="indentity">Student </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>-->
                            <!--                        <div class="item">
                                                        <div class="testimonial-content">
                                                            <div class="testimonial">
                                                                <blockquote>
                                                                    <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                                                        laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                                                        facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                                                        voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                                                </blockquote>
                                                            </div>
                                                            <div class="testi-des">
                                                                <div class="test-img">
                                                                    <img src="Assets/GuestHomeProperties/images/team1.jpg" class="img-fluid" alt="client-img">
                                                                </div>
                                                                <div class="peopl align-self">
                                                                    <h4>Gloria Parker</h4>
                                                                    <p class="indentity">Student </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>-->
                            <!--                        <div class="item">
                                                        <div class="testimonial-content">
                                                            <div class="testimonial">
                                                                <blockquote>
                                                                    <q>Lorem ipsum dolor sit amet int consectetur adipisicing elit. Velita beatae
                                                                        laudantium Quas minima sunt natus tempore, maiores aliquid modi felis vitae
                                                                        facere aperiam sequi optio lacinia id ipsum non velit, culpa.
                                                                        voluptate rem ullam dolore nisi est quasi, doloribus tempora.</q>
                                                                </blockquote>
                                                            </div>
                                                            <div class="testi-des">
                                                                <div class="test-img"><img src="Assets/GuestHomeProperties/images/team2.jpg" class="img-fluid"
                                                                    alt="client-img">
                                                            </div>
                                                                <div class="peopl align-self">
                                                                    <h4>Tommy sakura</h4>
                                                                    <p class="indentity">Student </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>-->
                        </div>
                    </div>
                </div>
                <!-- /grids -->
            </div>
            <!-- //grids -->
        </section>
        <!-- //testimonials -->

        <!-- footer -->
        <section class="w3l-footer-29-main">
            <div class="footer-29 py-5">
                <div class="container py-lg-4">
                    <div class="row footer-top-29">
                        <div class="col-lg-4 col-md-6 col-sm-7 footer-list-29 footer-1 pr-lg-5">
                            <div class="footer-logo mb-3">
                                <a class="navbar-brand" href="index.html">InPortal</a>
                            </div>
                            <p>Lorem ipsum viverra feugiat. Pellen tesque libero ut justo, ultrices in ligula. Semper at
                                tempufddfel. Lorem ipsum dolor sit amet Semper at elit.</p>
                            <div class="main-social-footer-29 mt-4">
                                <a href="#facebook" class="facebook"><span class="fa fa-facebook"></span></a>
                                <a href="#twitter" class="twitter"><span class="fa fa-twitter"></span></a>
                                <a href="#instagram" class="instagram"><span class="fa fa-instagram"></span></a>
                                <a href="#linkedin" class="linkedin"><span class="fa fa-linkedin"></span></a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-sm-0 mt-5">

                            <ul>
                                <h6 class="footer-title-29">Usefull Links</h6>
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="services.html">Courses</a></li>
                                <li><a href="#pricing"> Pricing plans</a></li>
                                <li><a href="#careers"> Careers</a></li>
                                <li><a href="blog.html"> Blog posts</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-3 mt-lg-0 mt-5">
                            <h6 class="footer-title-29">More Info</h6>
                            <ul>
                                <li><a href="#profile">Profile</a></li>
                                <li><a href="#vision">Vision & Values</a></li>
                                <li><a href="#history">History</a></li>
                                <li><a href="#leader">Leadership</a></li>
                                <li><a href="#help">Help</a></li>
                                <li><a href="#support"> Support</a></li>
                            </ul>

                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-7 footer-list-29 footer-4 mt-lg-0 mt-5">
                            <h6 class="footer-title-29">Contact Info </h6>
                            <p><strong>Address :</strong> InPortal, 343 Honey Avenue street, NY - 62617.</p>
                            <p class="my-2"><strong>Phone :</strong> <a href="tel:+12 23456799">+12 23456799</a></p>
                            <p><strong>Email :</strong> <a href="mailto:info@example.com">info@example.com</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //footer -->

        <!-- copyright -->
        <section class="w3l-copyright">
            <div class="container">
                <div class="row bottom-copies">
                    <p class="col-lg-8 copy-footer-29">© 202@ InPortal. All rights reserved. Design by <a
                            href="404.jsp" target="_blank">
                            Georgekutty</a></p>

                    <div class="col-lg-4 footer-list-29">
                        <ul class="d-flex text-lg-right justify-content-center mt-lg-0 mt-3">
                            <li><a href="#careers"> Careers</a></li>
                            <li class="mx-lg-5 mx-md-4 mx-3"><a href="#privacymy-lg-0 my-4">Privacy Policy</a></li>
                            <li><a href="contact.html">Contact us</a></li>
                        </ul>
                    </div>

                </div>
            </div>

            <!-- move top -->
            <button onclick="topFunction()" id="movetop" title="Go to top">
                &#10548;
            </button>
            <script>
                // When the user scrolls down 20px from the top of the document, show the button
                window.onscroll = function() {
                    scrollFunction()
                };

                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("movetop").style.display = "block";
                    } else {
                        document.getElementById("movetop").style.display = "none";
                    }
                }

                // When the user clicks on the button, scroll to the top of the document
                function topFunction() {
                    document.body.scrollTop = 0;
                    document.documentElement.scrollTop = 0;
                }
            </script>
            <!-- /move top -->
        </section>
        <!-- //copyright -->

        <script src="Assets/GuestHomeProperties/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->

        <script src="Assets/GuestHomeProperties/js/theme-change.js"></script><!-- theme switch js (light and dark)-->

        <script src="Assets/GuestHomeProperties/js/owl.carousel.js"></script>
        <!-- script for banner slider-->
        <script>
                $(document).ready(function() {
                    $('.owl-one').owlCarousel({
                        loop: true,
                        margin: 0,
                        nav: false,
                        responsiveClass: true,
                        autoplay: true,
                        autoplayTimeout: 5000,
                        autoplaySpeed: 1000,
                        autoplayHoverPause: false,
                        responsive: {
                            0: {
                                items: 1,
                                nav: false
                            },
                            480: {
                                items: 1,
                                nav: false
                            },
                            667: {
                                items: 1,
                                nav: true
                            },
                            1000: {
                                items: 1,
                                nav: true
                            }
                        }
                    })
                })
        </script>
        <!-- //script -->
        <!-- magnific popup -->
        <script src="Assets/GuestHomeProperties/js/jquery.magnific-popup.min.js"></script>
        <script>
                $(document).ready(function() {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                    $('.popup-with-move-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-slide-bottom'
                    });
                });
        </script>
        <!-- //magnific popup -->
        <!-- /counter-->
        <script src="Assets/GuestHomeProperties/js/counter.js"></script>
        <!-- //counter-->
        <!-- script for tesimonials carousel slider -->
        <script>
                $(document).ready(function() {
                    $("#owl-demo1").owlCarousel({
                        loop: true,
                        margin: 20,
                        nav: false,
                        responsiveClass: true,
                        responsive: {
                            0: {
                                items: 1,
                                nav: false
                            },
                            1000: {
                                items: 2,
                                nav: false,
                                loop: true
                            }
                        }
                    })
                })
        </script>
         <script>
                $(document).ready(function() {
                    $("#owl-demo2").owlCarousel({
                        loop: true,
                        margin: 20,
                        nav: false,
                        responsiveClass: true,
                        responsive: {
                            0: {
                                items: 1,
                                nav: false
                            },
                            1000: {
                                items: 2,
                                nav: false,
                                loop: true
                            }
                        }
                    })
                })
        </script>
        <!-- //script for tesimonials carousel slider -->

        <!--/MENU-JS-->
        <script>
            $(window).on("scroll", function() {
                var scroll = $(window).scrollTop();

                if (scroll >= 80) {
                    $("#site-header").addClass("nav-fixed");
                } else {
                    $("#site-header").removeClass("nav-fixed");
                }
            });

            //Main navigation Active Class Add Remove
            $(".navbar-toggler").on("click", function() {
                $("header").toggleClass("active");
            });
            $(document).on("ready", function() {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
                $(window).on("resize", function() {
                    if ($(window).width() > 991) {
                        $("header").removeClass("active");
                    }
                });
            });
        </script>
        <!--//MENU-JS-->

        <!-- disable body scroll which navbar is in active -->
        <script>
            $(function() {
                $('.navbar-toggler').click(function() {
                    $('body').toggleClass('noscroll');
                })
            });
        </script>
        <!-- //disable body scroll which navbar is in active -->

        <!--bootstrap-->
        <script src="Assets/GuestHomeProperties/js/bootstrap.min.js"></script>
        <!-- //bootstrap-->
    </body>
</html>
