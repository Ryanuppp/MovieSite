<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map"%>
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie - News</title>
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
                
                <!-- Additional header buttons / Auth and direct link to booking-->
                <div class="control-panel">
                    <a href="#" class="btn btn--sign btn--singin" hidden="">
                        orange
                    </a>
                    <a href="book1.jsp" class="btn btn-md btn--warning btn--book login-window">订票</a>
                </div>

            </div>
        </header>

        <!-- Search bar -->
        <div class="search-wrapper">
            <div class="container container--add">
                <form id='search-form' method='get' class="search">
                    <input type="text" class="search__field" placeholder="输入您想看的新闻">
                    <!-- <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                        <option value="1" selected='selected'>按名称</option>
                        <option value="2">按年份</option>
                        <option value="4">By title</option>
                        <option value="5">By year</option>
                    </select> -->
                    <button type='submit' class="btn btn-md btn--danger search__button">搜索</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <section class="container">
            <div class="overflow-wrapper">
                <div class="col-sm-12">
                
                    <h2 class="page-heading">新闻</h2>
                    
                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->

                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->

                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->

                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->

                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->

                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->

                    <!-- News post article-->
                    <article class="post post--news">
                        <a href='#' class="post__image-link">
                            <img alt='' src="images/new/1/post.jpg">
                        </a>

                        <h1><a href="#" class="post__title-link">「易烊千玺」盘活了香港金像奖？</a></h1>
                        <p class="post__date">2020-05-07</p>

                        <div class="wave-devider"></div>

                        <p class="post__text">香港金像奖在公布完结果后一个小时内，＃金像奖＃冲到了热搜榜前三。<br>
                            翻开热搜的内容，基本上十条内容里有九条在呼喊一个人的名字，他就是易烊千玺。<br>易烊千玺拿下了第39届金像奖最佳新人奖，两提一中，另一个提名奖项是最佳男演员。自此一役，易烊千玺在顶级流量偶像的基础上，又加上了让他的饭圈为之骄傲的标签——优秀青年演员。</p> 

                        <div class="tags">
                                <ul>
                                    <li class="item-wrap"><a href="#" class="tags__item">香港金像奖</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">易烊千玺</a></li>
                                    <li class="item-wrap"><a href="#" class="tags__item">少年的你</a></li>
                                </ul>
                        </div>

                        <div class="devider-huge"></div>
                    </article> 
                    <!-- end news post article-->


                    <div class="pagination">
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

        <!-- Twitter feed -->
        <script src="js/external/twitterfeed.js"></script>
		
		<!-- Form element -->
        <script src="js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="js/form.js"></script>

        <!-- Custom -->
        <script src="js/custom1.js"></script>

</body>
</html>
