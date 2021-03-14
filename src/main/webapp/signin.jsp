<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>AMovie - Login</title>
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

    <!-- Mobile menu -->
    <link href="css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="css/external/jquery.selectbox.css" rel="stylesheet" />

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
                                    <li class="mega-menu__nav-item"><a href="#">星际穿越</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">银翼杀手</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">这个杀手不太冷</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">爱乐之城</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">火星救援</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">爆裂鼓手</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">战斗天使：阿丽塔</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">驴得水</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">南方车站的聚会</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">即将上映</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">复仇者联盟：终局之战</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">婚姻故事</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">爱尔兰人</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">寄生虫</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">好莱坞往事</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">少年的你</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="#">邪不压正</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">燃烧女子的肖像</a></li>
                                    <li class="mega-menu__nav-item"><a href="#">小丑</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Main content -->
    <form id="login-form"  method='get' novalidate='' class="login target">
        <p class="login__title">注册 <br><span class="login-edition">welcome to A.Movie</span></p>

        <div class="social social--colored">
            <a href='#' class="social__variant fa fa-facebook"></a>
            <a href='#' class="social__variant fa fa-twitter"></a>
            <a href='#' class="social__variant fa fa-tumblr"></a>
        </div>


        <div class="field-wrap">
            <input type='email' placeholder='邮箱' name='Email' class="login__input">
            <input type='text' placeholder='密码' name='Password' class="login__input">
            <input type='text' placeholder='名称' name='Name' class="login__input">
            <input type='text' placeholder='电话号码' name='Tel' class="login__input">
        </div>

        <div class="login__control">
            <button  class="btn btn-md btn--warning btn--wider ">注册</button>
        </div>
    </form>

    <div class="clearfix"></div>
</div>

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

<script type="text/javascript">
    $(document).ready(function() {
        $(".target").click(function (e) {
            //里函数部分
            e.preventDefault;

            var Email = $("input[name='Email']").val();
            var Password = $("input[name='Password']").val();
            var Name = $("input[name='Name']").val();
            var Tel =$("input[name='Tel']").val();

            $(document).ready(function () {
                console.log("POST开始咯！");
                $.ajax({
                    type: "POST",
                    url: "http://localhost:8080/myTest-1.0-SNAPSHOT/RegisterServlet",
                    headers: {
                        'Access-Control-Expose-Headers': ['Content-Disposition']
                    }, data: {
                        username:Name,
                        email:Email,
                        password:Password,
                        tel:Tel,
                    },
                    success: function (data) {

                        console.log(data);
                    }
                });

            });
            window.location.href = "index.jsp";
        });
    });
</script>


</body>
</html>