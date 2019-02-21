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
    
    <title>My JSP 'details.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <jsp:include page="header.jsp"></jsp:include>
      <!-- details -->
<div class="details">
	<p>我的订单</p>
<div align="center">
	<s:if test="#session.userOrders.size!=0">
	<table border="1px" cellpadding="0" cellspacing="0" bordercolor="green">
		<tr>
			<td>商品号</td>
			<td>尺寸</td>
			<td>售价</td>
			<td>数量</td>
			<td>总计</td>
			<td>下单时间</td>
			<td>发货地址</td>
			<td>订单状态</td>
			<td>操作</td>
		</tr>
		<s:iterator value="#session.userOrders" var="order">
			<tr>
				<td><s:property value="#order.shoe.sid"/>&nbsp; 
					<img src="images/<s:property value="#order.shoe.picture"/> " width="100px" alt=""/>
				</td>
				<td>XL</td>
				<td><s:property value="#order.shoe.price"/></td>
				<td><s:property value="#order.number"/></td>
				<td><s:property value="#order.total"/></td>
				<td><s:property value="#order.orderDate"/></td>
				<td><s:property value="#order.address"/></td>
				<td><s:property value="#order.status"/></td>
				<td><a href="cancel_order?oid=<s:property value="#order.oid"/>"><button>取消订单</button></a> </td>
			</tr>
		</s:iterator>
	</table>
	</s:if>
	<s:else>
		<p>您还没有下单</p><a href="index.jsp">去下单</a>
	</s:else>
</div>
</div>
  </body>
</html>
