<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map"%>
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>AMovie</title>
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
    <link href='http://fonts.useso.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
    <!-- Open Sans -->
    <link href='http://fonts.useso.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>

    <!-- Stylesheets -->

    <!-- Mobile menu -->
    <link href="css/gozha-nav.css" rel="stylesheet" />
    <!-- Select -->
    <link href="css/external/jquery.selectbox.css" rel="stylesheet" />

    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

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
    <!-- Banner -->

    <!-- Header section -->
    <header class="header-wrapper header-wrapper--home">
        <div class="container">

            <a href='index.jsp' class="logo">
                <img alt='logo' src="images/logo.png">
            </a>


            <nav id="navigation-box">

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
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=5">火星救援</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=6">爆裂鼓手</a></li>
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
                                </ul>
                            </li>

                            <li class="col-md-3 mega-menu__coloum mega-menu__coloum--outheading">
                                <ul class="mega-menu__list">
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=14">好莱坞往事</a></li>
                                    <li class="mega-menu__nav-item"><a href="movie-page-full.jsp?id=15">少年的你</a></li>
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
                <div class="auth auth--home" hidden="None" >
                    <div class="auth__show">
                        <span class="auth__image">

                        </span>
                    </div>
                    <a href="#" class="btn btn--sign btn--singin" hidden="">
                        orange
                    </a>
                    <ul class="auth__function">
                        <li><a href="user-page.jsp" class="auth__function-item">电影票</a></li>
                    </ul>
                </div>
                <a href="#" class="btn btn--sign login-window" hidden="" id="login">login</a>
                <a href="book1.html" class="btn btn-md btn--warning btn--book login-window">订票</a>
            </div>

        </div>
    </header>

    <!-- 轮播图 -->
    <div class="bannercontainer">
        <div class="banner">
            <ul>
                <li data-transition="fade" data-slotamount="7" class="slide" data-slide='La La Land'>
                    <img alt='' src="images/indexpic/2.jpg">

                    <div class="caption slide__name margin-slider"
                         data-x="right"
                         data-y="80"

                         data-splitin="chars"
                         data-elementdelay="0.1"

                         data-speed="700"
                         data-start="1400"
                         data-easing="easeOutBack"

                         data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"

                         data-frames="{ typ :lines;
                                                 elementdelay :0.1;
                                                 start:1650;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 },
                                                 { typ :lines;
                                                 elementdelay :0.1;
                                                 start:2150;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:00;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 }
                                                 "


                         data-splitout="lines"
                         data-endelementdelay="0.1"
                         data-customout="x:-230;y:0;z:0;rotationX:0;rotationY:0;rotationZ:90;scaleX:0.2;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%"

                         data-endspeed="500"
                         data-end="8400"
                         data-endeasing="Back.easeIn"
                    >
                        La La Land
                    </div>

                    <div class="caption slide__time margin-slider sfr str"
                         data-x="right"
                         data-hoffset='-243'
                         data-y="186"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"
                         data-end="8700"
                         data-endeasing="Back.easeIn"
                    >
                        从
                    </div >
                    <div class="caption slide__date margin-slider lfb ltb"
                         data-x="right"
                         data-hoffset='-149'
                         data-y="186"
                         data-speed="500"
                         data-start="2400"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"
                         data-end="8200"
                         data-endeasing="Back.easeIn"
                    >
                        三月十五日
                    </div>
                    <div class="caption slide__time margin-slider sfr str"
                         data-x="right"
                         data-hoffset='-113'
                         data-y="186"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"
                         data-end="8700"
                         data-endeasing="Back.easeIn"
                    >
                        到
                    </div>
                    <div class="caption slide__date margin-slider lfb ltb"
                         data-x="right"
                         data-y="186"
                         data-speed="500"
                         data-start="2800"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"
                         data-end="8200"
                         data-endeasing="Back.easeIn"
                    >
                        四月十五日
                    </div>
                    <div class="caption slide__text margin-slider customin customout"
                         data-x="right"
                         data-y="250"
                         data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="400"
                         data-start="3000"
                         data-endspeed="400"
                         data-end="8000"
                         data-endeasing="Back.easeIn">
                        “这太怀旧了。”<br>“就是因为它太怀旧了啊。”<br>热恋中的他们这样说。是啊。这太怀旧了。
                    </div>

                    <div class="caption margin-slider skewfromright customout "
                         data-x="right"
                         data-y="324"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="400"
                         data-start="3300"
                         data-easing="Power4.easeOut"
                         data-endspeed="300"
                         data-end="10000"
                         data-endeasing="Power4.easeOut">
                        <a href="movie-page-full.jsp?id=2" class="slide__link">立即抢购</a>
                    </div>
                </li>


                <!--复仇者联盟-->
                <li data-transition="fade" data-slotamount="7" class="slide fading-slide" >

                    <div class="caption slide__video" data-autoplay='true' >
                        <video class="media-element"   loop="loop" src="video/2.mp4" ></video>
                    </div>


                    <div class="caption slide__name slide__name--smaller"
                         data-x="left"
                         data-y="160"

                         data-splitin="chars"
                         data-elementdelay="0.1"

                         data-speed="700"
                         data-start="1400"
                         data-easing="easeOutBack"

                         data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"

                         data-frames="{ typ :lines;
                                                 elementdelay :0.1;
                                                 start:1650;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 },
                                                 { typ :lines;
                                                 elementdelay :0.1;
                                                 start:2150;
                                                 speed:500;
                                                 ease:Power3.easeOut;
                                                 animation:x:0;y:0;z:0;rotationX:00;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:1;transformPerspective:600;transformOrigin:50% 50%;
                                                 }
                                                 "
                         data-splitout="lines"
                         data-endelementdelay="0.1"
                         data-customout="x:-230;y:0;z:0;rotationX:0;rotationY:0;rotationZ:90;scaleX:0.2;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%"
                         data-endspeed="500"

                         data-endeasing="Back.easeIn"
                    >
                        复仇者联盟4:终局之战
                    </div>



                    <div class="caption slide__time position-center postion-place--one sfr stl"
                         data-x="left"

                         data-y="242"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"

                         data-endeasing="Back.easeIn">
                        从
                    </div>
                    <div class="caption slide__date position-center postion-place--two lfb ltb"
                         data-x="left"
                         data-y="242"
                         data-speed="500"
                         data-start="2400"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"

                         data-endeasing="Back.easeIn">
                        四月十日
                    </div>
                    <div class="caption slide__time position-center postion-place--three sfr stl"
                         data-x="left"
                         data-y="242"
                         data-speed="300"
                         data-start="2100"
                         data-easing="easeOutBack"
                         data-endspeed="300"

                         data-endeasing="Back.easeIn">
                        到
                    </div>
                    <div class="caption slide__date position-center postion-place--four lfb ltb"
                         data-x="left"
                         data-y="242"
                         data-speed="500"
                         data-start="2800"
                         data-easing="Power4.easeOut"
                         data-endspeed="400"

                         data-endeasing="Back.easeIn">
                        五月七日
                    </div>

                    <div class="caption lfb slider-wrap-btn ltb"
                         data-x="left"
                         data-y="310"
                         data-speed="400"
                         data-start="3300"
                         data-easing="Power4.easeOut"
                         data-endspeed="500"

                         data-endeasing="Power4.easeOut" >
                        <a href="movie-page-full.jsp?id=10" class="btn btn-md btn--danger btn--wide slider--btn">立即预购</a>
                    </div>
                </li>

                <li data-transition="fade" data-slotamount="7" class="slide" data-slide='Joker'>
                    <img alt='' src="images/indexpic/3.jpg">
                    <div class="caption slide__name slide__name--smaller slide__name--specific customin customout"
                         data-x="left"
                         data-y="160"

                         data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"

                         data-speed="700"
                         data-start="1400"
                         data-easing="easeOutBack"
                         data-endspeed="500"
                         data-end="8600"
                         data-endeasing="Back.easeIn"

                    >
                        Send in the clowns!</span>
                    </div>

                    <div class="caption slide__descript customin customout"
                         data-x="left"
                         data-y="240"
                         data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="700"
                         data-start="2000"
                         data-endspeed="500"
                         data-end="8400"
                         data-endeasing="Back.easeIn"
                         style="color:darkgoldenrod;font-weight: bolder;">
                        人生近看是场悲剧，但从长远来看却是场喜剧。
                    </div>

                    <div class="caption lfb customout slider-wrap-btn"
                         data-x="left"
                         data-y="310"
                         data-speed="500"
                         data-start="2800"
                         data-easing="Power4.easeOut"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-endspeed="400"
                         data-end="8000"
                         data-endeasing="Power4.easeOut" >
                        <a href="movie-page-full.jsp?id=18" class="btn btn-md btn--danger slider--btn">立即预购</a>
                    </div>
                </li>

            </ul>
        </div>
    </div>

    <!-- 主页 -->
    <section class="container" id="container">
        <div class="movie-best">
            <div class="col-sm-10 col-sm-offset-1 movie-best__rating">为您推荐</div>
            <div class="col-sm-12 change--col">
                <div class="movie-beta__item ">
                    <img src="images/movie/2/post.jpg" alt="">
                    <span class="best-rate">5.0</span>
                    <ul class="movie-beta__info">

                        <li><span class="best-voted"> </span></li>
                        <li>
                            <p class="movie__time">1h36min></p>
                            <p>LaLaLand</p>
                            <p>爱乐之城</p>
                        </li>
                        <li class="last-block">
                            <a href="movie-page-full.jsp?id=2" class="slide__link">了解更多</a>
                        </li>
                    </ul>
                </div>
                <div class="movie-beta__item ">
                    <img src="images/movie/3/post.jpg" alt="">
                    <span class="best-rate">4.6</span>
                    <ul class="movie-beta__info">

                        <li><span class="best-voted"> </span></li>
                        <li>
                            <p class="movie__time">2h34min></p>
                            <p>BladeRunner</p>
                            <p>银翼杀手</p>
                        </li>
                        <li class="last-block">
                            <a  class="slide__link">了解更多</a>
                        </li>
                    </ul>

                </div>
                <div class="movie-beta__item ">
                    <img src="images/movie/4/post.jpg" alt="">
                    <span class="best-rate">4.8</span>
                    <ul class="movie-beta__info">

                        <li><span class="best-voted"> </span></li>
                        <li>
                            <p class="movie__time">2h30min></p>
                            <p>Leon</p>
                            <p>这个杀手不太冷</p>
                        </li>
                        <li class="last-block">
                            <a  href="movie-page-full.jsp?id=4" class="slide__link">了解更多</a>
                        </li>
                    </ul>

                </div>
                <div class="movie-beta__item ">
                    <img src="images/movie/5/post.jpg" alt="">
                    <span class="best-rate">4.2</span>
                    <ul class="movie-beta__info">

                        <li><span class="best-voted"> </span></li>
                        <li>
                            <p class="movie__time">2h30min></p>
                            <p>Martian</p>
                            <p>火星救援</p>
                        </li>
                        <li class="last-block">
                            <a href="movie-page-full.jsp?id=5" class="slide__link">了解更多</a>
                        </li>
                    </ul>

                </div>
                <div class="movie-beta__item ">
                    <img src="images/movie/6/post.jpg" alt="">
                    <span class="best-rate">4.8</span>
                    <ul class="movie-beta__info">

                        <li><span class="best-voted"> </span></li>
                        <li>
                            <p class="movie__time">2h12min></p>
                            <p>Whiplash</p>
                            <p>寂静之地</p>
                        </li>
                        <li class="last-block">
                            <a href="movie-page-full.jsp?id=6" class="slide__link">了解更多</a>
                        </li>
                    </ul>

                </div>
                <div class="movie-beta__item ">
                    <img src="images/movie/7/post.jpg" alt="">
                    <span class="best-rate">4.9</span>
                    <ul class="movie-beta__info">

                        <li><span class="best-voted"> </span></li>
                        <li>
                            <p class="movie__time">1h54min></p>
                            <p>Alita</p>
                            <p>阿丽塔：战斗天使</p>
                        </li>
                        <li class="last-block">
                            <a href="movie-page-full.jsp?id=7" class="slide__link">了解更多</a>
                        </li>
                    </ul>

                </div>
            </div>
            <div class="col-sm-10 col-sm-offset-1 movie-best__check">查看所有上映电影</div>
        </div>

                <div class="search-wrapper">
                    <div class="container container--add">
                        <form id='search-form' method='get' class="search" action="search-page.jsp">
                            <input  name="search" type="text" class="search__field" placeholder="搜索">
                            <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                                <option value="1" selected='selected'>标题</option>
                                <option value="2">类型</option>
                                <option value="3">国家</option>
                                </select>
                            <button type='submit' class="btn btn-md btn--danger search__button">查询电影</button>
                        </form>
                    </div>
                </div>

        <div class="clearfix"></div>

        <h2 id='target' class="page-heading heading--outcontainer">正在热映</h2>

        <div class="col-sm-12">
            <div class="row" id="target123">

                <div class="col-sm-12 col-md-12" id="targe1" >
                </div>
            </div>
        </div>


        <!--新闻-->
        <div class="col-sm-12">
            <h2 class="page-heading">新闻</h2>

            <div class="col-sm-4 similar-wrap col--remove">
                <div class="post post--preview post--preview--wide">
                    <div class="post__image">
                        <img alt='' src="images/indexpic/n1.jpg">
                        <div class="social social--position social--hide">
                            <span class="social__name">分享:</span>
                            <a href='#' class="social__variant social--first fa fa-facebook"></a>
                            <a href='#' class="social__variant social--second fa fa-twitter"></a>
                            <a href='#' class="social__variant social--third fa fa-vk"></a>
                        </div>
                    </div>
                    <p class="post__date">2020-09-07</p>
                    <a href="news-full.jsp" class="post__title">「易烊千玺」盘活了香港金像奖？</a>
                    <a href="news-full.jsp" class="btn read-more post--btn">阅读更多</a>
                </div>
            </div>
            <div class="col-sm-4 similar-wrap col--remove">
                <div class="post post--preview post--preview--wide">
                    <div class="post__image">
                        <img alt='' src="images/indexpic/n1.jpg">
                        <div class="social social--position social--hide">
                            <span class="social__name">分享:</span>
                            <a href='#' class="social__variant social--first fa fa-facebook"></a>
                            <a href='#' class="social__variant social--second fa fa-twitter"></a>
                            <a href='#' class="social__variant social--third fa fa-vk"></a>
                        </div>
                    </div>
                    <p class="post__date">2020-09-07</p>
                    <a href="single-page-left.jsp" class="post__title">「易烊千玺」盘活了香港金像奖？</a>
                    <a href="single-page-left.jsp" class="btn read-more post--btn">阅读更多</a>
                </div>
            </div>
            <div class="col-sm-4 similar-wrap col--remove">
                <div class="post post--preview post--preview--wide">
                    <div class="post__image">
                        <img alt='' src="images/indexpic/n1.jpg">
                        <div class="social social--position social--hide">
                            <span class="social__name">分享:</span>
                            <a href='#' class="social__variant social--first fa fa-facebook"></a>
                            <a href='#' class="social__variant social--second fa fa-twitter"></a>
                            <a href='#' class="social__variant social--third fa fa-vk"></a>
                        </div>
                    </div>
                    <p class="post__date">2020-09-07</p>
                    <a href="single-page-left.jsp" class="post__title">「易烊千玺」盘活了香港金像奖？</a>
                    <a href="single-page-left.jsp" class="btn read-more post--btn">阅读更多</a>
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
            <form id="login-form" class="login" method='post' >
                <p class="login__title">登录<br><span class="login-edition">欢迎使用</span></p>

                <div class="social social--colored">
                    <a href='#' class="social__variant fa fa-weibo"></a>
                    <a href='#' class="social__variant fa fa-qq"></a>
                    <a href='#' class="social__variant fa fa-wechat"></a>
                </div>

                <p class="login__tracker">或</p>

                <div class="field-wrap">
                    <input type='email' placeholder='用户名' name='user-email' class="login__input"  >
                    <input type='password' placeholder='密码' name='user-password' class="login__input">

                    <input type='checkbox' id='#informed' class='login__check styled' >
                    <label for='#informed' class='login__check-info'>记住我</label>
                </div>

                <div class="login__control">
                    <button type='submit' class="btn btn-md btn--warning btn--wider "  >登录</button>
                    <a href="signin.jsp" class="login__tracker form__tracker">没有账号?加入我们吧！</a>
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
<!-- Bootstrap 3-->
<script src="js/external/bootstrap.min.js"></script>

<!-- jQuery REVOLUTION Slider -->
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- Mobile menu -->
<script src="js/jquery.mobile.menu.js"></script>
<!-- Select -->
<script src="js/external/jquery.selectbox-0.2.min.js"></script>
<!-- Stars rate -->
<script src="js/external/jquery.raty.js"></script>

<!-- Form element -->
<script src="js/external/form-element.js"></script>
<!-- Form validation -->
<script src="js/form.js"></script>

<!-- Custom -->
<script src="js/jsrender.min.js"></script>

<script src="js/custom.js"></script>


<script  id="demo1" type="text/template">
    <div  class="movie movie--test movie--test--dark movie--test--left">
        <div class="movie__images">
            <a  href=movie-page-full.jsp?id={{:id}}   class="movie-beta__link">
                <img alt='' src="{{:img_path}}">
            </a>
        </div>
        <div class="movie__info">
            <a  class="movie__title">{{:name}}</a>

            <p class="movie__time">{{:duration}}</p>

            <p class="movie__option">{{:category}}</p>
            <p class="movie__option">{{:actor}}</p>
            <div class="movie__rate">
                <div class="score"></div>
                <span class="movie__rating">{{:grade}}</span>
            </div>
        </div>
    </div>
</script>

<script type="text/javascript">
    $(document).ready(function() {
        console.log("开始咯！");
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
                    $('#targe1').append(final);
            }
        })
        init_Home();
    });
</script>


</body>
</html>