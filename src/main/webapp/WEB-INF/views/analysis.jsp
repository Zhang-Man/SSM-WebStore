<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Friday
</title>
<link href="${pageContext.request.contextPath}/lib/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/static/css/datepicker3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/static/css/bootstrap-table.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/static/css/styles.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/lib/static/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/chart.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/easypiechart.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/easypiechart-data.js"></script>
<script src="${pageContext.request.contextPath}/lib/static/js/chart-data.js"></script>
	
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
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
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu">
			<li ><a href="adminindex.do"><span class="glyphicon glyphicon-dashboard"></span> 主页面</a></li>
			<li class="active"><a href="#"><span class="glyphicon glyphicon-stats"></span> 数据统计</a></li>
			<li class="parent ">
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
			<li><a href="Toaddproduct.do"><span class="glyphicon glyphicon-pencil"></span> 商品添加</a></li>
			<li role="presentation" class="divider"></li>
			
		</ul>
	</div><!--/.sidebar-->
			<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Charts</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Charts</h1>
				
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Line Chart</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="main-chart" id="line-chart" height="200" width="600"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Bar Chart</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="main-chart" id="bar-chart" height="200" width="600"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->		
		
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Pie Chart</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="chart" id="pie-chart" ></canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Doughnut Chart</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="chart" id="doughnut-chart" ></canvas>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Label:</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="92" ><span class="percent">92%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Label:</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="65" ><span class="percent">65%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Label:</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="56" ><span class="percent">56%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Label:</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="27" ><span class="percent">27%</span>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
											
	</div>	<!--/.main-->
</body>
</html>