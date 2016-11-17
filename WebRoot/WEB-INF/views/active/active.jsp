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
    <jsp:include page="templete/nav.jsp"></jsp:include>

<div class="container">
<div class="twelve columns"  style="width:700px; ">
					<div class="post">
						<!-- Post Title & Meta -->
						<h2>${data[0].title }</h2>
						<div class="post-meta" >
							Posted by <span class="meta-author"><a href="#">${data[0].uid }</a></span>
							<span class="meta-date">on ${data[0].time }</span>
							<span class="meta-tags"><a href="#"><!-- Web Design. --></a></span>
							<span class="meta-comment"><a href="#">${value.modifyTime }</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Image -->
						<div class="post-image-wrap">
							<a href="<%=basePath %>public/system/images/portfolio/surfing-big.jpg" data-gal="prettyPhoto" class="post-image">
								<img src="<%=basePath %>${data[0].cover}" alt="">
								<div class="link-overlay fa fa-search"></div>
							</a>
						</div>
						<!-- End Image -->
						<!-- Post Content -->
						<div class="post-content">
							<p>${data[0].introduce }
							</p>
							<!-- Blockquote -->
							<div class="blockquote">
								${data[0].ready }
							</div>
							<!-- End Blockquote -->
							<p>
								${data[0].context }
							</p>
							
						</div>
						<div style="width:100%">
							<div style="float:right">
							<a href="#">￥${data[0].price }/人</a>
							&nbsp;&nbsp;&nbsp;
							<a href="#" class="big green"><i class="fa fa-thumbs-up"></i>赞(559)</a>
							&nbsp;&nbsp;&nbsp;
							<a href="<%=basePath %>payment_vif.html?activeId=${data[0].id}" class="btn green"><i class="fa fa-hand-o-right"></i>我要参与</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<!-- End Post Content -->
						<!-- About the Author -->
						<div class="about-user">
							<div class="about-user-ava">
								<img src="<%=basePath %>public/system/images/team/team-5.jpg" alt="">
							</div>
							<div class="about-user-bio">
								<div class="about-user-name"> About the Author </div>
								<p>
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
									laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
									ullamcorper suscipit lobortis nisl

									<a href="#" class="link">@john_doe</a>
								</p>
							</div>
						</div>
						<!-- End About the Author -->

						<!-- Comments -->
						<div class="title">
							<h3 class="lined">Responses (4)</h3>
						</div>
						<div class="comments">
							<!-- Comment 1 -->
							<div class="comment">
								<!-- Comment 1 Avatar -->
								<div class="comment-ava">
									<img src="<%=basePath %>public/system/images/team/team-5.jpg" alt="">
								</div>
								<!-- End Comment 1 Avatar -->
								<div class="comment-content">
									<!-- Comment 1 Meta -->
									<div class="comment-meta">
										<div>
											<a href="#" class="comment-name">Admin</a>
										</div>
										<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
										<span class="btn-reply"><b>reply</b></span>
									</div>
									<!-- End Comment 1 Meta -->
									<!-- Comment 1 Content -->
									<p>
										 At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.
									</p>
									<!-- End Comment 1 Content -->
								</div>
								<!-- End Comment 1 -->
								<!-- Comment 2 -->
								<div class="comment comment-reply">
									<!-- Comment 2 Avatar -->
									<div class="comment-ava">
										<img src="<%=basePath %>public/system/images/ava.jpg" alt="">
									</div>
									<!-- End Comment 2 Avatar -->
									<div class="comment-content">
										<!-- Comment 2 Meta -->
										<div class="comment-meta">
											<div>
												<a href="#" class="comment-name">Mike</a>
											</div>
											<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
											<span class="btn-reply"><b>reply</b></span>
										</div>
										<!-- End Comment 2 Meta -->
										<!-- Comment 2 Content -->
										<p>
											 Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.
										</p>
										<!-- End Comment 2 Content -->
									</div>
									<!-- End Comment 2 -->
									<!-- Comment 3 -->
									<div class="comment comment-reply">
										<!-- Comment 3 Avatar -->
										<div class="comment-ava">
											<img src="<%=basePath %>public/system/images/team/team-6.jpg" alt="">
										</div>
										<!-- End Comment 3 Avatar -->
										<div class="comment-content">
											<!-- Comment 3 Meta -->
											<div class="comment-meta">
												<div>
													<a href="#" class="comment-name">Jane</a>
												</div>
												<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
												<span class="btn-reply"><b>reply</b></span>
											</div>
											<!-- End Comment 3 Meta -->
											<!-- Comment 3 Content -->
											<p>
												 Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias.
											</p>
											<!-- End Comment 3 Content -->
										</div>
									</div>
									<!-- End Comment 3 -->
								</div>
							</div>
							<!-- Comment 4 -->
							<div class="comment">
								<!-- Comment 4 Avatar -->
								<div class="comment-ava">
									<img src="<%=basePath %>public/system/images/ava.jpg" alt="">
								</div>
								<!-- End Comment 4 Avatar -->
								<div class="comment-content">
									<!-- Comment 4 Meta -->
									<div class="comment-meta">
										<div>
											<a href="#" class="comment-name">Sarah</a>
										</div>
										<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
										<span class="btn-reply"><b>reply</b></span>
									</div>
									<!-- End Comment 4 Meta -->
									<!-- Comment 4 Content -->
									<p>
										 Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas.
									</p>
									<!-- End Comment 4 Content -->
								</div>
							</div>
							<!-- End Comment 4 -->
						</div>
						<!-- Comment Form -->
						<div class="comment-form">
							<div class="title">
								<h3 class="headline">Leave a reply</h3>
							</div>

		<!--
		#########################################
			Comment Form / Start -
		#########################################
		-->
		<div class="comment-form">
			<div class="form">
			
				<div class="form-holder">
					<div class="notification canhide"></div>	
										
					<form id="frm_contact" name="frm_contact" action="#" method="post">
						
						<div class="field">
							<label for="name">Name <span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform" type="text" id="name" name="name" />
							</div>  
						</div>
						
						<div class="field">
							<label for="email">E-mail Address <span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform" type="text" id="email" name="email" />
							</div>  
						</div>
						
						<div class="field">
							<label for="name">Website</label>
							<div class="inputs">
								<input class="aweform" type="text" id="name" name="name" />
							</div>  
						</div>
						
						<div class="field">
							<label for="message">Comment <span class="required">*</span></label>
							<div class="inputs">
								<textarea class="aweform" id="message" name="message" rows="30" cols="5"></textarea>
							</div>  
						</div>
						
						<div class="form-submit">
							<button type="submit" id="submit" name="submit">Submit</button>   
						</div>
						
					</form>
					
				</div>
				
			</div>
			
		</div>
		<!--
		#########################################
			- Ajax Contact Form / End -
		#########################################
		-->
							
						</div>
						<!-- End Comment Form -->
					</div>
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