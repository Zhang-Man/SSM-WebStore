<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>后台用户中心</title>
		<meta charset="UTF-8">
		<title>MyCenter</title>
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

		<link rel="stylesheet" type="text/css" href="assets/css/noJS.css" />
		
			<script type="text/javascript" src="assets/js/jquery-3.1.0.min.js"></script>
       <script>
       $(function(){
           $("#button").click(function(){
        	   alert("点击");
        	   var str = {"Username":$("#Username").val(),"Tel":$("#Tel").val(),"Sex":$("#Sex").val(),"Birthday":$("#Birthday").val(),"Email":$("#Email").val()}
        	   json = JSON.stringify(str)
        	   alert("数据传递");
             $.get("ChangeInformation.do",{"json":json});
               alert("数据传递完毕");
          });
       })
       </script>
       <script>
       function ChangeInfoOnload(){
             $.get("ChangeInfoOnload.do",function(data)
			 {
            	 alert(data);
            	 obj = JSON.parse(data);
            	 alert(obj.username);
            	 alert(obj.sex);
            	 alert(obj.birthday);
            	 alert(obj.tel);
            	 alert(obj.mail);
			 }
             
             	   );
       }
       </script>
	</head>

	<body onload="ChangeInfoOnload()">
<iframe src="head.do" width="100%" style="height: 45px; margin-bottom: -10px;"></iframe>
		<div class="header">

			<ol class="breadcrumb ">
				<li>
					<strong><h2><a href="MyCenter-Information.do">Information</a></h2></strong>
				</li>
				<li>
					<a href="MyCenter-Order.do">Order</a>
				</li>
				<li>
					<a href="#">Shopping Cart</a>
				</li>
				<li>
					<a href="#">Favorites</a>
				</li>
			</ol>
		</div>
		<h3 class="text-center">UserInfo</h3>
		<form action="#" method="post">
		<div class="page-container ">
			<div class="container">
				<!-- Contact Us Area -->
				<section class="terms-area panel">
					<div class="ptb-30 prl-30">
						<div class="review-single pt-30">
							<div class="media">
								<div class="media-left">
									<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Icon：</h4>
								</div>
								<div class="media-body">
									<div class="review-wrapper clearfix">
										<ul class="list-inline">

											<li>
												<img class="media-object mr-10 radius-4" src="assets/images/avatars/avatar_01.jpg" width="90" alt="">
												<label for="exampleInputFile">File input</label>
												<input type="file" id="exampleInputFile">
											</li>
										</ul>

									</div>
								</div>
							</div>
						</div>

						<div class="media">
							<div class="media-left">
								<h4>&nbsp;Username：</h4>
							</div>
							<div class="media-body">

					

										<div class="form-group-lg">
											<label class="sr-only">Username</label>
											<input type="text" name="username" id="Username" class="form-control " placeholder="Username">
											
										</div>

									

							</div>
							<div class="media">
								<div class="media-left">
									<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex：</h4>
								</div>
								<div class="media-body">

									
											<div class="form-group-lg">
												<label class="sr-only">Sex</label>
												<input type="text" name="sex" id="Sex" class="form-control input-lg" placeholder="Sex">
											</div>

									

								</div>
							</div>
							<div class="media">
								<div class="media-left">
									<h4>&nbsp;&nbsp;&nbsp;Brithday：&nbsp;&nbsp;</h4>
								</div>
								<div class="media-body">

								
											<div class="form-group-lg">
												<label class="sr-only">Birthday</label>
												<input type="date" name="birthday" id="Birthday" class="form-control input-lg" placeholder="Birthday">
											</div>

									

								</div>
							</div>
							<div class="media">
								<div class="media-left">
									<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tel：&nbsp;</h4>
								</div>
								<div class="media-body">

									
											<div class="form-group-lg">
												<label class="sr-only">Tel</label>
												<input type="tel" name="tel" id="Tel" class="form-control input-lg" placeholder="Tel">
											</div>

										

								</div>
							</div>
							<div class="media">
								<div class="media-left">
									<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email：&nbsp;</h4>
								</div>
								<div class="media-body">

			
											<div class="form-group-lg">
												<label class="sr-only">Email</label>
												<input type="email" name="mail" id="Email" class="form-control input-lg" placeholder="E-mail">
											</div>

									

								</div>
							</div>
							<div class="media">
								<div class="media-middle">
									<a href="MyCenter-Information.do"><button id="button" type="button" style="display: block;margin: 0 auto;" class="btn ">Confirm</button></a>
								</div>

							</div>
						</div>

				</section>
				<!-- End Contact Us Area -->

				</div>
			</div>
		</form>
	</body>

</html>