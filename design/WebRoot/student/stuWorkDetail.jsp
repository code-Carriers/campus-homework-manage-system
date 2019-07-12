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
     	  	<div style="margin: 10px;padding: 10px;font-size: 20px;"> <a>班级作业</a>&nbsp;/&nbsp;<a>作业详情</a><br></div>
     				
     	  	<s:set value="#session.workDetail" var="workDetail"></s:set>
     	  	<div class="right">
				<div class="div-border">
					<div class="div-top">作业情况</div>
					班级：<a href="stuClassDetail.action?classid=<s:property value="#workDetail.courseclass.classid"/>">
						<s:property value="#workDetail.courseclass.name"/>
					</a>
					<br>
					已交作业：<s:property value="#session.studentWorks.size"/>
					<br>
					班级人数：<s:property value="#session.classNum.size"/>
					<br>
					<s:if test="#session.oneStuWork">已提交</s:if>
					<s:else>未提交</s:else>
				</div>
			</div>		
     	
			<div class="left">
				<div class="div-border" style="color:green;font-size:18">
				<div class="div-top">作业详情</div>
				标题：<b><s:property value="#workDetail.title"/></b>					
				<br>
				内容：<i><s:property value="#workDetail.context"/></i>
				<br>
				布置时间：<fmt:formatDate value="${workDetail.startdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				截止日期：<fmt:formatDate value="${workDetail.deadline}" pattern="yyyy-MM-dd HH:mm:ss"/>
				<br>
				附件：<a href="downFile?filename=<s:property value="#workDetail.appendix"/>&
						workid=<s:property value="#workDetail.workid"/>">
						<s:property value="#workDetail.appendix"/></a>
			
				</div>
				
				<div >
				<s:if test="#session.oneStuWork">
					<s:set value="#session.oneStuWork" var="studentwork"/>
					<div class="div-top">作业提交情况</div>
					<div style="color:green;font-size:18;margin: 15px;">	
						<table>
							<tr>
								<td><img alt="头像" src="./photo/${studentwork.student.photo}"/></td>
								<td>提交时间:<fmt:formatDate value="${studentwork.submitdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
								</td>
							</tr>
							<tr>
								<td><s:property value="#studentwork.student.name"/></td>
							</tr>
							<tr>
								<td>提交内容：</td>
								<td><i><s:property value="#studentwork.context"/></i></td>
							</tr>
							<tr>
								<td>附件：</td>
								<td><a href="downStuWork?filename=<s:property value="#studentwork.appendix"/>&
									studentworkid=<s:property value="#studentwork.studentworkid"/>">
									<s:property value="#studentwork.appendix"/></a>
								</td>
							</tr>
							<tr>
								<s:if test="#studentwork.score">
								<td>【成绩】&nbsp;&nbsp;&nbsp;</td>
								<td><s:property value="#studentwork.score"/></td>
								</s:if>
								<s:else>
								<td><p style="color: red">未批改</p></td>
								</s:else>
							</tr>
						</table>
						
						
						
					</div>
				</s:if>	
				
				<!--从Action中取出map.getDate为日期类型值-->
				<s:elseif test="#session.value_date">
					<br>
					<p>已超过截止时间，不可提交</p>
					<br>
				</s:elseif>	
				<s:else>
					<div style="color:green;font-size:18;margin: 15px;padding: 15px;">
					<form action="submitWork" method="post" enctype="multipart/form-data">
							<input type="hidden" name="workid" value="<s:property value="#workDetail.workid"/>">
							<table>
								<tr><td>输入内容</td></tr>
								<tr>
									
									<td>
									<div id="context" style="height:200px;width:880px" name="studentwork.context">
    						      		<script type="text/javascript" charset="utf-8">
    						            	UE.getEditor("context");
    						      		</script>  
    								</div>
									<!-- <textarea rows="6" cols="65" id="context" name="studentwork.context"></textarea> -->
									</td>
								</tr>
								<tr>
									<td>添加附件 </td>
									<td><input type="file" placeholder="附件" name="appendix"></td>
								</tr>
							</table>
							<input type="submit" value="提交" id="submitWork">
							<s:fielderror></s:fielderror>
					</form>
					<p style="color: red" id="fault"></p><br>
							    
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
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submitWork").click(function(){
				/* if(UE.getEditor("context")==""){
					$("#fault").html("内容不能为空");
					return false;
				} */
				alert("提交后不可重复提交。确认提交？");
			})
		})
	</script>		
	</body>
</html>
