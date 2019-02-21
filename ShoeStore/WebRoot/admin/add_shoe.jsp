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
					$("#fault").html("鞋子名不能为空");
					return false;
				}
				if($("#price").val()==""){
					$("#fault").html("价格不能为空");
					return false;
				}
				if($("#catalog").val()==""){
					$("#fault").html("请选择分类");
					return false;
				}
				if($("#brand").val()==""){
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
		table{ width:600px;
			   font-size: 32px;			   
		}
	</style>
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="navigation.jsp"></jsp:include>
    <div class="container">
    	<div><p class="h">鞋子/添加鞋</p></div>
    	<p id="fault" style="color: red"></p>
    	<s:fielderror></s:fielderror>
    	<div align="center">
    	<form action="add_shoe.action" method="post" enctype="multipart/form-data">
    	<table>
    		<tr>
    			<td>商品名称</td>
    			<td><input type="text" name="shoe.shoename" id="name"> </td>
    		</tr>
    		<tr>	
    			<td>价格</td>
    			<td><input type="text" name="shoe.price" id="price"> </td>
    		</tr>
    		<tr>	
    			<td>分类</td>
    			<td><select name="shoe.catalog" id="catalog">
    					<option value=""></option>
    					<option value="men">men </option>
    					<option value="women">women </option>
    					<option value="kid">kid </option>
    					<option value="sport">sport </option>
    				 </select>
    			</td>
    		</tr>
    		<tr>	
    			<td>品牌</td>
    			<td><select name="bid" id="brand">
    					<option value=""></option>
    					<s:iterator value="#session.brands" var="brand">
    						<option value="<s:property value="#brand.bid"/>">
								<s:property value="#brand.brandsname"/> </option>
    					</s:iterator>
    				 </select> </td>
    		</tr>
    		<tr>	
    			<td>图片</td>
    			<td><input type="file" name="picture"></td>
    		</tr>
    	</table>
    		<input type="submit" value="提交" id="submit">
    	
    	</form>
    	</div>
    </div>
  </body>
</html>
