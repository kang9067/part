<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="<%=basePath %>public/system/css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>public/system/css/settings.css" media="screen"/>
   <!-- JS
  ================================================== -->
    <script src="<%=basePath %>public/system/js/jquery-1.8.2.min.js" type="text/javascript"></script> <!-- jQuery -->
	<script src="<%=basePath %>public/system/js/jquery.easing.1.3.js" type="text/javascript"></script> <!-- jQuery easing -->
	<script src="<%=basePath %>public/system/js/modernizr.custom.js" type="text/javascript"></script> <!-- Modernizr -->
    <script src="<%=basePath %>public/system/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script> <!-- tabs, toggles, accordion -->
    <script src="<%=basePath %>public/system/js/custom.js" type="text/javascript"></script> <!-- jQuery initialization -->
   <!-- Responsive Menu -->
    <script src="<%=basePath %>public/system/js/jquery.meanmenu.js"></script> 
    <script>
    jQuery(document).ready(function () {
    jQuery('header nav').meanmenu();
    });
    </script>
    
    
	
	<!-- Revolution Slider -->
	<script src="<%=basePath %>public/system/js/jquery.themepunch.plugins.min.js"></script>
	<script src="<%=basePath %>public/system/js/jquery.themepunch.revolution.min.js"></script>
	<script src="<%=basePath %>public/system/js/revolution-slider-options.js"></script>
	
	
	<!-- Prety photo -->
	<script src="<%=basePath %>public/system/js/jquery.prettyPhoto.js"></script>
	<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto();
		});
	</script>
	
	
	<!-- Tooltip -->
    <script src="<%=basePath %>public/system/js/tooltip.js"></script>