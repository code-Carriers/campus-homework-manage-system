<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
		<title>网上书店</title>
		<link href="css/bookstore.css" rel="stylesheet" type="text/css" />
	</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- about -->
	<div class="aboutf">
		<div class="banner_bottom_tab_grids">
			<div id="verticalTab" class="resp-vtabs" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab"><a href="browseBookPaging.action?catalogid=1"> 智能技术</a></li>
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab">现代阅读</li>
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab">童书</li>
					<li class="resp-tab-item" aria-controls="tab_item-3" role="tab">推理</li>
					<li class="resp-tab-item" aria-controls="tab_item-4" role="tab">文学地理</li>
				</ul>
				<div class="resp-tabs-container">
					<!-- tab1 -->
					<div class="resp-tab-content resp-tab-content-active" style="display:block" aria-labelledby="tab_item-0">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<s:iterator value="#request['books']" var="book">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
									<img src="./picture/<s:property value="#book.picture"/>" width="30px" />
								</a>
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
											<s:property value="#book.bookname"/></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">价格：<s:property value="#book.price"/>元</h3>
								<p class="paragraphf">
									<a href="addToCart.action?bookid=<s:property value="#book.bookid"/>&quantity=1">
										<div style="margin-top:30;padding:5; font-weight:bold; font-size:14; color:white; background: orange;text-align:center;width: 120px">
										添加到购物车</div>
									</a>
								</p>
							</div>
							</s:iterator>
						</div>
						<div class="clearfix"> </div>
							<div style="margin: 25px;padding: 25px;" align="center">	
								<s:set value="#request.pager" id="pager"/>
								<s:if test="#pager.hasFirst">
									<a href="browseBookPaging.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">
									上一页
									</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">
										下一页
									</a>
								</s:if>
								<s:if test="#pager.hasLast">
				    				<a href="browseBookPaging.action?currentPage=<s:property value="#pager.totalPage"/>">
										尾页
									</a>
								</s:if>
								当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
							</div>
					</div>
					<!-- tab2 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-1">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<s:iterator value="#request['books']" var="book">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
									<img src="./picture/<s:property value="#book.picture"/>" />
								</a>
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
											<s:property value="#book.bookname"/></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">价格：<s:property value="#book.price"/>元</h3>
								<p class="paragraphf">
									<a href="addToCart.action?bookid=<s:property value="#book.bookid"/>&quantity=1">
										<div style="margin-top:30;padding:5; font-weight:bold; font-size:14; color:white; background: orange;text-align:center;width: 120px">
										添加到购物车</div>
									</a>
								</p>
							</div>
							</s:iterator>
							<div class="clearfix"> </div>
							<div style="margin: 25px;padding: 25px;" align="center">	
								<s:set value="#request.pager" id="pager"/>
								<s:if test="#pager.hasFirst">
									<a href="browseBookPaging.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">
									上一页
									</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">
										下一页
									</a>
								</s:if>
								<s:if test="#pager.hasLast">
				    				<a href="browseBookPaging.action?currentPage=<s:property value="#pager.totalPage"/>">
										尾页
									</a>
								</s:if>
								当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
							</div>
						</div>
						<!-- //tabs-info -->
					</div>
					<!--// tab2 -->
					<!-- tab3 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-2">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<s:iterator value="#request['books']" var="book">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
									<img src="./picture/<s:property value="#book.picture"/>" />
								</a>
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
											<s:property value="#book.bookname"/></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">价格：<s:property value="#book.price"/>元</h3>
								<p class="paragraphf">
									<a href="addToCart.action?bookid=<s:property value="#book.bookid"/>&quantity=1">
										<div style="margin-top:30;padding:5; font-weight:bold; font-size:14; color:white; background: orange;text-align:center;width: 120px">
										添加到购物车</div>
									</a>
								</p>
							</div>
							</s:iterator>
							<div class="clearfix"> </div>
							<div style="margin: 25px;padding: 25px;" align="center">	
								<s:set value="#request.pager" id="pager"/>
								<s:if test="#pager.hasFirst">
									<a href="browseBookPaging.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">
									上一页
									</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">
										下一页
									</a>
								</s:if>
								<s:if test="#pager.hasLast">
				    				<a href="browseBookPaging.action?currentPage=<s:property value="#pager.totalPage"/>">
										尾页
									</a>
								</s:if>
								当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
							</div>
						</div>
						<!-- //tabs-info -->
						
					</div>
					<!--// tab3 -->
					<!-- tab4 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-3">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<s:iterator value="#request['books']" var="book">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
									<img src="./picture/<s:property value="#book.picture"/>" />
								</a>
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
											<s:property value="#book.bookname"/></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">价格：<s:property value="#book.price"/>元</h3>
								<p class="paragraphf">
									<a href="addToCart.action?bookid=<s:property value="#book.bookid"/>&quantity=1">
										<div style="margin-top:30;padding:5; font-weight:bold; font-size:14; color:white; background: orange;text-align:center;width: 120px">
										添加到购物车</div>
									</a>
								</p>
							</div>
							</s:iterator>
							<div class="clearfix"> </div>
							<div style="margin: 25px;padding: 25px;" align="center">	
								<s:set value="#request.pager" id="pager"/>
								<s:if test="#pager.hasFirst">
									<a href="browseBookPaging.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">
									上一页
									</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">
										下一页
									</a>
								</s:if>
								<s:if test="#pager.hasLast">
				    				<a href="browseBookPaging.action?currentPage=<s:property value="#pager.totalPage"/>">
										尾页
									</a>
								</s:if>
								当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
							</div>
						</div>
						<!-- //tabs-info -->
					</div>
					<!--// tab4 -->
					<!-- tab5 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-4">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="main-topicsf">
							<s:iterator value="#request['books']" var="book">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
									<img src="./picture/<s:property value="#book.picture"/>" />
								</a>
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="detail.action?bookid=<s:property value="#book.bookid"/> ">
											<s:property value="#book.bookname"/></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">价格：<s:property value="#book.price"/>元</h3>
								<p class="paragraphf">
									<a href="addToCart.action?bookid=<s:property value="#book.bookid"/>&quantity=1">
										<div style="margin-top:30;padding:5; font-weight:bold; font-size:14; color:white; background: orange;text-align:center;width: 120px">
										添加到购物车</div>
									</a>
								</p>
							</div>
							</s:iterator>
							<div class="clearfix"> </div>
							<div style="margin: 25px;padding: 25px;" align="center">	
								<s:set value="#request.pager" id="pager"/>
								<s:if test="#pager.hasFirst">
									<a href="browseBookPaging.action?currentPage=1">首页</a>
								</s:if>
								<s:if test="#pager.hasPrevious">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage-1"/>">
									上一页
									</a>
								</s:if>
								<s:if test="#pager.hasNext">
									<a href="browseBookPaging.action?currentPage=<s:property value="#pager.currentPage+1"/>">
										下一页
									</a>
								</s:if>
								<s:if test="#pager.hasLast">
				    				<a href="browseBookPaging.action?currentPage=<s:property value="#pager.totalPage"/>">
										尾页
									</a>
								</s:if>
								当前第 <s:property value="#pager.currentPage"/>  页，总共 <s:property value="#pager.totalPage"/> 页
							</div>
						</div>
						<!-- //tabs-info -->
						</div>
						<!--// tab5 -->
				</div>
			</div>
		</div>
		
		 	
	</div>
	<br><br><br><br><br><br><br><br><br><br>							
		 	
	
	 <!-- Subscribe -->
	<div class="wthree-subscribef-w3ls">
		<div class="container">
			<h3 class="tittlef-agileits-w3layouts white-clrf">与我们联系</h3>
			<p class="white-clrf">发送邮件给我们</p>
			<div class="footer_w3layouts_gridf_right">

				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email address..." required="">
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
	<!--// Subscribe -->
   <!-- footer -->
	<div class="footer_agileinfo_topf">
		<div class="col-md-4 footer_w3layouts_gridf">
				
			<div class="clearfix"> </div>
			
		</div>
	</div>
	<div class="footer-wthree-copyf">
		<div class="container">
			<div class="addressf-agileits-w3layouts">
				<p><span class="fa fa-map-marker" aria-hidden="true"></span>GUANGDONG UNIVERSITY OF SCIENCE AND TECHNOLEGY.</p>
			</div>
			<p>Copyright &copy; 2018.Company name All rights reserved.</p>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //footer -->
</body>
</html>
