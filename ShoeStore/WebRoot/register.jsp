<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
			$("#register-submit").click(function(){
				if($("#password1").val()!=$("#password2").val()){
					$("#error").html("密码不一致");
					return false;
				}
			})
		})
	</script>
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <!-- content -->
<div class="container">
<div class="main">
	<!-- start registration -->
	<div class="registration">
		<div class="registration_left">
		<h2>new user? <span> create a runnerssport account </span></h2>
		<a href="#"><div class="reg_fb"><img src="images/facebook.png" alt=""><i>register using Facebook</i><div class="clearfix"></div></div></a>
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerHTML = '...Sending';
				}
			}
		
		})();
		</script>
		 <div class="registration_form">
		 	<p id="error" style="color: red"></p>
		 <!-- Form -->
			<form id="registration_form" action="register.action" method="post">
				<div>
					<label>
						<input name="user.phone" placeholder="phone:" type="text" tabindex="1" required autofocus>
					</label>
				</div>
				<div>
					<label>
						<input name="user.name" placeholder="name:" type="text" tabindex="2" required autofocus>
					</label>
				</div>
				<div>
					<label>
						<input name="user.address" placeholder=" address:" type="text" tabindex="3" required>
					</label>
				</div>
				
				<div>
					<label>
						<input id="password1" name="user.password" placeholder="password" type="password" tabindex="4" required>
					</label>
				</div>						
				<div>
					<label>
						<input id="password2" placeholder="retype password" type="password" tabindex="4" required>
					</label>
				</div>	
				<div>
					<input type="submit" value="create an account" id="register-submit">
				</div>
				<div class="sky-form">
					<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>i agree to shoppe.com &nbsp;<a class="terms" href="#"> terms of service</a> </label>
				</div>
			</form>
			<!-- /Form -->
		</div>
	</div>
	</div>
	</div>
	</div>
  </body>
</html>
