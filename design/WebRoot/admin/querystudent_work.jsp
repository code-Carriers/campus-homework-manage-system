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
     				<a>作业管理</a>/<a>学生作业管理</a>
     			</div>
     			<div align="center">
     				
     				<table class="admin-table">
     					<tr>
     						<td>提交学生</td>
     						<td>作业标题</td>
     						<td>提交内容</td>
     						<td>提交附件</td>
     						<td>提交日期</td>
     						<td>成绩</td>
     						<td>班级</td>
     						<td>教师</td>
     						<td>删除</td>
     					</tr>
  	   					<s:iterator value="#session.studentWorks" var="studentWork">
     						<tr>
     							<td><s:property value="#studentWork.student.name"/></td>
     							<td><s:property value="#studentWork.work.title"/></td>
								<td>${studentWork.context}</td>
								<td><a href="downStuWork?filename=<s:property value="#studentWork.appendix"/>&
									studentworkid=<s:property value="#studentWork.studentworkid"/>">
									<s:property value="#studentWork.appendix"/></a>
								</td>
								<td><fmt:formatDate value="${studentWork.submitdate}" pattern="yyyy年MM月dd日"/></td>
								<td><s:property value="#studentWork.score"/></td>
								<td><s:property value="#studentWork.work.courseclass.name"/></td>
								<td><s:property value="#studentWork.work.teacher.name"/></td>
     							<td><a href="deletestudent_work.action?studentworkid=<s:property value="#studentWork.studentworkid"/>&
     								sid=<s:property value="#studentWork.student.sid"/>">
     								<button onclick="javascript:return confirm('您确认要删除吗？');">删除</button></a>
     							</td>
     						</tr>
     						
     					</s:iterator>
     				
  	   				</table>	
     				<div  align="center" style="margin: 25px;padding: 25px;font-size: 20px;">
     				<s:set value="#session.pager" id="pager"/>
						<s:if test="#pager.hasFirst">
							<a href="querystudent_work.action?currentPage=1">首页</a>
						</s:if>
						<s:if test="#pager.hasPrevious">
							<a href="querystudent_work.action?currentPage=<s:property value="#pager.currentPage-1"/>">
							上一页
							</a>
						</s:if>
						<s:if test="#pager.hasNext">
							<a href="querystudent_work.action?currentPage=<s:property value="#pager.currentPage+1"/>">
							下一页
							</a>
						</s:if>
						<s:if test="#pager.hasLast">
				   	 		<a href="querystudent_work.action?currentPage=<s:property value="#pager.totalPage"/>">
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
