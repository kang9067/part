<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="bg-light lter b-b wrapper-md">
  <h1 class="m-n font-thin h3">活动</h1>
</div>
<div class="wrapper-md">
  <div ng-controller="FormDemoCtrl">
    <div class="row">
      <div class="col-sm-12">
        <form id="form" class="form-validation" enctype="multipart/form-data" 
        method="post"
        action="/users/push_active_chk.html" >
          <div class="panel panel-default">
            <div class="panel-heading"><span class="h4">发布活动</span>
            </div>
            <div class="panel-body">
              <p class="text-muted">活动信息.</p>                        
                <div class="form-group pull-in clearfix">
                <div class="col-sm-12">
	                <div class="col-sm-3">
	                    <label>活动标题</label>
	                    <input name='title'  type="text" class="form-control" placeholder="起个响亮的名字吧" ng-model="contact.name" required >
	                 </div>
                </div>
                <div class="col-sm-12">
                  <div class="col-sm-6">
                   <label>活动地址</label>
                    <input name='address'  type="text" class="form-control" placeholder="如张家界大峡谷" ng-model="contact.name" required >
                  </div>
                  </div>
                 <div class="col-sm-12">
                  <div class="col-sm-2">
                    <label>价格</label>
                    <input name="price" type="number" class="form-control" placeholder="0" ng-model="contact.email" required >
                  </div>
                </div>
               </div>
                 <div class="col-sm-12">
                  <label>活动的简介</label>
                  <textarea name="introduce" class="form-control" rows="6" placeholder="活动的简介"></textarea>
                </div>
                <div class="col-sm-12">
                  <label>活动准备工作(需要具备的条件)</label>
                  <textarea name="ready" class="form-control" rows="6" placeholder="活动准备工作(需要具备的条件)"></textarea>
                </div>
                  <div class="col-sm-12">
                  <label>活动的内容</label>
                  <textarea name="context" class="form-control" rows="6" placeholder="活动的内容"></textarea>
                </div>
                 <div class="col-sm-12">
                 	
                  	 <div class="col-sm-6">
                    <label>报名地址</label>
                    <input name='enterAddress'  type="text" class="form-control" placeholder="报名地址" ng-model="contact.name" required >
                  </div>
                 </div>
                  <div class="col-sm-12">
                  <div class="col-sm-6">
                    <label>报名时间</label>
                    <input name='enterTime'  type="date" class="form-control" placeholder="报名时间" ng-model="contact.name" required >
                 	</div>
                  </div>
                   <div class="col-sm-12">
                    <div class="col-sm-6">
                     <label>封面</label>
                  	<!-- 图片上传 -->
					<input name="imgCover" type="file"> 
					<!-- 图片结束-->
					</div>
					</div>
            </div>
            <footer class="panel-footer text-right bg-light lter">
              <button type="submit" class="btn btn-success">发布</button>
            </footer>
          </div>
        </form>
      </div>
    </div>
</div>
<!-- <script type="text/javascript" src="/public/users/js/controllers/imgcrop.js"></script> -->