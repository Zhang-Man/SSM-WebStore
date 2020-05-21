<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>用户信息</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/lib/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/static/css/datepicker3.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/static/css/bootstrap-table.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/static/css/styles.css" rel="stylesheet">
<script type="text/javascript"	src="${pageContext.request.contextPath}/lib/static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
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
			<li ><a href="index.html"><span class="glyphicon glyphicon-dashboard"></span> 主页面</a></li>
			<li><a href="charts.do"><span class="glyphicon glyphicon-stats"></span> 数据统计</a></li>
						<li class="parent active">
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
				<li><a href="adminindex.do"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Tables</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">人员信息管理</h1>
			</div>
        </div><!--/.row-->
        <c:set var="MfbUser" value="${Mfbuser}"></c:set>
        <c:set var="age" value="${age}"></c:set>
        <script type="text/javascript">
    $(function(){
        $("#updateBtn").click(function(){
        var i;
        var id=$("#id").text();
        var username=$("#username").text();
        var password=$("#password").val();
        var sex=$("#sex").val();
        var age=$("#age").val();
        var birthday=age;
        var tel=$("#tel").val();
        var mail=$("#mail").val();
        var createTime=$("#createTime").text();
        var updateTime=new Date();
        var role=$("#role").val();
        if(sex=="男") {
            i=1;
        }
        else {
            i=0;
        }
        var param = {"id":id,"username":username,"password":password,"sex":i,"birthday":birthday,"tel":tel,"mail":mail,"createTime":createTime,"updateTime":updateTime,"role":role};
        var dataj=JSON.stringify(param);
        alert(dataj);
         $.ajax({
               type:"post",
               url:"${pageContext.request.contextPath}/updateUser.do",
               contentType:"application/json;charset=utf-8",
               data:dataj,
               datatype:"json",
               success:function(data){
                   if(data.status==0){
                       alert("更新成功");
                   window.location.href="login.do";
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
						<label class="col-sm-2 control-label">用户账号</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="id">${MfbUser.id}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="username">${MfbUser.username}</p>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户密码</label>
						<div class="col-sm-10">
						<input type="text" class="form-control" id="password" value="${Mfbuser.password }" name="password" placeholder="请输入密码">
						</div>
					</div>
						<div class="form-group">
						<label for="sex" class="col-sm-2 control-label">用户性别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="sex" value="${Mfbuser.sex }" name="sex" placeholder="请输入性别">
						</div>
	
					</div>
					<div class="form-group">
						<label for="age" class="col-sm-2 control-label">出生日期</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="age" value="${age}" name="age" placeholder="请输入年龄">
							<span> <fmt:formatDate value="${Mfbuser.birthday}" pattern="yyyy-MM-dd"/></span>
						</div>
					</div>
					<div class="form-group">
						<label for="tel" class="col-sm-2 control-label">用户电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="tel" value="${MfbUser.tel}" name="tel" placeholder="请输入手机号">
						</div>
					</div>
					<div class="form-group">
						<label for="mail" class="col-sm-2 control-label">用户邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="mail" value="${MfbUser.mail}" name="mail" placeholder="请输入邮箱">
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">账号创建时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="createTime">
						<fmt:formatDate value="${Mfbuser.createTime}" pattern="yyyy-MM-dd"/>
							 </p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">账号更新时间</label>
						<div class="col-sm-10">
							<p class="form-control-static">
							<fmt:formatDate value="${Mfbuser.updateTime}" pattern="yyyy-MM-dd"/>
							</p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">账号权限</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="role" value="${MfbUser.role}" name="role" placeholder="请输入role">
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
	<script src="${pageContext.request.contextPath}/lib/static/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/chart.min.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/chart-data.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/easypiechart.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/easypiechart-data.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/lib/static/js/bootstrap-table.js"></script>
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