<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>后台用户中心</title>
		<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
  </head>
  
  <body>
		<div class="header">
			<div class="bar">
				<div class="w1200">
					<span class="l">在线作业管理</span>
					<div align="center"><i class="icon iconfont icon-dianyuan"></i><a href="logout.action">退出</a></div>
					
				</div>
			</div>
			<div class="user-info">
				<div class="w1200">
					<div class="user-headface">
						<img src="statics/images/user_face.jpg"/>
					</div>
					<div class="user-account">
						<p class="tip">你好，<s:property value="#session.user.name"/></p>
						<p class="account">
							<span>帐户名：<s:property value="#session.user.email"/> </span>
							<span>用户：<s:property value="#session.user.name"/></span>
						</p>
					</div>
					<div class="user-modify">
						<a href="#">修改资料></a>
					</div>
				</div>
			</div>
		</div>
		<div class="main w1200">
			<div class="left">
				<ul>
					<li>
						<a href="#" class="active">
							<i class="icon iconfont icon-lingdang"></i>
							消息
						</a>
					</li>
					<li>
						<a href="showClassByTea.action">
							<i class="icon iconfont icon-fangzidichan"></i>
							班级管理
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-wenda"></i>
							问答
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-icon--"></i>
							发布作业
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-pinglun"></i>
							公告
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-geren"></i>
							个人资料
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-jilu"></i>
							班级记录
						</a>
					</li>
				</ul>
			</div>
			<div class="right">
				<div class="tap">
					<span>系统消息</span>
				</div>
				<div class="container">
					<div class="no-doc">
						<img src="images/no_doc.jpg"/>
						<p>您还没有消息哦~</p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
