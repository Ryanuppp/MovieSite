<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map"%>
<!doctype html>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>AMovie - Cinema list</title>
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

    <!-- Stylesheets -->

    <!-- Mobile menu -->
    <link href="css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="css/external/jquery.selectbox.css" rel="stylesheet" />

    <!-- Custom -->
    <link href="css/style.css?v=1" rel="stylesheet" />

    <!-- Modernizr -->
    <script src="js/external/modernizr.custom.js"></script>

    <script src="js/jquery.tmpl.js"></script>

    <script src="js/external/vue.js"></script>

    <script src="js/external/axios.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>
    <![endif]-->
</head>

<body>
<div class="wrapper">

    <header class="header-wrapper">
        <div class="container">
            <a href='index.jsp' class="logo">
                <img alt='logo' src="images/logo.png">
            </a>

            <nav id="navigation-box">>
                <a href="#" id="navigation-toggle">
                        <span class="menu-icon">
                            <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                              <span class="lines"></span>
                            </span>
                        </span>
                </a>

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
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=6">爆裂鼓手</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=7">战斗天使：阿丽塔</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=8">驴得水</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=9">南方车站的聚会</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">即将上映</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=10">复仇者联盟：终局之战</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=11">婚姻故事</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=12">爱尔兰人</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=13">寄生虫</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=14">好莱坞往事</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=15">少年的你</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=16">邪不压正</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=17">燃烧女子的肖像</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=18">小丑</a></li>
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
                <a href="#" class="btn btn--sign login-window" hidden="" id="login">login</a>
                <a href="book1.jsp" class="btn btn-md btn--warning btn--book login-window">订票</a>
            </div>
        </div>
    </header>

    <!-- Main content -->
    <section class="container">
        <div class="col-sm-12">
            <h2 class="page-heading">影院</h2>


            <div class="cinema-wrap">
                <div class="row target">

                </div>

                <div class="pagination paginatioon--full">
                    <a href='#' class="pagination__prev">上一页</a>
                    <a href='#' class="pagination__next">下一页</a>
                </div>

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
                    <input type='email' placeholder='用户名' name='user-email' class="login__input" v-model=“email”>
                    <input type='password' placeholder='密码' name='user-password' class="login__input" v-model="password">

                    <input type='checkbox' id='#informed' class='login__check styled' v-model="checked">
                    <label for='#informed' class='login__check-info'>记住我</label>
                </div>
                <div class="login__control">
                    <button type='submit' class="btn btn-md btn--warning btn--wider">登录</button>
                    <a href="signin.jsp" class="login__tracker form__tracker">没有账号?加入我们吧！</a>
                </div>
            </form>
        </div>

    </section>
</div>

<!-- JavaScript-->
<!-- jQuery 1.9.1-->
<script src="http://ajax.useso.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
<!-- Migrate -->
<script src="js/external/jquery-migrate-1.2.1.min.js"></script>
<!-- Bootstrap 3-->
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

<!-- Mobile menu -->
<script src="js/jquery.mobile.menu.js"></script>
<!-- Select -->
<script src="js/external/jquery.selectbox-0.2.min.js"></script>

<!-- Form element -->
<script src="js/external/form-element.js"></script>
<!-- Form validation -->
<script src="js/form.js"></script>

<!-- Custom -->
<script src="js/custom.js"></script>

<script src="js/jsrender.min.js"></script>

<script  id="demo1" type="text/template">
    <div class="col-xs-6 col-sm-3 cinema-item">
        <div class="cinema">
            <a href='single-cinema.jsp?id={{:id}}' class="cinema__images">
                <img alt='' src="{{:img_path}}">
                <span class="cinema-rating">{{:grade}}</span>
            </a>
            <a href="single-cinema.jsp" class="cinema-title">{{:name}}</a>
        </div>
    </div>
    </script>



<script type="text/javascript">
    $(document).ready(function() {

        init_CinemaList();
        console.log("开始咯！");
        $.ajax({
            type:"GET",
            url:"http://localhost:8080/myTest-1.0-SNAPSHOT/SelectAllCinemaServlet",
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

                $(".target").prepend(final);
            }
        })
    });
</script>

</body>
</html>