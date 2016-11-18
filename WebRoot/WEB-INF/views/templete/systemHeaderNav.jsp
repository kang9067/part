<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<header class="header">
<div class="container">
<div class="logos columns">
<h1 class="logo"><a href="index.html"><img src="<%=basePath %>public/system/images/logo.png" alt="EVOLVE" /></a></h1>
</div><!-- logo -->

<div class="twelve columns">
<nav class="main_menu">

<ul>
<li class="current_page_item">
<a href="index.html">
首页
<div class="sub">
Home
</div>
</a>
<ul>
<!-- <li><a href="index.html">Home Version 1</a></li>
<li><a href="index-2.html">Home Version 2</a></li>
<li><a href="index-3.html">Home Version 3</a></li>
<li><a href="index-4.html">Home Version 4</a></li>
<li><a href="index-5.html">Home Version 5</a></li>
<li><a href="index-6.html">Home Version 6</a></li><li><a href="http://www.weidea.net">More</a></li>
 --></ul>
</li>
<li>
<a href="/users/index.html">
个人中心
<div class="sub">
prosonal
</div>
</a>
<ul>
<!-- 
<li><a href="portfolio-1-column.html">1 Column</a></li>
<li><a href="portfolio-2-columns.html">2 Columns</a></li>
<li><a href="portfolio-3-columns.html">3 Columns</a></li>
<li><a href="portfolio-4-columns.html">4 Columns</a></li>
<li><a href="single-project-half.html">Single Project Half</a></li>
<li><a href="single-project-wide.html">Single Project Wide</a></li> 
-->
</ul>
</li>
<li>
<a href="about-us.html">
活动首页
<div class="sub">
active
</div>
</a>
<ul>
<!-- <li><a href="about-us.html">About Us</a></li>
<li><a href="about-us-2.html">About Us 2</a></li>
<li><a href="about-me.html">About Me</a></li>
<li><a href="services.html">Services</a></li>
<li><a href="services-2.html">Services 2</a></li>
<li><a href="meet-the-team.html">Meet The Team</a></li>
<li><a href="meet-the-team-2.html">Meet The Team 2</a></li>
<li><a href="faq.html">FAQ</a></li>
<li><a href="full-width-page.html">Full Width Page</a></li>
<li><a href="page-right-sidebar.html">Right Sidebar</a></li>
<li><a href="page-left-sidebar.html">Left Sidebar</a></li>
<li><a href="404-error-page.html">404 Error Page</a></li> -->
</ul>
</li>

<li>
<a href="/school/index.html">
校园专区
<div class="sub">
school
</div>
</a>
<ul>
<!-- <li><a href="tabs.html">Tabs</a></li>
<li><a href="buttons.html">Buttons</a></li>
<li><a href="dropcaps.html">Dropcaps</a></li>
<li><a href="accordion-toggles.html">Accordion & Toggles</a></li>
<li><a href="grid-columns.html">Grid Columns</a></li>
<li><a href="images.html">Images</a></li>
<li><a href="video.html">Video</a></li> -->
</ul>
</li>

<li>
<a href="portfolio-2-columns.html">
关于我们
<div class="sub">
about us
</div>
</a>
<ul>
<!-- <li><a href="portfolio-1-column.html">1 Column</a></li>
<li><a href="portfolio-2-columns.html">2 Columns</a></li>
<li><a href="portfolio-3-columns.html">3 Columns</a></li>
<li><a href="portfolio-4-columns.html">4 Columns</a></li>
<li><a href="single-project-half.html">Single Project Half</a></li>
<li><a href="single-project-wide.html">Single Project Wide</a></li> -->
</ul>
</li>

 <li>
<a href="blog-large.html">
意见建议
<div class="sub">
Suggestion
</div>
</a>
<ul>
<li><a href="blog-large.html">Large Image</a></li>
<li><a href="blog-medium.html">Medium Image</a></li>
<li><a href="blog-post.html">Single Post</a></li>
</ul>
</li> 

<li>
<a href="contact.html">
加入我们
<div class="sub">
Join Us
</div>
</a>
</li>
</ul>

</nav><!-- navigation -->
</div>
<div class="clearfix"></div>
</div>
</header><!-- header -->
