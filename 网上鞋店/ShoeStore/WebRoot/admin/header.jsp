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
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.header{width:100%;
				background-color:#b4bccb;
		}
		
		p{color: green;}
	</style>
  </head>
  
  <body>
    <div class="header">
    	<div align="left">
    		<p><a href="indexAdmin.jsp"></a>鞋店后台管理        </p>
    	</div>
    	<div align="right">
    		<s:if test="#session.admin">
    			我的账号：<a href="#"><s:property value="#session.admin.username"/></a>
    			&nbsp;&nbsp;&nbsp;&nbsp;
    			<a href="logoutAdmin.action">退出</a>
    		</s:if>
    		<s:else>
    			<jsp:forward page="adminLogin.jsp"></jsp:forward>
    		</s:else>
    	</div>
    </div>
  </body>
</html>
