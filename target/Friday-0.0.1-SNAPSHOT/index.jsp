<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 9 ]> <html lang="en" dir="ltr" class="no-js ie-old"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" dir="ltr" class="no-js ie9"> <![endif]-->
<!--[if IE 10 ]> <html lang="en" dir="ltr" class="no-js ie10"> <![endif]-->
<!--[if (gt IE 10)|!(IE)]><!-->
<html lang="en" dir="ltr" class="no-js">
<!--<![endif]-->

<head>


    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- META TAGS                                 --> 
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <meta charset="utf-8">
    <!-- Always force latest IE rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile specific meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PAGE TITLE                                -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <title>FRIDAY | Coupons, Deals, Discounts and Promo codes Template</title>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- SEO METAS                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <meta name="description" content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
    <meta name="	black friday, coupon, coupon codes, coupon theme, coupons, deal news, deals, discounts, ecommerce, friday deals, groupon, promo codes, responsive, shop, store coupons">
    <meta name="robots" content="index, follow">
    <meta name="author" content="CODASTROID">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PAGE FAVICON                              -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <link rel="apple-touch-icon" href="assets/images/favicon/apple-touch-icon.png">
    <link rel="icon" href="assets/images/favicon/favicon.ico">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- GOOGLE FONTS                              -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600" rel="stylesheet">

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Include CSS Filess                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Linearicons -->
    <link href="assets/vendors/linearicons/css/linearicons.css" rel="stylesheet">

    <!-- Owl Carousel -->
    <link href="assets/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendors/owl-carousel/owl.theme.min.css" rel="stylesheet">

    <!-- Flex Slider -->
    <link href="assets/vendors/flexslider/flexslider.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="assets/css/base.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
     <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>

</head>

<body id="body" class="wide-layout preloader-active" >
<iframe src="head.do " width="100%" height="100%" style="height: 50px;"></iframe>
       
       
        <script>
        $(function(){
    	   $("#setCategorynameAndGoodssubtitle101").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="免费";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle102").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="付费";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle103").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="优惠";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle104").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="历史最低";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle201").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="独立";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle202").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="动作";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle203").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="休闲";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle204").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="冒险";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle205").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="模拟";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle206").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="策略";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle207").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="角色扮演";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle208").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="体育";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle209").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="竞速";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle210").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="大型多人在线";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle301").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="Origin";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle302").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="战网";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle303").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="Ubisoft";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle304").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="steam";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle305").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="Bethesda";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle306").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="Bethesda";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle307").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="微软商店";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle401").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="全部";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
    	   $("#setCategorynameAndGoodssubtitle402").click(function(){
    		   var Category="游戏";
    		   var Goodssubtitle="中文";
    		   var str = {"Categoryname":Category,"Goodssubtitle":Goodssubtitle}
    		   json = JSON.stringify(str)
	           $.get("setCategorynameAndGoodssubtitle.do",{"json":json},function(){
	        	   window.location.href="shipping_list.do";
	           })
           });
        })
       </script>


    <!--[if lt IE 9]>
        <p class="browserupgrade alert-error">
        	You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
        </p>
    <![endif]-->

    <noscript>
        <div class="noscript alert-error">
            For full functionality of this site it is necessary to enable JavaScript. Here are the <a href="http://www.enable-javascript.com/" target="_blank">
		 instructions how to enable JavaScript in your web browser</a>.
        </div>
    </noscript>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- PRELOADER                                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Preloader -->
    <div id="preloader" class="preloader">
        <div class="loader-cube">
            <div class="loader-cube__item1 loader-cube__item"></div>
            <div class="loader-cube__item2 loader-cube__item"></div>
            <div class="loader-cube__item4 loader-cube__item"></div>
            <div class="loader-cube__item3 loader-cube__item"></div>
        </div>
    </div>
    <!-- End Preloader -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- WRAPPER                                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <div id="pageWrapper" class="page-wrapper">
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->
        <header id="mainHeader" class="main-header">

           

            <!-- Header Header -->
            <div class="header-header bg-white">
                <div class="container">
                    <div class="row row-rl-0 row-tb-20 row-md-cell">
                        <div class="brand col-md-3 t-xs-center t-md-left valign-middle">
                            <a href="#" class="logo">
                                <img src="assets/images/logo.png" alt="" width="250">
                            </a>
                        </div>
                        <div class="header-search col-md-9">
                            <div class="row row-tb-10 ">
                                <div class="col-sm-8">
                                    <form class="search-form">
                                        <div class="input-group">
                                            <input type="text" class="form-control input-lg search-input" placeholder="Enter Keywork Here ..." required="required">
                                            <div class="input-group-btn">
                                                <div class="input-group">
                                                    <select class="form-control input-lg search-select">
                                                        <option>Select Your Category</option>
                                                        <option>Deals</option>
                                                        <option>Coupons</option>
                                                        <option>Discounts</option>
                                                    </select>
                                                    <div class="input-group-btn">
                                                        <button type="submit" class="btn btn-lg btn-search btn-block">
                                                            <i class="fa fa-search font-16"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-sm-4 t-xs-center t-md-right">
                                    <div class="header-cart">
                                        <a href="cart.do">
                                            <span class="icon lnr lnr-cart"></span>
                                            <div><span class="cart-number">0</span>
                                            </div>
                                            <span class="title">Cart</span>
                                        </a>
                                    </div>
                                    <div class="header-wishlist ml-20">
                                        <a href="wishlist.do">
                                            <span class="icon lnr lnr-heart font-30"></span>
                                            <span class="title">Wish List</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Header Header -->

            <!-- Header Menu -->
            <div class="header-menu bg-blue">
                <div class="container">
                    <nav class="nav-bar">
                        <div class="nav-header">
                            <span class="nav-toggle" data-toggle="#header-navbar">
		                        <i></i>
		                        <i></i>
		                        <i></i>
		                    </span>
                        </div>
                        <div id="header-navbar" class="nav-collapse">
                            <ul class="nav-menu">
                                <li class="active">
                                    <a href="index.do">Home</a>
                                </li>
                                <li>
                                    <a href="coupons_grid.do">游戏</a>
                                    <ul>
                                        <li>
                                            <a id="setCategorynameAndGoodssubtitle100">价格状态</a>
                                            <ul>
                                                <li><a id="setCategorynameAndGoodssubtitle101">免费</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle102">付费</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle103">优惠</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle104">历史最低</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a id="setCategorynameAndGoodssubtitle200">游戏类型</a>
                                            <ul>
                                                <li><a id="setCategorynameAndGoodssubtitle201">独立</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle202">动作</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle203">休闲</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle204">冒险</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle205">模拟</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle206">策略</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle207">角色扮演</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle208">体育</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle209">竞速</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle210">大型多人在线</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a id="setCategorynameAndGoodssubtitle300">平台</a>
                                            <ul>
                                                <li><a id="setCategorynameAndGoodssubtitle301">Origin</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle302">战网</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle303">Ubisoft</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle304">steam</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle305">Bethesda</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle306">Epic</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle307">微软商店</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a id="setCategorynameAndGoodssubtitle400">语言</a>
                                            <ul>
                                                <li><a id="setCategorynameAndGoodssubtitle401">全部</a>
                                                </li>
                                                <li><a id="setCategorynameAndGoodssubtitle402">中文</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="coupons_grid.do">软件</a>
                                    <ul>
                                        <li><a href="coupons_grid.do">Grid View</a>
                                        </li>
                                        <li><a href="coupons_grid_sidebar.do">Grid With Sidebar</a>
                                        </li>
                                        <li><a href="coupons_list.do">List View</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="coupons_grid.do">硬件</a>
                                    <ul>
                                        <li><a href="coupons_grid.do">Grid View</a>
                                        </li>
                                        <li><a href="coupons_grid_sidebar.do">Grid With Sidebar</a>
                                        </li>
                                        <li><a href="coupons_list.do">List View</a>
                                        </li>
                                    </ul>
                                </li>
                            
                        </div>
                        
                    </nav>
                </div>
            </div>
            <!-- End Header Menu -->

        </header>
        <!-- –––––––––––––––[ HEADER ]––––––––––––––– -->

        <!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
        <main id="mainContent" class="main-content">
            <div class="page-container ptb-10">
                <div class="container">
                    <div class="section deals-header-area ptb-30">
                        <div class="row row-tb-20">
                            <div class="col-xs-12 col-md-4 col-lg-3">
                                <aside>
                                    <ul class="nav-coupon-category panel">
                                        <li><a href="#"><i class="fa fa-cutlery"></i>Food &amp; Drink<span>40</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-calendar"></i>Events<span>42</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-female"></i>Beauty<span>48</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-bolt"></i>Fitness<span>33</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-image"></i>Furniture<span>50</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-umbrella"></i>Fashion<span>33</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i>Shopping<span>37</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-home"></i>Home &amp; Graden<span>30</span></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-plane"></i>Travel<span>48</span></a>
                                        </li>
                                        <li class="all-cat">
                                            <a class="font-14" href="#">All Categories</a>
                                        </li>
                                    </ul>
                                </aside>
                            </div>
                            <div class="col-xs-12 col-md-8 col-lg-9">
                                <div class="header-deals-slider owl-slider" data-loop="true" data-autoplay="true" data-autoplay-timeout="10000" data-smart-speed="1000" data-nav-speed="false" data-nav="true" data-xxs-items="1" data-xxs-nav="true" data-xs-items="1" data-xs-nav="true" data-sm-items="1" data-sm-nav="true" data-md-items="1" data-md-nav="true" data-lg-items="1" data-lg-nav="true">

                                    <div class="deal-single panel item">
                                        <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_01.jpg">
                                            <div class="label-discount top-10 right-10">-50%</div>
                                            <ul class="deal-actions top-10 left-10">
                                                <li class="like-deal">
                                                    <span>
			                        <i class="fa fa-heart"></i>
			                    </span>
                                                </li>
                                                <li class="share-btn">
                                                    <div class="share-tooltip fade">
                                                        <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                    </div>
                                                    <span><i class="fa fa-share-alt"></i></span>
                                                </li>
                                                <li>
                                                    <span>
			                        <i class="fa fa-camera"></i>
			                    </span>
                                                </li>
                                            </ul>
                                            <div class="deal-about p-20 pos-a bottom-0 left-0">
                                                <div class="rating mb-10">
                                                    <span class="rating-stars" data-rating="5">
			                        <i class="fa fa-star-o star-active"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                    </span>
                                                    <span class="rating-reviews color-light">
			                    	( <span class="rating-count">241</span> Reviews )
                                                    </span>
                                                </div>
                                                <h3 class="deal-title mb-10 ">
			                    <a href="deal_single.do" class="color-light color-h-lighter">The Crash Bad Instant Folding Twin Bed</a>
			                </h3>
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="deal-single panel item">
                                        <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_02.jpg">
                                            <div class="label-discount top-10 right-10">-30%</div>
                                            <ul class="deal-actions top-10 left-10">
                                                <li class="like-deal">
                                                    <span>
			                        <i class="fa fa-heart"></i>
			                    </span>
                                                </li>
                                                <li class="share-btn">
                                                    <div class="share-tooltip fade">
                                                        <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                    </div>
                                                    <span><i class="fa fa-share-alt"></i></span>
                                                </li>
                                                <li>
                                                    <span>
			                        <i class="fa fa-camera"></i>
			                    </span>
                                                </li>
                                            </ul>
                                            <div class="deal-about p-20 pos-a bottom-0 left-0">
                                                <div class="rating mb-10">
                                                    <span class="rating-stars" data-rating="5">
			                        <i class="fa fa-star-o star-active"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                    </span>
                                                    <span class="rating-reviews color-light">
			                    	( <span class="rating-count">132</span> Reviews )
                                                    </span>
                                                </div>
                                                <h3 class="deal-title mb-10 ">
			                    <a href="deal_single.do" class="color-light color-h-lighter">Western Digital USB 3.0 Hard Drives</a>
			                </h3>
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="deal-single panel item">
                                        <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_03.jpg">
                                            <div class="label-discount top-10 right-10">-30%</div>
                                            <ul class="deal-actions top-10 left-10">
                                                <li class="like-deal">
                                                    <span>
			                        <i class="fa fa-heart"></i>
			                    </span>
                                                </li>
                                                <li class="share-btn">
                                                    <div class="share-tooltip fade">
                                                        <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                        <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                    </div>
                                                    <span><i class="fa fa-share-alt"></i></span>
                                                </li>
                                                <li>
                                                    <span>
			                        <i class="fa fa-camera"></i>
			                    </span>
                                                </li>
                                            </ul>
                                            <div class="deal-about p-20 pos-a bottom-0 left-0">
                                                <div class="rating mb-10">
                                                    <span class="rating-stars" data-rating="5">
			                        <i class="fa fa-star-o star-active"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                        <i class="fa fa-star-o"></i>
			                    </span>
                                                    <span class="rating-reviews color-light">
			                    	( <span class="rating-count">160</span> Reviews )
                                                    </span>
                                                </div>
                                                <h3 class="deal-title mb-10 ">
			                    <a href="deal_single.do" class="color-light color-h-lighter">Hampton Bay LED Light Ceiling Exhaust Fan</a>
			                </h3>
                                            </div>
                                        </figure>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="section explain-process-area ptb-30">
                        <div class="row row-rl-10">
                            <div class="col-md-4">
                                <div class="item panel prl-15 ptb-20">
                                    <div class="row row-rl-5 row-xs-cell">
                                        <div class="col-xs-4 valign-middle">
                                            <img class="pr-10" src="assets/images/icons/tablet.png" alt="">
                                        </div>
                                        <div class="col-xs-8">
                                            <h5 class="mb-10 pt-5">Deals & Coupons</h5>
                                            <p class="color-mid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aspernatur.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="item panel prl-15 ptb-20">
                                    <div class="row row-rl-5 row-xs-cell">
                                        <div class="col-xs-4 valign-middle">
                                            <img class="pr-10" src="assets/images/icons/online-shop-6.png" alt="">
                                        </div>
                                        <div class="col-xs-8">
                                            <h5 class="mb-10 pt-5">Find Best Offers</h5>
                                            <p class="color-mid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aspernatur.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="item panel prl-15 ptb-20">
                                    <div class="row row-rl-5 row-xs-cell">
                                        <div class="col-xs-4 valign-middle">
                                            <img class="pr-10" src="assets/images/icons/money.png" alt="">
                                        </div>
                                        <div class="col-xs-8">
                                            <h5 class="mb-10 pt-5">Save Money</h5>
                                            <p class="color-mid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aspernatur.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <section class="section latest-deals-area ptb-30">
                        <header class="panel ptb-15 prl-20 pos-r mb-30">
                            <h3 class="section-title font-18">Latest Deals</h3>
                            <a class="btn btn-o btn-xs pos-a right-10 pos-tb-center">View All</a>
                        </header>

                        <div class="row row-masnory row-tb-20">
                            <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_01.jpg">
                                        <div class="label-discount left-20 top-15">-50%</div>
                                        <ul class="deal-actions top-15 right-20">
                                            <li class="like-deal">
                                                <span>
                                <i class="fa fa-heart"></i>
                            </span>
                                            </li>
                                            <li class="share-btn">
                                                <div class="share-tooltip fade">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                                <span><i class="fa fa-share-alt"></i></span>
                                            </li>
                                            <li>
                                                <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                            </li>
                                        </ul>
                                        <div class="time-left bottom-15 right-20 font-md-14">
                                            <span>
                            <i class="ico fa fa-clock-o mr-10"></i>
                            <span class="t-uppercase" data-countdown="2019/09/01 01:30:00"></span>
                        </span>
                                        </div>
                                        <div class="deal-store-logo">
                                            <img src="assets/images/brands/brand_01.jpg" alt="">
                                        </div>
                                    </figure>
                                    <div class="bg-white pt-20 pl-20 pr-15">
                                        <div class="pr-md-10">
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="5">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                                                <span class="rating-reviews">
                                ( <span class="rating-count">241</span> rates )
                                                </span>
                                            </div>
                                            <h3 class="deal-title mb-10">
                            <a href="deal_single.do">The Crash Bad Instant Folding Twin Bed</a>
                        </h3>
                                            <ul class="deal-meta list-inline mb-10 color-mid">
                                                <li><i class="ico fa fa-map-marker mr-10"></i>United State</li>
                                                <li><i class="ico fa fa-shopping-basket mr-10"></i>120 Bought</li>
                                            </ul>
                                            <p class="text-muted mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam numquam nostrum.</p>
                                        </div>
                                        <div class="deal-price pos-r mb-15">
                                            <h3 class="price ptb-5 text-right"><span class="price-sale">$300.00</span>$150.00</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_02.jpg">
                                        <div class="label-discount left-20 top-15">-30%</div>
                                        <ul class="deal-actions top-15 right-20">
                                            <li class="like-deal">
                                                <span>
                                <i class="fa fa-heart"></i>
                            </span>
                                            </li>
                                            <li class="share-btn">
                                                <div class="share-tooltip fade">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                                <span><i class="fa fa-share-alt"></i></span>
                                            </li>
                                            <li>
                                                <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                            </li>
                                        </ul>
                                        <div class="time-left bottom-15 right-20 font-md-14">
                                            <span>
                            <i class="ico fa fa-clock-o mr-10"></i>
                            <span class="t-uppercase" data-countdown="2020/10/10 12:25:10"></span>
                        </span>
                                        </div>
                                        <div class="deal-store-logo">
                                            <img src="assets/images/brands/brand_02.jpg" alt="">
                                        </div>
                                    </figure>
                                    <div class="bg-white pt-20 pl-20 pr-15">
                                        <div class="pr-md-10">
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="3">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                                                <span class="rating-reviews">
                                ( <span class="rating-count">132</span> rates )
                                                </span>
                                            </div>
                                            <h3 class="deal-title mb-10">
                            <a href="deal_single.do">Western Digital USB 3.0 Hard Drives</a>
                        </h3>
                                            <ul class="deal-meta list-inline mb-10 color-mid">
                                                <li><i class="ico fa fa-map-marker mr-10"></i>United Kingdom</li>
                                                <li><i class="ico fa fa-shopping-basket mr-10"></i>42 Bought</li>
                                            </ul>
                                            <p class="text-muted mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam numquam nostrum.</p>
                                        </div>
                                        <div class="deal-price pos-r mb-15">
                                            <h3 class="price ptb-5 text-right"><span class="price-sale">$150.00</span>$100.00</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_03.jpg">
                                        <div class="label-discount left-20 top-15">-30%</div>
                                        <ul class="deal-actions top-15 right-20">
                                            <li class="like-deal">
                                                <span>
                                <i class="fa fa-heart"></i>
                            </span>
                                            </li>
                                            <li class="share-btn">
                                                <div class="share-tooltip fade">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                                <span><i class="fa fa-share-alt"></i></span>
                                            </li>
                                            <li>
                                                <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                            </li>
                                        </ul>
                                        <div class="time-left bottom-15 right-20 font-md-14">
                                            <span>
                            <i class="ico fa fa-clock-o mr-10"></i>
                            <span class="t-uppercase" data-countdown="2020/10/10 12:25:10"></span>
                        </span>
                                        </div>
                                        <div class="deal-store-logo">
                                            <img src="assets/images/brands/brand_03.jpg" alt="">
                                        </div>
                                    </figure>
                                    <div class="bg-white pt-20 pl-20 pr-15">
                                        <div class="pr-md-10">
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="4">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                                                <span class="rating-reviews">
                                ( <span class="rating-count">160</span> rates )
                                                </span>
                                            </div>
                                            <h3 class="deal-title mb-10">
                            <a href="deal_single.do">Hampton Bay LED Light Ceiling Exhaust Fan</a>
                        </h3>
                                            <ul class="deal-meta list-inline mb-10 color-mid">
                                                <li><i class="ico fa fa-map-marker mr-10"></i>Australia</li>
                                                <li><i class="ico fa fa-shopping-basket mr-10"></i>75 Bought</li>
                                            </ul>
                                            <p class="text-muted mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam numquam nostrum.</p>
                                        </div>
                                        <div class="deal-price pos-r mb-15">
                                            <h3 class="price ptb-5 text-right"><span class="price-sale">$300.00</span>$150.00</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_04.jpg">
                                        <div class="label-discount left-20 top-15">-15%</div>
                                        <ul class="deal-actions top-15 right-20">
                                            <li class="like-deal">
                                                <span>
                                <i class="fa fa-heart"></i>
                            </span>
                                            </li>
                                            <li class="share-btn">
                                                <div class="share-tooltip fade">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                                <span><i class="fa fa-share-alt"></i></span>
                                            </li>
                                            <li>
                                                <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                            </li>
                                        </ul>
                                        <div class="time-left bottom-15 right-20 font-md-14">
                                            <span>
                            <i class="ico fa fa-clock-o mr-10"></i>
                            <span class="t-uppercase" data-countdown="2018/01/02 10:35:23"></span>
                        </span>
                                        </div>
                                        <div class="deal-store-logo">
                                            <img src="assets/images/brands/brand_04.jpg" alt="">
                                        </div>
                                    </figure>
                                    <div class="bg-white pt-20 pl-20 pr-15">
                                        <div class="pr-md-10">
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="2">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                                                <span class="rating-reviews">
                                ( <span class="rating-count">100</span> rates )
                                                </span>
                                            </div>
                                            <h3 class="deal-title mb-10">
                            <a href="deal_single.do">Timberland Men's Thorton Waterproof Boots</a>
                        </h3>
                                            <ul class="deal-meta list-inline mb-10 color-mid">
                                                <li><i class="ico fa fa-map-marker mr-10"></i>Canada</li>
                                                <li><i class="ico fa fa-shopping-basket mr-10"></i>10 Bought</li>
                                            </ul>
                                            <p class="text-muted mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam numquam nostrum.</p>
                                        </div>
                                        <div class="deal-price pos-r mb-15">
                                            <h3 class="price ptb-5 text-right"><span class="price-sale">$380.00</span>$340.00</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_05.jpg">
                                        <div class="label-discount left-20 top-15">-60%</div>
                                        <ul class="deal-actions top-15 right-20">
                                            <li class="like-deal">
                                                <span>
                                <i class="fa fa-heart"></i>
                            </span>
                                            </li>
                                            <li class="share-btn">
                                                <div class="share-tooltip fade">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                                <span><i class="fa fa-share-alt"></i></span>
                                            </li>
                                            <li>
                                                <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                            </li>
                                        </ul>
                                        <div class="time-left bottom-15 right-20 font-md-14">
                                            <span>
                            <i class="ico fa fa-clock-o mr-10"></i>
                            <span class="t-uppercase" data-countdown="2021/12/03 03:15:00"></span>
                        </span>
                                        </div>
                                        <div class="deal-store-logo">
                                            <img src="assets/images/brands/brand_05.jpg" alt="">
                                        </div>
                                    </figure>
                                    <div class="bg-white pt-20 pl-20 pr-15">
                                        <div class="pr-md-10">
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="3">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                                                <span class="rating-reviews">
                                ( <span class="rating-count">32</span> rates )
                                                </span>
                                            </div>
                                            <h3 class="deal-title mb-10">
                            <a href="deal_single.do">New and Refurbished Lenovo Laptops</a>
                        </h3>
                                            <ul class="deal-meta list-inline mb-10 color-mid">
                                                <li><i class="ico fa fa-map-marker mr-10"></i>United State</li>
                                                <li><i class="ico fa fa-shopping-basket mr-10"></i>65 Bought</li>
                                            </ul>
                                            <p class="text-muted mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam numquam nostrum.</p>
                                        </div>
                                        <div class="deal-price pos-r mb-15">
                                            <h3 class="price ptb-5 text-right"><span class="price-sale">$700.00</span>$576.00</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4">
                                <div class="deal-single panel">
                                    <figure class="deal-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/deals/deal_06.jpg">
                                        <div class="label-discount left-20 top-15">-60%</div>
                                        <ul class="deal-actions top-15 right-20">
                                            <li class="like-deal">
                                                <span>
                                <i class="fa fa-heart"></i>
                            </span>
                                            </li>
                                            <li class="share-btn">
                                                <div class="share-tooltip fade">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                                <span><i class="fa fa-share-alt"></i></span>
                                            </li>
                                            <li>
                                                <span>
                                <i class="fa fa-camera"></i>
                            </span>
                                            </li>
                                        </ul>
                                        <div class="time-left bottom-15 right-20 font-md-14">
                                            <span>
                            <i class="ico fa fa-clock-o mr-10"></i>
                            <span class="t-uppercase" data-countdown="2019/10/10 12:00:00"></span>
                        </span>
                                        </div>
                                        <div class="deal-store-logo">
                                            <img src="assets/images/brands/brand_06.jpg" alt="">
                                        </div>
                                    </figure>
                                    <div class="bg-white pt-20 pl-20 pr-15">
                                        <div class="pr-md-10">
                                            <div class="rating mb-10">
                                                <span class="rating-stars rate-allow" data-rating="5">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </span>
                                                <span class="rating-reviews">
                                ( <span class="rating-count">29</span> rates )
                                                </span>
                                            </div>
                                            <h3 class="deal-title mb-10">
                            <a href="deal_single.do">Buying a TV Is Easy When You Know These Terms</a>
                        </h3>
                                            <ul class="deal-meta list-inline mb-10 color-mid">
                                                <li><i class="ico fa fa-map-marker mr-10"></i>United Kingdom</li>
                                                <li><i class="ico fa fa-shopping-basket mr-10"></i>134 Bought</li>
                                            </ul>
                                            <p class="text-muted mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam numquam nostrum.</p>
                                        </div>
                                        <div class="deal-price pos-r mb-15">
                                            <h3 class="price ptb-5 text-right"><span class="price-sale">$300.00</span>$250.00</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    <section class="section latest-coupons-area ptb-30">
                        <header class="panel ptb-15 prl-20 pos-r mb-30">
                            <h3 class="section-title font-18">Latest Deals</h3>
                            <a class="btn btn-o btn-xs pos-a right-10 pos-tb-center">View All</a>
                        </header>

                        <div class="latest-coupons-slider owl-slider" data-autoplay-hover-pause="true" data-loop="true" data-autoplay="true" data-smart-speed="1000" data-autoplay-timeout="10000" data-margin="30" data-nav-speed="false" data-items="1" data-xxs-items="1" data-xs-items="2" data-sm-items="2" data-md-items="3" data-lg-items="4">
                            <div class="coupon-item">
                                <div class="coupon-single panel t-center">
                                    <div class="ribbon-wrapper is-hidden-xs-down">
                                        <div class="ribbon">Featured</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="text-center p-20">
                                                <img class="store-logo" src="assets/images/coupons/coupon_01.jpg" alt="">
                                            </div>
                                            <!-- end media -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-xs-12">
                                            <div class="panel-body">
                                                <ul class="deal-meta list-inline mb-10">
                                                    <li class="color-green"><i class="ico lnr lnr-smile mr-5"></i>Verifed</li>
                                                    <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>125 Used</li>
                                                </ul>
                                                <h4 class="color-green mb-10 t-uppercase">10% OFF</h4>
                                                <h5 class="deal-title mb-10">
                                <a href="#">10% off select XPS & Alienware laptops</a>
                            </h5>
                                                <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 01/01/2018</p>
                                                <div class="showcode" data-toggle-class="coupon-showen" data-toggle-event="click">
                                                    <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_01">Get Coupon Code</button>
                                                    <div class="coupon-hide">X455-17GT-OL58</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <div class="coupon-item">
                                <div class="coupon-single panel t-center">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="text-center p-20">
                                                <img class="store-logo" src="assets/images/coupons/coupon_02.jpg" alt="">
                                            </div>
                                            <!-- end media -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-xs-12">
                                            <div class="panel-body">
                                                <ul class="deal-meta list-inline mb-10">
                                                    <li class="color-muted"><i class="ico fa fa-map-marker mr-5"></i>California</li>
                                                    <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>13 Used</li>
                                                </ul>
                                                <h4 class="color-green mb-10 t-uppercase">15% OFF</h4>
                                                <h5 class="deal-title mb-10">
                                <a href="#">15% off 2 select Amazon Fire cases</a>
                            </h5>
                                                <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 05/02/2018</p>
                                                <div class="showcode" data-toggle-class="coupon-showen" data-toggle-event="click">
                                                    <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_02">Show Code</button>
                                                    <div class="coupon-hide">X455-17GT-OL58</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <div class="coupon-item">
                                <div class="coupon-single panel t-center">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="text-center p-20">
                                                <img class="store-logo" src="assets/images/coupons/coupon_03.jpg" alt="">
                                            </div>
                                            <!-- end media -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-xs-12">
                                            <div class="panel-body">
                                                <ul class="deal-meta list-inline mb-10">
                                                    <li class="color-muted"><i class="ico fa fa-tag mr-5"></i>Coupon</li>
                                                    <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>425 Used</li>
                                                </ul>
                                                <h4 class="color-green mb-10 t-uppercase">20% OFF</h4>
                                                <h5 class="deal-title mb-10">
                                <a href="#">Flat 40% off hotel bookings in 10 cities</a>
                            </h5>
                                                <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 15/01/2018</p>
                                                <div class="showcode" data-toggle-class="coupon-showen" data-toggle-event="click">
                                                    <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_03">See Sale</button>
                                                    <div class="coupon-hide">X455-17GT-OL58</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <div class="coupon-item">
                                <div class="coupon-single panel t-center">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="text-center p-20">
                                                <img class="store-logo" src="assets/images/coupons/coupon_04.jpg" alt="">
                                            </div>
                                            <!-- end media -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-xs-12">
                                            <div class="panel-body">
                                                <ul class="deal-meta list-inline mb-10">
                                                    <li class="color-green"><i class="ico lnr lnr-smile mr-5"></i>Verifed</li>
                                                    <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>230 Used</li>
                                                </ul>
                                                <h4 class="color-green mb-10 t-uppercase">30% OFF</h4>
                                                <h5 class="deal-title mb-10">
                                <a href="#">There is no place like home 25% off</a>
                            </h5>
                                                <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 02/03/2018</p>
                                                <div class="showcode" data-toggle-class="coupon-showen" data-toggle-event="click">
                                                    <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_04">Print Code</button>
                                                    <div class="coupon-hide">X455-17GT-OL58</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <div class="coupon-item">
                                <div class="coupon-single panel t-center">
                                    <div class="ribbon-wrapper is-hidden-xs-down">
                                        <div class="ribbon">Featured</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="text-center p-20">
                                                <img class="store-logo" src="assets/images/coupons/coupon_05.jpg" alt="">
                                            </div>
                                            <!-- end media -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-xs-12">
                                            <div class="panel-body">
                                                <ul class="deal-meta list-inline mb-10">
                                                    <li class="color-muted"><i class="ico fa fa-tag mr-5"></i>Coupon</li>
                                                    <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>86 Used</li>
                                                </ul>
                                                <h4 class="color-green mb-10 t-uppercase">10% OFF</h4>
                                                <h5 class="deal-title mb-10">
                                <a href="#">10% off $399+ refurbished laptops</a>
                            </h5>
                                                <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 20/02/2018</p>
                                                <div class="showcode" data-toggle-class="coupon-showen" data-toggle-event="click">
                                                    <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_05">Show Code</button>
                                                    <div class="coupon-hide">X455-17GT-OL58</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                            <div class="coupon-item">
                                <div class="coupon-single panel t-center">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <div class="text-center p-20">
                                                <img class="store-logo" src="assets/images/coupons/coupon_06.jpg" alt="">
                                            </div>
                                            <!-- end media -->
                                        </div>
                                        <!-- end col -->

                                        <div class="col-xs-12">
                                            <div class="panel-body">
                                                <ul class="deal-meta list-inline mb-10">
                                                    <li class="color-green"><i class="ico lnr lnr-smile mr-5"></i>Verifed</li>
                                                    <li class="color-muted"><i class="ico lnr lnr-users mr-5"></i>24 Used</li>
                                                </ul>
                                                <h4 class="color-green mb-10 t-uppercase">25% OFF</h4>
                                                <h5 class="deal-title mb-10">
                                <a href="#">There is no place like home 25% off</a>
                            </h5>
                                                <p class="mb-15 color-muted mb-20 font-12"><i class="lnr lnr-clock mr-10"></i>Expires On 14/01/2018</p>
                                                <div class="showcode" data-toggle-class="coupon-showen" data-toggle-event="click">
                                                    <button class="show-code btn btn-sm btn-block" data-toggle="modal" data-target="#coupon_06">Show Coupon</button>
                                                    <div class="coupon-hide">X455-17GT-OL58</div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end col -->
                                    </div>
                                    <!-- end row -->
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section stores-area stores-area-v1 ptb-30">
                        <header class="panel ptb-15 prl-20 pos-r mb-30">
                            <h3 class="section-title font-18">Popular Stores</h3>
                            <a href="stores_01.do" class="btn btn-o btn-xs pos-a right-10 pos-tb-center">All Stores</a>
                        </header>
                        <div class="popular-stores-slider owl-slider" data-loop="true" data-autoplay="true" data-smart-speed="1000" data-autoplay-timeout="10000" data-margin="20" data-items="2" data-xxs-items="2" data-xs-items="2" data-sm-items="3" data-md-items="5" data-lg-items="6">
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_01.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">Amazon</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_02.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">Ashford</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_03.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">DELL</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_04.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">Card Cash</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_05.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">Finish Line</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_06.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">JC Penny</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_07.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">Callaway Golf</h6>
                                </a>
                            </div>
                            <div class="store-item t-center">
                                <a href="store_single_01.do" class="panel is-block">
                                    <div class="embed-responsive embed-responsive-4by3">
                                        <div class="store-logo">
                                            <img src="assets/images/brands/brand_08.jpg" alt="">
                                        </div>
                                    </div>
                                    <h6 class="store-name ptb-10">Car Toys</h6>
                                </a>
                            </div>
                        </div>
                    </section>


                    <section class="section latest-news-area blog-area blog-grid blog-3-col ptb-30">
                        <header class="panel ptb-15 prl-20 pos-r mb-30">
                            <h3 class="section-title font-18">Latest News</h3>
                            <a href="blog_classic_right_sidebar.do" class="btn btn-o btn-xs pos-a right-10 pos-tb-center">Visit Blog</a>
                        </header>

                        <div class="row row-tb-20">

                            <!-- Blog Post -->
                            <div class="blog-post col-xs-12 col-sm-6 col-md-4">
                                <article class="entry panel">
                                    <figure class="entry-media post-thumbnail embed-responsive embed-responsive-16by9" data-bg-img="assets/images/blog/post_01.jpg">
                                        <div class="entry-date">
                                            <h4>13</h4>
                                            <h6>JUN</h6>
                                        </div>
                                    </figure>
                                    <div class="entry-wrapper pt-20 pb-10 prl-20">
                                        <header class="entry-header">
                                            <h4 class="entry-title mb-10 mb-md-15 font-xs-16 font-sm-18 font-md-16 font-lg-16">
							<a href="blog_single_standard.do">Restaurant Employer Read Clients Orders On His iPad</a>
						</h4>
                                            <div class="entry-meta mb-10">
                                                <ul class="tag-info list-inline">
                                                    <li><i class="icon fa fa-user"></i> By : John Doe</li>
                                                    <li><i class="icon fa fa-comments"></i>14 Comments </li>
                                                </ul>
                                            </div>
                                        </header>
                                        <div class="entry-content">
                                            <p class="entry-summary">Vivamus sem massa, cursus at mollis eu, euismod id risus. Vestibulum nunc ante, sagittis ut nisl at, porta porttitor justo. Nam imperdiet im...</p>
                                        </div>
                                        <footer class="entry-footer text-right">
                                            <a href="blog_single_standard.do" class="more-link btn btn-link">Continue reading <i class="icon fa fa-long-arrow-right"></i></a>
                                        </footer>
                                    </div>
                                </article>
                            </div>
                            <!-- End Blog Post -->

                            <!-- Blog Post -->
                            <div class="blog-post col-xs-12 col-sm-6 col-md-4">
                                <article class="entry panel">
                                    <figure class="entry-media embed-responsive embed-responsive-16by9">
                                        <iframe src="http://www.bootstrapmb.com" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                                        <div class="entry-date">
                                            <h4>13</h4>
                                            <h6>JUN</h6>
                                        </div>
                                    </figure>
                                    <div class="entry-wrapper pt-20 pb-10 prl-20">
                                        <header class="entry-header">
                                            <h4 class="entry-title mb-10 mb-md-15 font-xs-16 font-sm-18 font-md-16 font-lg-16">
                    							<a href="blog_single_vimeo.do">Amazing Classic Interior Design With Perfect Lighting</a>
                    						</h4>
                                            <div class="entry-meta mb-10">
                                                <ul class="tag-info list-inline">
                                                    <li><i class="icon fa fa-user"></i> By : John Doe</li>
                                                    <li><i class="icon fa fa-comments"></i> 14 Comments </li>
                                                </ul>
                                            </div>
                                        </header>
                                        <div class="entry-content">
                                            <p class="entry-summary">Vivamus sem massa, cursus at mollis eu, euismod id risus. Vestibulum nunc ante, sagittis ut nisl at, porta porttitor justo. Nam imperdiet im...</p>
                                        </div>
                                        <footer class="entry-footer text-right">
                                            <a href="blog_single_vimeo.do" class="more-link btn btn-link">Continue reading <i class="icon fa fa-long-arrow-right"></i></a>
                                        </footer>
                                    </div>
                                </article>
                            </div>
                            <!-- End Blog Post -->

                            <!-- Blog Post -->
                            <div class="blog-post col-xs-12 col-sm-6 col-md-4">
                                <article class="entry panel">
                                    <figure class="entry-media embed-responsive embed-responsive-16by9">
                                        <iframe src="http://www.bootstrapmb.com" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                                        <div class="entry-date">
                                            <h4>13</h4>
                                            <h6>JUN</h6>
                                        </div>
                                    </figure>
                                    <div class="entry-wrapper pt-20 pb-10 prl-20">
                                        <header class="entry-header">
                                            <h4 class="entry-title mb-10 mb-md-15 font-xs-16 font-sm-18 font-md-16 font-lg-16">
							<a href="blog_single_youtube.do">English Breakfast Tea With Tasty Donut Desserts</a>
						</h4>
                                            <div class="entry-meta mb-10">
                                                <ul class="tag-info list-inline">
                                                    <li><i class="icon fa fa-user"></i> By : John Doe</li>
                                                    <li><i class="icon fa fa-comments"></i> 14 Comments </li>
                                                </ul>
                                            </div>
                                        </header>
                                        <div class="entry-content">
                                            <p class="entry-summary">Vivamus sem massa, cursus at mollis eu, euismod id risus. Vestibulum nunc ante, sagittis ut nisl at, porta porttitor justo. Nam imperdiet im...</p>
                                        </div>
                                        <footer class="entry-footer text-right">
                                            <a href="blog_single_youtube.do" class="more-link btn btn-link">Continue reading <i class="icon fa fa-long-arrow-right"></i></a>
                                        </footer>
                                    </div>
                                </article>
                            </div>
                            <!-- End Blog Post -->

                        </div>
                    </section>


                    <section class="section subscribe-area ptb-40 t-center">
                        <div class="newsletter-form">
                            <h4 class="mb-20"><i class="fa fa-envelope-o color-green mr-10"></i>Sign up for our weekly email newsletter</h4>
                            <p class="mb-20 color-mid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi animi magni accusantium architecto possimus.</p>
                            <form method="post" action="#">
                                <div class="input-group mb-10">
                                    <input type="email" class="form-control bg-white" placeholder="Email Address" required="required">
                                    <span class="input-group-btn">
                                        <button class="btn" type="submit">Subscribe</button>
                                    </span>
                                </div>
                            </form>
                            <p class="color-muted"><small>We’ll never share your email address with a third-party.</small> </p>
                        </div>
                    </section>
                </div>
            </div>


        </main>
        <!-- –––––––––––––––[ END PAGE CONTENT ]––––––––––––––– -->
        <section class="footer-top-area pt-70 pb-30 pos-r bg-blue">
            <div class="container">
                <div class="row row-tb-20">
                    <div class="col-sm-12 col-md-7">
                        <div class="row row-tb-20">
                            <div class="footer-col col-sm-6">
                                <div class="footer-about">
                                    <img class="mb-40" src="assets/images/logo_light.png" width="250" alt="">
                                    <p class="color-light">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam dolores quidem mollitia id ipsa nisi necessitatibus iure repudiandae aperiam, odit ipsam dolor fugiat corporis nesciunt illo nemo minus.</p>
                                </div>
                            </div>
                            <div class="footer-col col-sm-6">
                                <div class="footer-top-twitter">
                                    <h2 class="color-lighter">Twitter Feed</h2>
                                    <ul class="twitter-list">
                                        <li class="single-twitter">
                                            <p class="color-light"><i class="ico fa fa-twitter"></i><a href="#">@masum_rana :</a> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore in reprehenderit.</p>
                                        </li>
                                        <li class="single-twitter">
                                            <p class="color-light"><i class="ico fa fa-twitter"></i><a href="#">@masum_rana :</a> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione id corrupti iusto cupiditate omnis.</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-5">
                        <div class="row row-tb-20">
                            <div class="footer-col col-sm-6">
                                <div class="footer-links">
                                    <h2 class="color-lighter">Quick Links</h2>
                                    <ul>
                                        <li><a href="deals_grid.do">Latest Deals</a>
                                        </li>
                                        <li><a href="coupons_grid.do">Newest Coupons</a>
                                        </li>
                                        <li><a href="contact_us_02.do">Contact Us</a>
                                        </li>
                                        <li><a href="404.do">Error 404</a>
                                        </li>
                                        <li><a href="terms_conditions.do">Terms of Use</a>
                                        </li>
                                        <li><a href="faq.do">FAQs</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="footer-col col-sm-6">
                                <div class="footer-top-instagram instagram-widget">
                                    <h2>Instagram Widget</h2>
                                    <div class="row row-tb-5 row-rl-5">


                                        <div class="instagram-widget__item col-xs-4">
                                            <img src="assets/images/instagram/instagram_01.jpg" alt="">
                                        </div>


                                        <div class="instagram-widget__item col-xs-4">
                                            <img src="assets/images/instagram/instagram_02.jpg" alt="">
                                        </div>


                                        <div class="instagram-widget__item col-xs-4">
                                            <img src="assets/images/instagram/instagram_03.jpg" alt="">
                                        </div>


                                        <div class="instagram-widget__item col-xs-4">
                                            <img src="assets/images/instagram/instagram_04.jpg" alt="">
                                        </div>


                                        <div class="instagram-widget__item col-xs-4">
                                            <img src="assets/images/instagram/instagram_05.jpg" alt="">
                                        </div>


                                        <div class="instagram-widget__item col-xs-4">
                                            <img src="assets/images/instagram/instagram_06.jpg" alt="">
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <div class="payment-methods t-center">
                            <span><img src="assets/images/icons/payment/paypal.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/visa.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/mastercard.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/discover.jpg" alt=""></span>
                            <span><img src="assets/images/icons/payment/american.jpg" alt=""></span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- –––––––––––––––[ FOOTER ]––––––––––––––– -->
        <footer id="mainFooter" class="main-footer">
            <div class="container">
                <div class="row">
                    <p>Copyright &copy; 2016 . All rights reserved.</p>
                </div>
            </div>
        </footer>
        <!-- –––––––––––––––[ END FOOTER ]––––––––––––––– -->

    </div>
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- END WRAPPER                               -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->


    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- BACK TO TOP                               -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <div id="backTop" class="back-top is-hidden-sm-down">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- SCRIPTS                                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->

    <!-- (!) Placed at the end of the document so the pages load faster -->

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Initialize jQuery library                 -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script src="assets/js/jquery-1.12.3.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Latest compiled and minified Bootstrap    -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- JavaScript Plugins                        -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- (!) Include all compiled plugins (below), or include individual files as needed -->

    <!-- Modernizer JS -->
    <script src="assets/vendors/modernizr/modernizr-2.6.2.min.js"></script>
    
    <!-- Owl Carousel -->
    <script type="text/javascript" src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>

    <!-- FlexSlider -->
    <script type="text/javascript" src="assets/vendors/flexslider/jquery.flexslider-min.js"></script>

    <!-- Coutdown -->
    <script type="text/javascript" src="assets/vendors/countdown/jquery.countdown.js"></script>

    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <!-- Custom Template JavaScript                   -->
    <!-- ––––––––––––––––––––––––––––––––––––––––– -->
    <script type="text/javascript" src="assets/js/main.js"></script>
</body>

</html>
