<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
	<title>�������</title>
 	<script type="text/javascript">
		function checkusername()
   		{
      		if (document.getElementById('username').value == "") {
				//�����뽹�㶨λ��û������ĵط�
				var erroruser=document.getElementById("u");
				erroruser.innerHTML="�������û���";
				erroruser.style.color="red";
			}
   		}
   		function checkpassword(){
   			if (document.getElementById('password').value == "") {
				var errorpass=document.getElementById("p");
				errorpass.innerHTML="����������";
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
				<font face="����"></font><font face="����"></font><font face="����"></font><font face="����"></font>
				<div class="banner"></div>
				<div class="info_bk1">
					<div align="center">
						<s:fielderror cssStyle="color:red"></s:fielderror>
						<form action="login.action" method="post" name="login">
							�û���¼<br>
							�û���:<input type="text" name="user.username" size="20" id="username" 
							placeholder="�����˺�" autocomplete="on" />
							<label id="u"></label><br>
							��&nbsp;��:
							<input type="password" name="user.password" size="21" id="password"
							  placeholder="��������" />
							<label id="p"></label><br>
							<div>
������							<input type="checkbox" name="remember" ><label>��ס����</label>��						
								 <a href="/register.jsp">ע��</a>/<a href="#">��������</a>
							</div>
							<input type="submit" value="��¼" onclick="return checklogin();"/>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>