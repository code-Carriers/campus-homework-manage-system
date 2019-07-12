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
  	<section id="container" >
  	 	<jsp:include page="header.jsp"/>
    	<jsp:include page="sidebar.jsp"/>
    	<!--main content start-->
     	<section id="main-content">
     		 <section class="wrapper">
     			<div style="font-size: 20px"> <a>疑惑管理</a>&nbsp;/&nbsp;<a>提出疑惑</a><br></div>
     				<div class="row">
     					<div style="color:green;">
   						<h2>向老师提问</h2>
   						<%-- <p>所在班级：
   						<a href="stuClassDetail.action?classid=${sessionScope.classDetail.classid}"><s:property value="#session.classDetail.name"/></a>
   						</p> --%>
    					<br>
    					<form action="addQuestion.action" method="post">
    						<div style="font-size: 20px;">
    						<span>所在班级：</span>
    						<s:action name="getAllClassByStu" namespace="/" executeResult="false"/>
	        				<select id="class" name="classid">
	    						<option value="">--选择班级--</option>
    							<s:iterator value="#session['classbystu']" var="class">
									<option value="<s:property value="#class.classid"/>">
										<s:property value="#class.name"/>
									</option>	

								</s:iterator>
  
    						</select>
    						</div>
    						<%-- <input type="hidden" name="classid" value="<s:property value="#session.classDetail.classid"/>">
    						 --%><br>
    						 <span style="color:green;font-size:20px;">内容：</span>
    						<!-- <textarea rows="10" cols="80" name="question.question" id="question"></textarea> -->
    						
    						<div id="question" style="height:180px;width:1000px" name="question.question">
    						      <script type="text/javascript" charset="utf-8">
    						            UE.getEditor("question");
    						      </script>  
    						</div>
    						
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
				if(UE.getEditor("question")==""){
					alert("提交内容不能为空");
					return false;
				}
			})
		})
	</script>
  </body>
</html>