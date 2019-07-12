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
     	  <div style="font-size:20px;margin: 10px;"> 
     	  <a>作业管理</a>&nbsp;/&nbsp;<a>查看作业</a>&nbsp;/&nbsp;<a>作业详情</a>
     	  <br></div>
     	   <s:set value="#session.workDetail" var="workDetail"></s:set>
     	   	<div class="right">
				<div class="div-border">
					<div class="div-top">作业情况</div>
						班级：<a href="classDetail.action?classid=<s:property value="#workDetail.courseclass.classid"/>">
							<s:property value="#workDetail.courseclass.name"/>
							</a>
						<br>
						已交作业：<s:property value="#session.studentWorks.size"/>
						<br>
						班级人数：<s:property value="#session.classNum.size"/>
						<br>
						<a href="javascript:if(confirm('删除作业后不可恢复。确定删除该作业？'))
						location='deleteWork.action?workid=<s:property value="#workDetail.workid"/>'">删除作业
						</a>
						
						<br>
						<a href="teacher/modifyWork.jsp"><button>修改</button></a>
					</div>
				</div>	
			</div>
     	   	<div class="left">
     	   		<div class="div-border">
					<div class="div-top">作业详情</div>
					
					标题：<s:property value="#workDetail.title"/>					
					<br>
					内容：${workDetail.context}
					<br>
					布置时间：<fmt:formatDate value="${workDetail.startdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					截止日期：<fmt:formatDate value="${workDetail.deadline}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<br>
					附件：<a href="downFile?filename=<s:property value="#workDetail.appendix"/>&
					workid=<s:property value="#workDetail.workid"/>">
						<s:property value="#workDetail.appendix"/></a>
				 	<hr >
				</div>
			
				<div class="div-border">
					<div class="div-top">作业提交详情</div>		
					<s:iterator value="#session.studentWorks" var="studentwork">
					<div style="color:green;font-size:18">	
						<s:property value="#studentwork.student.name"/>
						<div style="float: right;">
							<s:if test="#studentwork.score">
								<form action="modifyScore.action" method="post">
									<input type="hidden" name="studentworkid" value="<s:property value="#studentwork.studentworkid"/>">
									<input type="hidden" name="workid" value="<s:property value="#studentwork.work.workid"/>">
								【成绩】<input type="text" name="score" size="4" value="<s:property value="#studentwork.score"/>">	
								<br><input type="submit" value="修改">
								</form>
							</s:if>
							<s:else>
								<form action="modifyScore.action" method="post">
									<input type="hidden" name="studentworkid" value="<s:property value="#studentwork.studentworkid"/>">
									<input type="hidden" name="workid" value="<s:property value="#studentwork.work.workid"/>">
							        【成绩】<input type="text" name="score" size="4">	
								<br><input type="submit" value="确认">
								</form>
							</s:else>
						</div>
						<br>
						提交内容：${ studentwork.context}
						<br>
						附件：<a href="downStuWork?filename=<s:property value="#studentwork.appendix"/>&
								studentworkid=<s:property value="#studentwork.studentworkid"/>">
							<s:property value="#studentwork.appendix"/></a>
						<br>
						提交日期:<fmt:formatDate value="${studentwork.submitdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
						
						<hr >
					</div>
					</s:iterator>
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
