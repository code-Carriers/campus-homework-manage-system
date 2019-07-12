<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校园教学服务</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>

  </head>
  
  <body>
  	<section id="container" >
  	 	<jsp:include page="header.jsp"/>
    	<jsp:include page="sidebar.jsp"/>
    	<!--main content start-->
     	<section id="main-content">
     		 <section class="wrapper">
     			<div style="font-size: 20px;padding: 20px;">
     				<p>班级管理       /  班级答疑</p>
     			</div>
     			<a href="admin/query_class.jsp"><button  style="font-size: 20px;">返回班级</button></a>
     			<div align="center">
     				<s:if test="#session.classQuestion.size!=0">
     				<table class="admin-table">
     					<tr>
     						<td>提问者</td>
     						<td>问题</td>
     						<td>教师</td>
     						<td>解答</td>
     						<td>班级</td>
     					</tr>
  	   					<s:iterator value="#session.classQuestion" var="question">
     						<tr>
     							<td><s:property value="#question.student.name"/></td>
     							<td><s:property value="#question.question"/></td>
     							<td><s:property value="#question.teacher.name"/></td>
     							<td><s:property value="#question.answer"/></td>
     							<td><s:property value="#question.courseclass.name"/></td>
     						</tr>
     						
     					</s:iterator>
     				
  	   				</table>	
     				</s:if>
     				<s:else>
     					<div class="no-doc"><p>没有数据</p></div>
     				</s:else>
     			</div>
     		 </section>
     	</section>
     	<!--main content end-->
  	</section>
   
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>

			
    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>
  </body>
</html>
