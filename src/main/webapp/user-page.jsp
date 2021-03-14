<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map"%>
<!doctype html>
<html>
<head> 
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie -Single cinema</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
             <!-- Font awesome - icon font -->
      <link href="css/font-awesome.css" rel="stylesheet">
      <!-- Roboto -->
      <link href='css/css.css' rel='stylesheet' type='text/css'>
      <!-- Open Sans -->
      <link href='css/css(1).css' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->
        <!-- jQuery UI -->
        <link href="css/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="css/external/jquery.selectbox.css" rel="stylesheet" />
        <!-- Swiper slider -->
        <link href="css/external/idangerous.swiper.css" rel="stylesheet" /> 
    
        <!-- Custom -->
        <link href="css/style.css?v=1" rel="stylesheet" />

        <!-- Modernizr --> 
        <script src="js/external/modernizr.custom.js"></script>

        <script src="js/external/vue.js"></script>

        <script src="js/axios.min.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>

<body class="single-cin">
    <div class="wrapper">

        <!-- Header section -->
        <header class="header-wrapper">
            <div class="container">
                <!-- Logo link-->
                <a href='index.html' class="logo">
                    <img alt='logo' src="images/logo.png">
                </a>
                
                <!-- Main website navigation-->
                <nav id="navigation-box">
                    <!-- Toggle for mobile menu mode -->
                    <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                    </a>
                    
                    <!-- Link navigation -->
                    <ul id="navigation">
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="index.html">首页</a>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="cinema-list.html">影院</a>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="news-full.html">新闻</a>
                        </li>
                        <li>
                            <span class="sub-nav-toggle plus"></span>
                            <a href="movie-list-full.html">电影</a>
                               <ul class="mega-menu container">
                                    <li class="col-md-3 mega-menu__coloum">
                                        <h4 class="mega-menu__heading">正在热映</h4>
                                         <ul class="mega-menu__list">
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=1">星际穿越</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=3">银翼杀手</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=4">这个杀手不太冷</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=2">爱乐之城</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=5">火星救援</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=6">爆裂鼓手</a></li>
                                          </ul>
                                      </li>
                                        
                                      <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                          <ul class="mega-menu__list">
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=7">战斗天使：阿丽塔</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=8">驴得水</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=9">南方车站的聚会</a></li>
                                          </ul>
                                      </li>
                                      
                                      <li class="col-md-3 mega-menu__coloum">
                                        <h4 class="mega-menu__heading">即将上映</h4>
                                          <ul class="mega-menu__list">
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=10">复仇者联盟：终局之战</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=11">婚姻故事</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=12">爱尔兰人</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=13">寄生虫</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=14">好莱坞往事</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=15">少年的你</a></li>
                                          </ul>
                                      </li>
                                    
                                      <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                          <ul class="mega-menu__list">
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=16">邪不压正</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=17">燃烧女子的肖像</a></li>
                                            <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=18">小丑</a></li>
                                          </ul>
                                      </li>
                               </ul>
                        </li>
                    </ul>
                </nav>
                
                <div class="control-panel">
                    <div class="auth auth--home" hidden="hidden" >
                        <div class="auth__show">
                        <span class="auth__image">

                        </span>
                        </div>
                        <a href="#" class="btn btn--sign btn--singin">
                            Orange
                        </a>

                    </div>
                </div>
            </div>
        </header>
        
        <!-- Main content -->
        <section class="cinema-container">
            <div class="cinema cinema--full">
                <img alt="" src="images/users/$1/pic.jpg">
                <p class="cinema__title">Resca</p>
                <div class="cinema__info">
                    <p class="cinema__info-item"><strong>邮箱: </strong>459885351@qq.com</p>
                    <p class="cinema__info-item"><strong>电话: </strong>18212457618</p>
                </div>
            </div>

            <div class="share share--centered">
                <div class="addthis_toolbox addthis_default_style ">
                    <a class="addthis_button_facebook_like" ></a>
                    <a class="addthis_button_tweet"></a>
                    <a class="addthis_button_google_plusone"></a>
                </div>
            </div>

            <div class="tabs tabs--horisontal">
                      <!-- Nav tabs -->
                      <div class="container">
                          <ul class="nav nav-tabs" id="hTab">

                            <li><a href="#comment1" data-toggle="tab">订单信息</a>
                                <section class="container">
                                    <div class="order-container target">

                                    </div>
                                </section>
                            </li>
                          </ul>
                      </div>
            </div>
        </section>




        <div class="clearfix"></div>

        <footer class="footer-wrapper">
            <section class="container">
                <div class="col-xs-12 col-md-12">
                    <div class="footer-info" style="text-align: center;">                      
                        <div class="clearfix"></div>
                        <p class="copy">&copy; A.Movie, 2020. All rights reserved.</p>
                    </div>
                </div>
            </section>
        </footer>
    </div>

    <!-- open/close -->
        <div class="overlay overlay-hugeinc">
            
            <section class="container">

                <div class="col-sm-4 col-sm-offset-4">
                    <button type="button" class="overlay-close">Close</button>
                    <form id="login-form" class="login" method='get' novalidate=''>
                        <p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p>

                        <div class="social social--colored">
                                <a href='#' class="social__variant fa fa-facebook"></a>
                                <a href='#' class="social__variant fa fa-twitter"></a>
                                <a href='#' class="social__variant fa fa-tumblr"></a>
                        </div>

                        <p class="login__tracker">or</p>
                        
                        <div class="field-wrap">
                        <input type='email' placeholder='Email' name='user-email' class="login__input">
                        <input type='password' placeholder='Password' name='user-password' class="login__input">

                        <input type='checkbox' id='#informed' class='login__check styled'>
                        <label for='#informed' class='login__check-info'>remember me</label>
                         </div>
                        
                        <div class="login__control">
                            <button type='submit' class="btn btn-md btn--warning btn--wider">sign in</button>
                            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
                        </div>
                    </form>
                </div>

            </section>
        </div>

	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="js/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="js/external/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Swiper slider -->
        <script src="js/external/idangerous.swiper.min.js"></script>

        <!-- Share buttons -->
        <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <!-- <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-525fd5e9061e7ef0"></script> -->

        <!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <script src="js/jquery.tmpl.js"></script>

        <!-- Custom -->
        <script src="js/custom.js"></script>
    <script src="js/jsrender.min.js"></script>

    <script  id="demo1" type="text/template">
        <div class="ticket">
            <div class="ticket-position">
                <div class="ticket__indecator indecator--pre"><div class="indecator-text pre--text">online ticket</div> </div>
                <div class="ticket__inner">
                    <div class="ticket-secondary">
                        <span class="ticket__item">购票码: <strong class="ticket__number">{{:id}}</strong></span>
                        <span class="ticket__item ticket__date">日期：{{:date}}</span>
                        <span class="ticket__item ticket__time">时间：{{:time}}</span>
                        <span class="ticket__item">影院： <span class="ticket__cinema">{{:cinema}}</span></span>
                        <span class="ticket__item">放映厅： <span class="ticket__hall">5号</span></span>
                        <span class="ticket__item ticket__price">价格： <strong class="ticket__cost">{{:cost}}</strong></span>
                    </div>
                    <div class="ticket-primery">
                        <span class="ticket__item ticket__item--primery ticket__film">电影：<br><strong class="ticket__movie">{{:movie}}</strong></span>
                        <span class="ticket__item ticket__item--primery">座位: <span class="ticket__place">{{:sits}}</span></span>
                    </div>
                </div>
            </div>
        </div>
    </script>
		
		<script type="text/javascript">
            $(document).ready(function() {
                $(document).ready(function() {
                    $.ajax({
                        type: "POST",
                        url: "http://localhost:8080/myTest-1.0-SNAPSHOT/BookShowServlet",
                        headers: {
                            'Access-Control-Expose-Headers': ['Content-Disposition']
                        },
                        success: function (data) {
                            var movie_list=[
                                {
                                    id:data.ticketId,
                                    date:data.date_,
                                    time:data.time_,
                                    cinema:data.cinema,
                                    cost:data.price,
                                    movie:data.movieName,
                                    sits:data.seat
                                }
                            ]
                            console.log(data);
                            $.templates('mine','#demo1');
                            var final=$.render.mine(movie_list);
                            console.log(final);
                            $('.target').append(final);
                        }
                    });

                });
            });
        </script>

</body>
</html>
