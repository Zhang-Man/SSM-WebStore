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
     <script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>

	</head>

	<body style="background: #e9ebee">
	<iframe src="head.do" width="100%" style="height: 45px; margin-bottom: -10px;"></iframe>	

		<script>
			     

		$(document).ready(function() {
			add();
		});

		function add() {

			 $.get("searchshippingAll.do",function(data)
					 {
		            	 obj = JSON.parse(data);
		            	 var id=new Array();
		            	 var name=new Array();
		            	 var tel=new Array();
		            	 var address=new Array();
		            	 for(var i=0;i<obj.listshipping.length;i++)
		            	 {
		            		 id[i]=obj.listshipping[i].id;
		            		 name[i]=obj.listshipping[i].receiverName;
		            		 tel[i]=obj.listshipping[i].receiverPhone;
		            		 address[i]=obj.listshipping[i].receiverAddress;
		            	 }
		        		var sum=obj.listshipping.length;
		        		for(var j=1;j<=sum;j++)
		        		{
		        			if(j==1){document.getElementById("address1_change1").value=id[0];
		        			document.getElementById("address1_delete1").value=id[0];
		        			document.getElementById("address1").style.display = "inline";
							document.getElementById("address1_name").innerHTML = "" + name[0] + "";
							document.getElementById("address1_tel").innerHTML = "" + tel[0] + "";
							document.getElementById("address1_address").innerHTML = "" + address[0] + "";}
		        				if(j==2){document.getElementById("address1_change2").value=id[1];
		        				document.getElementById("address1_delete2").value=id[1];
		        				document.getElementById("address2").style.display = "inline";
								document.getElementById("address2_name").innerHTML = "" + name[1] + "";
								document.getElementById("address2_tel").innerHTML = "" + tel[1] + "";
								document.getElementById("address2_address").innerHTML = "" + address[1] + "";}
		        					if(j==3){document.getElementById("address1_change3").value=id[2];
		        					document.getElementById("address1_delete3").value=id[2];
		        					document.getElementById("address3").style.display = "inline";
									document.getElementById("address3_name").innerHTML = "" + name[2] + "";
									document.getElementById("address3_tel").innerHTML = "" + tel[2] + "";
									document.getElementById("address3_address").innerHTML = "" + address[2] + "";}
		        						if(j==4){document.getElementById("address1_change4").value=id[3];
		        						document.getElementById("address1_delete4").value=id[3];
		        						document.getElementById("address4").style.display = "inline";
										document.getElementById("address4_name").innerHTML = "" + name[3] + "";
										document.getElementById("address4_tel").innerHTML = "" + tel[3] + "";
										document.getElementById("address4_address").innerHTML = "" + address[3] + "";}
		        							if(j==5){document.getElementById("address1_change5").value=id[4];
		        							document.getElementById("address1_delete5").value=id[4];
		        							document.getElementById("address5").style.display = "inline";
		    								document.getElementById("address5_name").innerHTML = "" + name[4] + "";
		    								document.getElementById("address5_tel").innerHTML = "" + tel[4] + "";
		    								document.getElementById("address5_address").innerHTML = "" + address[4] + "";}
		        		}
					 });
			
			 $("#address1_change1").click(function(){
		 		   var shippingid=$("#address1_change1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("setshippingid.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="ChangeAddress.do";}
			        	   
			           })
		        });
			 $("#address1_change2").click(function(){
		 		   var shippingid=$("#address1_change1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("setshippingid.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="ChangeAddress.do";}
			        	   
			           })
		        });
			 $("#address1_change3").click(function(){
		 		   var shippingid=$("#address1_change1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("setshippingid.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="ChangeAddress.do";}
			        	   
			           })
		        });
			 $("#address1_change4").click(function(){
		 		   var shippingid=$("#address1_change1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("setshippingid.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="ChangeAddress.do";}
			        	   
			           })
		        });
			 $("#address1_change5").click(function(){
		 		   var shippingid=$("#address1_change1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("setshippingid.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="ChangeAddress.do";}
			        	   
			           })
		        });
			
			 $("#address1_delete1").click(function(){
		 		   var shippingid=$("#address1_delete1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("deleteshipping.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="MyCenter_Address.do";}
			        	   
			           })
		        });
			 $("#address1_delete2").click(function(){
		 		   var shippingid=$("#address1_delete1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("deleteshipping.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="MyCenter_Address.do";}
			        	   
			           })
		        });
			 $("#address1_delete3").click(function(){
		 		   var shippingid=$("#address1_delete1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("deleteshipping.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="MyCenter_Address.do";}
			        	   
			           })
		        });
			 $("#address1_delete4").click(function(){
		 		   var shippingid=$("#address1_delete1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("deleteshipping.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="MyCenter_Address.do";}
			        	   
			           })
		        });
			 $("#address1_delete5").click(function(){
		 		   var shippingid=$("#address1_delete1").val();
		 		   var str = {"shippingid":shippingid}
		 		   json = JSON.stringify(str)
			           $.get("deleteshipping.do",{"json":json},function(data){
			        	   obj = JSON.parse(data);
			        	   if(obj.massage=="ok"){window.location.href="MyCenter_Address.do";}
			        	   
			           })
		        });
			
			
		}	
		</script>
		<div class="header">
			
			<ol class="breadcrumb ">
				<li>
					<strong><h2><a href="#">Address</a></h2></strong>
				</li>
				<li>
					<a href="MyCenter-Information.do">Information</a>
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
			</ol>
		</div>
		<h3 class="text-center">Address</h3>
		<div class="page-container ">
			<div class="container">
				<!-- Contact Us Area -->
				<section class="terms-area panel">
					<div class="ptb-30 prl-30">
						<div id="address1" class="review-single pt-30" style="display: none;">
							<div class="media">
								<div class="media-body">
									<div class="review-wrapper clearfix">
										<ul class="list-inline">
											<li>
												<span id="address1_name"></span>
											</li>
											<li>
												<span id="address1_tel"></span>
											</li>
											<br />
											<li>
												<span id="address1_address"></span>
											</li>

										</ul>

									</div>

								</div>
								<div class="media-left">
									<ul>
										<li>
											<button id="address1_change1" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-refresh"></i>修改</button>
										</li>
										<li>
											<button id="address1_delete1" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-remove"></i>删除</button>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div id="address2" class="review-single pt-30" style="display: none;">
							<div class="media">
								<div class="media-body">
									<div class="review-wrapper clearfix">
										<ul class="list-inline">
											<li>
												<span id="address2_name"></span>
											</li>
											<li>
												<span id="address2_tel"></span>
											</li>
											<br />
											<li>
												<span id="address2_address"></span>
											</li>
										</ul>

									</div>

								</div>
								<div class="media-left">
									<ul>
										<li>
											<button id="address1_change2" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-refresh"></i>修改</button>
										</li>
										<li>
											<button id="address1_delete2" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-remove"></i>删除</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="address3" class="review-single pt-30" style="display: none;">
							<div class="media">
								<div class="media-body">
									<div class="review-wrapper clearfix">
										<ul class="list-inline">
											<li>
												<span id="address3_name"></span>
											</li>
											<li>
												<span id="address3_tel"></span>
											</li>
											<br />
											<li>
												<span id="address3_address"></span>
											</li>
										</ul>

									</div>

								</div>
								<div class="media-left">
									<ul>
										<li>
											<button id="address1_change3" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-refresh"></i>修改</button>
										</li>
										<li>
											<button id="address1_delete3" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-remove"></i>删除</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="address4" class="review-single pt-30" style="display: none;">
							<div class="media">
								<div class="media-body">
									<div class="review-wrapper clearfix">
										<ul class="list-inline">
											<li>
												<span id="address4_name"></span>
											</li>
											<li>
												<span id="address4_tel"></span>
											</li>
											<br />
											<li>
												<span id="address4_address"></span>
											</li>
										</ul>

									</div>

								</div>
								<div class="media-left">
									<ul>
										<li>
											<button id="address1_change4" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-refresh"></i>修改</button>
										</li>
										<li>
											<button id="address1_delete4" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-remove"></i>删除</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="address5" class="review-single pt-30" style="display: none;">
							<div class="media">
								<div class="media-body">
									<div class="review-wrapper clearfix">
										<ul class="list-inline">
											<li>
												<span id="address5_name"></span>
											</li>
											<li>
												<span id="address5_tel"></span>
											</li>
											<br />
											<li>
												<span id="address5_address"></span>
											</li>
										</ul>

									</div>

								</div>
								<div class="media-left">
									<ul>
										<li>
											<button id="address1_change5" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-refresh"></i>修改</button>
										</li>
										<li>
											<button id="address1_delete5" class="btn-block" style="width: 70px;margin-bottom: 10px;margin-left: 10px;"><i class="fa fa-remove"></i>删除</button>
										</li>
									</ul>
								</div>
								<a href="createadd.do"><button id="address1_delete5" class="btn" >addAddress</button></a>
							</div>
						</div>
						<div class="media">
							<div class="media-middle">
								<a href="createadd.do"><button type="submit" style="display: block;margin: 0 auto;" class="btn ">Create Address</button></a>
							</div>

						</div>
					</div>

				</section>
				<!-- End Contact Us Area -->

			</div>
		</div>

	</body>

</html>