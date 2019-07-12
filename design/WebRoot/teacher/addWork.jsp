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
     		 	<div style="font-size: 20px"> <a>作业管理</a>&nbsp;/&nbsp;<a>布置作业</a><br></div>
     		 	<div class="row" align="center"  >
     		 	<p style="color: red" id="fault"></p><br>
     			<s:fielderror></s:fielderror>
     			<form action="addWork.action" method="post" enctype="multipart/form-data">
  				<table style="font-size:18px;color: green;border-collapse:separate; border-spacing:0px 10px;">
  					<tr>
  						<td> 布置班级 &nbsp;&nbsp;</td>
  						<td>
  							<%-- <b><s:property value="#session.classDetail.name"/></b> --%>
  							<s:action name="getAllClassByTea" namespace="/" executeResult="false"/>
	        				<select id="class" name="classid">
	    						<option value="">--选择班级--</option>
    							<s:iterator value="#session['classbytea']" var="class">
									<option value="<s:property value="#class.classid"/>">
										<s:property value="#class.name"/>
									</option>	

								</s:iterator>
  
    						</select>
  						</td>
  					</tr>
  					<tr>
  						<td>标题</td>
  						<td><input type="text" size="40" id="title" name="work.title" placeholder="输入标题"></td>
  					</tr>
  					<tr></tr>
  					<tr>
  						<td>内容 </td>
  						<td><textarea rows="5" cols="50" id="context" name="work.context"  placeholder="从此处输入内容"></textarea></td>
  					</tr>
  					<tr>
  						<td>添加附件</td>
  						<td> <input type="file" placeholder="附件" name="appendix"></td>
  					</tr>
  					<tr>
  						<td>截止时间</td>
  						<td><input type="date" id="date" name="work.deadline"> </td>
  					</tr>
  				</table>
    			<input type="submit" value="提交" id="submit"> <input type="reset" value="重置">           
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
			$("#submit").click(function(){
				if($("#class").val()==""){
					$("#fault").html("请选择班级");
					return false;
				}
				if($("#title").val()==""){
					$("#fault").html("标题不能为空");
					return false;
				}
				if($("#context").val()==""){
					$("#fault").html("内容不能为空");
					return false;
				}
				if($("#date").val()==""){
					$("#fault").html("截止日期不能为空");
					return false;
				}
			})
		})
	</script>
  </body>
</html>

