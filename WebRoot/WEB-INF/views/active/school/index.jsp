<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
	
	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>EVOLVE</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="<%=basePath %>public/system/css/style.css">

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
	
	<!-- Prety photo -->
	<script src="<%=basePath %>public/system/js/jquery.prettyPhoto.js"></script>
	<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto();
		});
	</script>

	<!-- Tooltip -->
    <script src="<%=basePath %>public/system/js/tooltip.js"></script>

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="<%=basePath %>public/system/images/favicon.ico">
	<link rel="apple-touch-icon" href="<%=basePath %>public/system/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=basePath %>public/system/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=basePath %>public/system/images/apple-touch-icon-114x114.png">

</head>
<body>

	<!-- Primary Page Layout
	================================================== -->
<jsp:include page="../templete/nav.jsp"/>    

<div class="container">
<div class="sixteen columns page-title">
<div class="eight columns alpha">
<h3> <span>Blog Medium Images</span> </h3>
</div>
<div class="eight columns omega">
<nav class="breadcrumbs">
<ul>
<li>You are here:</li>
<li>
<a href="#">Home</a>
</li>
<li>Blog Medium Images</li>
</ul>
</nav>
</div>
<div class="clearfix"></div>
</div><!-- page-title -->
</div><!-- container -->

<div class="container">
				
				<div class="twelve columns" style="width:700px">
					<c:forEach items="${data }" var="value">
					<!-- Post 1 -->
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
						<h2><a href="blog-post.html" class="dark-link">${value.title }</a></h2>
						<div class="post-meta">
							 由 <span class="meta-author"><a href="#">${value.uid }</a>发布</span>
							<span class="meta-date">${value.createTime }</span>
							<span class="meta-tags"><a href="#"><%-- ${value.aTId } --%></a></span>
							<span class="meta-comment"><a href="#">${value.modifyTime }</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Post Image -->
						<div class="four columns alpha post-image-wrap">
							<a href="blog-post.html" class="post-image">
								<img src="<%=basePath %>${value.cover}" alt="">
								<div class="link-overlay fa fa-chevron-right"></div>
							</a>
						</div>
						<!-- End Post Image -->
						<div class="eight columns omega">
							<p>
							<!-- 	 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit...
							 -->
							 	${value.introduce }
							 </p>
							<a class="btn colored" href="more_${value.id }.html">查看<i class="fa fa-chevron-circle-right" style="margin: 0 0 0 7px;"></i></a>
						</div>
        				<div class="clearfix"></div>
					</div>
					</c:forEach>
					<!-- End Post 1 -->
					<%-- <!-- Post 2 -->
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
						<h2><a href="blog-post.html" class="dark-link">Temporibus Autem Quibusdam et Aut Officiis</a></h2>
						<div class="post-meta">
							 Posted by <span class="meta-author"><a href="#">Admin</a></span>
							<span class="meta-date">on Jan 12, 2013</span>
							<span class="meta-tags"><a href="#">Web Design.</a></span>
							<span class="meta-comment"><a href="#">4 comments</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Post Image -->
						<div class="four columns alpha post-image-wrap">
							<a href="<%=basePath %>public/system/images/portfolio/flowers-big.jpg" data-gal="prettyPhoto" class="post-image">
								<img src="<%=basePath %>public/system/images/blog/bm-2.jpg" alt="">
								<div class="link-overlay fa fa-search"></div>
							</a>
						</div>
						<!-- End Post Image -->
						<div class="eight columns omega">
							<p>
								 Quisque ligulas ipsum, euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor...
							</p>
							<a class="btn colored" href="blog-post.html">More<i class="fa fa-chevron-circle-right" style="margin: 0 0 0 7px;"></i></a>
						</div>
        				<div class="clearfix"></div>
					</div>
					<!-- End Post 2 -->
					<!-- Post 3 -->
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
						<h2><a href="blog-post.html" class="dark-link">Omnis Voluptas Assumenda Est</a></h2>
						<div class="post-meta">
							 Posted by <span class="meta-author"><a href="#">Admin</a></span>
							<span class="meta-date">on Jan 12, 2013</span>
							<span class="meta-tags"><a href="#">Web Design.</a></span>
							<span class="meta-comment"><a href="#">4 comments</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Post Image -->
						<div class="four columns alpha post-image-wrap">
							<a href="../../vimeo.com/67500403" data-gal="prettyPhoto" class="post-image">
								<img src="<%=basePath %>public/system/images/blog/bm-1.jpg" alt="">
								<div class="link-overlay fa fa-play"></div>
							</a>
						</div>
						<!-- End Post Image -->
						<div class="eight columns omega">
							<p>
								 Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam...
							</p>
							<a class="btn colored" href="blog-post.html">More<i class="fa fa-chevron-circle-right" style="margin: 0 0 0 7px;"></i></a>
						</div>
        				<div class="clearfix"></div>
					</div>
					<!-- End Post 3 -->
					<!-- Post 4 -->
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
						<h2><a href="blog-post.html" class="dark-link">Et Harum Quidem Rerum Facilis</a></h2>
						<div class="post-meta">
							 Posted by <span class="meta-author"><a href="#">Admin</a></span>
							<span class="meta-date">on Jan 12, 2013</span>
							<span class="meta-tags"><a href="#">Web Design.</a></span>
							<span class="meta-comment"><a href="#">4 comments</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Post Image -->
						<div class="four columns alpha post-image-wrap">
							<a href="blog-post.html" class="post-image">
								<img src="<%=basePath %>public/system/images/blog/bm-4.jpg" alt="">
								<div class="link-overlay fa fa-chevron-right"></div>
							</a>
						</div>
						<!-- End Post Image -->
						<div class="eight columns omega">
							<p>
								 Quisque ligulas ipsum, euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula. Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor...
							</p>
							<a class="btn colored" href="blog-post.html">More<i class="fa fa-chevron-circle-right" style="margin: 0 0 0 7px;"></i></a>
						</div>
        				<div class="clearfix"></div>
					</div>
					<!-- End Post 4 --> --%>
					<!-- Pagination -->
					<div class="pagination">
						<div>
							 Page 1 of 4
						</div>
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
					</div>
					<!-- End Pagination -->
				</div>

				<!-- Sidebar -->
				<div class="four columns sidebar">
					<!-- Search Widget -->
					<div class="blog-search">
						<form class="form" action="/">
							<div class="input-wrap">
								<i class="fa fa-search"></i>
								<input type="text" placeholder="Search..">
							</div>
						</form>
					</div>
					<!-- End Search Widget -->
					<!-- Categories List -->
					<h3>Categories</h3>
					<ul class="categories">
						<li><a href="#">Voluptas <b class="count">(28)</b></a></li>
						<li><a href="#">Recusandae <b class="count">(16)</b></a></li>
						<li><a href="#">Maiores <b class="count">(12)</b></a></li>
					</ul>
					<!-- End Categories List -->
					<!-- Recent Posts -->
					<h3>Recent Posts</h3>
					<ul class="recent-post">
						<li><a href="#">At vero eos et accusamus</a></li>
						<li><a href="#">Et harum quidem rerum</a></li>
						<li><a href="#">Necessitatibus saepe eveniet</a></li>
					</ul>
					<!-- End Recent Posts -->
					<!-- Latest Projects -->
					<h3 style="margin-bottom: 20px;">Latest Projects</h3>
					<div class="latest-project">
						<div class="latest-project-item">
							<a href="#"><img src="<%=basePath %>public/system/images/portfolio/rp-1.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="<%=basePath %>public/system/images/portfolio/rp-2.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="<%=basePath %>public/system/images/portfolio/rp-3.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="<%=basePath %>public/system/images/portfolio/rp-4.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="<%=basePath %>public/system/images/portfolio/rp-5.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="<%=basePath %>public/system/images/portfolio/rp-6.jpg" alt=""></a>
						</div>
					</div>
					<!-- End Latest Project -->
					<!-- Twitter Widget -->
					<h3>Twitter Widget</h3>
					<div class="twitter">
						<ul>
							<li>
								<span>Et harum quidem rerum facilis est et expedita distinctio <a href="#" class="link">http://twitter.com</a></span>
								<span class="twit-date">Jan 7, 2013</span>
							</li>
							<li>
								<span>Nam libero tempore, cum soluta nobis est eligendi :) <a href="#" class="link">http://twitter.com</a></span>
								<span class="twit-date">Jan 7, 2013</span>
							</li>
						</ul>
					</div>
					<!-- End Twitter Widget -->
				</div>
				<!-- End Sidebar -->
				
   				<div class="clearfix"></div>
				
</div><!-- container -->

	<footer class="footer">
    <div class="container">
	<div class="footer-top clearfix">
	<div class="four columns">
	<h3>About Us</h3>
	<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
    <p>Vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui.</p>
	</div>
	<div class="four columns">
						<h3>Latest Tweets</h3>
						<div class="twitter">
							<ul>
								<!-- Twitter Message 1 -->
								<li>
									<span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem <a href="#" class="link">http://twitter.com</a></span>
									<span class="twit-date">Jan 7, 2013</span>
								</li>
								<!-- Twitter Message 2 -->
								<li>
									<span>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aliquid :) <a href="#" class="link">http://twitter.com</a></span>
									<span class="twit-date">Jan 7, 2013</span>
								</li>
							</ul>
						</div>
</div>
<div class="four columns">
<h3>Flickr Stream</h3>
						<div class="latest-project">
							<div class="latest-project-item">
								<a href="#"><img src="<%=basePath %>public/system/images/elements/rp-1.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="<%=basePath %>public/system/images/elements/rp-2.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="<%=basePath %>public/system/images/elements/rp-3.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="<%=basePath %>public/system/images/elements/rp-4.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="<%=basePath %>public/system/images/elements/rp-5.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="<%=basePath %>public/system/images/elements/rp-6.jpg" alt=""></a>
							</div>
						</div>
</div>
<div class="four columns">
						<h3>Contact Information</h3>
						<ul class="list contact" style="margin-bottom: 15px;">
							<li class="contact-address"><i class="fa fa-map-marker"></i><span>103088. Ut wisi enim ad minim veniam, quis nostrud.</span></li>
							<li class="contact-mail"><i class="fa fa-envelope"></i><a class="link" href="#">mail@mail.com</a></li>
							<li class="contact-phone"><i class="fa fa-phone"></i><span>+1 (229) 991-22-11</span></li>
							<li class="contact-address"><i class="fa fa-clock-o"></i><span>Monday-Friday: 9:<sup>00</sup> - 18:<sup>00</sup><br>
							Saturday: 10:<sup>00</sup> - 17:<sup>00</sup><br>
							Sunday: closed</span>
							</li>
						</ul>
		
<div class="tooltips">			
			<ul class="social-icons-footer">
				<li><a href="#" data-rel="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Google+"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
			</ul>
</div>

</div>
	</div><!-- footer-top -->
	</div>

	<div class="container">
	<div class="footer-bottom clearfix">
	<div class="eight columns">
	<p>Copyright &copy; 2014 <a href="#">alphawd</a>. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>.</p>
	</div>
	<div class="eight columns">
	<nav class="footer-nav">
<ul>
<li>
<a class="first" href="index.html">Home</a>
/
</li>
<li>
<a href="#">Shortcodes</a>
/
</li>
<li>
<a href="portfolio-2-columns.html">Portfolio</a>
/
</li>
<li>
<a href="blog-large.html">Blog</a>
/
</li>
<li>
<a href="contact.html">Contact</a>
</li>
</ul>
</nav>
</div>
</div><!-- footer-bottom -->
</div>
	
</footer><!-- footer -->

<!-- End Document
================================================== -->
</body>
</html>