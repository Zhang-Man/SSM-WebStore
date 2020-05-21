<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户管理中心</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
  crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<div class="row">
				<h1>
					Friday 商城后台管理系统<small>管理员中心</small>
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="jumbotron">
				<h1>Friday商城后台管理系统</h1>
				<p></p>
				<p>
					<a class="btn btn-primary btn-lg" href="index.do" role="button">商城页面</a>
					<a class="btn btn-primary btn-lg" href="login.do" role="button">登录</a>
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<a href="" class="thumbnail"> <img src=" ${pageContext.request.contextPath}/lib/static/images/1.jpg"  alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src=" ${pageContext.request.contextPath}/lib/static/images/2.jpg " alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src=" ${pageContext.request.contextPath}/lib/static/images/3.jpg " alt="商城展示">
				</a>
			</div>
				<div class="col-xs-6 col-md-3">
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/4.jpg" alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/5.jpg" alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/1.jpg" alt="商城展示">
				</a>
			</div>
				<div class="col-xs-6 col-md-3">
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/4.jpg" alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/5.jpg" alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/1.jpg" alt="商城展示">
				</a>
			</div>
				<div class="col-xs-6 col-md-3">
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/4.jpg" alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/5.jpg" alt="商城展示">
				</a>
				<a href="" class="thumbnail"> <img src="${pageContext.request.contextPath}/lib/static/images/1.jpg" alt="商城展示">
				</a>
			</div>
		</div>
	</div>
</body>
</html>