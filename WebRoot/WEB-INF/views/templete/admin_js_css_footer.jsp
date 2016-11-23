<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   

<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="<%=basePath %>public/admin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath %>public/admin/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer /作为公共模版分离出去--> 