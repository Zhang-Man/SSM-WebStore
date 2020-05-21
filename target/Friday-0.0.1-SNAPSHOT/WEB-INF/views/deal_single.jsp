<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!--
Template Name: FRIDAY | Coupons, Deals, Discounts and Promo codes Template
Version: 1.0.0
Author: CODASTROID
Contact: codastroid@gmail.com
Follow: https://themeforest.net/user/codastroid?ref=CODASTROID
Theme Link: https://themeforest.net/item/friday-coupons-deals-discounts-promo-codes-template/19577226?ref=CODASTROID
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->

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
		<script src="js/jquery-3.1.0.js"></script>
		
		<script>
			$(document).ready(function() {
				show();
			});

			
			
			function show() {
			
			$.get("searchgoods.do",function(data){
				var id;
				var gamename
				var price
				var detail
				
				obj = JSON.parse(data);
				gamename=obj.mfbgoods.name;
				price=obj.mfbgoods.price;
				detail=obj.mfbgoods.detail;
				id=obj.mfbgoods.id;
				document.getElementById("gamename").innerHTML = gamename;
				document.getElementById("price").innerHTML = price;
				document.getElementById("detail").innerHTML = detail;
				document.getElementById("buybutton").value=id;
				document.getElementById("addtocart").value=id;
				for(var i=0;i<2;i++){
					for(var j=1;j<6;j++){
				document.getElementById("img"+i+""+j+"").src="assets/images/products/imgnotfound.jpg";
				}
				}
			})
			
			$("#addtocart").click(function(){
	 		   var goodsid=$("#addtocart").val();
	 		   var str = {"goodsid":goodsid}
	 		   json = JSON.stringify(str)
		           $.get("insertcartgoods.do",{"json":json},function(data){
		        	   obj2 = JSON.parse(data);  
		        	   if(obj2.massage=="nosignin")
		        	   {window.location.href="signin.do";}
		        	   else if(obj2.massage=="nocart")
		        	   {alert(obj2.massage);}
			           else
			           {window.location.href="shipping_list.do";}
		           })
	        });
			$("#buybutton").click(function(){
		 		   var goodsid=$("#buybutton").val();
		 		   var str = {"goodsid":goodsid}
		 		   json = JSON.stringify(str)
			           $.get("setGoodsidForOrder.do",{"json":json},function(data){
			        	   obj2 = JSON.parse(data);  
			        	   if(obj2.massage=="ok")
			        	   {window.location.href="checkout_payment.do";}
			           })
		        });

			}
		</script>

	</head>

	<body id="body" class="wide-layout preloader-active">
<iframe src="head.do " width="100%" height="100%" style="height: 50px;"></iframe>

		<!--[if lt IE 9]>
        <p class="browserupgrade alert-error">
            You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.
        </p>
    <![endif]-->

		<noscript>
        <div class="noscript alert-error">
            For full functionality of this site it is necessary to enable JavaScript. Here are the <a href="http://www.enable-javascript.com/" target="_blank">
                instructions how to enable JavaScript in your web browser
            </a>.
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
									<img src="images/logo.png" alt="" width="250">
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
												<div>
													<span class="cart-number">0</span>
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
										<a href="index-2.do">Home</a>
									</li>
									<li class="dropdown-mega-menu">
										<a href="deals_grid.do">Deals</a>
										<div class="mega-menu">
											<div class="row row-v-10">
												<div class="col-md-3">
													<ul>
														<li>
															<a href="deals_grid.do">Grid View</a>
														</li>
														<li>
															<a href="deals_grid_sidebar.do">Grid With Sidebar</a>
														</li>
														<li>
															<a href="deals_list.do">List View</a>
														</li>
														<li>
															<a href="deal_single.do">Deal Single</a>
														</li>
													</ul>
												</div>
												<div class="col-md-3">
													<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_03.jpg">
														<div class="label-discount top-10 right-10">-15%</div>
														<div class="deal-about p-10 pos-a bottom-0 left-0">
															<div class="rating mb-10">
																<span class="rating-stars rate-allow" data-rating="2">
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </span>
															</div>
															<h6 class="deal-title mb-10">
                                                            <a href="deal_single.do" class="color-lighter">Aenean ut orci vel massa</a>
                                                        </h6>
														</div>
													</figure>
												</div>
												<div class="col-md-3">
													<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_04.jpg">
														<div class="label-discount top-10 right-10">-60%</div>
														<div class="deal-about p-10 pos-a bottom-0 left-0">
															<div class="rating mb-10">
																<span class="rating-stars rate-allow" data-rating="3">
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </span>
															</div>
															<h6 class="deal-title mb-10">
                                                            <a href="deal_single.do" class="color-lighter">Aenean ut orci vel massa</a>
                                                        </h6>
														</div>
													</figure>
												</div>
												<div class="col-md-3">
													<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_05.jpg">
														<div class="label-discount top-10 right-10">-60%</div>
														<div class="deal-about p-10 pos-a bottom-0 left-0">
															<div class="rating mb-10">
																<span class="rating-stars rate-allow" data-rating="5">
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </span>
															</div>
															<h6 class="deal-title mb-10">
                                                            <a href="deal_single.do" class="color-lighter">Aenean ut orci vel massa</a>
                                                        </h6>
														</div>
													</figure>
												</div>
											</div>
										</div>
									</li>
									<li>
										<a href="coupons_grid.do">Coupons</a>
										<ul>
											<li>
												<a href="coupons_grid.do">Grid View</a>
											</li>
											<li>
												<a href="coupons_grid_sidebar.do">Grid With Sidebar</a>
											</li>
											<li>
												<a href="coupons_list.do">List View</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="stores_01.do">Stores</a>
										<ul>
											<li>
												<a href="stores_01.do">Stores Search</a>
											</li>
											<li>
												<a href="stores_02.do">Stores Categories</a>
											</li>
											<li>
												<a href="store_single_01.do">Store Single 1</a>
											</li>
											<li>
												<a href="store_single_02.do">Store Single 2</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="contact_us_01.do">Contact Us</a>
										<ul>
											<li>
												<a href="contact_us_01.do">Contact Us 1</a>
											</li>
											<li>
												<a href="contact_us_02.do">Contact Us 2</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#">Blog</a>
										<ul>
											<li>
												<a href="#">Classic View</a>
												<ul>
													<li>
														<a href="blog_classic_right_sidebar.do">Right Sidenar</a>
													</li>
													<li>
														<a href="blog_classic_left_sidebar.do">Left Sidebar</a>
													</li>
													<li>
														<a href="blog_classic_fullwidth.do">Full Width</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="#">Grid View</a>
												<ul>
													<li>
														<a href="blog_grid_3col.do">3 Columns</a>
													</li>
													<li>
														<a href="blog_grid_2col.do">2 Columns</a>
													</li>
													<li>
														<a href="blog_grid_right_sidebar.do">Right Sidebar</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="#">List View</a>
												<ul>
													<li>
														<a href="blog_list_right_sidebar.do">Right Sidenar</a>
													</li>
													<li>
														<a href="blog_list_left_sidebar.do">Left Sidebar</a>
													</li>
													<li>
														<a href="blog_list_fullwidth.do">Full Width</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="#">Blog Single</a>
												<ul>
													<li>
														<a href="blog_single_standard.do">Standard Post</a>
													</li>
													<li>
														<a href="blog_single_gallery.do">Gallery Post</a>
													</li>
													<li>
														<a href="blog_single_youtube.do">Youtube Video</a>
													</li>
													<li>
														<a href="blog_single_vimeo.do">Vimeo Video</a>
													</li>
													<li>
														<a href="blog_single_map.do">Google Map</a>
													</li>
													<li>
														<a href="blog_single_quote.do">Quote Post</a>
													</li>
													<li>
														<a href="blog_single_audio.do">Audio Post</a>
													</li>
												</ul>
											</li>
										</ul>
									</li>
									<li>
										<a href="#">Pages</a>
										<ul>
											<li>
												<a href="index-2.do">Home Default</a>
											</li>
											<li>
												<a href="signinjudge.do">Sign In</a>
											</li>
											<li>
												<a href="signup.do">Sign Up</a>
											</li>
											<li>
												<a href="404.do">404 Page</a>
											</li>
											<li>
												<a href="faq.do">FAQ Page</a>
											</li>
											<li>
												<a href="cart.do">Cart Page</a>
											</li>
											<li>
												<a href="checkout_method.do">Checkout</a>
												<ul>
													<li>
														<a href="checkout_method.do">Checkout method</a>
													</li>
													<li>
														<a href="checkout_billing.do">Billing Information</a>
													</li>
													<li>
														<a href="checkout_payment.do">Payment Information</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="#">Contact Us</a>
												<ul>
													<li>
														<a href="contact_us_01.do">Contact Us 1</a>
													</li>
													<li>
														<a href="contact_us_02.do">Contact Us 2</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="#">Deals Pages</a>
												<ul>
													<li>
														<a href="deals_grid.do">Grid View</a>
													</li>
													<li>
														<a href="deals_list.do">List View</a>
													</li>
													<li>
														<a href="deal_single.do">Deal Single</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="#">Coupons Pages</a>
												<ul>
													<li>
														<a href="coupons_grid.do">Grid View</a>
													</li>
													<li>
														<a href="coupons_grid_sidebar.do">Grid With Sidebar</a>
													</li>
													<li>
														<a href="coupons_list.do">List View</a>
													</li>
												</ul>
											</li>
											<li>
												<a href="terms_conditions.do">Terms &amp; conditions</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="nav-menu nav-menu-fixed">
								<a href="./ar/deal_single.do" target="_blank">RTL VERSION<i class="fa fa-long-arrow-right ml-10"></i></a>
							</div>
						</nav>
					</div>
				</div>
				<!-- End Header Menu -->

			</header>
			<!-- –––––––––––––––[ HEADER ]––––––––––––––– -->
			<!-- –––––––––––––––[ PAGE CONTENT ]––––––––––––––– -->
			<main id="mainContent" class="main-content">
				<!-- Page Container -->
				<div class="page-container ptb-60">
					<div class="container">
						<div class="row row-rl-10 row-tb-20">
							<div class="page-content col-xs-12 col-sm-7 col-md-8">
								<div class="row row-tb-20">
									<div class="col-xs-12">
										<div class="deal-deatails panel">
											<div class="deal-slider">
												<div id="product_slider" class="flexslider">
													<ul class="slides">
														<li>
															<img id="img01" alt="" src="">
														</li>
														<li>
															<img id="img02" alt="" src="">
														</li>
														<li>
															<img id="img03" alt="" src="assets/images/products/product_03.jpg">
														</li>
														<li>
															<img id="img04" src="assets/images/products/product_04.jpg">
														</li>
														<li>
															<img id="img05" src="assets/images/products/product_05.jpg">
														</li>
														<li>
															<img id="img06" src="assets/images/products/product_06.jpg">
														</li>
													</ul>
												</div>
												<div id="product_slider_nav" class="flexslider flexslider-nav">
													<ul class="slides">
														<li>
															<img id="img11" src="assets/images/products/thumb_01.jpg">
														</li>
														<li>
															<img id="img12" src="assets/images/products/thumb_02.jpg">
														</li>
														<li>
															<img id="img13" src="assets/images/products/thumb_03.jpg">
														</li>
														<li>
															<img id="img14" src="assets/images/products/thumb_04.jpg">
														</li>
														<li>
															<img id="img15" src="assets/images/products/thumb_05.jpg">
														</li>
														<li>
															<img id="img16" src="assets/images/products/thumb_06.jpg">
														</li>
													</ul>
												</div>
											</div>
											<div class="deal-body p-20">
												<h1 class="mb-10"><span id="gamename"> </span></h1>
												<div class="rating mb-10">
													<span class="rating-stars" data-rating="1">
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </span>
												</div>
												<h2 class="price mb-15">￥<span id="price"></span></h2>
												<p class="mb-15">
													<span id="detail"></span>
												</p>
											</div>
											<div class="form-group">
													<button type="button" style="display: inline-block; width: 47%;margin-left: 10px;" id="buybutton" value="" class="btn ">BUY NOW</button>
													<button type="button" style="display: inline-block ;margin-left: 15px;margin-right: 10px; width: 47%;"  id="addtocart" value="" class="btn ">ADD TO CART</button>
											</div>
										</div>

									</div>

								</div>
							</div>
							<div class="page-sidebar col-md-4 col-sm-5 col-xs-12">
								<!-- Blog Sidebar -->
								<aside class="sidebar blog-sidebar">
									<div class="row row-tb-10">
										
										<div class="col-xs-12">
											<!-- Latest Deals Widegt -->
											<div class="widget latest-deals-widget panel prl-20">
												<div class="widget-body ptb-20">
													<div class="owl-slider" data-loop="true" data-autoplay="true" data-autoplay-timeout="10000" data-smart-speed="1000" data-nav-speed="false" data-nav="true" data-xxs-items="1" data-xxs-nav="true" data-xs-items="1" data-xs-nav="true" data-sm-items="1" data-sm-nav="true" data-md-items="1" data-md-nav="true" data-lg-items="1" data-lg-nav="true">
														<div class="latest-deals__item item">
															<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_02.jpg">
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
																<div class="deal-about p-10 pos-a bottom-0 left-0">
																	<div class="rating mb-10">
																		<span class="rating-stars rate-allow" data-rating="4">
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    </span>
																		<span class="rating-reviews color-lighter">
                                                                        (<span class="rating-count">160</span> Reviews)
																		</span>
																	</div>
																	<h5 class="deal-title mb-10">
                                                                    <a href="deal_single.do" class="color-lighter">Hampton Bay LED Light Ceiling Exhaust Fan</a>
                                                                </h5>
																</div>
															</figure>
														</div>
														<div class="latest-deals__item item">
															<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_03.jpg">
																<div class="label-discount top-10 right-10">-15%</div>
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
																<div class="deal-about p-10 pos-a bottom-0 left-0">
																	<div class="rating mb-10">
																		<span class="rating-stars rate-allow" data-rating="2">
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    </span>
																		<span class="rating-reviews color-lighter">
                                                                        (<span class="rating-count">100</span> Reviews)
																		</span>
																	</div>
																	<h5 class="deal-title mb-10">
                                                                    <a href="deal_single.do" class="color-lighter">Timberland Men's Thorton Waterproof Boots</a>
                                                                </h5>
																</div>
															</figure>
														</div>
														<div class="latest-deals__item item">
															<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_04.jpg">
																<div class="label-discount top-10 right-10">-60%</div>
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
																<div class="deal-about p-10 pos-a bottom-0 left-0">
																	<div class="rating mb-10">
																		<span class="rating-stars rate-allow" data-rating="3">
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    </span>
																		<span class="rating-reviews color-lighter">
                                                                        (<span class="rating-count">32</span> Reviews)
																		</span>
																	</div>
																	<h5 class="deal-title mb-10">
                                                                    <a href="deal_single.do" class="color-lighter">New and Refurbished Lenovo Laptops</a>
                                                                </h5>
																</div>
															</figure>
														</div>
														<div class="latest-deals__item item">
															<figure class="deal-thumbnail embed-responsive embed-responsive-4by3" data-bg-img="assets/images/deals/deal_05.jpg">
																<div class="label-discount top-10 right-10">-60%</div>
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
																<div class="deal-about p-10 pos-a bottom-0 left-0">
																	<div class="rating mb-10">
																		<span class="rating-stars rate-allow" data-rating="5">
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                        <i class="fa fa-star-o"></i>
                                                                    </span>
																		<span class="rating-reviews color-lighter">
                                                                        (<span class="rating-count">29</span> Reviews)
																		</span>
																	</div>
																	<h5 class="deal-title mb-10">
                                                                    <a href="deal_single.do" class="color-lighter">Buying a TV Is Easy When You Know These Terms</a>
                                                                     </h5>
																</div>
															</figure>
														</div>
													</div>
												</div>
											</div>
											<!-- End Latest Deals Widegt -->
										</div>
										<div class="col-xs-12">
											<!-- Best Rated Deals -->
											<div class="widget best-rated-deals panel pt-20 prl-20">
												<h3 class="widget-title h-title">Best Rated Deals</h3>
												<div class="widget-body ptb-30">

													<div class="media">
														<div class="media-left">
															<a href="#">
																<img class="media-object" src="assets/images/deals/thumb_01.jpg" alt="Thumb" width="80">
															</a>
														</div>
														<div class="media-body">
															<h6 class="mb-5">
                                                            <a href="#">Aenean ut orci vel massa</a>
                                                        </h6>
															<div class="mb-5">
																<span class="rating">
                                                                <span class="rating-stars" data-rating="4">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
																</span>
															</div>
															<h4 class="price font-16">$60.00 <span class="price-sale color-muted">$200.00</span></h4>
														</div>
													</div>

													<div class="media">
														<div class="media-left">
															<a href="#">
																<img class="media-object" src="assets/images/deals/thumb_02.jpg" alt="Thumb" width="80">
															</a>
														</div>
														<div class="media-body">
															<h6 class="mb-5">
                                                            <a href="#">Aenean ut orci vel massa</a>
                                                        </h6>
															<div class="mb-5">
																<span class="rating">
                                                                <span class="rating-stars" data-rating="4">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
																</span>
															</div>
															<h4 class="price font-16">$60.00 <span class="price-sale color-muted">$200.00</span></h4>
														</div>
													</div>

													<div class="media">
														<div class="media-left">
															<a href="#">
																<img class="media-object" src="assets/images/deals/thumb_03.jpg" alt="Thumb" width="80">
															</a>
														</div>
														<div class="media-body">
															<h6 class="mb-5">
                                                            <a href="#">Aenean ut orci vel massa</a>
                                                        </h6>
															<div class="mb-5">
																<span class="rating">
                                                                <span class="rating-stars" data-rating="4">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
																</span>
															</div>
															<h4 class="price font-16">$60.00 <span class="price-sale color-muted">$200.00</span></h4>
														</div>
													</div>

													<div class="media">
														<div class="media-left">
															<a href="#">
																<img class="media-object" src="assets/images/deals/thumb_04.jpg" alt="Thumb" width="80">
															</a>
														</div>
														<div class="media-body">
															<h6 class="mb-5">
                                                            <a href="#">Aenean ut orci vel massa</a>
                                                        </h6>
															<div class="mb-5">
																<span class="rating">
                                                                <span class="rating-stars" data-rating="4">
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                    <i class="fa fa-star-o"></i>
                                                                </span>
																</span>
															</div>
															<h4 class="price font-16">$60.00 <span class="price-sale color-muted">$200.00</span></h4>
														</div>
													</div>

												</div>
											</div>
											<!-- Best Rated Deals -->
										</div>
										<div class="col-xs-12">
											<!-- Contact Us Widget -->
											<div class="widget contact-us-widget panel pt-20 prl-20">
												<h3 class="widget-title h-title">Got any questions?</h3>
												<div class="widget-body ptb-30">
													<p class="mb-20 color-mid">If you are having any questions, please feel free to ask.</p>
													<a href="contact_us_01.do" class="btn btn-block"><i class="mr-10 font-15 fa fa-envelope-o"></i>Drop Us a Line</a>
												</div>
											</div>
											<!-- End Contact Us Widget -->
										</div>
									</div>
								</aside>
								<!-- End Blog Sidebar -->
							</div>
						</div>
					</div>
				</div>
				<!-- End Page Container -->

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
												<p class="color-light"><i class="ico fa fa-twitter"></i>
													<a href="#">@masum_rana :</a> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore in reprehenderit.</p>
											</li>
											<li class="single-twitter">
												<p class="color-light"><i class="ico fa fa-twitter"></i>
													<a href="#">@masum_rana :</a> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione id corrupti iusto cupiditate omnis.</p>
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
											<li>
												<a href="deals_grid.do">Latest Deals</a>
											</li>
											<li>
												<a href="coupons_grid.do">Newest Coupons</a>
											</li>
											<li>
												<a href="contact_us_02.do">Contact Us</a>
											</li>
											<li>
												<a href="404.do">Error 404</a>
											</li>
											<li>
												<a href="terms_conditions.do">Terms of Use</a>
											</li>
											<li>
												<a href="faq.do">FAQs</a>
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
		<!-- ========== BUY THEME ========== -->
		<a href="https://google.com" class="buy-theme" data-href="https://themeforest.net/item/friday-coupons-deals-discounts-promo-codes-template/19577226?ref=CODASTROID" target="_blank" id="buy_theme">
			<i class="fa fa-credit-card"></i>
		</a>

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