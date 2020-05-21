<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr" class="no-js">

	<head>
		<meta charset="UTF-8">
		<title>head</title>

		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<!-- META TAGS                                 -->
		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<meta charset="utf-8">
		<!-- Always force latest IE rendering engine -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- Mobile specific meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<!-- PAGE TITLE                                -->
		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<title>FRIDAY | Coupons, Deals, Discounts and Promo codes Template</title>

		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<!-- SEO METAS                                 -->
		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<meta name="description" content="FRIDAY is a responsive multipurpose-ecommerce site template allows you to store coupons and promo codes from different brands and create store for deals, discounts, It can be used as coupon website such as groupon.com and also as online store">
		<meta name="	black friday, coupon, coupon codes, coupon theme, coupons, deal news, deals, discounts, ecommerce, friday deals, groupon, promo codes, responsive, shop, store coupons">
		<meta name="robots" content="index, follow">
		<meta name="author" content="CODASTROID">

		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<!-- PAGE FAVICON                              -->
		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<link rel="apple-touch-icon" href="assets/images/favicon/apple-touch-icon.png">
		<link rel="icon" href="assets/images/favicon/favicon.ico">

		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<!-- GOOGLE FONTS                              -->
		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600" rel="stylesheet">

		<!-- âââââââââââââââââââââââââââââââââââââââââ -->
		<!-- Include CSS Filess                        -->
		<!-- âââââââââââââââââââââââââââââââââââââââââ -->

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
		<script>
			$(document).ready(function() {
				indexOnload();
			});
		</script>

		<script>
			function indexOnload() {
			           $.get("indexOnload.do",function(data){
			        	   obj = JSON.parse(data);
			        	   var name = obj.username;
						   var sta = obj.status;
						   
						   if(sta == 1) {

								document.all("sign_in").style.display = 'none';
								document.all("user").innerHTML = "<a href='MyCenter-Order.do' target='mainContent'><i class=\"fa fa-user-plus\"></i>" + name + "</a>";
								document.getElementById("user").style.display = "inline";
								document.getElementById("Logout").style.display = "inline";
								document.getElementById("sign_up").style.display = "none";;
							} else {
								document.all("login").style.display = '';
							}
			           })
			}
		</script>
	</head>

	<body>
		<div class="top-bar bg-gray">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-4 is-hidden-sm-down">
						<ul class="nav-top nav-top-left list-inline t-left">
							<li>
								<a href="#" onclick="javascript:history.back(-1);"><i class="fa fa-backward"></i>
									<font color="#66512C">back</font>
								</a>
							</li>
							<li>
								<a href="terms_conditions.do" target="mainContent"><i class="fa fa-question-circle"></i>Discounts Guide</a>
							</li>

						</ul>
					</div>
					<div class="col-sm-12 col-md-8">
						<ul class="nav-top nav-top-right list-inline t-xs-center t-md-right" style="margin-top: 7px;">
							<li>
								

								<li>
									<a href="signinjudge.do" target="mainContent" id="sign_in"><i class="fa fa-lock"></i>Sign In</a>
									<span id="user"></span>
								</li>
								<li>
									<a href="signup.do" id="sign_up" target="mainContent"><i class="fa fa-user"></i>Sign Up</a>
									<a href="logout.do" target="mainContent" style="display: none;" id="Logout"><i class="fa fa-times"></i>logout</a>
								</li>
							</li>
						</ul>

					</div>
				</div>
			</div>
	</body>

</html>