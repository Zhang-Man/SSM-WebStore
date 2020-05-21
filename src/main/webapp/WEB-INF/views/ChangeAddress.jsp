<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

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

	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script type="text/javascript">
         $(document).ready(  function () {
             document.getElementById('district_selector').addEventListener('change',function(){
                 document.getElementById("postcode").value=this.value;
             },false);
         })
     </script>
		<script>
			
			function indexOnload() {

				$.get("searchshipping.do",function(data){
					 	obj = JSON.parse(data);
					 
					 	var name = obj.shippingrecord.receiverName;
						var tel=obj.shippingrecord.receiverPhone;
						var address=obj.shippingrecord.receiverAddress;
						var zip=obj.shippingrecord.receiverZip;
						var id=obj.shippingrecord.id;
						document.getElementById("changeshippingbutton").value=id;
	                    document.getElementById("recipients").value=""+name+"";
	                    document.getElementById("tel").value=""+tel+"";
	                    //document.getElementById("province_selector").Option=""+province+"";
	                    //document.getElementById("city_selector").options=""+city+"";
	                    //document.getElementById("district_selector").options=""+district+"";
	                    document.getElementById("address").value=""+address+"";
	                    document.getElementById("postcode").value=""+zip+"";
				})
				
				 $("#changeshippingbutton").click(function(){
					   var id=$("#changeshippingbutton").val();
			 		   var receiverName=$("#recipients").val();
			 		   var receiverPhone=$("#tel").val();
			 		   var receiverProvince=$("#province_selector").val();
			 		   var receiverCity=$("#city_selector").val();
			 		   var receiverDistrict=$("#district_selector").val();
			 		   var receiverAddress=$("#address").val();
			 		   var receiverZip=$("#postcode").val();
			 		   var str = {"id":id,"receiverName":receiverName,"receiverPhone":receiverPhone,"receiverProvince":receiverProvince,
			 				   		"receiverCity":receiverCity,"receiverDistrict":receiverDistrict,"receiverAddress":receiverAddress,
			 				   		"receiverZip":receiverZip}
			 		   json = JSON.stringify(str)
				       $.get("changeshipping.do",{"json":json},function(data){
				    	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="MyCenter_Address.do";}
			        	   else{window.location.href="ChangeAddress.do";}
				       })
			        });
				

					
			}
		</script>
		<style>
			.bd-filter__select {
				width: 100% ;
				height: 35px;
				margin-bottom: 10px;
				border:2px solid #DDDDDD;
				font: 1.05em "Fira Sans", sans-serif;
			}
		</style>
	</head>

	<body onload="indexOnload()">
	<iframe src="head.do" width="100%" style="height: 45px; margin-bottom: -10px;"></iframe>
		


		<h2 class="text-center">Change Address</h2>
		<form action="#">
			<div class="page-container ">
				<div class="container">
					<!-- Contact Us Area -->
					<section class="terms-area panel">
						<div class="ptb-30 prl-30">
							<div class="media">
								<div class="media-left">
									<h4>&nbsp;&nbsp;Recipients：</h4>
								</div>
								<div class="media-body">

									<div class="form-group-lg">
										<label class="sr-only">Recipients</label>
										<input type="text" id="recipients" class="form-control " placeholder="Recipients">
										<span id="username" onclick="showusername()"></span>
									</div>

								</div>

								<div class="media">
									<div class="media-left">
										<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tel：&nbsp;</h4>
									</div>
									<div class="media-body">

										<div class="form-group-lg">
											<label class="sr-only">Username</label>
											<input type="tel" id="tel" class="form-control " placeholder="Tel">
											<span id="username" onclick="showusername()"></span>
										</div>

									</div>
									<div class="media">
										<div class="media-left">
											<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Location：</h4>
										</div>
										<div class="media-body">
											<select id="province_selector"  class="bd-filter__select"></select><br />
											<select id="city_selector" class="bd-filter__select"></select><br />
											<select id="district_selector" class="bd-filter__select" ></select>
											<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
											<script>
												/** 省市区三级代码查询 **/
												var DISTRICTS;
												var provinceCode = '',
													cityCode = '',
													districtCode = '';
												//筛选的地区
												var province_selector = $('#province_selector'),
													city_selector = $('#city_selector'),
													district_selector = $('#district_selector');
												var htm = '<option value="">----请选择-----</option>';
												$.ajax({
													type: 'GET',
													url: 'assets/js/districts.json',
													dataType: 'json'
												}).done(function(res) {
													DISTRICTS = res;
													htm = '<option value="">----请选择-----</option>';
													for(var key in DISTRICTS['100000']) {
														htm += '<option value="' + key + '">' + DISTRICTS['100000'][key] + '</option>';
													}
													province_selector.html(htm);
													city_selector.html('<option value="">----请选择-----</option>');
													district_selector.html('<option value="">----请选择-----</option>');
												}).fail(function() {
													console.log('获取地区json数据失败');
												});

												province_selector.change(function() {
													provinceCode = province_selector.find('option:selected').val();

													htm = '<option value="">----请选择-----</option>';
													for(var key in DISTRICTS[provinceCode]) {
														htm += '<option value="' + key + '">' + DISTRICTS[provinceCode][key] + '</option>';
													}
													city_selector.html(htm);
													district_selector.html('<option value="">----请选择-----</option>');
												});
												city_selector.change(function() {
													cityCode = city_selector.find('option:selected').val();

													htm = '<option value="">----请选择-----</option>';
													for(var key in DISTRICTS[cityCode]) {
														htm += '<option value="' + key + '">' + DISTRICTS[cityCode][key] + '</option>';
														district_selector.html(htm);
													}
												});
												district_selector.change(function() {
													districtCode = district_selector.find('option:selected').val();
									
												});

												function postcodechange() {
													document.getElementById("postcode").value = districtCode;
												}
											</script>
										</div>
									</div>
									<div class="media-left">
										<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address：</h4>
									</div>
									<div class="media-body">

										<div class="form-group-lg">
											<label class="sr-only">Recipients</label>
											<input type="text" id="address" class="form-control " placeholder="Addess">
											<span id="username" onclick="showusername()"></span>
										</div>

									</div>
									<div class="media">
										<div class="media-left">
											<h4>&nbsp;&nbsp;&nbsp;Postcode：&nbsp;</h4>
										</div>
										<div class="media-body">

											<div class="form-group-lg">
												<label class="sr-only">Tel</label>
												<input type="text" id="postcode" class="form-control input-lg" placeholder="Postcode">
											</div>

										</div>
									</div>

									<div class="media">
										<div class="media-middle">
											<a><button type="button" id="changeshippingbutton" style="display: block;margin: 0 auto;" value="" class="btn ">Confirm</button></a>
										</div>

									</div>
								</div>

					</section>
					<!-- End Contact Us Area -->

					</div>
					</div>
				</div>
		</form>

	</body>

</html>