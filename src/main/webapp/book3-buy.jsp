<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>AMovie - Booking step 3</title>
    <meta name="description" content="A Template by Gozha.net">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="Gozha.net">

    <!-- Mobile Specific Metas-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="telephone=no" name="format-detection">

    <!-- Fonts -->
    <!-- Font awesome - icon font -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <!-- Roboto -->
    <link href='http://fonts.useso.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>

    <!-- Stylesheets -->

    <!-- Mobile menu -->
    <link href="css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="css/external/jquery.selectbox.css" rel="stylesheet" />

    <!-- Custom -->
    <link href="css/style.css?v=1" rel="stylesheet" />

    <!-- Modernizr -->
    <script src="js/external/modernizr.custom.js"></script>

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
                        <a href="index.jsp">??????</a>
                    </li>
                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="cinema-list.jsp">??????</a>
                    </li>
                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="news-full.jsp">??????</a>
                    </li>
                    <li>
                        <span class="sub-nav-toggle plus"></span>
                        <a href="movie-list-full.jsp">??????</a>
                        <ul class="mega-menu container">
                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">????????????</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=1">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=3">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=4">?????????????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=2">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=5">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=6">????????????</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=7">????????????????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=8">?????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=9">?????????????????????</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum">
                                <h4 class="mega-menu__heading">????????????</h4>
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.?id=10">??????????????????????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=11">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=12">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=13">?????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=14">???????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=15">????????????</a></li>
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=16">????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=17">?????????????????????</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.html?id=18">??????</a></li>
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

    <!-- Main content -->
    <section class="container">
        <div class="order-container">
            <div class="order">
                <img class="order__images" alt='' src="images/tickets.png">
                <p class="order__title">???????????? <br><span class="order__descript">??????????????????????????????</span></p>
                <div class="order__control">
                    <a href="" class="order__control-btn active">??????</a>
                    <a href="book-final.jsp" class="order__control-btn">??????</a>
                </div>
            </div>
        </div>
        <div class="order-step-area">
            <div class="order-step first--step order-step--disable ">1.?????????????????????</div>
            <div class="order-step second--step order-step--disable">2. ??????</div>
            <div class="order-step third--step">3. ??????</div>
        </div>

        <div class="col-sm-12">
            <div class="checkout-wrapper">
                <h2 class="page-heading">??????</h2>
                <ul class="book-result target">
                </ul>
            </div>

            <div class="order">
                <a href="book-final.jsp" class="btn btn-md btn--warning btn--wide">??????</a>
            </div>

        </div>

    </section>


    <div class="clearfix"></div>

    <div class="booking-pagination">
        <a href="book2.jsp" class="booking-pagination__prev">
            <p class="arrow__text arrow--prev">?????????</p>
            <span class="arrow__info">??????</span>
        </a>
        <a href="#" class="booking-pagination__next hide--arrow">
            <p class="arrow__text arrow--next">?????????</p>
            <span class="arrow__info"></span>
        </a>
    </div>

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
            <button type="button" class="overlay-close">??????</button>
            <form id="login-form" class="login" method='post' novalidate=''>
                <p class="login__title">??????<br><span class="login-edition">????????????</span></p>

                <div class="social social--colored">
                    <a href='#' class="social__variant fa fa-weibo"></a>
                    <a href='#' class="social__variant fa fa-qq"></a>
                    <a href='#' class="social__variant fa fa-wechat"></a>
                </div>

                <p class="login__tracker">???</p>

                <div class="field-wrap">
                    <input type='email' placeholder='?????????' name='user-email' class="login__input" >
                    <input type='password' placeholder='??????' name='user-password' class="login__input" >

                    <input type='checkbox' id='#informed' class='login__check styled' v-model="checked">
                    <label for='#informed' class='login__check-info'>?????????</label>
                </div>

                <div class="login__control">
                    <button type='submit' class="btn btn-md btn--warning btn--wider" >??????</button>
                    <a href="signin.jsp" class="login__tracker form__tracker">???????????????????????????????</a>
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
<script src="js/jsrender.min.js"></script>

<!-- Custom -->
<script src="js/custom.js"></script>

<script  id="demo1" type="text/template">
    <li class="book-result__item">????????? <span class="book-result__count booking-cost">???{{:cost}}</span></li>
    </script>

<script type="text/javascript">
    $(document).ready(function() {

        console.log("????????????");
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/myTest-1.0-SNAPSHOT/BookShowServlet",
            headers: {
                'Access-Control-Expose-Headers': ['Content-Disposition']
            },
            success: function (data) {
                console.log(data);
                var movie_list=[{
                    cost:data.price
                }
                ];
                console.log(movie_list);
                $.templates('mine', '#demo1');
                var final = $.render.mine(movie_list);
                console.log(final);
                $('.target').prepend(final);
            }
        });
    });


</script>

</body>
</html>