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
    
    <title>My JSP 'stuRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/register/font-awesome.min.css" rel="stylesheet">
	<link href="css/register/styles.min.css" rel="stylesheet">
	
	<script src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
	
			$("#next1").click(function(){			
				if($("#email").val()==""){
			   		$("#message").html("邮箱不能为空");
			   		$("#email").focus();
			   		return false;
			  	}
			  	 if($("#email").val()!=""){
			  		if(!$("#email").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
			   			$("#message").html("邮箱格式错误");
			   			$("#email").focus();
			   			return false;
			   		}
			   		
					/* $.post("searchTea.action",
							{email:$("#email").val()},
							function(data){
								$("#message").text(data.message);							
								if(data.message=="该用户名可以使用"){
									$("#message").css("color","blue");
								}else{							
									$("#message").css("color","red");
									$("#email").focus();
									
								}},
							"json"
					); */
					var t=0;
					 $.ajax({
    	 				type: 'POST',
   	 	 				url: "searchTea.action" ,
   	 	 				async:false,
 						data: {email:$("#email").val()},
    					success: function(data){
								$("#message").html(data);															
								if(data=="该用户名可以使用"){
									$("#message").css("color","blue");									
								}else{							
									$("#message").css("color","red");
									$("#email").focus();
									t=1;
								}} ,
						error:function(){
								alert("异常");
								},		
					    dataType:"json"
					});		 
					if(t==1)
						return false;
				}
			if($("#password").val()==""){
			   $("#password1").html("密码不能为空");
			   return false;
			}else $("#password1").html("");
			if($("#passwordConfirm").val()==""){
			   $("#password2").html("第二次密码不能为空");
			   return false;
			}else $("#password2").html("");
			if( $("#password").val()!=$("#passwordConfirm").val()){
			   $("#password2").html("两次密码输入不一致");
			   return false;
			}else $("#password2").html("");
			})
			$("#next2").click(function(){
				if($("#name").val()==""){
			   $("#name1").html("名字不能为空");
			   return false;
			}else $("#name1").html("");
			if($("#number").val()==""){
			   $("#number1").html("工号不能为空");
			   return false;
			}else $("#number1").html("");
			})
		$("#upimg").change(function(){
				var $file = $(this);
				var fileObj = $file[0];
				var windowURL = window.URL|| window.webkitURL;
				var dataURL;
				var $img = $("#image-view");//<img>标签
				//当图片名称为空时，照片不显示。
				if (document.getElementById('upimg').value.trim() == "") {
					//document.getElementById('tr_userpicture').style.display = 'none';
				}
				if (fileObj && fileObj.files&& fileObj.files[0]) {
					dataURL = windowURL.createObjectURL(fileObj.files[0]);
					//允许上传的图片格式  
					var newPreview = document.getElementById("upimg").value;
					var regext = /\.jpg$|\.gif$|\.jpeg$|\.png$|\.bmp$/gi;
					if (!regext.test(newPreview)) {
							newPreview == "";
							alert("选择的照片格式不正确，请重新选择！");
							$(fileObj).after($(fileObj).clone($(fileObj)));
							$(fileObj).remove();
							return false;
					}
					$img.attr("src", dataURL);
					} else {
							dataURL = $file.val();
							var imgObj = document.getElementById("image-view");
							imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
							imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
					}
				});
		}); 
	
	</script>
  </head>
  
  <body>		
  		 <div class="journeyProgress">
            <ul>
                <li class="currentStep"><i class="icon-user"></i>注册信息</li>
                <li><i class="icon-user"></i>基本信息</li>
                <li></li>
                 <a href="teaLogin.jsp" style="color:while;font-size:15" >直接登录</a>
            </ul>
        </div>
		<div align="center">
  			<h1 style="color:green;font-size: 20px; ">教师注册页面</h1>
  			<h2><a href="stuRegister.jsp" style="color:black ;font-size: 16px;">学生注册</a> </h2>
  		</div>
        <div id="phizzForm" class="form">
            <form action="teaRegister.action" method="post" enctype="multipart/form-data">
                <div class="formPanel">
                    <h2>注册信息</h2>                   
                    <div class="errors"><i class="icon-exclamation-sign"></i>
						Oops! You&#39;ve entered some incorrect details.</div>
                    <fieldset>
                        <legend>基本信息</legend>
                          <div class="formRow">
                            <label for="email">Email</label>
                            <span class="inputAddOn"><i class="icon-envelope-alt"></i></span>
                            <input type="email" placeholder="Email" name="teacher.email" id="email">
                            <div class="tooltip"><p>请输入注册邮箱.</p><i class="icon-caret-down"></i></div>
                            <br><span id="message" style="font-size:15;color:red"></span>
                        </div>
                         <div class="formRow">
                            <label for="password">Password</label>
                            <span class="inputAddOn"><i class="icon-lock"></i></span>
                            <input type="password" placeholder="Password" name="teacher.password" id="password">
                            <div class="tooltip"><p>请输入密码.</p><i class="icon-caret-down"></i></div>
                            <br><span id="password1" style="font-size:15;color:red"></span>
                        </div>
                        <div class="formRow">
                            <label for="passwordConfirm">Confirm password</label>
                            <span class="inputAddOn"><i class="icon-lock"></i></span>
                            <input type="password" placeholder="Confirm password" name="passwordConfirm" id="passwordConfirm">
                            <div class="tooltip"><p>再次输入密码，与上次输入一致.</p><i class="icon-caret-down"></i></div>
                            <br><span id="password2" style="font-size:15;color:red"></span>
                        </div>
                        <div class="formRow">
                            <label for="name">photo</label>
                            <span class="inputAddOn"><i class="icon-user"></i></span>
                            <button><input name="photo" type="file" id="upimg"></button>
                            <div class="tooltip"><p>请选择照片.</p>
                            <i class="icon-caret-down"></i></div>
                            
                        </div>
                        <div class="formRow">
  	   						<p>照片预览</p>
  	   						<img name="img" id="image-view" style="height:216px; width:265px" />
  	   					</div>         
                        <button class="buttonNext" id="next1">Next</button>
                    </fieldset>
                </div>
                <div class="formPanel">
                    <h2>基本信息</h2>
                   
                    <div class="errors"><i class="icon-exclamation-sign"></i>
						Oops! You&#39;ve entered some incorrect details.</div>
                    <fieldset>
                        <legend>基本信息</legend>
                         
                         <div class="formRow">
                            <label for="name">Name</label>
                            <span class="inputAddOn"><i class="icon-user"></i></span>
                            <input type="text" placeholder="Name" name="teacher.name" id="name">
                            <div class="tooltip"><p>请填写真实名字，以便学生查看你的信息.</p>
                            <i class="icon-caret-down"></i></div>
                             <br><span id="name1" style="font-size:15;color:red"></span>
                        </div>
                       
                        <div class="formRow">
                            <label for="postcode">number</label>
                            <span class="inputAddOn"><i class="icon-map-marker"></i></span>
                            <input type="text" placeholder="工号" name="teacher.number" id="number">
                            <div class="tooltip"><p>请输入工号.</p><i class="icon-caret-down"></i></div>
                             <br><span id="number1" style="font-size:15;color:red"></span>
                        </div>
                       
                        <div class="formRow">
                            <label for="phoneNumber">Phone number</label>
                            <span class="inputAddOn"><i class="icon-phone"></i></span>
                            <input type="tel" placeholder="Phone number" name="teacher.telephone" id="phoneNumber">
                            <div class="tooltip"><p>请输入电话号码.</p><i class="icon-caret-down"></i></div>
                        </div>                                  
                        <div class="formRow">
                            <p>选择所在学校.</p>
                            <select name="teacher.school">
                                <option value="广东科技学院">广东科技学院</option>
                                <option value="广东培正学院">广东培正学院</option>
                                <option value="东莞理工学院">东莞理工学院</option>
                                <option value="广州艺术职业学院">广州艺术职业学院</option>
                                <option value="东莞职业技术学院">东莞职业技术学院</option>
                            </select>
                        </div>
                        <button class="buttonPrev">Previous</button>
                        <button class="buttonSubmit" id="next2">Submit</button>
                    </fieldset>
                </div>
                
            </form>
        </div>
         <!-- Javascript -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/scripts.min.js"></script>

        <script>
            $('body').phizzForms({
            });
        </script>
  </body>
</html>
