<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>购物车结算</title>
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
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/carts.css">

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
	</div>
<section class="cartMain">
	<s:set var="items" value="#session.cart.items"/>
	<s:if test="#items.size!=0">
	<div class="cartMain_hd">
		
		<ul class="order_lists cartTop">
			<li class="list_chk">
				<!--所有商品全选-->
				<input type="checkbox" id="all" class="whole_check">
				<label for="all"></label>
				全选
			</li>
			<li class="list_con">商品信息</li>
			<li class="list_info">商品参数</li>
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<div class="cartBox">
		
		<div class="order_content">
			 <s:iterator value="#items">
				 
			<ul class="order_lists">
				<li class="list_chk">
					<input type="checkbox" id="checkbox_2" class="son_check" name="check"  value="<s:property value="value.book.bookid"/>">
					<label for="checkbox_2"></label>
				</li>
				<li class="list_con">
					<div class="list_img"><a href="javascript:;"><img src="./picture/<s:property value="value.book.picture"/>" alt=""></a></div>
					<div class="list_text"><a href="javascript:;"><s:property value="value.book.bookname"/></a></div>
				</li>
				<li class="list_info">
					<p>规格：默认</p>
					<p>尺寸：16*16*3(cm)</p>
				</li>
				<li class="list_price">
					<p class="price">￥980</p>
				</li>
				<li class="list_amount">
					<div class="amount_box">
						<a href="javascript:;" class="reduce reSty">-</a>
						<input type="text" value="<s:property value="value.quantity"/>" class="sum">
						<a href="javascript:;" class="plus">+</a>
					</div>
				</li>
				<li class="list_sum">
					<p class="sum_price">￥<s:property value="value.book.price"/></p>
				</li>
				<li class="list_op">
					<p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
				</li>
			</ul>
			</s:iterator>
			
			
		</div>
	</div>
	<!--底部-->
	<div class="bar-wrapper">
		<div class="bar-right">
			<div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
			<div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
			<div class="calBtn"><a href="javascript:;">结算</a></div>
		</div>
	</div>
	</s:if>
				<s:else>
					对不起，您还没有选购图书！
				</s:else>
</section>
<section class="model_bg"></section>
<section class="my_model">
	<p class="title">删除宝贝<span class="closeModel">X</span></p>
	<p>您确认要删除该宝贝吗？</p>
	<div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/carts.js"></script>


</body>
</html>
