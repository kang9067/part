<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="<%=basePath %>public/source/login/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath %>public/source/login/css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath %>public/source/login/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="<%=basePath %>public/source/login/js/jquery.min.js"></script>
<!----webfonts--->
<!-- <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
 --><!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath %>public/source/login/js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
    <a href="index.html"><img src="<%=basePath %>public/source/login/images/logo.png" alt=""/></a>
  </div>
  <h2 class="form-heading">login</h2>
  <div class="app-cam">
	  <form action="login_chk.html" method="post">
		<input name="nickname" type="text" class="text" value="nickname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'nickname';}">
		<input name="pwd" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
		<div> ${msg} </div>
		<div class="submit"><button type="submit" class="btn btn-lg btn-success btn-block" >登录</div>
		<div class="login-social-link">
			<label>其它方式登录</label>
       		<div>
       		
       		<span id="qqLoginBtn" ></span>
       		</div>
       		<script type="text/javascript" 
       		src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="1444" 
       		data-redirecturi="http://192.168.1.129:9998/login-success.html" charset="utf-8" >
       		</script>

			<script type="text/javascript">
			 QC.Login({
			  btnId : "qqLoginBtn",//插入按钮的html标签id
			  size : "C_S",//按钮尺寸
			  scope : "get_user_info",//展示授权，全部可用授权可填 all
			  display : "pc"//应用场景，可选
			 });
			</script>
        </div>
		<ul class="new">
			<li class="new_left"><p><a href="#">忘记密码 ?</a></p></li>
			<li class="new_right"><p class="sign">新用户 ?<a href="register.html" style="color:red;font-size:20px;"> 注册</a></p></li>
			<div class="clearfix"></div>
		</ul>
	</form>
  </div>
   <div class="copy_layout login">
      <p>Copyright &copy; 2015.Company name All rights reserved。</p>
   </div>
</body>
</html>
