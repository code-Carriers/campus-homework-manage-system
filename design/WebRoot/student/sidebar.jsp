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
    
    <title>My JSP 'sidebar.jsp' starting page</title>
    
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
     <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="student/personInformation.jsp">
              	  <img src="./photo/${sessionScope.student.photo}" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"><s:property value="#session.student.name"/></h5>
              	 	
                  <li class="mt">
                      <a class="active" href="student/indexofstu.jsp">
                          <i class="fa fa-">回到主页</i>
                          <span></span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>班级</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="student/joinClass.jsp">加入班级</a></li>
                          <li><a  href="showClassByStu.action">查看我的班级</a></li>                       
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>作业</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="showWorkOfNoSubmit.action">代交作业</a></li>
                          <li><a  href="showWorkOfSubmit.action" >已交作业</a></li>
                          <li><a  href="showWorkByStu.action">查看全部作业</a></li>                        
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>公告管理</span>
                      </a>
                      <ul class="sub">
                          
                          <li><a  href="showAnnounceByStu.action">查看班级公告</a></li>
                      </ul>
                  </li>
                
                 
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>疑问解答</span>
                      </a>
                      <ul class="sub">
                     	  <li><a  href="student/addQuestion.jsp">提出疑惑</a></li>
                          <li><a  href="showQuestionByStu.action">答疑记录</a></li>
                          
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      
  </body>
</html>
