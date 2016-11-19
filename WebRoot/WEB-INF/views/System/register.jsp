<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>爱生活注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="周末,出去玩,爱生活" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="<%=basePath %>public/source/login/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<%=basePath %>public/source/login/css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath %>public/source/login/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="<%=basePath %>public/source/login/js/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath %>public/source/login/js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
    <a href="index.html"><img src="<%=basePath %>public/static/images/logo.png" alt="love life"/></a>
  </div>
  <h2 class="form-heading">爱生活-注册</h2>
  <form class="form-signin app-cam" action="register_chk.html">
      <p>请输入你的个人信息</p>
      <div class="col-sm-12">
      	   <div class="" >
	         <input name="nickname" type="text" class="form-control1" placeholder="输入账号" required>
	      </div>
	      <div class="radios">
	        <label for="radio-01" class="label_radio">
	            <input type="radio" checked="" name="gender"> 男 
	        </label>
	        <label for="radio-02" class="label_radio" >
	            <input type="radio" name="gender"> 女
	        </label>
		  </div>
		  <div class="" >
	     	<input name="pwd" type="password" class="form-control1" placeholder="密码">
	     </div>
	     
      </div>
	    <div class="col-sm-8">
	  	  <div class="" >
			<input name="phone" type="text" class="form-control1" placeholder="输入手机号码"  autofocus required>
			</div>
		</div>
	<div class="col-sm-4">
		 <button class="btn btn-lg btn-success1 btn-block">获取</button>
	</div>
	<div class="col-sm-6">
		<input name="code" class="form-control1"> 
	</div>
	<div class="col-sm-6 registration" >后台不验证验证码！</div>
      <label class="checkbox-custom check-success">
     <!--      <input type="checkbox" value="agree this condition" id="checkbox1"> <label for="checkbox1">I agree to the Terms of Service and Privacy Policy</label>
      --> 
      </label>
     <div class="col-sm-12"><p></p></div>
      <div class="col-sm-offset-3 col-sm-6">
      	<button class="btn btn-lg btn-success btn-block " type="submit">注册</button>
      	<span class="registration" style="color:red">${msg }</span>
      </div>
      <div class="col-sm-12 registration">
         已经注册现在去
          <a class="" href="login.html">
              登录
          </a>
      </div>
      <script type="text/javascript">
      	$("input[name='nickname']").blur(function(){
      		var parent = $(this).parent();
      		$.ajax({
      			url:'nickname_chk.html?nickname='+$("input[name='nickname'").val(),
      			success:function(data){
	      			var data = eval('('+data+')');
	      			console.log(data);
	      			if(data.message == 1){
	      				parent.attr("class","has-success");
	      			
	      			}else{
	      				parent.attr("class","has-error");
	       			}
      		}});
      	})
      	$("input[name='pwd']").blur(function(){
      		var parent = $(this).parent();
      		if($(this).val().length < 6 || $(this).val().length > 13){
      			parent.attr("class","has-error");
      		}else{
      			parent.attr("class","has-success");
      		}
      	})
      	$("input[name='phone']").blur(function(){
      		var parent = $(this).parent();
      		if($(this).val().length != 11){
      			parent.attr("class","has-error");
      		}else{
      			parent.attr("class","has-success");
      		}
      	})
      	
      </script>
  </form>
   <div class="col-sm-12 copy_layout login register">
      <p>Copyright &copy; 2016.Company name All rights reserved.</p>
   </div>
</body>
</html>
