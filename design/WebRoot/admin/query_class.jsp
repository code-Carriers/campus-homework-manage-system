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
     				<a>班级管理</a>
     			</div>
     			<div align="center">
     				<a href="getAllTeacher"><button style="font-size: 20px">添加班级</button></a>
     				<table class="admin-table">
     					<tr>
     						<td>班名</td>
     						<td>教师</td>
     						<td>班级成员</td>
     						<td>班级作业</td>
     						<td>班级公告</td>
     						<td>班级疑惑</td>
     						<td>删除</td>
     					</tr>
  	   					<s:iterator value="#session.classes" var="class">
     						<tr>
     							<td><s:property value="#class.name"/></td>
     							<td><s:property value="#class.teacher.name"/></td>
     							<td><a href="classNumber.action?classid=<s:property value="#class.classid"/>">
     								<button>查看</button></a>
     							</td>
     							<td><a href="classWork.action?classid=<s:property value="#class.classid"/>">
     								<button>查看</button></a>
     							</td>
     							<td><a href="classAnnounce.action?classid=<s:property value="#class.classid"/>">
     								<button>查看</button></a>
     							</td>
     							<td><a href="classQuestion.action?classid=<s:property value="#class.classid"/>">
     								<button>查看</button></a>
     							</td>
     							<td><a href="delete_class.action?classid=<s:property value="#class.classid"/>">
     								<button onclick="javascript:return confirm('您确认要删除吗？');">删除</button></a>
     							</td>
     						</tr>
     						
     					</s:iterator>
     				
  	   				</table>	
     				<div  align="center" style="margin: 25px;padding: 25px;font-size: 20px;">
     				<s:set value="#session.pager" id="pager"/>
						<s:if test="#pager.hasFirst">
							<a href="query_class.action?currentPage=1">首页</a>
						</s:if>
						<s:if test="#pager.hasPrevious">
							<a href="query_class.action?currentPage=<s:property value="#pager.currentPage-1"/>">
							上一页
							</a>
						</s:if>
						<s:if test="#pager.hasNext">
							<a href="query_class.action?currentPage=<s:property value="#pager.currentPage+1"/>">
							下一页
							</a>
						</s:if>
						<s:if test="#pager.hasLast">
				   	 		<a href="query_class.action?currentPage=<s:property value="#pager.totalPage"/>">
							尾页
							</a>
						</s:if>
						当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
					</div>
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
