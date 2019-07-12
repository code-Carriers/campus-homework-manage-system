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
    <s:if test="!#session.teacher">
     	<% response.sendRedirect("../teaLogin.jsp" );%>
    </s:if>	
  	<section id="container" >
  	 	<jsp:include page="header.jsp"/>
    	<jsp:include page="sidebar.jsp"/>
    	<!--main content start-->
     	<section id="main-content">
     		 <section class="wrapper">
     			<div style="font-size: 20px"> <a>个人信息</a>&nbsp;/&nbsp;<a>修改信息</a><br></div>
     				<div align="center">
     			 	<p id="message" style="color: red;"></p>
     			 	<form action="modifyTeaInform.action" method="post">
     			 		<input type="hidden" name="teacher.tid" value="<s:property value="#session.teacher.tid"/>">
     			 	<table>
     			 		<tr>
     			 			<td>头像</td>
     			 			<td><img alt="头像" src="./photo/${teacher.photo}" width="150px"/></td>
     			 			<td><input type="hidden" value="${teacher.photo}" name="teacher.photo"></td>
     			 		</tr>
     			 		
     			 		<tr>
     			 			<td>邮箱</td>
     			 			<td><input type="text" name="teacher.email" readonly="readonly" value="<s:property value="#session.teacher.email"/>" ></td>
     			 		</tr>
     			 		<tr>
     			 			<td>输入新密码</td>
     			 			<td><input type="password" name="teacher.password" id="password1" value="<s:property value="#session.teacher.password"/>"></td>
     			 		</tr>
     			 		<tr>
     			 			<td>再次输入密码</td>
     			 			<td><input type="password" id="password2" value="<s:property value="#session.teacher.password"/>" ></td>
     			 		</tr>
     			 		<tr>
     			 			<td>工号</td>
     			 			<td><input type="text" name="teacher.number" value="<s:property value="#session.teacher.number"/>"></td>
     			 		</tr>
     			 		<tr>
     			 			<td>姓名</td>
     			 			<td><input type="text" name="teacher.name" value="<s:property value="#session.teacher.name"/>"></td>
     			 		</tr>
     			 		<tr>
     			 			<td>电话</td>
     			 			<td><input type="text" name="teacher.telephone" value="<s:property value="#session.teacher.telephone"/>">
     			 			</td>
     			 		</tr>
     			 		<tr>
     			 			<td>学校</td>
     			 			<td><input type="text" name="teacher.school" value="<s:property value="#session.teacher.school"/>"></td>
     			 		</tr>
     			 	</table>
     			 		<input type="submit" value="提交" id="submit">
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
	<script type="text/javascript">
		
		$(document).ready(function(){
			$("#submit").click(function(){
				if($("#password1").val()!=$("#password2").val()){
			   		$("#message").html("两次密码输入不一致");
			   		$("#password1").focus();
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
