<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
     			<div style="font-size: 20px;padding: 20px;"> <a>班级管理</a>&nbsp;/&nbsp;<a>班级列表</a><br></div>
     			<div class="row">
				<div style="font-size:20px;">
					<span>我的班级</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span><a href="student/joinClass.jsp">加入班级</a></span>
				</div>
				<div class="container" align="center">
					<h2>我的班级列表</h2>
					<s:if test="#session.classbystu.size!=0">
					<table border="1px" style="font-size:18;">
						<tr>
							<td>班级</td>
							<td>教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
     						<td>创建时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
     						<td>操作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>查看详情</td>
						</tr>
						<s:iterator value="#session.classbystu" var="class">
						<tr>
							<td><a href="stuClassDetail?classid=<s:property value="#class.classid"/>" >
								<s:property value="#class.name"/>
								</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td><s:property value="#class.teacher.name"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
							<%-- <fmt:formatDate value="${class.create_time}" pattern="yyyy/MM/dd"/> --%>
							<s:property value="#class.create_time"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td><a href="exitClass.action?classid=<s:property value="#class.classid"/>">退出班级</a>
							</td>
							<td>
								<a href="stuClassDetail?classid=<s:property value="#class.classid"/>" >
									班级详情
								</a>
							</td>
						</tr>
						
						</s:iterator>						
					</table>
					
					<div align="center" style="margin: 25px;padding: 25px;">
						<s:set value="#session.pager" id="pager"/>
						<s:if test="#pager.hasFirst">
							<a href="showClassByStu.action?currentPage=1">首页</a>
						</s:if>
						<s:if test="#pager.hasPrevious">
							<a href="showClassByStu.action?currentPage=<s:property value="#pager.currentPage-1"/>">
							上一页
							</a>
						</s:if>
						<s:if test="#pager.hasNext">
							<a href="showClassByStu.action?currentPage=<s:property value="#pager.currentPage+1"/>">
							下一页
							</a>
						</s:if>
						<s:if test="#pager.hasLast">
				   	 		<a href="showClassByStu.action?currentPage=<s:property value="#pager.totalPage"/>">
							尾页
							</a>
						</s:if>
						当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
			
					</div>
					</s:if>
					<s:else>
						  <div class="no-doc">
							<img src="images/no_doc.jpg"/>
							<p>没有搜索到班级哦~</p>
						</div>
					</s:else>
				</div>
				
			 </div>
     		 </section>
     	</section>
     	<!--main content end-->
     	<jsp:include page="footer.jsp"/>
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
