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
			$("#stuValidate").click(function(){
				$("#recog").remove();
				email=$("#username").val();
				if(email==""||email==null){
			   		$(".stu_error_box").html("邮箱不能为空");
			   		return false;
			   	}
			  
				if(email!=""){
					if(!email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
			   			$(".stu_error_box").html("邮箱格式错误");
			   			return false;
			   		}
					/*   $.post("searchStu.action",
						{email:email},
						function(data){													
							if(data=="该用户名可以使用"){
								$(".stu_error_box").html("用户名未注册");								
							}},
						"json"
					);   */
					 var t=0;
					  $.ajax({
    	 				type: 'POST',
   	 	 				url: "searchStu.action" ,
   	 	 				async:false,
 						data: {email:email},
    					success:function(data){													
								if(data=="该用户名可以使用"){
									$(".stu_error_box").html("用户名未注册");								
									t=1;
								}},
						error:function(){
								alert("异常");
								},		
					    dataType:"json"
					});		  
					if(t==1) return false;	
				}
				 
			   	if($("#password").val()==""){
			   		$(".stu_error_box").html("请输入密码");
			   		return false;
			   	}
			   		$(".stu_error_box").html("");
			   		
			 })
			 })
			 </script>
    </head>
    <body>
        <div class="container">
            <header>
                <h1><span>校园在线作业服务平台登录</span></h1>
				<nav class="codrops-demos">
					
					<span>点击<a href="stuRegister.jsp">"加入我们"</a>进行注册</span>
					<a href="stuLogin.jsp" class="current-demo">学生登录</a>
					<a href="teaLogin.jsp">教师登录</a>
					<a href="adminLogin.jsp">管理员登录</a>
					
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                   
                    <div id="wrapper">
                        <div id="login" class="animate form">                       
                            <form  action="stuLogin.action" autocomplete="on" method="post"> 
                                <h1>Log in</h1>  
                            	<div style="color:red" align="center"><p class="stu_error_box" ></p>
                            		<div id="recog"><s:fielderror></s:fielderror></div> 
                    			</div>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >您的电子邮件或用户名</label>
                                    <input id="username" name="student.email" required="required" type="text" placeholder="mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码</label>
                                    <input id="password" name="student.password" required="required" type="password" placeholder="password" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住登录状态</label>
								</p>
									<span><a href="forgetPass.jsp">忘记密码？</a></span>
                                <p class="login button"> 
                                    <input type="submit" value="Login" id="stuValidate"/> 
								</p>
                                <p class="change_link">
									还未注册？
									<a href="stuRegister.jsp" class="to_register">去注册</a>
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
