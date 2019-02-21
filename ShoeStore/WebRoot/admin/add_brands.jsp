<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_menshoe.jsp' starting page</title>
    
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
				if($("#name").val()==""){
					$("#fault").html("品牌名不能为空");
					return false;
				}
			})
		})
	</script>
	<style type="text/css">
		.container{	
			  		font-size: 22px;			
		}
		.h{ font-style: italic;
			color: blue;
			font-size: 20px;
		}
		table{  
			   font-size: 32px; 			   
		}
	</style>
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="navigation.jsp"></jsp:include>
    <div class="container">
    	<div><p class="h">品牌/添加品牌</p></div>
    	<p id="fault" style="color: red"></p>
    	<form action="add_brands.action" method="post" enctype="multipart/form-data">
    	<div align="center">
    	<table>
    		<tr>
    			
    			<td>品牌名称</td>
    			<td><input type="text" name="brands.brandsname" id="name"> </td>
    		</tr>
    		
    		<tr>	
    			<td>logo</td>
    			<td><input type="file" name="picture"></td>
    		</tr>
    	</table>
    		<input type="submit" value="提交" id="submit">
    	</div>
    	</form>
    </div>
  </body>
</html>
