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
				<h1 class="page-header">商品信息管理</h1>
			</div>
        </div><!--/.row-->
        <c:set var="MfbGood" value="${MfbGood}"></c:set>
        <script type="text/javascript">
    $(function(){
        $("#updateBtn").click(function(){
        var id=$("#id").text();
        var name=$("#name").val();
        var categoryId=$("input[name='category']:checked").val();
        var subtitle=$("#subtitle").val();
        var mainImage=$("#mainImage").val();
        var price=$("#price").val();
        var stock=$("#stock").val();
        var status=$("#status").val();
        var detail=$("#detail").val();
        var createTime=$("#createTime").text();
        var updateTime=new Date();
    	if(!categoryId){
			alert("分类必选!");
			$("#category").focus();//获取焦点
			return ;
		}
        var param = {
        		"id":id,
        		"categoryId":categoryId,
        		"name":name,
        		"subtitle":subtitle,
        		"mainImage":mainImage,
        		"price":price,
        		"stock":stock,
        		"status":status,
        		"createTime":createTime,
        		"updateTime":updateTime,
        		"detail":detail,
        		};
        var dataj=JSON.stringify(param);
         $.ajax({
               type:"post",
               url:"${pageContext.request.contextPath}/updateGoods.do",
               contentType:"application/json;charset=utf-8",
               data:dataj,
               datatype:"json",
               success:function(data){
                   if(data.status==0){
                       alert("更新成功");
                   window.location.href="successProduct.do";
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
						<label class="col-sm-2 control-label">游戏编号</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="id">${MfbGood.id}</p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">游戏名称</label>
						<div class="col-sm-10">
						<input type="text" class="form-control" id="name" value="${MfbGood.name }" name="name" placeholder="请输入游戏名称">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">游戏分类</label>
						<div class="col-sm-10">
							<input type="radio" placeholder="游戏分类" name="category"
								id="category" value="1" />游戏 <input type="radio"
								placeholder="游戏分类" name="category" id="category" value="2" />软件
							<input type="radio" placeholder="游戏分类" name="category"
								id="category" value="3" />硬件
						</div>
					</div>
					<div class="form-group">
						<label for="subtitle" class="col-sm-2 control-label">游戏副标题</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="subtitle" value="${MfbGood.subtitle}" name="subtitle" placeholder="请输入游戏副标题">
						</div>
					</div>
					<div class="form-group">
						<label for=mainImage class="col-sm-2 control-label">游戏图片</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="mainImage" value="${MfbGood.mainImage}" name="mainImage" placeholder="请选择图片">
							<img src="${MfbGood.mainImage}" width="200" height="300"/>
						</div>
					</div>
										<div class="form-group">
						<label for="price" class="col-sm-2 control-label">游戏价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="price" value="${MfbGood.price}" name="price" placeholder="请输入价格">
						</div>
					</div>
										<div class="form-group">
						<label for="stock" class="col-sm-2 control-label">游戏数量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="stock" value="${MfbGood.stock}" name="stock" placeholder="请输入数量">
						</div>
					</div>
										<div class="form-group">
						<label for="status" class="col-sm-2 control-label">游戏状态</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="status" value="${MfbGood.status}" name="status" placeholder="请输入商品状态">
						</div>
					</div>
										<div class="form-group">
						<label for="detail" class="col-sm-2 control-label">游戏描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="detail" value="${MfbGood.detail}" name="detail" placeholder="请输入游戏描述">
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">游戏创建时间</label>
						<div class="col-sm-10">
							<p class="form-control-static" id="createTime">
						<fmt:formatDate value="${MfbGood.createTime}" pattern="yyyy-MM-dd"/>
							 </p>
						</div>
					</div>
						<div class="form-group">
						<label class="col-sm-2 control-label">游戏更新时间</label>
						<div class="col-sm-10">
							<p class="form-control-static">
							<fmt:formatDate value="${MfbGood.updateTime}" pattern="yyyy-MM-dd"/>
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