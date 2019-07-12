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
    
    <title>校园在线作业服务平台登录</title>
        <link rel="stylesheet" type="text/css" href="css/login/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/login/style.css" />
		<link rel="stylesheet" type="text/css" href="css/login/animate-custom.css" />
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$("#adminValidate").click(function(){
				$("#recog").remove();
				email=$("#username").val();
				if(email==""||email==null){
			   		$(".admin_error_box").html("请输入用户名");
			   		return false;
			   	}				 
			   	if($("#password").val()==""){
			   		$(".admin_error_box").html("请输入密码");
			   		return false;
			   	}
			   		$(".admin_error_box").html("");
			   		
			 })
			 })
			 </script>
    </head>
    <body>
        <div class="container">
            <header>
                <h1><span>校园在线作业服务平台登录</span></h1>
				<nav class="codrops-demos">
			
					<a href="stuLogin.jsp">学生登录</a>
					<a href="teaLogin.jsp" >教师登录</a>
					<a href="adminLogin.jsp" class="current-demo">管理员登录</a>
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                 
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="adminLogin.action" autocomplete="on" method="post"> 
                                <h1>Log in</h1> 
                                <div style="color:red" align="center"><p class="admin_error_box"></p>
                    			<div id="recog"><s:fielderror></s:fielderror></div></div>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >用户名</label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码</label>
                                    <input id="password" name="password" required="required" type="password" placeholder="password" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住登录状态</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login"  id="adminValidate"/> 
								</p>
                                
                            </form>
                        </div>

                
                </div>  
            </section>
<div style="text-align:center;clear:both">
<p>适用浏览器：FireFox、Chrome、Opera、傲游、搜狗. 不支持IE8、360、Safari、世界之窗。</p><br>
<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
</div>	
        </div>
    </body>
</html>
