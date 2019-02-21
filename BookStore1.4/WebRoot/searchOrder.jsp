<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
	<title>�ҵĶ���</title>
	<link href="css/bookstore.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="content">
		<div class="left">
			<div class="list_box">
				<div class="list_bk">
					<s:action name="browseCatalog" namespace="/" executeResult="true"/>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="right_box">
				<div class="info_bk1">
					<div align="center">
						<h3>�ҵĶ���</h3>
						<s:set var="orders" value="#session.orders"/>
						<s:if test="#orders.size!=0">
						<s:iterator value="#orders" var="order">
						<s:set var="checkItems" value="#order.orderitems"/>
						<s:iterator value="#checkItems" var="item">
							<img src="./picture/<s:property value="#item.book.picture"/>" width="90" align="left" />
							<span style="color:red;font-size:10">δ����</span>
							<div style="border:1px; padding:30px">
							<h4><s:property value="#item.book.bookname"/></h4><br>
							���ۼۣ�<span style="font-size:13">&yen<s:property value="#item.book.price"/></span>		
							������<s:property value="#item.quantity"/>
							���:<s:property value="#item.amount"/>
							<br>
							�µ�ʱ��:<s:property value="#order.orderdate"/>
							<br/>
							</div>
						</s:iterator>
						</s:iterator> 
						</s:if>
						<s:else>��û�ж�����</s:else>
					</div>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
