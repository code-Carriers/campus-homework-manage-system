<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var total=$("#subtotal").text();
			total=parseFloat(total)+11;
			$("#total").text(total);
			$("#number").change(function(){
				var price=parseFloat($("#price").text());
				var number=parseInt($("#number").val());
				var subtotal=price*number;
				$("#subtotal").text(subtotal);
				$("#total").text(subtotal+11);
			})
		})
	</script>
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
  <div class="container">
<div class="main">
	<div class="shoping_bag">
		<h4><img src="images/small.jpg">my shopping shoe / <span> 11 item</span></h4>
		<ul class="s_art">
			<li><img src="images/art1.png"></li>
			<li><span> 11 item</span></li>
		</ul>
		<div class="clearfix"></div>
	</div>
	<s:set value="#session.oneshoe" var="shoe"></s:set>
	<form action="buy.action" method="post">
			<input type="hidden" name="sid" value="<s:property value="#shoe.sid"/>">
			
	<div class="shoping_bag1">
		<div class="shoping_left">
			
			<div class="shoping1_of_1">
				<img src="images/<s:property value="#shoe.picture"/>"  class="img-responsive" alt="" />
			</div>
			<div class="shoping1_of_2">
				<h4><a href="#"><s:property value="#shoe.shoename"/> </a> </h4>
				<span>size <b>xl</b>&nbsp;&nbsp; qty <b>1</b> | code :1175</span>
				<ul class="s_icons">
					<li><a href="#"><img src="images/s_icon1.png" alt=""></a></li>
					<li><a href="#"><img src="images/s_icon2.png" alt=""></a></li>
					<li><a href="#"><img src="images/s_icon3.png" alt=""></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="shoping_right">
			<p>Price: &nbsp;<span> Rs.<span id="price"> <s:property value="#shoe.price"/></span></span></p>
		</div>
		<div class="shoping_right">
			<p>Number: &nbsp;<span><input type="text" id="number" name="number" value="1" size="2"> </span></p>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="shoping_bag1">
		<div class="shoping_left">
			<h2><a href="#"><img src="images/gift.jpg">gift wrap </a> <span> for rs. 25</span></h2>
		</div>
		<div class="shoping_right">
			<p>sub total &nbsp;<span> Rs. <span id="subtotal"><s:property value="#shoe.price"/></span></span></p>
			<p>vat collected &nbsp;<span> Rs. 11</span></p>
			<p>delivery &nbsp;<a href="#">free</a>&nbsp;<span> Rs. 0</span></p>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="shoping_bag1">
		<div class="shoping_left">
			<h2><img src="images/login.jpg">Delivery Address 
			<span><input type="text" size="40" name="address"></span></h2>
		</div>
		<div class="shoping_right">
			<p>coupon discount &nbsp;<span class="color"> Rs. 0</span></p>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="shoping_bag2">
		<div class="shoping_left">
				<input style="background-color: red;font-size: 25px;"  type="submit" value="order">
		</div>
		<div class="shoping_right">
			<p class="tot">total &nbsp;<span class="color"> Rs. <span id="total">1</span></span></p>
		</div>
		<div class="clearfix"></div>
	</div>
	</form>
</div>
</div>
<!-- footer -->
	<div class="footer">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	</div>
<!-- footer -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
