<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
		
   		$(document).ready(function(){
			$("#submit").click(function(){
				if($("#username").val()==""||$("#username").val()==null){
			   		$("#error").html("请输入用户名");
			   		return false;
			   	}				 
			   	if($("#password").val()==""){
			   		$("#error").html("请输入密码");
			   		return false;
			   	}
			   		$("#error").html("");
			   		
			 })
			 })
			 </script>
	</script>
  </head>
  
  <body>
    	<s:fielderror cssStyle="color:red"></s:fielderror>
				<label id="error" style="color: red"></label><br>
					<div align="center">
						<form action="adminLogin.action" method="post" name="login">
							管理员登录<br>
							用户名:<input type="text" name="admin.username" size="20" id="username" 
							placeholder="输入账号" autocomplete="on" />
							<br>
							密&nbsp;&nbsp;&nbsp;&nbsp;码:
							<input type="password" name="admin.password" size="21" id="password"
							  placeholder="输入密码" />
							
							<div>
　　　							<input type="checkbox" name="remember" ><label>记住密码</label>　						
								 <a href="#">忘记密码</a>
							</div>
							<input type="submit" value="登录" id="submit"/>
							
						</form>
					</div>	
  </body>
</html>
