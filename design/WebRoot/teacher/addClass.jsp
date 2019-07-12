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
     	    <div style="font-size: 20px;margin: 10px;padding: 10px;"> <a>班级管理</a>&nbsp;/&nbsp;<a>创建班级</a><br></div>
     		<div>
				<div >
					<span style="font-size: 20px;">创建班级</span>
				</div>
				<s:fielderror cssStyle="color:red;"></s:fielderror>
				<div  align="center" >
					<div style="color:red;font-size: 20px;"><p id="record"></p></div>									
					<form action="createClass.action" method="post">
						<span style="font-size: 20px;">输入班名：</span>
						<input type="text" style="font-size: 20px;" id="classname" name="courseclass.name" placeholder="例如：15级软工10班">
						<br>
						<input type="submit" value="创建" id="addClass" style="font-size: 20px;">						
					</form>
				</div>
			</div>
		 <section class="wrapper">
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
 	<script type="text/javascript">
		$(document).ready(function(){
			$("#addClass").click(function(){
				$("#record").html("");
				classname=$("#classname").val();
				if(classname==""||classname==null){
			   		$("#record").html("请输入班名");
			   		return false;
			   	}
			 })
		})
	</script> 
    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>   
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>
	</body>
</html>
