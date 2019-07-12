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
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

	<script type="text/javascript" charset="utf-8" src="./utf8-jsp/ueditor.config.js"></script>

	<script type="text/javascript" charset="utf-8" src="./utf8-jsp/ueditor.all.min.js"> </script>

	<script type="text/javascript" charset="utf-8" src="./utf8-jsp/lang/zh-cn/zh-cn.js"></script>
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
<%--     <s:if test="!#session.teacher">
     	<% response.sendRedirect("../teaLogin.jsp");%>
    </s:if> --%>
  	<section id="container" >
  	 	<jsp:include page="header.jsp"/>
    	<jsp:include page="sidebar.jsp"/>
    	<!--main content start-->
     	<section id="main-content">
     		 <section class="wrapper">
     				<div style="padding: 10px;font-size: 20px;"> <a>公告管理</a>&nbsp;/&nbsp;<a>发布公告</a></div>
     				<div class="row">
     					<div style="color:green;font-size:20px">
   						
   						
   						<%-- <a><%= request.getParameter("classname") %></a> --%>
   						
    					<p style="color: red" id="fault"></p>
    					<form action="addAnnounce" method="post">
    						<b>公告班级</b>&nbsp;&nbsp;&nbsp;&nbsp;
    						<s:action name="getAllClassByTea" namespace="/" executeResult="false"/>
	        				<select id="class" name="classid">
	    						<option value="">--选择班级--</option>
    							<s:iterator value="#session['classbytea']" var="class">
									<option value="<s:property value="#class.classid"/>">
										<s:property value="#class.name"/>
									</option>	

								</s:iterator>
  
    						</select>
    						<br>
    					<span style="color:green;">公告内容：</span>
    						<div id="content" style="height:200px;width:1000px" name="announce.content">
    						      <script type="text/javascript" charset="utf-8">
    						            UE.getEditor("content");
    						      </script>  
    						</div>
    						<!-- <textarea rows="10" cols="80" name="announce.content" id="content"></textarea> -->
    						
    						<input type="submit" value="提交" id="submit" style="font-size: 20px;">
    					</form>
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
     <script type="text/javascript">
		$(document).ready(function(){
			$("#submit").click(function(){
				if($("#class").val()==""){
					$("#fault").html("请选择班级");
					return false;
				}
				if(UE.getEditor("content")==""){
					$("#fault").html("公告内容不能为空");
					return false;
				}
			})
		})
	</script>
  </body>
</html>