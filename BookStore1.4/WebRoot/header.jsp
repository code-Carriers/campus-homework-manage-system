<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Home </title>
	<!-- Meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Metga-tags -->

	<!-- Styleshets -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Bootstrap-css -->
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<!--// Responsive-tabs -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Pop-up -->
	<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
	<!--// banner-css -->
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<!--// shop-css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- common-css -->
	<link rel="stylesheet" href="css/client.css" type="text/css" media="all" />
	<!-- // client-css -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- // Font-awesome-css -->
	<!--// Styleshets -->

	<!-- Online-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:300,500,600,700,800" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<!--// Online-fonts -->

</head>
  
  <body>
    <!-- header -->
	<div class="header" id="home">
		<!-- header-top -->
		<div class="header_topw3layouts_bar">
			<div class="container">
				<div class="header_agileits_left">
					<ul>
						<li>我的账号名：<s:property value="#session.user.username"/></li>
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
				<!-- <div class="cart-mainf">
					<a class="shop" href="shop.html">去选购</a>
				</div> -->
				<div class="cart-mainf">
					<div class="educart educart2 cart cart box_1">
						<form action="showCart.jsp" method="post" class="last">
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
									<li><a href="browseBookPaging.action?catalogid=1">人工智能</a></li>
									<li><a href="browseBookPaging.action?catalogid=1">程序设计</a></li>
									<li><a href="browseBookPaging.action?catalogid=1">图像处理</a></li>
									<li><a href="browseBookPaging.action?catalogid=1">办公软件</a></li>
								</ul>
							</li>
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									<li class="dropdown-header">小说</li>
									<li><a href="browseBookPaging.action?catalogid=2">悬疑/推理</a></li>
									<li><a href="browseBookPaging.action?catalogid=2">世界名著</a></li>
									<li><a href="browseBookPaging.action?catalogid=2">历史</a></li>
									<li><a href="browseBookPaging.action?catalogid=2">情感</a></li>
								</ul>
							</li>
							<li class="col-md-3 col-sm-4 col-xs-6">
								<ul>
									<li class="dropdown-header">文学</li>
									<li><a href="browseBookPaging.action?catalogid=3">当代随笔</a></li>
									<li><a href="browseBookPaging.action?catalogid=3">名家作品</a></li>
									<li><a href="browseBookPaging.action?catalogid=3">文集</a></li>
									<li><a href="browseBookPaging.action?catalogid=3">纪实文学</a></li>
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
			<!-- /.nav-collapse -->
		</nav>
	</div>
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				<li data-target="#myCarousel" data-slide-to="4" class=""></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="container">
						<div class="carousel-caption">
						
						
						</div>
					</div>
				</div>
				<div class="item item2">
					<div class="container">
						<div class="carousel-caption">
							<p>Marketing</p>
							<h3>Change your thoughts for a <span>better you.</span></h3>
						</div>
					</div>
				</div>
				<div class="item item3">
					<div class="container">
						<div class="carousel-caption">
							<p>Development</p>
							<h3>Simple ways to beat <span>procrastination.</span></h3>
						</div>
					</div>
				</div>
				<div class="item item4">
					<div class="container">
						<div class="carousel-caption">
							<p>Business</p>
							<h3>Modernizing, virtualizing your <span>business!</span></h3>
						</div>
					</div>
				</div>
				<div class="item item5">
					<div class="container">
						<div class="carousel-caption">
							<p>Maths</p>
							<h3>Achieve More with Grounding <span> Coaching Sessions.</span></h3>
						</div>
					</div>
				</div>
			</div>
			<!-- Arrows -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="fa fa-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="fa fa-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
			<!-- //Arrows -->
		</div>
	<!--//banner -->
	
	
	
	<!-- js -->

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

	<!-- reviews -->
	<script>
		function blinker() {
			$('.blinking').fadeOut(500);
			$('.blinking').fadeIn(500);
		}
		setInterval(blinker, 1000);
	</script>
	<script>
		function cycle($item, $cycler) {
			setTimeout(cycle, 2000, $item.next(), $cycler);

			$item.slideUp(1000, function () {
				$item.appendTo($cycler).show();
			});
		}
		cycle($('#cycler div:first'), $('#cycler'));
	</script>
	<!--// reviews -->

	<!-- responsive-tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!-- //responsive-tabs -->

	<!-- Carousel Auto-Cycle -->
	<script>
		$(document).ready(function () {
			$('.carousel').carousel({
				interval: 6000
			})
		});
	</script>
	<!-- // Carousel Auto-Cycle -->

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
									<div class="tooltip">切换</div>
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
										<input type="text" name="user.sex" placeholder="sex">
										<input type="text" name="user.age" placeholder="age">
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
	
	
  </body>
</html>
