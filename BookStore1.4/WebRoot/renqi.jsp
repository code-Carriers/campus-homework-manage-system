<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>人气好书推荐</title>
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta Tags -->
	<!-- Style-sheets -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Bootstrap-css -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Pop-up -->
	<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
	<!--// banner-css -->
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<!--// shop-css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //common-css -->
	<link href="css/blog_2.css" rel="stylesheet" type='text/css' media="all" />
	<!--// blog-css -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- // Font-awesome-css -->
	<!-- Web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //Web-fonts -->

</head>

<body>
	<!-- header -->
	<div class="header-w3layouts" id="home">
		<!-- header-top -->
		<div class="header_topw3layouts_bar">
			<div class="container">
				<div class="header_agileits_left">
					<ul>
						<li><i class="fa fa-phone" aria-hidden="true"></i> +(010) 221 918 811</li>
						<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>
					</ul>
				</div>
				<s:if test="#session.user">
					<div class="header_right">
						<a href="logout.action"><span>&nbsp;&nbsp;退出&nbsp;&nbsp;</span></a>
					</div>
				</s:if>
				<s:else>
					<div class="header_right">
						<a href="#" class="log" data-toggle="modal" data-target="#myModal">登录</a>
					</div>
				</s:else>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--// header-top -->
		<!-- header-middle -->
		<div class="header-middle">
			<div class="container">
				<div class="logof-w3-agile">
					<h1><a href="index.jsp">online bookstores</a></h1>
				</div>
				<div class="searchf-w3-agileits-headr">
					<form action="searchBook.action" method="post">
						<input type="search" name="Search" placeholder="搜索图书" required="">
						<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
					</form>
				</div>
				<div class="cart-mainf">
					<div class="educart educart2 cart cart box_1">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart">
							<input type="hidden" name="display" value="1">
							<button class="top_edu_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
						</form>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--// header-middle -->
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
			</div>

			<div class="collapse navbar-collapse js-navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown mega-dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">商品分类 <span class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									<li class="dropdown-header">计算机</li>
									<li><a href="browseBookPaging.action">人工智能</a></li>
									<li><a href="browseBookPaging.action">程序设计</a></li>
									<li><a href="browseBookPaging.action">图像处理</a></li>
									<li><a href="browseBookPaging.action">办公软件</a></li>
								</ul>
							</li>
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									<li class="dropdown-header">小说</li>
									<li><a href="browseBookPaging.action">悬疑/推理</a></li>
									<li><a href="browseBookPaging.action">世界名著</a></li>
									<li><a href="browseBookPaging.action">历史</a></li>
									<li><a href="browseBookPaging.action">情感</a></li>
								</ul>
							</li>
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									<li class="dropdown-header">文学</li>
									<li><a href="browseBookPaging.action">当代随笔</a></li>
									<li><a href="browseBookPaging.action">名家作品</a></li>
									<li><a href="browseBookPaging.action">文集</a></li>
									<li><a href="browseBookPaging.action">纪实文学</a></li>
								</ul>
							</li>
							
						</ul>
					</li>
					<li class="dropdown mega-dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">新书推荐<span class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									
								</ul>
							</li>
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									
									<li class="dropdown-header"><a href="xinshu.jsp">7月新书</a></li>
									<li><a href="xinshu.jsp">技术学习</a></li>
									<li><a href="xinshu.jsp">时事热点</a></li>
									<li><a href="xinshu.jsp">市场营销</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="dropdown mega-dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">热销图书<span class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									
								</ul>
							</li>
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									<li class="dropdown-header"><a href="renqi.jsp">总榜</a></li>
									<li><a href="renqi.jsp">童书推荐</a></li>
									<li><a href="renqi.jsp">悬疑小说</a></li>
									<li><a href="renqi.jsp">成功/励志</a></li>
								</ul>
							</li>
						</ul>
					</li>
					
					<li><a href="showCart.jsp">购物车</a></li>
					<li><a href="searchOrder.action">我的订单</a></li>
				</ul>
			</div>
			<!-- //nav-collapse -->
		</nav>
	</div>
	<!-- banner -->
	<div class="innerf-banner">
	</div>
	<!--//banner -->
	<!-- Page details -->
	<div class="services-agile-breadcrumb">
		<div class="inner_breadcrumb">
			<ul class="short_ls">
				<li>
					<a href="index.html">Home</a>
					<span>| |</span>
				</li>
				<li>人气好书</li>
			</ul>
		</div>
	</div>
	<!-- //Page details -->

	<!-- blog page-1 -->
	<div class="banner_bottom">
		<div class="container">
			<h3 class="tittle">人气好书</h3>
			<div class="inner_sec_info">
				<!-- left side -->
				<div class="col-md-8 blog_section">
					<div class="blog_img-3">
						<div class="blog_con">
							<a href="single.html">
								<img src="images/banner1.jpg" alt=" " class="img-responsive">
							</a>
							<div class="blog_w3_info">
								<h4>6th - Jan 2018</h4>
								<h5>
									<a href="single.html">Sed ut perspiciatis unde omnis iste.</a>
								</h5>
								<ul class="blog_list">
									<li>
										<a href="#">
											<span class="fa fa-user" aria-hidden="true"></span>
											Doe Joes</a>
										<i>|</i>
									</li>
									<li>
										<a href="#">
											<span class="fa fa-heart" aria-hidden="true"></span>
											20</a>
										<i>|</i>
									</li>
									<li>
										<a href="#">
											<span class="fa fa-tag" aria-hidden="true"></span>
											8</a>
									</li>

								</ul>
								<p>Pellentesque eleifend ultricies tellus,varius risus, id dignissim sapien velit id felis ac cursus eros.</p>
							</div>
						</div>
					</div>
					<div class="blog_img-3">
						<div class="blog_con">
							<a href="single.html">
								<img src="images/banner4.jpg" alt=" " class="img-responsive">
							</a>
							<div class="blog_w3_info">
								<h4>7th - Feb 2018</h4>
								<h5>
									<a href="single.html">Sadipisci velit, sed quia non numquam.</a>
								</h5>
								<ul class="blog_list">
									<li>
										<a href="#">
											<span class="fa fa-user" aria-hidden="true"></span>
											Jan Mark</a>
										<i>|</i>
									</li>
									<li>
										<a href="#">
											<span class="fa fa-heart" aria-hidden="true"></span>
											10</a>
										<i>|</i>
									</li>
									<li>
										<a href="#">
											<span class="fa fa-tag" aria-hidden="true"></span>
											5</a>
									</li>

								</ul>
								<p>Pellentesque eleifend ultricies tellus,varius risus, id dignissim sapien velit id felis ac cursus eros.</p>
							</div>
						</div>
					</div>
					<div class="blog_img-3">
						<div class="blog_con">
							<a href="single.html">
								<img src="images/banner2.jpg" alt=" " class="img-responsive">
							</a>
							<div class="blog_w3_info">
								<h4>13th - Feb 2018</h4>
								<h5>
									<a href="single.html">Sadipisci velit, sed quia non numquam.</a>
								</h5>
								<ul class="blog_list">
									<li>
										<a href="#">
											<span class="fa fa-user" aria-hidden="true"></span>
											Marko Koe</a>
										<i>|</i>
									</li>
									<li>
										<a href="#">
											<span class="fa fa-heart" aria-hidden="true"></span>
											17</a>
										<i>|</i>
									</li>
									<li>
										<a href="#">
											<span class="fa fa-tag" aria-hidden="true"></span>
											6</a>
									</li>

								</ul>
								<p>Pellentesque eleifend ultricies tellus,varius risus, id dignissim sapien velit id felis ac cursus eros.</p>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<!-- pagination -->
					<nav class="paging1">
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">«</span>
								</a>
							</li>
							<li>
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">4</a>
							</li>
							<li>
								<a href="#">5</a>
							</li>
							<li>
								<a href="#" aria-label="Next">
									<span aria-hidden="true">»</span>
								</a>
							</li>
						</ul>
					</nav>
					<!-- //pagination -->
				</div>
				<!-- //left side -->
				<!-- right side -->
				<div class="col-md-4 event-right wthree-event-right">
					<div class="event-right1 mainsmkinfo-event-right1">
						<div class="search1 mainsmkits-search1">
							<form action="#" method="post">
								<input type="search" name="Search" placeholder="Search here..." required="">
								<input type="submit" value="Search">
							</form>
						</div>
						<div class="categories textmks-categories">
							<h3>Categories</h3>
							<ul>
								<li>
									<i class="fa fa-check" aria-hidden="true"></i>
									<a href="single.html">At vero eos et accusamus iusto</a>
								</li>
								<li>
									<i class="fa fa-check" aria-hidden="true"></i>
									<a href="single.html">Sed ut perspiciatis unde omnis</a>
								</li>
								<li>
									<i class="fa fa-check" aria-hidden="true"></i>
									<a href="single.html">Accusantium doloremque lauda</a>
								</li>
								<li>
									<i class="fa fa-check" aria-hidden="true"></i>
									<a href="single.html">Vel illum qui dolorem fugiat quo</a>
								</li>
								<li>
									<i class="fa fa-check" aria-hidden="true"></i>
									<a href="single.html">Quis autem vel eum repreh</a>
								</li>
								<li>
									<i class="fa fa-check" aria-hidden="true"></i>
									<a href="single.html">Neque porro quisquam est qui</a>
								</li>
							</ul>
						</div>
						<div class="posts textmk-posts">
							<h3>Our Events</h3>
							<div class="posts-grids mm-posts-grids">
								<div class="posts-grid mm-posts-grid">
									<div class="posts-grid-left mm-posts-grid-left">
										<a href="single.html">
											<img src="images/mf2.jpg" alt=" " class="img-responsive" />
										</a>
									</div>
									<div class="posts-grid-right mm-posts-grid-right">
										<h4>
											<a href="single.html">Sed ut perspiciatis unde omni</a>
										</h4>
										<ul class="wthree_blog_events_list">
											<li>
												<i class="fa fa-calendar" aria-hidden="true"></i>16/01/2018</li>
											<li>
												<i class="fa fa-user" aria-hidden="true"></i>
												<a href="single.html">Admin</a>
											</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="posts-grid mm-posts-grid">
									<div class="posts-grid-left mm-posts-grid-left">
										<a href="single.html">
											<img src="images/mf4.jpg" alt=" " class="img-responsive" />
										</a>
									</div>
									<div class="posts-grid-right mm-posts-grid-right">
										<h4>
											<a href="single.html">Neque porro quisquam qui</a>
										</h4>
										<ul class="wthree_blog_events_list">
											<li>
												<i class="fa fa-calendar" aria-hidden="true"></i>06/02/2018</li>
											<li>
												<i class="fa fa-user" aria-hidden="true"></i>
												<a href="single.html">Admin</a>
											</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="posts-grid mm-posts-grid">
									<div class="posts-grid-left mm-posts-grid-left">
										<a href="single.html">
											<img src="images/mf6.jpg" alt=" " class="img-responsive" />
										</a>
									</div>
									<div class="posts-grid-right mm-posts-grid-right">
										<h4>
											<a href="single.html">Nemo enim ipsam latem quia</a>
										</h4>
										<ul class="wthree_blog_events_list">
											<li>
												<i class="fa fa-calendar" aria-hidden="true"></i>07/02/2018</li>
											<li>
												<i class="fa fa-user" aria-hidden="true"></i>
												<a href="single.html">Admin</a>
											</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<div class="tags tags1 textmkayouts-tags">
							<h3>Recent Tags</h3>
							<ul>
								<li>
									<a href="single.html">Designs</a>
								</li>
								<li>
									<a href="single.html">Growth</a>
								</li>
								<li>
									<a href="single.html">Latest</a>
								</li>
								<li>
									<a href="single.html">Price</a>
								</li>
								<li>
									<a href="single.html">Tools</a>
								</li>
								<li>
									<a href="single.html">mainsmk</a>
								</li>
								<li>
									<a href="single.html">Category</a>
								</li>
								<li>
									<a href="single.html">Themes</a>
								</li>
								<li>
									<a href="single.html">Growth</a>
								</li>
								<li>
									<a href="single.html">mainsmk</a>
								</li>
								<li>
									<a href="single.html">Price</a>
								</li>
								<li>
									<a href="single.html">Tools</a>
								</li>
								<li>
									<a href="single.html">Business</a>
								</li>
								<li>
									<a href="single.html">Category</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- //right side -->
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //blog page-1 -->

	<!-- Subscribe -->
	<div class="wthree-subscribef-w3ls">
		<div class="container">
			<h3 class="tittlef-agileits-w3layouts white-clrf">Sign up for our Newsletter</h3>
			<p class="white-clrf">Recieve our latest news straight to your inbox</p>
			<div class="footer_w3layouts_gridf_right">

				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email address..." required="">
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
	<!--// Subscribe -->
	<!-- footer -->
	<div class="footer_agileinfo_topf">
		<div class="container">
			<div class="col-md-4 footer_w3layouts_gridf">
				<h2><a href="index.html">Grounding</a></h2>
				<p>Providing best coaching at affordable prices.</p>
			</div>
			<div class="col-md-4 footer_w3layouts_gridf">
				<nav>
					<ul class="footer_w3layouts_gridf_list">
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="courses.html">Courses</a>
						</li>
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="marketing.html">Marketing</a>
						</li>
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="development.html">Development</a>
						</li>
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="maths.html">Maths</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="col-md-4 footer_w3layouts_gridf">
				<nav>
					<ul class="footer_w3layouts_gridf_list">
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="business.html">Business</a>
						</li>
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="faq.html">Faq</a>
						</li>
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="tems.html">Terms & Conditions</a>
						</li>
						<li><span class="fa fa-angle-right" aria-hidden="true"></span>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="clearfix"> </div>
			<div class="w3ls-fsocial-grid">
				<h3 class="sub-w3ls-headf">Follow Us</h3>
				<div class="social-ficons">
					<ul>
						<li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
						<li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
						<li><a href="#"><span class="fa fa-google"></span>Google</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-wthree-copyf">
		<div class="container">
			<div class="addressf-agileits-w3layouts">
				<p><span class="fa fa-map-marker" aria-hidden="true"></span>Ehrenfeld Gutenbergstr. Cologne, Germany.</p>
			</div>
			<p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //footer -->


	<!-- js files -->

	<!-- Common js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!--// Common js -->

	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		edu.render();

		edu.cart.on('edu_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- Nav Js -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, true).slideDown("400");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, true).slideUp("400");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!--// Nav Js -->

	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<section>
					<div class="modal-body">
						<div class="loginf_module">
							<div class="module form-module">
								<div class="toggle"><i class="fa fa-times fa-pencil"></i>
									<div class="tooltip">Click Me</div>
								</div>
								<div class="form">
									<h3>Login to your account</h3>
									
									<form action="login.action" method="post">
										<input type="text" name="user.username" placeholder="Username" required="">
										<input type="password" name="user.password" placeholder="Password" required="">
										<input type="submit" value="Login">
									</form>
									<div class="cta"><a href="#">Forgot your password?</a></div>
								</div>
								<div class="form">
									<h3>Create an account</h3>
									<form action="register.action" method="post">
										<input type="text" name="user.username" placeholder="Username" required="">
										<input type="password" name="user.password" placeholder="Password" required="">
										<input type="text" name="user.sex" placeholder="sex" required="">
										<input type="text" name="user.age" placeholder="age" required="">
										<input type="submit" value="Register">
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function () {
			// Switches the Icon
			$(this).children('i').toggleClass('fa-pencil');
			// Switches the forms  
			$('.form').animate({
				height: "toggle",
				'padding-top': 'toggle',
				'padding-bottom': 'toggle',
				opacity: "toggle"
			}, "slow");
		});
	</script>
	<!-- //bootstrap-pop-up -->

	<!--pop-up-box -->
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //pop-up-box -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->

	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->

	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->

	<!-- js files -->

</body>

</html>