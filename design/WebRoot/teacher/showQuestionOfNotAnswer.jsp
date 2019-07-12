<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
     		  <div style="margin: 10px;padding: 10px;font-size: 20px;"> <a>答疑管理</a>&nbsp;/&nbsp;<a>查看未解答疑惑</a><br></div>
     			<s:if test="#session.questionOfNotAnswer.size!=0">
     		 		<c:forEach items="${sessionScope.questionOfNotAnswer }" var="question">
     		 		
     		 			所在班级：<a href="classDetail.action?classid=${ question.courseclass.classid}">
										${question.courseclass.name }
									</a>
						<br>
     		 			<div align="left" style="float:left;width: 100px;">
							<img alt="头像" src="./photo/${question.student.photo}"><br>
							<a>${question.student.name}</a>
						</div>
								
						<div style="display:inline-block;width: 400px">
								<p><fmt:formatDate value="${question.question_time}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
								<i>${question.question }</i><br>
								
								
								<c:if test="${question.answer==null }">
										<form action=answerQuestion method="post">
											<input type="hidden" name="qid" value="${question.qid}">
											<!-- <textarea rows="4" cols="42" name="answer" id="answer"></textarea> -->
											<input type="text" name="answer" size="100" id="answer" placeholder="请回复...">
											
											
											<br>
											<input type="submit" value="确定">
											<input type="reset" value="取消">
										</form>
								</c:if>
								
						 </div>
     		 			 <br>
     		 			 <hr>		
     		 			
     		 		</c:forEach>
     		 		
     		 		
     		 		<div align="center" style="font-size:20px;margin: 25px;padding: 25px;">
     		 		<s:set value="#session.pager" id="pager"/>
						<s:if test="#pager.hasFirst">
							<a href="showQuestionByStu.action?currentPage=1">首页</a>
						</s:if>
						<s:if test="#pager.hasPrevious">
							<a href="showQuestionByStu.action?currentPage=<s:property value="#pager.currentPage-1"/>">
							上一页
							</a>
						</s:if>
						<s:if test="#pager.hasNext">
							<a href="showQuestionByStu.action?currentPage=<s:property value="#pager.currentPage+1"/>">
							下一页
							</a>
						</s:if>
						<s:if test="#pager.hasLast">
				   	 		<a href="showQuestionByStu.action?currentPage=<s:property value="#pager.totalPage"/>">
							尾页
							</a>
						</s:if>
						当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
					</div>
				</s:if>
				<s:else>
					    <div class="no-doc">
							<img src="images/no_doc.jpg"/>
							<p style="margin: 10px;padding: 10px;font-size: 20px;">没有要解答的疑问哦~</p>
						</div>
				</s:else>
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
				if( UE.getEditor('answer')==""){
					alert("解答不能为空");
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
