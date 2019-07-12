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
     	  <div style="font-size:20px;margin: 20px;"> 
     	  <a>班级管理</a>&nbsp;/&nbsp;<a>查看班级</a>&nbsp;/&nbsp;<a>班级详情</a>
     	  <br></div>
     		 <div >
				<div class="top">
					<h2><s:property value="#session.classDetail.name"/></h2>
					<br>
					<a href="teacher/addWork.jsp">布置作业</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="teacher/addAnnounce.jsp?classname=<s:property value="#session.classDetail.name"/>">发布公告</a><br>				
				</div>
				<div class="left" style="position:absolute;">
					<s:if test="#session.newAnnounce">
					<div class="div-border">
						<div class="div-top">最新公告</div>
						<div style="border: 1px solid green;">
								${session.newAnnounce.content}<br>
								公告时间：<fmt:formatDate value="${session.newAnnounce.time}" pattern="yyyy年MM月dd日"/>
						<br>
						</div>
					</div>
					</s:if>
					
					<div class="div-border" style="margin: 30px;">
						<div class="div-top">班级作业</div>
						<s:if test="#session.works.size!=0">
						<s:iterator value="#session.works" var="work">
							<div style="color:green;font-size:18">
							<a href="workDetail.action?workid=<s:property value="#work.workid"/>">
								<s:property value="#work.title"/>
							</a>
							<br>
							<fmt:formatDate value="${work.startdate}" pattern="yyyy年MM月dd日"/>
							——
							<fmt:formatDate value="${work.deadline}" pattern="yyyy年MM月dd日"/>
						
							<hr >
							</div>
						</s:iterator>
						</s:if>
						<s:else>
							<div class="no-doc">
							<p style="font-size: 20px;">您还没有布置作业哦~</p>
							</div>
						</s:else>
					</div>
					
					<s:if test="#session.classQuestion.size!=0">
					<div class="div-border" style="margin:30px;">
						<div class="div-top">疑惑模块</div>
						<div style="border: 1px solid green;">
							
						<c:forEach items="${sessionScope.classQuestion }" var="question">
     		 		
     		 			
     		 			<div align="left" style="float:left;width: 100px;">
							<img alt="头像" src="./photo/${question.student.photo}"><br>
							<a>${question.student.name}</a>
						</div>
								
						<div style="display:inline-block;width: 400px">
								<p><fmt:formatDate value="${question.question_time}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
								<i>${question.question }</i><br>
								
								<c:if test="${question.answer!=null }">
									<a>查看全部回复(1)</a>
									<div style="background-color:silver;">
										<a>${question.teacher.name}</a>的回复：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5分钟前<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										${question.answer}
										<div>
											<fmt:formatDate value="${question.answer_time}" pattern="yy/MM/dd HH:mm"/>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="deleteAnswer.action?qid=${question.qid }">删除</a>

										</div>
									</div>
								</c:if>
								<c:if test="${question.answer==null }">
										<form action=answerQuestion method="post">
											<input type="hidden" name="qid" value="${question.qid}">
											<!-- <textarea rows="4" cols="42" name="answer" id="answer"></textarea> -->
											<input type="text" name="answer" size="50" id="answer" value="请回复...">
											
											
											<br>
											<input type="submit" value="确定">
											<input type="reset" value="取消">
										</form>
								</c:if>
								
						 </div>
     		 			 <br>
     		 			 <hr>		
     		 			
     		 		</c:forEach>
							
							
						</div>
					</div>
					</s:if>
				</div>
				<div class="right">
					<div class="div-border">
					<div class="div-top">班级资料</div>
						<div style="color:green;font-size:20">
							班级：<s:property value="#session.classDetail.name"/>
							<br>
							教师：<s:property value="#session.classDetail.teacher.name"/>
							<br>
							创建时间：<fmt:formatDate value="${sessionScope.classDetail.create_time}" pattern="yyyy年MM月dd日"/>
							
							<br>
							<%-- 创建时间：<s:property value="#session.classDetail.create_time"/>
							<br> --%>
							学生人数：<s:property value="#session.classNum.size"/>
							<br>
							<a href="javascript:if(confirm('删除班级将连同班级作业，班级公告，班级答疑一并删除。确定删除该班级？'))
								location='deleteClass.action?classid=<s:property value="#session.classDetail.classid"/>'">删除班级
							</a>
						</div>
					</div>
					<div  class="div-border">
						<div class="div-top">班级成员</div>
						<div style="color:green;font-size:20">
						<s:if test="#session.classNum.size!=0">
							<s:iterator value="#session.classNum" var="studentclass">
								<div style="color:green;font-size:18">
									<img alt="头像" src="./photo/${studentclass.student.photo}" width="100px"><br>
									<s:property value="#studentclass.student.name"/>
								</div>
							</s:iterator>
						</s:if>
						<s:else>
							<p>没有成员加入</p>
						</s:else>
						</div>
					</div> 
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
