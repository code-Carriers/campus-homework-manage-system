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
    
    <title>校园教学服务</title>
    
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
  	<section id="container" >
  	 	<jsp:include page="header.jsp"/>
    	<jsp:include page="sidebar.jsp"/>
    	<!--main content start-->
     	<section id="main-content">
     		 <section class="wrapper">
     			<div style="font-size: 20px;padding: 20px;">
     				<a>学生管理 </a>      /  <a>添加学生</a>
     			</div>
     			<div align="center">
     				<a href="admin/query_student.jsp" ><button  style="font-size: 20px;">返回</button></a>
     				<p id="message" style="color: red;"></p>
     				<form action="add_student_user.action" method="post" enctype="multipart/form-data">
     				<table class="admin-table">
     					
     					<tr>
     						<td>学号</td>
     						<td><input type="text" name="student.number" id="number"/></td>
     					</tr>
     					<tr>
     						<td>邮箱</td>
     						<td><input type="text" name="student.email" id="email"/></td>
     					</tr>
     					<tr>
     						<td>密码</td>
     						<td><input type="password" name="student.password" id="password1"/></td>
     					</tr>
     					<tr>
     						<td>确认密码</td>
     						<td><input type="password" id="password2"/></td>
     					</tr>
     					<tr>
     						<td>姓名</td>
     						<td><input type="text" name="student.name" id="name"/></td>
     					</tr>
     					<tr>
     						<td>电话</td>
     						<td><input type="text" name="student.telephone"/></td>
     					</tr>
     					<tr>	
     						<td>学校</td>
     						<td><input type="text" name="student.school"/></td>
     					</tr>
     					<tr>
     						<td>头像</td>
     						<td><input name="photo" type="file" id="upimg"></td>
     					</tr>
  	   					<tr>
  	   						<td>照片预览</td>
  	   						<td><img name="img" id="image-view" style="height:216px; width:265px" /></td>
  	   					</tr>
     				</table>
     				<input type="submit" value="添加" id="submit">
     				</form>
     			</div>
     		 </section>
     	</section>
     	<!--main content end-->
  	</section>
   
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>
	<script type="text/javascript">
		
		$(document).ready(function(){
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
			
			
			$("#submit").click(function(){
				if($("#number").val()==""){
			 	  $("#message").html("学号不能为空");
			  	 return false;
				}
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
			   		var t=0;
					
					 $.ajax({
    	 				type: 'POST',
   	 	 				url: "searchStu.action" ,
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
				if($("#password1").val()==""){
			 	  $("#message").html("密码不能为空");
			 	  return false;
				}
				if($("#password2").val()==""){
				   $("#message").html("第二次密码不能为空");
			 	  return false;
				}
				if( $("#password1").val()!=$("#password2").val()){
			 	  $("#message").html("两次密码输入不一致");
			 	  return false;
				}
				if($("#name").val()==""){
			 	  $("#message").html("名字不能为空");
			  	 return false;
				}
				
			})
		})
		
	</script>

    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>
  </body>
</html>
