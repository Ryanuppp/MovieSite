<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.Map"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>选择时间</title>
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


    <script src="js/external/axios.js"></script>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>
    <![endif]-->
</head>

<body>
<div class="wrapper">

    <!-- Header section -->
    <header class="header-wrapper">
        <div class="container">
            <!-- Logo link-->
            <a href='index.jsp' class="logo">
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
                        <a href="index.jsp">首页</a>
                    </li>
                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="cinema-list.jsp">影院</a>
                    </li>
                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="news-full.jsp">新闻</a>
                    </li>
                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="movie-list-full.jsp">电影</a>
                        <ul class="mega-menu container">
                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">正在热映</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=1">星际穿越</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=3">银翼杀手</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=4">这个杀手不太冷</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=2">爱乐之城</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=5">火星救援</a></li>
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

            <!-- Additional header buttons / Auth and direct link to booking-->
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

    <section class="container">
        <div class="order-container">
            <div class="order">
                <img class="order__images" alt='' src="images/tickets.png">
                <p class="order__title">在线订票 <br><span class="order__descript">祝您享受一段好时光！</span></p>
                <div class="order__control">
                    <a href="#" class="order__control-btn active">购票</a>
                    <a href="#" class="order__control-btn">预订</a>
                </div>
            </div>
        </div>
        <div class="order-step-area">
            <div class="order-step first--step">1. 选择电影与日期</div>
            <div class="order-step first--step order-step--disable">2.选座</div>
            <div class="order-step first--step order-step--disable">3.结算</div>
        </div>
        <h2 class="page-heading heading--outcontainer">选择一部电影</h2>

    </section>

    <div class="choose-film">
        <div class="swiper-container">
            <div class="swiper-wrapper target">

            </div>
        </div>
    </div>

    <section class="container">
        <div class="col-sm-12">
            <div class="choose-indector choose-indector--film">
                <strong>已选: </strong><span class="choosen-area"></span>
            </div>

            <h2 class="page-heading">选择日期</h2>

            <div class="choose-container choose-container--short">

                <div class="datepicker">
                    <span class="datepicker__marker"><i class="fa fa-calendar"></i>日期</span>
                    <input type="text" id="datepicker" value='08/09/2020' class="datepicker__input">
                </div>
            </div>

            <h2 class="page-heading">选择影院&时间</h2>

            <div class="time-select time-select--wide">
                <div class="time-select__group group--first">
                    <div class="col-sm-3">
                        <p class="time-select__place">BIGWORLD</p>
                    </div>
                    <ul class="col-sm-6 items-wrap">
                        <li class="time-select__item" data-time='09:40'>09:40</li>
                        <li class="time-select__item" data-time='13:45'>13:45</li>
                        <li class="time-select__item" data-time='15:45'>15:45</li>
                        <li class="time-select__item" data-time='19:50'>19:50</li>
                        <li class="time-select__item" data-time='21:50'>21:50</li>
                    </ul>
                </div>

                <div class="time-select__group">
                    <div class="col-sm-3">
                        <p class="time-select__place">MIDDLEWORLD</p>
                    </div>
                    <ul class="col-sm-6 items-wrap">
                        <li class="time-select__item" data-time='10:45'>10:45</li>
                        <li class="time-select__item" data-time='16:00'>16:00</li>
                        <li class="time-select__item" data-time='19:00'>19:00</li>
                        <li class="time-select__item" data-time='21:15'>21:15</li>
                        <li class="time-select__item" data-time='23:00'>23:00</li>
                    </ul>
                </div>

                <div class="time-select__group">
                    <div class="col-sm-3">
                        <p class="time-select__place">SMALLWORLD</p>
                    </div>
                    <ul class="col-sm-6 items-wrap">
                        <li class="time-select__item" data-time='09:00'>09:00</li>
                        <li class="time-select__item" data-time='11:00'>11:00</li>
                        <li class="time-select__item" data-time='13:00'>13:00</li>
                        <li class="time-select__item" data-time='15:00'>15:00</li>
                        <li class="time-select__item" data-time='17:00'>17:00</li>
                        <li class="time-select__item" data-time='19:00'>19:00</li>
                        <li class="time-select__item" data-time='21:00'>21:00</li>
                        <li class="time-select__item" data-time='23:00'>23:00</li>
                        <li class="time-select__item" data-time='01:00'>01:00</li>
                    </ul>
                </div>


                <div class="time-select__group group--last">
                    <div class="col-sm-3">
                        <p class="time-select__place">TINYWORLD</p>
                    </div>
                    <ul class="col-sm-6 items-wrap">
                        <li class="time-select__item" data-time='17:45'>17:45</li>
                        <li class="time-select__item" data-time='21:30'>21:30</li>
                        <li class="time-select__item" data-time='02:20'>02:20</li>
                    </ul>
                </div>
            </div>

            <div class="choose-indector choose-indector--time">
                <strong>已选： </strong><span class="choosen-area"></span>
            </div>
        </div>

    </section>

    <div class="clearfix"></div>

    <form id='film-and-time' class="booking-form" method='get' action='book2.jsp'>

        <input type='text' name='movie' class="choosen-movie">
        <input type='text' name='date' class="choosen-date">
        <input type='text' name='cinema' class="choosen-cinema">
        <input type='text' name='time' class="choosen-time">


        <div class="booking-pagination">
            <a href="#" class="booking-pagination__prev hide--arrow">
                <span class="arrow__text arrow--prev"></span>
                <span class="arrow__info"></span>
            </a>
            <button href="book2.jsp" class="booking-pagination__next">
                <span class="arrow__text arrow--next">下一步</span>
                <span class="arrow__info">2.选座</span>
            </button>
        </div>

    </form>

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

        <div class="col-sm-4 col-sm-offset-4" >
            <button type="button" class="overlay-close">关闭</button>
            <form id="login-form" class="login" method='post' novalidate=''>
                <p class="login__title">登录<br><span class="login-edition">欢迎使用</span></p>

                <div class="social social--colored">
                    <a href='#' class="social__variant fa fa-weibo"></a>
                    <a href='#' class="social__variant fa fa-qq"></a>
                    <a href='#' class="social__variant fa fa-wechat"></a>
                </div>

                <p class="login__tracker">或</p>

                <div class="field-wrap">
                    <input type='email' placeholder='用户名' name='user-email' class="login__input" ”>
                    <input type='password' placeholder='密码' name='user-password' class="login__input">

                    <input type='checkbox' id='#informed' class='login__check styled' v-model="checked">
                    <label for='#informed' class='login__check-info'>记住我</label>
                </div>

                <div class="login__control">
                    <button type='submit' class="btn btn-md btn--warning btn--wider" >登录</button>
                    <a href="signin.jsp" class="login__tracker form__tracker">没有账号?加入我们吧！</a>
                </div>
            </form>
        </div>

    </section>
</div>

<!-- JavaScript-->
<!-- jQuery 1.9.1-->
<script src="js/external/jquery-1.10.1.min.js"></script>
<!-- Migrate -->
<script src="js/external/jquery-migrate-1.2.1.min.js"></script>
<!-- jQuery UI -->
<script src="js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
<!-- Bootstrap 3-->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

<!-- Mobile menu -->
<script src="js/jquery.mobile.menu.js"></script>
<!-- Select -->
<script src="js/external/jquery.selectbox-0.2.min.js"></script>
<!-- Swiper slider -->
<script src="js/external/idangerous.swiper.min.js"></script>

<!-- Form element -->
<script src="js/external/form-element.js"></script>
<!-- Form validation -->
<script src="js/form.js"></script>
<!-- Custom -->
<script src="js/custom.js"></script>

<script src="js/jsrender.min.js"></script>

<script  id="demo1" type="text/template">

    <div class="swiper-slide" data-film='{{:name}}'>
        <div class="film-images">
            <img alt='' src="{{:img_path}}">
        </div>
        <p class="choose-film__title">{{:name}}</p>
    </div>

</script>

<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            type:"GET",
            url:"http://localhost:8080/myTest-1.0-SNAPSHOT/AllMovieServlet",
            headers: {
                'Access-Control-Expose-Headers': ['Content-Disposition']
            },
            success:function (data) {
                console.log(data);
                var movie_list = JSON.parse(data);
                console.log(movie_list);
                $.templates('mine','#demo1');
                var final=$.render.mine(movie_list);
                console.log(final);
                $('.target').append(final);
                console.log("开始渲染");
                init_BookingOne();
            }
        });


    });
</script>

</body>
</html>