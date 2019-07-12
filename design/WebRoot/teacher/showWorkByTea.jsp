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
     		 <div style="margin: 10px;padding: 10px;font-size: 20px;"> <a>作业管理</a>&nbsp;/&nbsp;<a>查看作业</a><br></div>
     		  <div class="row">
     		 	<s:if test="#session.workbytea.size!=0">
     		 		<s:iterator value="#session.workbytea" var="work">    		 			
						<div style="font-size:18">
						<fmt:formatDate value="${work.startdate}" pattern="yyyy/MM/dd"/>星期四
						</div>
						<hr style="height:1px;background-color: #6EECB4;border: none;">
						<div style="display:inline-block;">
						<div style="float:left;color:green;font-size:18;width: 800px;">
							班级：<a href="classDetail.action?classid=<s:property value="#work.courseclass.classid"/>">
									<s:property value="#work.courseclass.name"/>
								</a>
							<br>
							标题：<b><a href="workDetail.action?workid=<s:property value="#work.workid"/>">
								<s:property value="#work.title"/>
								</a></b>
							<br>
							内容：<s:property value="#work.context"/>
							<br>
							布置时间：<fmt:formatDate value="${work.startdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							截止日期：<fmt:formatDate value="${work.deadline}" pattern="yyyy-MM-dd HH:mm:ss"/>
							<br>
							附件：<a href="downFile?filename=<s:property value="#work.appendix"/>&
								workid=<s:property value="#work.workid"/>">
								<s:property value="#work.appendix"/>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下载</a>
							
						</div>
						<div style="float:right;font-size:18" align="right">
							<a href="javascript:if(confirm('删除作业后不可恢复。确定删除该作业？'))
								location='deleteWork.action?workid=<s:property value="#work.workid"/>'">删除作业
							</a>
							<br>
							<a href="workDetail.action?workid=<s:property value="#work.workid"/>">
								查看作业详情
							</a>
						</div>
						</div>	
						<hr >
					</s:iterator>
					<div align="center" style="font-size:20px;margin: 25px;padding: 25px;">
     		 			<s:set value="#session.pager" id="pager"/>
						<s:if test="#pager.hasFirst">
							<a href="showWorkByTea.action?currentPage=1">首页</a>
						</s:if>
						<s:if test="#pager.hasPrevious">
							<a href="showWorkByTea.action?currentPage=<s:property value="#pager.currentPage-1"/>">
							上一页
							</a>
						</s:if>
						<s:if test="#pager.hasNext">
							<a href="showWorkByTea.action?currentPage=<s:property value="#pager.currentPage+1"/>">
							下一页
							</a>
						</s:if>
						<s:if test="#pager.hasLast">
				   	 		<a href="showWorkByTea.action?currentPage=<s:property value="#pager.totalPage"/>">
							尾页
							</a>
						</s:if>
						当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
					</div>
				</s:if>
				<s:else>
					    <div class="no-doc">
							<img src="images/no_doc.jpg"/>
							<p>您还未布置作业哦~</p>
						</div>
				</s:else>
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
