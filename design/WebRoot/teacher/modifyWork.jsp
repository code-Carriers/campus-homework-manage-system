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
     		  <div style="color: blue;margin: 10px;padding: 10px;"> <span>作业管理</span>&nbsp;/&nbsp;<span>修改作业</span><br></div>
     			<div class="row" align="center"  >
     			<s:fielderror></s:fielderror>
     		 	<s:set value="#session.workDetail" var="workDetail"></s:set>
     			<form action="modifyWork.action" method="post" enctype="multipart/form-data">
     			<input type="hidden" name="workid" value="<s:property value="#workDetail.workid"/>">
     			<input type="hidden" name="work.workid" value="<s:property value="#workDetail.workid"/>">
  				<input type="hidden" name="classid" value="<s:property value="#workDetail.courseclass.classid"/>">
  				<input type="hidden" name="tid" value="<s:property value="#workDetail.teacher.tid"/>">
  				<table style="font-size:18px;color: green;border-collapse:separate; border-spacing:0px 10px;">
  					<tr>
  						<td>布置班级</td>
  						<td><s:property value="#workDetail.courseclass.name"/></td>
  					</tr>
  					<tr>
  						<td>标题</td>
  						<td><input type="text" size="40"  name="work.title" value="<s:property value="#workDetail.title"/>	"></td>
  					</tr>
  					<tr></tr>
  					<tr>
  						<td>内容 </td>
  						<td><textarea rows="5" cols="50" name="work.context"><s:property value="#workDetail.context"/></textarea></td>
  					</tr>
  					<tr>
  						<td>原附件</td>
  						<td id="appendix" ><a href="downFile?filename=<s:property value="#workDetail.appendix"/>&
							workid=<s:property value="#workDetail.workid"/>">
								<s:property value="#workDetail.appendix"/></a>
						<td>
  					</tr>
  					<tr>
  						<td>修改附件</td>
  								
						 <td>
						 <input type="file" id="newAppendix" placeholder="附件" name="appendix">
						 </td>
  					</tr>
  					<tr>
  						<td>截止时间</td>
  						<td><input type="date" name="work.deadline"> </td>
  					</tr>
  				</table>
    			<input type="submit" value="提交"> <input type="reset" value="重置">           
  				</form>
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
  	<script type="text/javascript">
  		$(document).ready(function(){
  			$("#newAppendix").click(function(){
  				alert("继续添加附件将会取代原来的附件，确定继续？");
  			})
  			if($("#newAppendix").val()!=""){
  				$("#appendix").remove();
  			}
  		})
  	</script>
  </body>
</html>

