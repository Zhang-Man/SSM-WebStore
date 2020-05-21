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

		<noscript><link rel="stylesheet" type="text/css" href="assets/css/noJS.css" /></noscript>
		     <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
		
	</head>

	<body onload="MyCenter_InformationOnload()" style="background: #e9ebee;">
	<iframe src="head.do" width="100%" style="height: 45px; margin-bottom: -30px;"></iframe>
	   <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
       <script>
       function MyCenter_InformationOnload(){
             $.get("MyCenter-InformationOnload.do",function(data)
			 {
            	 obj = JSON.parse(data);
            	 name=obj.username;
            	 sex=obj.sex;
            	 tel=obj.tel;
            	 birthday=obj.birthday;
            	 mail=obj.mail;
            	document.all("Username").innerHTML=""+name+""
            	document.all("Sex").innerHTML=""+sex+""	
 				document.all("Birthday").innerHTML=""+transferTime(birthday)+""
 				document.all("Tel").innerHTML=""+tel+""
 				document.all("email").innerHTML=""+mail+""
			 }
             	   );
       }
       </script>
	             <script type="text/javascript"> 
               //改变时间
       function transferTime(cTime) {
       //将json串的一串数字进行解析
       var jsonDate = new Date(parseInt(cTime));
       //alert(jsonDate);
       //为Date对象添加一个新属性，主要是将解析到的时间数据转换为我们熟悉的“yyyy-MM-dd hh:mm:ss”样式
       Date.prototype.format = function(format) {
       var o = {

       //获得解析出来数据的相应信息，可参考js官方文档里面Date对象所具备的方法

       "y+" : this.getFullYear(),//得到对应的年信息
       "M+" : this.getMonth() + 1, //得到对应的月信息，得到的数字范围是0~11，所以要加一
       "d+" : this.getDate(), //得到对应的日信息
       "h+" : this.getHours(), //得到对应的小时信息 
       "m+" : this.getMinutes(), //得到对应的分钟信息
       "s+" : this.getSeconds(), //得到对应的秒信息
 
   }

     //将年转换为完整的年形式
    if (/(y+)/.test(format)) {
   format = format.replace(RegExp.$1,
   (this.getFullYear() + "")
  .substr(4 - RegExp.$1.length));
   }

   //连接得到的年月日 时分秒信息
   for ( var k in o) {
  if (new RegExp("(" + k + ")").test(format)) {
  format = format.replace(RegExp.$1,
  RegExp.$1.length == 1 ? o[k] : ("00" + o[k])
 .substr(("" + o[k]).length));
  }
 }
 return format;
 }
//var newDate = jsonDate.format("yyyy-MM-dd hh:mm:ss");
var newDate = jsonDate.format("yyyy-MM-dd");
return newDate;
}        

</script>
		<div class="header">

			<ol class="breadcrumb ">
				<li>
					<strong><h2><a href="#">Information</a></h2></strong>
				</li>
				<li>
					<a href="MyCenter-Order.do">Order</a>
				</li>
				<li>
					<a href="cart.do">Shopping Cart</a>
				</li>
				<li>
					<a href="wishlist.do">Favorites</a>
				</li>
				<li>
				<a href="MyCenter_Address.do">Address</a>
				</li>
			</ol>
		</div>
		<h3 class="text-center">UserInfo</h3>
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
								<div class="review-wrapper clearfix">
									<ul class="list-inline">
										<li>
											<span id="Username"></span>
										</li>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex：</h4>
							</div>
							<div class="media-body">
								<div class="review-wrapper clearfix">
									<ul class="list-inline">
										<li>
											<span id="Sex"></span>
										</li>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<h4>&nbsp;&nbsp;&nbsp;Brithday：&nbsp;&nbsp;</h4>
							</div>
							<div class="media-body">
								<div class="review-wrapper clearfix">
									<ul class="list-inline">
										<li>
											<span id="Birthday"></span>
										</li>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tel：&nbsp;</h4>
							</div>
							<div class="media-body">
								<div class="review-wrapper clearfix">
									<ul class="list-inline">
										<li>
											<span id="Tel"></span>
										</li>
								</div>
							</div>
						</div>
						<div class="media">
							<div class="media-left">
								<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email：&nbsp;</h4>
							</div>
							<div class="media-body">
								<div class="review-wrapper clearfix">
									<ul class="list-inline">
										<li>
											<span id="email"></span>
										</li>
								</div>
							</div>
						</div>
                         <div class="media">
							<div class="media-middle">
							<a href="ChangeInfo.do"><button type="submit" style="display: block;margin: 0 auto;" class="btn ">ChangeInfo</button></a>
							</div>
							
						</div>
					</div>

				</section>
				<!-- End Contact Us Area -->
						
			</div>
		</div>

	</body>

</html>