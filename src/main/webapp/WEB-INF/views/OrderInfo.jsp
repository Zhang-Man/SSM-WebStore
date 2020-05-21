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
	<script type="text/javascript">
    $(function(){
        $("#deleteButton").click(function(){
        var i;
        var id=$("#deleteIdOrder").text();
        var param = {"id":id};
        var dataj=JSON.stringify(param);
         $.ajax({
               type:"post",
               url:"${pageContext.request.contextPath}/deleteOrder.do?id="+id,
               contentType:"application/json;charset=utf-8",
               data:dataj,
               datatype:"json",
               success:function(data){
                   window.location.href="successOrder.do";
                   alert("删除成功");
                   },
               async:true
           });
        });
    });
    </script>
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
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-1 sidebar">
		<ul class="nav menu">
			<li ><a href="adminindex.do"><span class="glyphicon glyphicon-dashboard"></span> 主页面</a></li>
			<li><a href="charts.do"><span class="glyphicon glyphicon-stats"></span> 数据统计</a></li>
									<li class="parent active">
					<a href="#">
						<span class="glyphicon glyphicon-list"></span> 信息管理 <span data-toggle="collapse" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
					</a>
					<ul class="children collapse"    id="sub-item-1">
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
	<div class="col-sm-9 col-sm-offset-3 col-lg-11 col-lg-offset-1 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="adminindex.do"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Order</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">订单信息管理</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
						<div class="panel-heading">订单信息</div>
						<table class="table table-hover table-striped">
								<tr>
									<th>订单编号</th>
									<th>用户id</th>
									<th>订单号</th>
									<th>支付金额</th>
									<th>支付类型</th>
									<th>收货id</th>
									<th>创建时间</th>
									<th>更新时间</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							<c:forEach items="${MfbOrderList}" var="MfbOrderList">
							<tr>
								<th>${MfbOrderList.id}</th>
								<th>${MfbOrderList.userId}</th>
								<th>${MfbOrderList.orderId}</th>
								<th>${MfbOrderList.payment}</th>
								<th>${MfbOrderList.paymentType}</th>
								<th>${MfbOrderList.shippingId}</th>
								<th><fmt:formatDate value="${MfbOrderList.createTime}" pattern="yyyy-MM-dd"/></th>
								<th><fmt:formatDate value="${MfbOrderList.updateTime}" pattern="yyyy-MM-dd"/></th>
								<th>${MfbOrderList.status}</th>
								<th>
									<a class="btn btn-default" href="detailOrder.do?id=${MfbOrderList.id}">修改</a>
									<p hidden="true" id="deleteIdOrder">${MfbOrderList.id}</p>
									<button class="btn btn-default" data-toggle="modal" data-target="#myModal" id="delete">删除</button>
								</th>
							</tr>
							</c:forEach>
							</table>
					</div>
			</div>
		</div><!--/.row-->					
	</div><!--/ main-->
	<!--  User对象的   删除拟态框    -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					确认删除
				</h4>
			</div>
			<div class="modal-body">
			您将删除商品
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" id="deleteButton">
					确认
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
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
</body>
</html>