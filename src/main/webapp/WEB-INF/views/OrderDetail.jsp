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
<div class="col-sm-9 col-sm-offset-3 col-lg-11 col-lg-offset-1 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="adminindex.do"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Orders</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">订单信息管理</h1>
			</div>
        </div><!--/.row-->
        <c:set var="MfbGood" value="${mfbOrder}"></c:set>
        <script type="text/javascript">
    $(function(){
        $("#updateBtn").click(function(){
        var id=$("#id").text();
        var userId=$("#userId").text();
        var orderId=$("#orderId").text();
        var payment=$("#payment").val();
        var paymentType=$("#paymentType").text();
        var shippingId=$("#shippingId").text();
        var status=$("#status").val();
        var createTime=$("#createTime").text();
        var updateTime=new Date();
        var paymentTime=$("#paymentTime").text();
        var endTime=$("#endTime").text();
        var sendTime=$("#sendTime").text();
        var closeTime=$("#closeTime").text();
        var param = {
        		"id":id,
        		"userId":userId,
        		"orderId":orderId,
        		"payment":payment,
        		"paymentType":paymentType,
        		"shippingId":shippingId,
        		"status":status,
        		"createTime":createTime,
        		"updateTime":updateTime,
        		"paymentTime":paymentTime,
        		"endTime":endTime,
        		"sendTime":sendTime,
        		"closeTime":closeTime,
        		};
        var dataj=JSON.stringify(param);
        alert(dataj);
         $.ajax({
               type:"post",
               url:"${pageContext.request.contextPath}/updateOrder.do",
               contentType:"application/json;charset=utf-8",
               data:dataj,
               datatype:"json",
               success:function(data){
                   if(data.status==0){
                       alert("更新成功");
                   window.location.href="successOrder.do";
                   }else{
                       alert("更新失败");
                   }
                   },
               async:true
           });
        });
    });
    </script>
        <div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">订单编号</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="id">${mfbOrder.id}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户表_id</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="userId">${mfbOrder.userId}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">订单号</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="orderId">${mfbOrder.orderId}</p>
						</div>
					</div>
					<div class="form-group">
						<label for="subtitle" class="col-sm-2 control-label">实付金额</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="payment" value="${mfbOrder.payment}" name="payment" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">支付类型</label>
						<div class="col-sm-10" >
							<p class="form-control-static" id="paymentType">${mfbOrder.paymentType}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">shiping_id</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="shippingId">${mfbOrder.shippingId}</p>
						</div>
					</div>
					<div class="form-group">
						<label for="stock" class="col-sm-2 control-label">订单状态</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="status" value="${mfbOrder.status}" name="status" >
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">订单创建时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="createTime">
						<fmt:formatDate value="${mfbOrder.createTime}" pattern="yyyy-MM-dd"/>
							 </p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">订单更新时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="updateTime">
							<fmt:formatDate value="${mfbOrder.updateTime}" pattern="yyyy-MM-dd"/>
							</p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">付款时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="paymentTime">
							<fmt:formatDate value="${mfbOrder.paymentTime}" pattern="yyyy-MM-dd"/>
							</p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">发货时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="sendTime">
							<fmt:formatDate value="${mfbOrder.sendTime}" pattern="yyyy-MM-dd"/>
							</p>
						</div>
					</div>
							<div class="form-group">
						<label class="col-sm-2 control-label">交易完成时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="endTime">
							<fmt:formatDate value="${mfbOrder.sendTime}" pattern="yyyy-MM-dd"/>
							</p>
						</div>
					</div>
							<div class="form-group">
						<label class="col-sm-2 control-label">交易关闭时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="closeTime">
							<fmt:formatDate value="${mfbOrder.closeTime}" pattern="yyyy-MM-dd"/>
							</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">&nbsp</label>
						<div class="col-sm-10">
							<input type="button" class="btn btn-primary btn-lg btn-block" id="updateBtn"  name="updateBtn" value="提交修改">
						</div>
					
					</div>					
				</form>
			</div>
		</div>
		
	</div><!--/ main-->
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