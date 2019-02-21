<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
		<title>网上书店</title>
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
		<link href="css/bookstore.css" rel="stylesheet" type="text/css"/>		
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


	<div style="margin: 120px;padding: 120px;border:1px;border-style: solid;background-color: white;">
		<div class="right">
			<div class="right_box">
				<font color="green" size="5">图书添加成功</font>
				<form action="browseBookPaging.action" method="get">
					<input type="hidden" value="<s:property value="#session.catalogid"/>">
					<input type="image" src="./picture/continue.gif"/>
					
				</form>
				<a href="showCart.jsp"><img alt="" src="./picture/count.gif"/></a>
			</div>
		</div>
	</div>
	
	 <!-- Subscribe -->
	<div class="wthree-subscribef-w3ls">
		<div class="container">
			<h3 class="tittlef-agileits-w3layouts white-clrf">与我们联系</h3>
			<p class="white-clrf">发送邮件给我们</p>
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
		<div class="col-md-4 footer_w3layouts_gridf">
				
			<div class="clearfix"> </div>
			
		</div>
	</div>
	<div class="footer-wthree-copyf">
		<div class="container">
			<div class="addressf-agileits-w3layouts">
				<p><span class="fa fa-map-marker" aria-hidden="true"></span>GUANGDONG UNIVERSITY OF SCIENCE AND TECHNOLEGY.</p>
			</div>
			<p>Copyright &copy; 2018.Company name All rights reserved.</p>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //footer -->	
  </body>
</html>
