<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<jsp:include page="../../templete/admin_js_css.jsp"/>

<title>添加用户 - H-ui.admin v2.3</title>
<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="page-container">
	<form 
	<c:if test='${empty data}'>
		action="add_chk.html"
	</c:if>
	<c:if test='${!empty data}'>
		action="edit_chk.html"
	</c:if>
method="post" class="form form-horizontal" id="form-member-add">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" value="${data[0].id }" id="id" name="id">
				<input type="text" class="input-text" value="${data[0].nickname }" placeholder="" id="nickname" name="nickname">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<select name="gender" value="${data[0].gender }">
					<option value='1'>男</option>
					<option value='2'>女</option>
					<option value='0'>保密</option>
				</select>
				<!-- <div class="radio-box">
					<input name="gender" type="radio" id="sex-1" value="1"
					 checked 
					 >
					<label for="sex-1">男</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-2" name="gender" value="2">
					<label for="sex-2">女</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="sex-3" name="gender" value="0">
					<label for="sex-3">保密</label>
				</div> -->
			</div>
		</div>
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="mobile" name="mobile">
			</div>
		</div> -->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>邮箱：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="@" name="email" id="email" value="${data[0].email }">
			</div>
		</div>
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">附件：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" multiple name="file-2" class="input-file">
				</span> </div>
		</div> -->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">所在城市：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select class="select" size="1" name="city" value="${data[0].city }">
					<option value="0" selected>请选择城市</option>
					<option value="1">北京</option>
					<option value="2">上海</option>
					<option value="3">广州</option>
				</select>
				</span>
			 </div>
		</div>
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-3">备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="beizhu" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" onKeyUp="textarealength(this,100)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
			</div>
		</div> -->
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
				<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			</div>
		</div>
	</form>
</article>

<jsp:include page="../../templete/admin_js_css_footer.jsp"/>

<!--请在下方写此页面业务相关的脚本--> 
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	/* $("input[type='submit']").click(function(e){
		console.log($("form").serialize());
		$.ajax({url:'add_chk.html',data:$("form").serialize(),success:function(data){
			console.log(data);
			if(data){
				alert("添加成功!");
				window.parent.location.reload(); 
			}else{
				alert("天假失败!");
				//var index = parent.layer.getFrameIndex(window.name);
				//parent.$('.btn-refresh').click();
				//parent.layer.close(index); 
			}
		}});
		
		return false;
	}) */
	$("#form-member-add").validate({
		rules:{
			nickname:{
				required:true,
				minlength:2,
				maxlength:16
			},
			gender:{
				required:true,
			},
		/* 	mobile:{
				required:true,
				isMobile:true,
			}, */
			email:{
				required:true,
				email:true,
			},
			/* uploadfile:{
				required:true,
			}, */
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			$.ajax({url:$("form").attr("action"),data:$("form").serialize(),
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			type:"post",
			success:function(data){
				console.log(data);
				if(data){
					//alert("添加成功!");
					window.parent.location.reload(); 
				}else{
					//alert("天假失败!");
					//var index = parent.layer.getFrameIndex(window.name);
					//parent.$('.btn-refresh').click();
					//parent.layer.close(index); 
				}
			}});
			//window.parent.location.reload(); 
		}
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>