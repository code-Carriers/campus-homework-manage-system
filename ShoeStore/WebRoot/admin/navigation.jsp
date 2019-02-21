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
    
    <title>My JSP 'navigation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.left{float: left;
			  border-style: solid;
			  border-width: 1px;			
		}
		.left ul li{list-style: none;}
	</style>
  </head>
  
  <body>
    <div class="left">
    	<ul>
    		<li><b>用户管理</b></li>
    		<li><a href="query_user.action">所有用户</a></li>
    	</ul>
    	<ul>
    		<li><b>商品品牌管理</b></li>
    		<li><a href="query_brands.action">所有品牌</a></li>
    		<li><a href="admin/add_brands.jsp">添加品牌</a></li>
    		
    	</ul>
    	<ul>
    		<li><b>商品管理</b></li>
    		<li><a href="query_menshoe.action">所有男鞋</a></li>
    		<li><a href="query_womenshoe.action">所有女鞋</a></li>
    		<li><a href="query_kidshoe.action">所有童鞋</a></li>
    		<li><a href="query_sportshoe.action">所有运动鞋</a></li>
    		<li><a href="getBrands.action">添加鞋子</a></li>
    		
    	</ul>
    	<ul>
    		<li><b>订单管理</b></li>
    		<li><a href="query_order.action">全部订单</a></li>
    	</ul>
    </div>
  </body>
</html>
