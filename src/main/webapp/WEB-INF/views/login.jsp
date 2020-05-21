<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商城管理后台服务界面</title>
<!--<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>  -->
<!--  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/static/css/bootstrap.min.css">
<script type="text/javascript"	src="${pageContext.request.contextPath}/lib/static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"	src="${pageContext.request.contextPath}/lib/static/js/bootstrap.min.js"></script>

<style>
.form-bg{
    background: #00b4ef;
}
.form-horizontal{
    background: #fff;
    padding-bottom: 40px;
    border-radius: 15px;
    text-align: center;
}
.form-horizontal .heading{
    display: block;
    font-size: 35px;
    font-weight: 700;
    padding: 35px 0;
    border-bottom: 1px solid #f0f0f0;
    margin-bottom: 30px;
}
.form-horizontal .form-group{
    padding: 0 40px;
    margin: 0 0 25px 0;
    position: relative;
}
.form-horizontal .form-control{
    background: #f0f0f0;
    border: none;
    border-radius: 20px;
    box-shadow: none;
    padding: 0 20px 0 45px;
    height: 40px;
    transition: all 0.3s ease 0s;
}
.form-horizontal .form-control:focus{
    background: #e0e0e0;
    box-shadow: none;
    outline: 0 none;
}
.form-horizontal .form-group i{
    position: absolute;
    top: 12px;
    left: 60px;
    font-size: 17px;
    color: #c8c8c8;
    transition : all 0.5s ease 0s;
}
.form-horizontal .form-control:focus + i{
    color: #00b4ef;
}
.form-horizontal .fa-question-circle{
    display: inline-block;
    position: absolute;
    top: 12px;
    right: 60px;
    font-size: 20px;
    color: #808080;
    transition: all 0.5s ease 0s;
}
.form-horizontal .fa-question-circle:hover{
    color: #000;
}
.form-horizontal .main-checkbox{
    float: left;
    width: 20px;
    height: 20px;
    background: #11a3fc;
    border-radius: 50%;
    position: relative;
    margin: 5px 0 0 5px;
    border: 1px solid #11a3fc;
}
.form-horizontal .main-checkbox label{
    width: 20px;
    height: 20px;
    position: absolute;
    top: 0;
    left: 0;
    cursor: pointer;
}
.form-horizontal .main-checkbox label:after{
    content: "";
    width: 10px;
    height: 5px;
    position: absolute;
    top: 5px;
    left: 4px;
    border: 3px solid #fff;
    border-top: none;
    border-right: none;
    background: transparent;
    opacity: 0;
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
}
.form-horizontal .main-checkbox input[type=checkbox]{
    visibility: hidden;
}
.form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
    opacity: 1;
}
.form-horizontal .text{
    float: left;
    margin-left: 7px;
    line-height: 20px;
    padding-top: 5px;
    text-transform: capitalize;
}
.form-horizontal .btn{
    float: right;
    font-size: 14px;
    color: #fff;
    background: #00b4ef;
    border-radius: 30px;
    padding: 10px 25px;
    border: none;
    text-transform: capitalize;
    transition: all 0.5s ease 0s;
}
@media only screen and (max-width: 479px){
    .form-horizontal .form-group{
        padding: 0 25px;
    }
    .form-horizontal .form-group i{
        left: 45px;
    }
    .form-horizontal .btn{
        padding: 10px 20px;
    }
}
</style>
 <script type="text/javascript">
			$(function(){
				$("#loginBtn").click(function(){
					var username = $("#username").val();//取值
					var password = $("#password").val();
					if(!username){
						alert("用户名必填!");
						$("#username").focus();//获取焦点
						return ;
					}
					if(!password){
						alert("密码必填!");
						$("#password").focus();//获取焦点
						return ;
					}
					var param = {"username":username,"password":password};
					var dataj=JSON.stringify(param);
	
               $.ajax({
	               	type:"post",
	               	url:"${pageContext.request.contextPath}/login.do",
	               	contentType:"application/json;charset=utf-8",
	               	data:dataj,
	               	datatype:"json",
	               	success:function(data){
	               		if(data.status==0){
	               		window.location.href="adminindex.do";
	               		}else{
	               			alert("用户名或密码错误或权限不够");
	               		}
	               		},
	               	async:true
	               });
				});
			});
		</script> 
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
    <!--  -->
        <div class="col-md-offset-3 col-md-6">
        <!-- action="${pageContext.request.contextPath}/login.do" method="post" -->
            <form class="form-horizontal" role="form"  >
                <span class="heading">管理员登录</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="username" placeholder="用户名或电话" name="username">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="password" placeholder="密　码" name="password">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span>  <span class="text">${warn}</span>
                    <button type="button" class="btn btn-default" id="loginBtn" type="submit">登录</button>
                </div>
            </form>
        </div>
    </div> 
    
</div>
</body>
</html>