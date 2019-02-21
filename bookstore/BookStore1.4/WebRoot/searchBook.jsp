<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta content="text/html" http-equiv="ContextType;character=gb2312" >
    <title>网上书店</title>
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
	<div class="content">
		<div class="left">
			<div class="list_box">
				<div class="list_bk">
					<s:action name="browseCatalog" namespace="/" executeResult="true"/>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="right_box">
				<s:set value="#request.requiredBooks" var="books"></s:set>
					<s:if test="#books.size()!=0">
					<font color="blue">所有符合条件的图书</font>
					<br>
					<s:iterator value="#books" var="book">
						<table width="600" border="0">
						<tr>
							<td width="200" align="center">
								<img src="./picture/<s:property value="#book.picture"/>" width="100"/>
							</td>
							<td valign="top" width="400">
								<table>
								<tr>
									<td>书名：<s:property value="#book.bookname"/><br></td>
								</tr>
								<tr>
									<td>价格：<s:property value="#book.price"/>元
											&nbsp;<img alt="" src="./picture/buy.gif">
									</td>
								</tr>	
								</table>
							</td>
						</tr>
						</table>
					</s:iterator>
				</s:if>
				<s:else>
					对不起，没有合适的图书！
				</s:else>
			</div>
		</div>
	</div>
  </body>
</html>
