<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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

	<jsp:include page="../templete/head.jsp"/> 
	<!-- Flexisel -->
    <script type="text/javascript" src="<%=basePath %>public/system/js/jquery.flexisel.js"></script>

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="<%=basePath %>public/system/images/favicon.ico">
	<link rel="apple-touch-icon" href="<%=basePath %>public/system/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=basePath %>public/system/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=basePath %>public/system/images/apple-touch-icon-114x114.png">

</head>
<body>

<%-- <jsp:include page="../templete/usersheader.jsp"/>   --%>

	<!-- Primary Page Layout
	================================================== -->
    
<jsp:include page="../templete/systemHeaderNav.jsp"/>    
    <!-- REVOLUTION SLIDER
	============================================= -->
	<div class="fullwidthbanner-container top-shadow">
		<div class="fullwidthbanner">
			<ul>
				<!-- Slide 1 -->
				<li data-transition="boxfade" data-slotamount="2" data-masterspeed="300">
				<!-- Main Image -->
				<img src="<%=basePath %>public/system/images/slider/Slider-1.jpg" alt="">
				<!-- End Main Image -->
				</li>
				<!-- End Slide 1 -->
				<!-- Slide 2 -->
				<li data-transition="boxfade" data-slotamount="3" data-masterspeed="300">
				<!-- Main Image -->
				<img src="<%=basePath %>public/system/images/slider/Slider-2.jpg" alt="">
				<!-- End Main Image -->
				</li>
				<!-- End Slide 2 -->
				<!-- Slide 3 -->
				<li data-transition="boxfade" data-slotamount="4" data-masterspeed="300">
				<!-- Main Image -->
				<img src="<%=basePath %>public/system/images/slider/Slider-3.jpg" alt="">
				<!-- End Main Image -->
				</li>
				<!-- End Slide 3 -->
				<!-- Slide 4 -->
				<li data-transition="boxfade" data-slotamount="5" data-masterspeed="300">
				<!-- Main Image -->
				<img src="<%=basePath %>public/system/images/slider/Slider-4.jpg" alt="">
				<!-- End Main Image -->
				</li>
				<!-- End Slide 4-->
			</ul>
		</div>
	</div>
	<!-- END REVOLUTION SLIDER
	============================================= -->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
<div class="container">

<div class="sixteen columns welcome">
<h3>Powerful &amp; responsive multi-purpose html5 template with lots of options.<br />
Your most important message or catchy phrase goes here.</h3>
</div>

<div class="separator"></div>

				<div class="four columns">
					<!-- Icon Box -->
					<div class="service">
						<a href="#"><i class="fa fa-desktop colored square"></i></a>
						<h3 class="centered"><a href="#" class="dark-link">Responsive Layouts</a></h3>
						<p class="centered">
                        Layouts that scale gracefully across varying screen sizes.
						</p>
					</div>
					<!-- End Icon Box -->
				</div>
				<div class="four columns">
					<!-- Icon Box -->
					<div class="service">
						<a href="#"><i class="fa fa-html5 colored square"></i></a>
						<h3 class="centered"><a href="#" class="dark-link">Feugait Nulla</a></h3>
						<p class="centered">
						Standards-compliant and cross-browser HTML/CSS code.
						</p>
					</div>
					<!-- End Icon Box -->
				</div>
				<div class="four columns">
					<!-- Icon Box -->
					<div class="service">
						<a href="#"><i class="fa fa-css3 colored square"></i></a>
						<h3 class="centered"><a href="#" class="dark-link">Praesent Luptatum</a></h3>
						<p class="centered">
                        Professional, clutter-free and aesthetically simple design.     
						</p>
					</div>
					<!-- End Icon Box -->
				</div>
				<div class="four columns">
					<!-- Icon Box -->
					<div class="service">
						<a href="#"><i class="fa fa-magic colored square"></i></a>
						<h3 class="centered"><a href="#" class="dark-link">Feugait Nulla Facilisi</a></h3>
						<p class="centered">
						CMS-driven websites that you can easily customize.
						</p>
					</div>
					<!-- End Icon Box -->
				</div>

<div class="clearfix"></div>

<div class="separator"></div>
				
	<div class="sixteen columns">
    <h4 class="headline">Latest Projects</h4>
    </div>

	<div class="four columns identity photography tehnology">
					<div class="work">
						<a href="#" class="work-image">
							<img src="<%=basePath %>public/system/images/portfolio/smiling.jpg" alt="">
							<div class="link-overlay fa fa-chevron-right"></div>
						</a>
						<a href="#" class="work-name">Smiling</a>
						<div class="tags">
							 Photography, Tehnology
						</div>
					</div>
				</div>
				<div class="four columns photography webdesign">
					<div class="work">
						<a href="<%=basePath %>public/system/images/portfolio/couple-big.jpg" data-gal="prettyPhoto" class="work-image">
							<img src="<%=basePath %>public/system/images/portfolio/couple.jpg" alt="">
							<div class="link-overlay fa fa-search"></div>
						</a>
						<a href="#" class="work-name">Couple</a>
						<div class="tags">
							 Photography, Webdesign
						</div>
					</div>
				</div>
				<div class="four columns identity">
					<div class="work">
						<a href="../../vimeo.com/67500403" data-gal="prettyPhoto" class="work-image">
							<img src="<%=basePath %>public/system/images/portfolio/beach.jpg" alt="">
							<div class="link-overlay fa fa-play"></div>
						</a>
						<a href="#" class="work-name">Beach</a>
						<div class="tags">
							 Identity
						</div>
					</div>
				</div>
				<div class="four columns identity">
					<div class="work">
						<a href="<%=basePath %>public/system/images/portfolio/surfing-big.jpg" data-gal="prettyPhoto" class="work-image">
							<img src="<%=basePath %>public/system/images/portfolio/surfing.jpg" alt="">
							<div class="link-overlay fa fa-search"></div>
						</a>
						<a href="#" class="work-name">Surfer</a>
						<div class="tags">
							 Identity
						</div>
					</div>
				</div>
			
<div class="clearfix"></div>
			
	<!-- begin promobox -->
	<div class="sixteen columns">
	    <div class="promo-box clearfix">
	        <div class="text">
	        <h3>Suspendisse Cursus Diam Quis Tortor Posuere Vehicula.</h3>
	        <p>Lorem ipsum dolor sit amet, cons adipiscing elit. Aenean commodo ligula eget dolor.</p>
	        </div>
	        <a class="btn big colored" href="#"><i class="fa fa-hand-o-right"></i>Button Text</a>
	    </div>	
	</div>	
    <!-- end promobox -->
			
<div class="separator"></div>
	
<!-- Our Clients
================================================== -->
	<div class="sixteen columns clients">
    <h4 class="headline">Our Clients</h4>

		<!-- Start brand carousel -->
			<ul id="flexiselDemo2">
            <li><img src="<%=basePath %>public/system/images/client1.png" alt="" /></li>
            <li><img src="<%=basePath %>public/system/images/client2.png" alt="" /></li>
            <li><img src="<%=basePath %>public/system/images/client3.png" alt= "" /></li>
            <li><img src="<%=basePath %>public/system/images/client4.png" alt= "" /></li>
            <li><img src="<%=basePath %>public/system/images/client5.png" alt= "" /></li>
            </ul>
            <div class="clearout"></div>
		<!-- End brand carousel -->
	    </div>	
				
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

<script type="text/javascript">

$(window).load(function() {
	$("#flexiselDemo2").flexisel({
		visibleItems: 5,
		animationSpeed: 1000,
		autoPlay: true,
		autoPlaySpeed: 3000,    		
		pauseOnHover: true,
		enableResponsiveBreakpoints: true,
    	responsiveBreakpoints: { 
    		portrait: { 
    			changePoint:480,
    			visibleItems: 1
    		}, 
    		landscape: { 
    			changePoint:640,
    			visibleItems: 2
    		},
    		tablet: { 
    			changePoint:768,
    			visibleItems: 3
    		}
    	}
    });
    
});
</script>
<!-- End Document
================================================== -->
</body>
</html>