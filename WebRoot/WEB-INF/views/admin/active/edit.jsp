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
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" class="input-text" value="${data[0].id }" id="id" name="id">
				<input type="text" class="input-text" value="${data[0].title }" placeholder="" id="title" name="title">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>地址：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
					<input type="text" class="input-text" value="${data[0].address }" placeholder="" id="address" name="address">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>内容：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea rows="4" cols="" name="context" class="textarea"  >${data[0].context }
				</textarea>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>报名地址：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
					<input type="text" class="input-text" value="${data[0].enterAddress }" placeholder="" id="address" name="address">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>报名时间：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
					
			<input  name="enterTime" value="${data[0].enterTime }" type="text" id="enterTime" class="input-text Wdate" style="width:180px;">
			
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>开始时间：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
				<input  name="time" value="${data[0].time }" type="date" id="datemin" class="input-text Wdate" style="width:180px;">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>活动介绍：</label>
					<div class="formControls col-xs-8 col-sm-9">
				<textarea   rows="4" cols="" name="introduce" class="textarea"  >${data[0].introduce }
				</textarea>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>报名费用：</label>
			<div class="formControls col-xs-8 col-sm-9 skin-minimal">
					<input  type="text" class="input-text" value="${data[0].price }" placeholder="" id="price" name="price">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>活动准备：</label>
					<div class="formControls col-xs-8 col-sm-9">
				<textarea rows="4" cols="" name="ready" class="textarea"  >${data[0].ready }
				</textarea>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>活动类型：</label>
					<div class="formControls col-xs-8 col-sm-9 skin-minimal">
					<select name="type" value="${val.type }">
						<option value="0">社会</option>
						<option value="1">校园</option>
					</select>
			</div>
		</div>
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