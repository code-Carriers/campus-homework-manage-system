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
	<title>校园教学服务</title>
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
     	    <div style="font-size: 20px"> <a>班级管理</a>&nbsp;/&nbsp;<a>查看班级</a><br></div>
     		<div class="row">
				<div class="tap">
					<h2>我的班级</h2>					
				</div>
				<div>
					<div align="right" style="color:green;font-size:20"><a href="teacher/addClass.jsp">创建班级</a>  </div><br>
					<s:if test="#session.classbytea.size!=0">
						<table style="font-size: 18px;">
							<tr>
								<td>班级</td>
								<td>创建时间</td>
								<td>操作</td>
							</tr>
							<s:iterator value="#session.classbytea" var="class">
								<tr>
							<td>
							<a href="classDetail.action?classid=<s:property value="#class.classid"/>">
								<s:property value="#class.name"/>
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
								<%-- <fmt:formatDate value="${class.create_time}" pattern="yyyy年MM月dd日"/> --%>
								  <s:property value="#class.create_time"/>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
							<a href="javascript:if(confirm('删除班级将连同班级作业，班级公告，班级答疑一并删除。确定删除该班级？'))
								location='deleteClass.action?classid=<s:property value="#class.classid"/>'">删除班级
							</a>
							</td>
							
							</tr>
							</s:iterator>
						    <%-- <c:forEach items="${sessionScope.classbytea }" var="class">
							<tr>
							<td>
							<a href="classDetail.action?classid=${class.classid}">
								${class.name}
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
								<fmt:formatDate value="${class.create_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
							<s:property value="#class.create_time"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
							<a href="javascript:if(confirm('删除班级将连同班级作业，班级公告，班级答疑一并删除。确定删除该班级？'))
								location='deleteClass.action?classid=${class.classid}'">删除班级
							</a>
							</td>
							
							</tr>
							</c:forEach> --%>
							
							<hr>
						</table>	
						<hr>
						<div align="center" style="margin: 25px;padding: 25px;">
						<s:set value="#session.pager" id="pager"/>
						<s:if test="#pager.hasFirst">
							<a href="showClassByTea.action?currentPage=1">首页</a>
						</s:if>
						<s:if test="#pager.hasPrevious">
							<a href="showClassByTea.action?currentPage=<s:property value="#pager.currentPage-1"/>">
							上一页
							</a>
						</s:if>
						<s:if test="#pager.hasNext">
							<a href="showClassByTea.action?currentPage=<s:property value="#pager.currentPage+1"/>">
							下一页
							</a>
						</s:if>
						<s:if test="#pager.hasLast">
				   	 		<a href="showClassByTea.action?currentPage=<s:property value="#pager.totalPage"/>">
							尾页
							</a>
						</s:if>
						当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
						</div>
					 </s:if>
					 <s:else>
					    <div class="no-doc">
							<img src="images/no_doc.jpg"/>
							<p>您还没有创建班级哦~</p>
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
