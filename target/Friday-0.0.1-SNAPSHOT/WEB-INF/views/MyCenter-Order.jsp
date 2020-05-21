<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr" class="no-js">

	<head>
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

		<script type="text/javascript" src="assets/js/modernizr.custom.79639.js"></script>
		<noscript><link rel="stylesheet" type="text/css" href="assets/css/noJS.css" /></noscript>
		<script src="js/jquery-3.1.0.js"></script>
		<script>
			$(document).ready(function(){
				add();
			});
			function add(){
				$.get("myorder.do",function(data){
					var name=new Array();
					var price=new Array();
					var quantity=new Array();
					var totalprice=new Array();
					alert(data);
					for(var i=0;i<obj.listorderid.length;i++)
	            	{
	            	}
					for(var i=0;i<obj.listAllgoods.length;i++)
	            	{
						for(var i=0;i<obj.listAllgoods.listgoods.length;i++)
		            	{
		            	}
	            	}
					for(var i=0;i<obj.listtotalprice.length;i++)
	            	{
	            	}
					
					
					var img=new Array();
					img[0]="assets/images/products/imgnotfound.jpg"
					name[0]="憨批李雷大冒险";
					price[0]=998;
					quantity[0]=1;
					totalprice[0]=quantity[0]*price[0];
					for (var i=0;i<1;i++) {
						$("#stocker").append("<tr class='panel alert'><td><div class='media-left is-hidden-sm-down'><figure class='product-thumb'><img src='"+img[i]+"' alt='product'></figure></div><div class='media-body valign-middle'><h6 class='title mb-15 t-uppercase'><a href='deal_single.do'>"+name[i]+"</a></h6></div></td><td>$"+price[i]+"</td><td><input class='quantity-label' type='number' value='"+quantity[i]+"'></td><td><div class='sub-total'>$"+totalprice[i]+"</div></td><td><div class='media-body valign-lg-middle'>In Transit</div></td><td><button type='button' class='close' data-dismiss='alert' aria-hidden='true'><i class='fa fa-trash-o'></i></button></td></tr>")
					}
				})
			}
		</script>
	</head>

	<body>
 <iframe src="head.do" width="100%" style="height: 45px; margin-bottom: -10px;"></iframe>
 
		<div style="">
		<ol class="breadcrumb " >
			<li>
				<h2><a href="#">Order</a></h2>
			</li>
			<li>
				<a href="MyCenter-Information.do">Information</a>
			</li>
			<li>
				<a href="cart.do">Shopping Cart</a>
			</li>
			<li>
				<a href="wishlist.do">Favorites</a>
			</li>
			<li>
				<a href="address">Address</a>
			</li>
		</ol>
		</div>
		</div>
		<div class="page-container">
			<div class="container">
				<div class="cart-area ptb-60">
					<div class="container">
						<div class="cart-wrapper">
							<h3 class="h-title mb-30 t-uppercase">My Order</h3>
							<table id="cart_list" class="cart-list mb-30">
								<thead class="panel t-uppercase">
									<tr>
										<th>Product name</th>
										<th>Unit price</th>
										<th>Quantity</th>
										<th>Sub total</th>
										<th>state</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="stocker">
									
									
									

								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	
	</body>

</html>