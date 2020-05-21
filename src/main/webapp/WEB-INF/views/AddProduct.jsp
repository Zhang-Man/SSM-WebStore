<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Friday</title>
<link
	href="${pageContext.request.contextPath}/lib/static/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/static/css/datepicker3.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/static/css/bootstrap-table.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/static/css/styles.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/lib/static/js/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/static/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/static/js/chart.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/static/js/easypiechart.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/static/js/bootstrap-datepicker.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/static/js/bootstrap-table.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/static/js/bootstrap-table.js"></script>
</head>
<script type="text/javascript">
	$(function() {
		$("#AddProduct")
				.click(
						function() {
							var name = $("#name").val();
							var categoryId=$("input[name='category']:checked").val();
							var subtitle=$("#subtitle").val();
							var mainImage=$("#main_image").val();
							var detail=$("#detail").val();
							var price=$("#price").val();
							var stock=$("#stock").val();
							var status=$("#status").val();
							var createTime=new Date();
							var updateTime=new Date();
							var param = {
								"categoryId":categoryId,
								"name" : name ,
								"subtitle":subtitle,
								"mainImage":mainImage,
								"price":price,
								"stock":stock,
								"status":status,
								"createTime":createTime,
								"updateTime":updateTime,
								"detail":detail,
							};
							var dataj = JSON.stringify(param);
							alert(dataj);
							$
									.ajax({
										type : "post",
										url : "${pageContext.request.contextPath}/addGoods.do",
										contentType : "application/json;charset=utf-8",
										data : dataj,
										datatype : "json",
										success : function(data) {
											if (data.status == 0) {
												alert("添加成功");
												window.location.href = "successProduct.do";
											} else {
												alert("添加失败");
											}
										},
										async : true
									});
						});
	});
</script>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="adminindex.do"><span>Friday商城后台管理</span>Admin</a>
				<ul class="user-menu">
					<li class="dropdown pull-right"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><span
							class="glyphicon glyphicon-user"></span> ${user.username} <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="logout.do"><span
									class="glyphicon glyphicon-log-out"></span> 退出登录</a></li>
						</ul></li>
				</ul>
			</div>

		</div>
		<!-- /.container-fluid -->
	</nav>


	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">
			<li ><a href="adminindex.do"><span
					class="glyphicon glyphicon-dashboard"></span> 主页面</a></li>
			<li><a href="charts.do"><span
					class="glyphicon glyphicon-stats"></span> 数据统计</a></li>
					<li class="parent">
					<a href="#">
						<span class="glyphicon glyphicon-list"></span> 信息管理 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
					</a>
					<ul class="children collapse" id="sub-item-1">
						<li>
							<a class="" href="success.do">
								<span class="glyphicon glyphicon-share-alt"></span> 用户信息
							</a>
						</li>
						<li>
							<a class="" href="successProduct.do">
								<span class="glyphicon glyphicon-share-alt"></span> 商品信息
							</a>
						</li>
						<li>
							<a class="" href="successOrder.do">
								<span class="glyphicon glyphicon-share-alt"></span> 订单信息
							</a>
						</li>
					</ul>
				</li>
			<li class="active"><a href="Toaddproduct.do"><span
					class="glyphicon glyphicon-pencil"></span> 商品添加</a></li>
			<li role="presentation" class="divider"></li>
		</ul>
	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">商品添加</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">商品详情</h1>
			</div>
		</div>
		<!--/.row-->


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">请输入信息</div>
					<div class="panel-body">
						<div class="col-md-6 col-sm-offset-2 text-center">
							<form role="form">
							
								<div class="form-group">
									<label>商品名称</label> <input type="text" class="form-control"
										placeholder="商品名称" id="name">
								</div>

								<div class="form-group">
									<label>商品副标题</label> <input type="text" class="form-control"
										placeholder="商品副标题" id="subtitle">
								</div>

								<div class="form-group">
									<label for="basic-url">选取图片</label>
									<div class="input-group">
										<span class="input-group-addon" id="basic-addon3">url</span>
										 <input type="text" class="form-control" 
											aria-describedby="basic-addon3" id="main_image">
									</div>
								</div>

								<div class="form-group">
									<label>商品详情</label>
									<textarea class="form-control" rows="10" id="detail"></textarea>
								</div>

								<div class="form-group">
									<label>商品价格</label>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="商品价格"
											id="price">
									</div>
								</div>
								<div class="form-group">
									<label>商品数量</label>
									<div class="form-group">
										<input type="number" class="form-control" placeholder="商品数量"
											id="stock">
									</div>
								</div>
								<div class="form-group">
									<label>商品状态</label>
									<div class="form-group">
										<input type="radio" placeholder="商品状态" name="status"
											id="status" value="1"/>售卖中
										 <input type="radio" placeholder="商品状态"
											name="status" id="status" value="0"/>停卖中
									</div>
								</div>
								<div class="form-group">
									<label>商品分类</label>
									<div class="form-group">
										<input type="radio" placeholder="商品分类" name="category"
											id="category" value="1" />游戏 <input type="radio"
											placeholder="商品分类" name="category" id="category" value="2" />软件
										<input type="radio" placeholder="商品分类" name="category"
											id="category" value="3" />硬件
									</div>
								</div>

								<input  type="button" class="btn btn-primary" id="AddProduct" name="AddProduct" value="添加商品"/>
								<input  type="reset" class="btn btn-default" value="重置内容" />
								</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col-->
		</div>
		<!-- /.row -->

	</div>
</body>
<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</html>
