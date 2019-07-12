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
    
    <title>My JSP 'forgetPass.jsp' starting page</title>
    
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
				
				email=$("#email").val();
				if(email==""||email==null){
			   		$("#recog").text("邮箱不能为空");
			   		return false;
			   	}
				if(email!=""){
					if(!email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
			   			$("#recog").html("邮箱格式错误");
			   			return false;
			   		}
				}	
			   	if($("#password1").val()==""){
			   		$("#recog").html("请输入密码");
			   		return false;
			   	}
			   	if($("#password1").val()!=$("#password2").val()){
			   		$("#recog").html("密码不一致");
			   		return false;
			   	}	
			 })
		})
	</script>
  </head>
  
  <body bgcolor="green;">
  <a href="stuLogin.jsp">返回登录</a>
  <div align="center" style="border-style: solid;border-width:1px;border-color:blue;padding: 20px;margin: 20px;">
  	<p id="recog" style="color: red;"></p>
  	<s:fielderror></s:fielderror>
  	<form action="forgetPass" method="post">
    <table>
    	<tr>
    		<td>账号</td>
    		<td><input type="text" name="email" id="email" placeholder="输入注册过的账号邮箱"></td>
    	</tr>
    	<tr>
    		<td>账号类型</td>
    		<td><input type="radio" name="classify" value="teacher" checked="checked">教师
    			<input type="radio" name="classify" value="student">学生
    		</td>
    	</tr>
    	<tr>
    		<td>新密码</td>
    		<td><input type="password" name="password" id="password1" placeholder="输入新密码"></td>
    	</tr>
    	<tr>
    		<td>确认密码</td>
    		<td><input type="password" id="password2" placeholder="重新输入密码"></td>
    	</tr>
    </table>
    	<input type="submit" value="提交" id="submit">
    </form>
    </div>
  </body>
</html>
