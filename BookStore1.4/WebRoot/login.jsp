<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
	<title>网上书店</title>
 	<script type="text/javascript">
		function checkusername()
   		{
      		if (document.getElementById('username').value == "") {
				//将输入焦点定位到没有输入的地方
				var erroruser=document.getElementById("u");
				erroruser.innerHTML="请输入用户名";
				erroruser.style.color="red";
			}
   		}
   		function checkpassword(){
   			if (document.getElementById('password').value == "") {
				var errorpass=document.getElementById("p");
				errorpass.innerHTML="请输入密码";
				errorpass.style.color="red";		
			}
   		}
   		function checklogin(){
    		var xmlhttp;
    		var name = document.getElementById("username").value;
    		var pw = document.getElementById("password").value;
   			if (window.XMLHttpRequest)
    			 xmlhttp=new XMLHttpRequest();
    		else
     			 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    		//xmlhttp.open("GET","check.php?username="+name+"&password="+pw,true);
    		xmlhttp.send();
    		xmlhttp.onreadystatechange=function(){
      			alert(xmlhttp.responseText);
      			return false;	
    		}
  		}
	</script>
</head>
<body>
	
	<div style="margin: 10px;padding: 20px;border: 1px;border-style: solid;border-color: blue;">
		
		<div align="center">
			<div class="right_box">
				<font face="宋体"></font><font face="宋体"></font><font face="宋体"></font><font face="宋体"></font>
				<div class="banner"></div>
				<div class="info_bk1">
					<div align="center">
						<s:fielderror cssStyle="color:red"></s:fielderror>
						<form action="login.action" method="post" name="login">
							用户登录<br>
							用户名:<input type="text" name="user.username" size="20" id="username" 
							placeholder="输入账号" autocomplete="on" />
							<label id="u"></label><br>
							密&nbsp;码:
							<input type="password" name="user.password" size="21" id="password"
							  placeholder="输入密码" />
							<label id="p"></label><br>
							<div>
　　　							<input type="checkbox" name="remember" ><label>记住密码</label>　						
								 <a href="/register.jsp">注册</a>/<a href="#">忘记密码</a>
							</div>
							<input type="submit" value="登录" onclick="return checklogin();"/>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>