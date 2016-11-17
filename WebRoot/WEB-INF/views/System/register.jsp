<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
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
  <h2 class="form-heading">Register</h2>
  <form class="form-signin app-cam" action="register_chk.html">
      <p>请输入你的个人信息</p>
      <input name="name" type="text" class="form-control1" placeholder="姓名" autofocus="">
      <input name="city" type="text" class="form-control1" placeholder="所在城市(请精确到市级)" autofocus="">
      <input name="email" type="email" class="form-control1" placeholder="邮箱" autofocus="">
      
      <input name="addr" type="text" class="form-control1" placeholder="详细地址" autofocus="">
      <div class="radios">
        <label for="radio-01" class="label_radio">
            <input type="radio" checked="" name="gender"> 男
        </label>
        <label for="radio-02" class="label_radio" >
            <input type="radio" name="gender"> 女
        </label>
	  </div>
	  <p> 请输入你的账户信息</p>
      <input name="nickname" type="text" class="form-control1" placeholder="输入账号" autofocus="">
      <input name="pwd" type="password" class="form-control1" placeholder="密码">
      <!-- <input name="repwd" type="password" class="form-control1" placeholder="zai"> -->
      <label class="checkbox-custom check-success">
     <!--      <input type="checkbox" value="agree this condition" id="checkbox1"> <label for="checkbox1">I agree to the Terms of Service and Privacy Policy</label>
      --> </label>
      <button class="btn btn-lg btn-success1 btn-block" type="submit">注册</button>
      <div class="registration">
          Already Registered.
          <a class="" href="login.html">
              Login
          </a>
      </div>
      <script type="text/javascript">
      	var flags = [1,1];
      	$("input[name='nickname']").blur(function(){
      		$.ajax({
      			url:'nickname_chk.html?nickname='+$("input[name='nickname'").val(),
      			success:function(data){
	      			var data = eval('('+data+')');
	      			console.log(data);
	      			if(data.message == 1){
	      				flags[1] = 0;
	      				alert("可以被注册");
	      			}else{
	      				flags[1] = 1;
	      				alert("已经被注册");
	       			}
      		}});
      	})
      	$("input[name='email']").blur(function(){
      		
      		$.ajax({
      			url:'email_chk.html?email='+$("input[name='email'").val(),
      			success:function(data){
	      			var data = eval('('+data+')');
	      			console.log(data);
	      			if(data.message){
	      				flags[0] = 0;
	      				alert("可以被注册");
	      			}else{
	      				flags[0] = 1;
	      				alert("已经被注册");
	      			}
      		}});
      	})
      	$("input[type='submit']").click(function(){
      		return flags[0] + flags[1] == 0;
      	})
      </script>
  </form>
   <div class="copy_layout login register">
      <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
   </div>
</body>
</html>
