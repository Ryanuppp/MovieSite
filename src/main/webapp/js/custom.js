    "use strict";
    function getCookie(cookie_name) {
        var allcookies = document.cookie;
        //索引长度，开始索引的位置
        var cookie_pos = allcookies.indexOf(cookie_name);
        // 如果找到了索引，就代表cookie存在,否则不存在
        if (cookie_pos != -1) {
            // 把cookie_pos放在值的开始，只要给值加1即可
            //计算取cookie值得开始索引，加的1为“=”
            cookie_pos = cookie_pos + cookie_name.length + 1;
            //计算取cookie值得结束索引
            var cookie_end = allcookies.indexOf(";", cookie_pos);

            if (cookie_end == -1) {
                cookie_end = allcookies.length;
            }
            //得到想要的cookie的值
            var value = unescape(allcookies.substring(cookie_pos, cookie_end));
        }
        return value;
    }
    function check(){
        if(getCookie("type")=="User"){
            $("#login").remove();
            $(".login").removeClass("login-window");
            $(".auth--home").removeAttr("hidden");
            $(".auth__image img").removeAttr("src");

        }
    }

    //Modernizr touch detect
    Modernizr.load({
            test: Modernizr.touch,
            yep :['css/touch.css?v=1'],
            nope: [] 
    });

	//返回顶端的箭头
        var $block =$('<div/>',{'class':'top-scroll'}).append('<a href="#"/>').hide().appendTo('body').click(function () {
            $('body,html').animate({scrollTop: 0}, 800);
            return false;
        });
                  
        //initialization
        var $window = $(window);

        if ($window.scrollTop() > 35) {showElem();} 
        else {hideElem();}

        //handlers    
        $window.scroll(function () {    
            if ($(this).scrollTop() > 35) {showElem();} 
            else {hideElem();}
        });

        //functions
        function hideElem(){
            $block.fadeOut();
        }   
        function showElem(){
            $block.fadeIn();
        }

    //2. Mobile menu
    //Init mobile menu
    $('#navigation').mobileMenu({
        triggerMenu:'#navigation-toggle',
        subMenuTrigger: ".sub-nav-toggle",
        animationSpeed:500  
    });

    //3. Search bar dropdown
    //search bar
    $("#search-sort").selectbox({
            onChange: function (val, inst) {

                $(inst.input[0]).children().each(function(item){
                    $(this).removeAttr('selected');
                })
                $(inst.input[0]).find('[value="'+val+'"]').attr('selected','selected');
            }

        });

    //登录窗口
    $('.login-window').click(function (e) {
        e.preventDefault();
        if (getCookie("type") != "User") {
            $('.overlay').removeClass('close').addClass('open');
        } else {
            window.location.href = "book1.jsp";
        }
    });

    $('.overlay-close').click(function (e) {
        e.preventDefault;
        $('.overlay').removeClass('open').addClass('close');

        setTimeout(function(){
            $('.overlay').removeClass('close');}, 500);
    });


function init_Home() {
    "use strict";

	//轮播图组件的生成以及绑定
				var api = $('.banner').revolution({
                    delay:9000,
                    startwidth:1170,
                    startheight:500,
             
                     onHoverStop:"on",
             
                     hideArrowsOnMobile:"off",

                     hideTimerBar:"on",
                     hideThumbs:'0',
             
                     keyboardNavigation:"on",
             
                     navigationType:"none",
                     navigationArrows:"solo",
             
                     soloArrowLeftHalign:"left",
                     soloArrowLeftValign:"center",
                     soloArrowLeftHOffset:0,
                     soloArrowLeftVOffset:0,
             
                     soloArrowRightHalign:"right",
                     soloArrowRightValign:"center",
                     soloArrowRightHOffset:0,
                     soloArrowRightVOffset:0,
             
             
                     touchenabled:"on",
                     swipe_velocity:"0.7",
                     swipe_max_touches:"1",
                     swipe_min_touches:"1",
                     drag_block_vertical:"false",
             
             
                     fullWidth:"off",
                     forceFullWidth:"off",
                     fullScreen:"off",
             
                  });

                    api.bind("revolution.slide.onchange",function (e,data) {
                         var slides = $('.banner .slide');
                         var currentSlide= data.slideIndex;

                         var nextSlide = slides.eq(currentSlide).attr('data-slide');
                         var prevSlide = slides.eq(currentSlide-2).attr('data-slide');

                         var lastSlide = slides.length;

                         if(currentSlide == lastSlide) {
                             var nextSlide = slides.eq(0).attr('data-slide');
                         }

                         //put onload value for slider navigation
                        $('.tp-leftarrow').html( '<span class="slider__info">' + prevSlide + '</span>');
                        $('.tp-rightarrow').html( '<span class="slider__info">' + nextSlide + '</span>');

                    });

	
	//用户下滑菜单
            $('.auth__show').click(function (e){
                e.preventDefault();
                $('.auth__function').toggleClass('open-function')
            })

            $('.btn--singin').click(function (e){
                e.preventDefault();
                $('.auth__function').toggleClass('open-function')
            });

                    $('.select__variant').click( function (e) {
                        e.preventDefault();
                        $(this).parent().find('.active-dropdown').css("z-index", '50');
                        var value = $(this).attr('data-value');
                        $('.select__field').val(value);
                        $(this).parent().find('.active-dropdown').css("z-index", '-1');
                    });

                    $('body').click( function (e){
                      console.log(e.target);
                    })

    // Rating scrore init
    //Rating star
    $('.score').raty({
        width:130, 
        score: 0,
        path: 'images/rate/',
        starOff : 'star-off.svg',
        starOn  : 'star-on.svg' 
    });

    //Scroll down navigation function
    //scroll down
    $('.movie-best__check').click(function (ev) {
        ev.preventDefault();
        $('html, body').stop().animate({'scrollTop': $('#target').offset().top-30}, 900, 'swing');
    });

    check();
}

function init_BookingOne() {
    "use strict";
    check();

    //选择购买还是预定
    $('.order__control-btn').click(function (e) {
        e.preventDefault();

        $('.order__control-btn').removeClass('active');
        $(this).addClass('active');
    })

    //Init vars for order data
    // var for booking;
                var movie = $('.choosen-movie'),
                    city = $('.choosen-city'),
                    date = $('.choosen-date'),
                    cinema = $('.choosen-cinema'),
                    time = $('.choosen-time');

                //滑块
                var mySwiper = new Swiper('.swiper-container',{
                    slidesPerView:10,
                    loop:true
                  });

                $('.swiper-slide-active').css({'marginLeft':'-2px'});
                //bootstrap响应式页面
                    if ($(window).width() > 1930 ){
                         mySwiper.params.slidesPerView=13;
                         mySwiper.resizeFix();         
                    }else

                    if ($(window).width() >993 & $(window).width() <  1199  ){
                         mySwiper.params.slidesPerView=6;
                         mySwiper.resizeFix();         
                    }
                    else
                    if ($(window).width() >768 & $(window).width() <  992  ){
                         mySwiper.params.slidesPerView=5;
                         mySwiper.resizeFix();         
                    }

                    else
                    if ($(window).width() < 767 & $(window).width() > 481){
                         mySwiper.params.slidesPerView=4;
                         mySwiper.resizeFix();    
                    
                    } else
                     if ($(window).width() < 480){
                         mySwiper.params.slidesPerView=2;
                         mySwiper.resizeFix();    
                    }

                    else{
                        mySwiper.params.slidesPerView=10;
                        mySwiper.resizeFix();
                    }

                //bootstrap检测
                $(window).resize(function(){
                    if ($(window).width() > 1930 ){
                         mySwiper.params.slidesPerView=13;
                         mySwiper.reInit();          
                    }

                    if ($(window).width() >993 & $(window).width() <  1199  ){
                         mySwiper.params.slidesPerView=6;
                         mySwiper.reInit();          
                    }
                    else
                     if ($(window).width() >768 & $(window).width() <  992  ){
                         mySwiper.params.slidesPerView=5;
                         mySwiper.reInit();         
                    }

                    else
                    if ($(window).width() < 767 & $(window).width() > 481){
                         mySwiper.params.slidesPerView=4;
                          mySwiper.reInit();    
                    
                    } else
                     if ($(window).width() < 480){
                         mySwiper.params.slidesPerView=2;
                         mySwiper.reInit();   
                    }

                    else{
                        mySwiper.params.slidesPerView=10;
                        mySwiper.reInit();
                    }
                 });
	

				//选择影院以及票
                $("#select-sort").selectbox({
                        onChange: function (val, inst) {
                            $(inst.input[0]).children().each(function(item){
                                $(this).removeAttr('selected');
                            })
                            $(inst.input[0]).find('[value="'+val+'"]').attr('selected','selected');
                        }
                    });

    
                //Datepicker init
                $( ".datepicker__input" ).datepicker({
                  showOtherMonths: true,
                  selectOtherMonths: true,
                  showAnim:"fade"
                });

                $(document).click(function(e) { 
                    var ele = $(e.target); 
                    if (!ele.hasClass("datepicker__input") && !ele.hasClass("ui-datepicker") && !ele.hasClass("ui-icon") && !$(ele).parent().parents(".ui-datepicker").length){
                       $(".datepicker__input").datepicker("hide");
                     }
                });

	//6. Choose variant proccess
				//选择电影
                $('.film-images').click(function (e) {
                    e.preventDefault();
                	 //visual iteractive for choose
                     $('.film-images').removeClass('film--choosed');
                     $(this).addClass('film--choosed');

                     //data element init
                     var chooseFilm = $(this).parent().attr('data-film');
                     $('.choose-indector--film').find('.choosen-area').text(chooseFilm);
                     //data element set
                     movie.val(chooseFilm);
                })

                //choose time
                $('.time-select__item').click(function (){
                	//visual iteractive for choose
                    $('.time-select__item').removeClass('active');
                    $(this).addClass('active');

                    //data element init
                    var chooseTime = $(this).attr('data-time');
                     $('.choose-indector--time').find('.choosen-area').text(chooseTime);
                    //data element init
                    var chooseCinema = $(this).parent().parent().find('.time-select__place').text();
                    //data element set
                    time.val(chooseTime);
                    cinema.val(chooseCinema);
                });

                var chooseCity = $('.select .sbSelector').text();
                var chooseDate = $('.datepicker__input').val();

                //data element set (default)
                city.val(chooseCity);
                date.val(chooseDate);

                $('.select .sbOptions').click(function (){
                	//data element change
                    var chooseCity = $('.select .sbSelector').text();
                    //data element set change
                    city.val(chooseCity);
                });
                $('.datepicker__input').change(function () {
                	//data element change
                    var chooseDate = $('.datepicker__input').val();
                    //data element set change
                    date.val(chooseDate);
                });
                // --- Step for data - serialize and send to next page---//
                $('.booking-form').submit( function () {
                    var bookData = $(this).serialize();
                    $.get( $(this).attr('action'), bookData );
                })

                //可见控制，将内容关闭
                $('.choose-indector--film').click(function (e) {
                    e.preventDefault();
                    $(this).toggleClass('hide-content');
                    $('.choose-film').slideToggle(400);
                })

                $('.choose-indector--time').click(function (e) {
                    e.preventDefault();
                    $(this).toggleClass('hide-content');
                    $('.time-select').slideToggle(400);
                })
}

function init_BookingTwo () {
    "use strict";
    check();
	//预定或者购买
    $('.order__control-btn').click(function (e) {
        e.preventDefault();

        $('.order__control-btn').removeClass('active');
        $(this).addClass('active');
    })

    // Init vars for order data
    // var for booking;
                var numberTicket = $('.choosen-number'),
                    sumTicket = $('.choosen-cost'),
                    cheapTicket = $('.choosen-number--cheap'),
                    middleTicket = $('.choosen-number--middle'),
                    expansiveTicket = $('.choosen-number--expansive'),
                    sits = $('.choosen-sits');

    //3. Choose sits (and count price for them)
    			//users choose sits
    			//data elements init
                var sum = 0;
                var cheap = 0;
                var middle = 0;
                var expansive = 0;

                $('.sits__place').click(function (e) {
                    e.preventDefault();
                    var place = $(this).attr('data-place');
                    var ticketPrice = $(this).attr('data-price');

                    if(! $(e.target).hasClass('sits-state--your')){

                        if (! $(this).hasClass('sits-state--not') ) {
                            $(this).addClass('sits-state--your');

                            $('.checked-place').prepend('<span class="choosen-place '+place+'">'+ place +'</span>');

                            switch(ticketPrice)
                                {
                                case '10':
                                  sum += 10;
                                  cheap += 1;
                                  break;
                                case '20':
                                  sum += 20;
                                  middle += 1;
                                  break;
                                case '30':
                                  sum += 30;
                                  expansive += 1;
                                  break;
                            }

                            $('.checked-result').text('$'+sum);
                        }
                    }

                    else{
                        $(this).removeClass('sits-state--your');
                        
                        $('.'+place+'').remove();

                        switch(ticketPrice)
                                {
                                case '10':
                                  sum -= 10;
                                  cheap -= 1;
                                  break;
                                case '20':
                                  sum -= 20;
                                  middle -= 1;
                                  break;
                                case '30':
                                  sum -= 30;
                                  expansive -= 1;
                                  break;
                            }

                        $('.checked-result').text('$'+sum)
                    }

                    //data element init
                    var number = $('.checked-place').children().length;

                    //data element set 
                    numberTicket.val(number);
                    sumTicket.val(sum);
                    cheapTicket.val(cheap);
                    middleTicket.val(middle);
                    expansiveTicket.val(expansive );

                    //data element init
                    var chooseSits = '';
                    $('.choosen-place').each( function () {
                        chooseSits += ', '+ $(this).text();
                    });

                    //处理字符
                    sits.val(chooseSits.substr(2));
                });

				//--- Step for data  ---//
				//Get data from pvevius page
                var url = decodeURIComponent(document.URL);
                var prevDate = url.substr(url.indexOf('?')+1);

                //Serialize, add new data and send to next page
                $('.booking-form').submit( function (e) {
                    e.preventDefault(); 
                    var bookData = $(this).serialize();

                    var fullData = prevDate + '&' + bookData
                    var action, 
                        control = $('.order__control-btn.active').text();

                        if (control == "Purchase"){ action = 'book3-buy.html'; }
                        else if (control == "Reserve"){ action = 'book3-reserve.html'; }

                    $.get( action, fullData, function(data){});
                });

                $('.top-scroll').parent().find('.top-scroll').remove();

        //4. Choosing sits mobile
        //init select box
        $('.sits__sort').selectbox({
        	onChange: function (val, inst) {

        		$(inst.input[0]).children().each(function(item){
        			$(this).removeAttr('selected');
        		})
        		$(inst.input[0]).find('[value="'+val+'"]').attr('selected','selected');
        	}

        });

        //add new sits line
        $('.add-sits-line').click(function (e){
            e.preventDefault();
            var temp = $('<div class="sits-select"><select name="sorting_item" class="sits__sort sit-row" tabindex="0"><option selected="selected" value="1">A</option><option value="2">B</option><option value="3">C</option><option value="4">D</option><option value="5">E</option><option value="6">F</option><option value="7">G</option> <option value="8">I</option><option value="9">J</option><option value="10">K</option><option value="11">L</option></select><select name="sorting_item" class="sits__sort sit-number" tabindex="1"><option selected="selected" value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option></select><a href="#" class="btn btn-md btn--warning toogle-sits">Choose sit</a></div>');
            temp.find('.toogle-sits').click(ChoosePlace);
            temp.find('.sits__sort').selectbox({
	        	onChange: function (val, inst) {

	        		$(inst.input[0]).children().each(function(item){
	        			$(this).removeAttr('selected');
	        		})
	        		$(inst.input[0]).find('[value="'+val+'"]').attr('selected','selected');
	        	}

	        });
            $('.sits-area--mobile-wrap').append(temp);
          

            $(this).blur();

        });

        //choose sits
        $('.toogle-sits').click(ChoosePlace);


        function ChoosePlace (e) {
                e.preventDefault();

                var row = $(this).parent().find('.sit-row option[selected="selected"]').text();
                var number = $(this).parent().find('.sit-number option[selected="selected"]').text();
                var ch_sits = row + number;
                var ticketPrice = 0;
               
                if ( $('.checked-place').find(".choosen-place[data-sit='"+ch_sits+"']").length ) {
                    alert('same place');
                    return 0;
                }


                $('.sits-area--mobile .checked-place').prepend('<span class="choosen-place" data-sit="'+ch_sits+'">'+ ch_sits +'</span>');

                if (row ==  "A" || row ==  "B" || row ==  "C" || row ==  "D"){
                    ticketPrice = 10;
                } else if (row ==  "E" || row ==  "F" || row ==  "G" || row ==  "I"){
                    ticketPrice = 20;
                } else if (row ==  "J" || row ==  "K" || row ==  "L"){
                    ticketPrice = 30;
                }

                switch(ticketPrice)
                        {
                        case 10:
                            sum += 10;
                            break;
                        case 20:
                            sum += 20;
                            break;
                        case 30:
                            sum += 30;
                            break;
                }

                $('.checked-result').text('$'+sum);

                $(this).removeClass('btn--warning').unbind('click',ChoosePlace);
                $(this).addClass('btn--danger').text('remove sit').blur();

                $(this).click( function (e){
                    e.preventDefault();

                    var row = $(this).parent().find('.sit-row option[selected="selected"]').text();
                    var numbers = $(this).parent().find('.sit-number option[selected="selected"]').text();
                    var ch_sit = row + number;

                    var activeSit = $('.checked-place').find(".choosen-place[data-sit='"+ch_sits+"']");

                    if ( activeSit.length ) {
                    	activeSit.remove();
                    	$(this).parent().remove();

                        if (row ==  "A" || row ==  "B" || row ==  "C" || row ==  "D"){
                            ticketPrice = 10;
                        } else if (row ==  "E" || row ==  "F" || row ==  "G" || row ==  "I"){
                            ticketPrice = 20;
                        } else if (row ==  "J" || row ==  "K" || row ==  "L"){
                            ticketPrice = 30;
                        }

                        switch(ticketPrice)
                        {
                                case 10:
                                    sum -= 10;
                                    break;
                                case 20:
                                    sum -= 20;
                                    break;
                                case 30:
                                    sum -= 30;
                                    break;
                        }

                        $('.checked-result').text('$'+sum);
                    }



            })
        }
}   

function init_CinemaList () {
    "use strict";
    check();
	//1. Dropdowns
				//select
                $(".select__sort").selectbox({
                    onChange: function (val, inst) {

                        $(inst.input[0]).children().each(function(item){
                            $(this).removeAttr('selected');
                        })
                        $(inst.input[0]).find('[value="'+val+'"]').attr('selected','selected');
                    }

                });

    //2. Sorting buy category
                // sorting function
                $('.tags__item').click(function (e) {
                    //prevent the default behaviour of the link
                    e.preventDefault();

                        $('.tags__item').removeClass('item-active');
                        $(this).addClass('item-active');

                        var filter = $(this).attr('data-filter');

                        //show all the list items(this is needed to get the hidden ones shown)
                        $(".cinema-item").show();
                        //hide advertazing and pagination block
                        $('.adv-place').show();
                        $('.pagination').show();
                            
                        /*using the :not attribute and the filter class in it we are selecting
                            only the list items that don't have that class and hide them '*/
                        if ( filter.toLowerCase()!=='all'){
                            $('.cinema-item:not(.' + filter + ')').hide();
                            //show advertazing and pagination block only on filter (all)
                            $('.pagination').hide();
                            $('.adv-place').hide();
                            // fix grid position
                            $('.row').css('clear','none');
                        }
                });
}

function init_MovieList () {
    "use strict";
    check();
	//1. Dropdown init 
				//select
                $(".select__sort").selectbox({
                    onChange: function (val, inst) {

                        $(inst.input[0]).children().each(function(item){
                            $(this).removeAttr('selected');
                        })
                        $(inst.input[0]).find('[value="'+val+'"]').attr('selected','selected');
                    }

                });

    
    //2. Datepicker init
                $( ".datepicker__input" ).datepicker({
                  showOtherMonths: true,
                  selectOtherMonths: true,
                  showAnim:"fade"
                });

                $(document).click(function(e) { 
                    var ele = $(e.target); 
                    if (!ele.hasClass("datepicker__input") && !ele.hasClass("ui-datepicker") && !ele.hasClass("ui-icon") && !$(ele).parent().parents(".ui-datepicker").length){
                       $(".datepicker__input").datepicker("hide");
                     }
                });

    //3. Rating scrore init
    //Rating star
    $('.score').raty({
        width:130, 
        score: 0,
        path: 'images/rate/',
        starOff : 'star-off.svg',
        starOn  : 'star-on.svg' 
    });

    //4. Sorting by category
    			// sorting function
                $('.tags__item').click(function (e) {
                    //prevent the default behaviour of the link
                    e.preventDefault();

                        //active sorted item
                        $('.tags__item').removeClass('item-active');
                        $(this).addClass('item-active');

                        var filter = $(this).attr('data-filter');

                        //show all the list items(this is needed to get the hidden ones shown)
                        $(".movie--preview").show();
                        $('.pagination').show();
                            
                        /*using the :not attribute and the filter class in it we are selecting
                            only the list items that don't have that class and hide them '*/
                        if ( filter.toLowerCase()!=='all'){
                            $('.movie--preview:not(.' + filter + ')').hide();
                            //Show pagination on filter = all;
                            $('.pagination').hide();
                        }
                });

	//5. Toggle function for additional content
				//toggle timetable show
                $('.movie__show-btn').click(function (ev) {
                    ev.preventDefault();

                    $(this).parents('.movie--preview').find('.time-select').slideToggle(500);
                });

                $('.time-select__item').click(function (){
                    $('.time-select__item').removeClass('active');
                    $(this).addClass('active');
                });
}

function init_Rates () {
    "use strict";

	//1. Rating fucntion
				//Rating star
                $('.score').raty({
                    width:130, 
                    score: 0,
                    path: 'images/rate/',
                    starOff : 'star-off.svg',
                    starOn  : 'star-on.svg' 
                });

                //After rate callback
                $('.score').click(function () {
                    $(this).children().hide();

                    $(this).html('<span class="rates__done">Thanks for your vote!<span>')
                })
}

