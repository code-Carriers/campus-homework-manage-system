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
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <!-- content -->
<div class="container">
<div class="women_main">
<div class="col-md-3 span_1_of_right1">
				  <section  class="sky-form">
				   <div class="product_right">
     				<h3 class="m_2">Categories</h3>
     			    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
            			<option value="0">Men's</option>	
						<option value="1">Tempor</option>
						<option value="2">Congue</option>
						<option value="3">Mazim </option>
						<option value="4">Mutationem</option>
						<option value="5">Hendrerit </option>
		           </select>
				   <label class="me"></label>
				   <select class="dropdown" tabindex="50" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Women's</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="wom"></label>
				   <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Kids</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="kid"></label>
			       <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Sports</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="spo"></label>
					</div>
						
				</section>
                   	 
						<div class="sellers">
							<h3 class="m_2">Best sellers</h3>
								<div class="best">
									<div class="icon">
										<img src="images/sh.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="data">
										<h4><a href="#">Sample Item Title Goes Here</a></h4>
										<p>$120.00</p>
										<h5>$120.00</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
								<div class="best">
									<div class="icon">
										<img src="images/sh.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="data">
									<h4><a href="#">Sample Item Title Goes Here</a></h4>
										<p>$120.00</p>
										<h5>$120.00</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
								<div class="best">
									<div class="icon">
										<img src="images/sh.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="data">
										<h4><a href="#">Sample Item Title Goes Here</a></h4>
										<p>$120.00</p>
										<h5>$120.00</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
						 </div>
					 
						<div class="sellers">
							<h3 class="m_2">Tags</h3>
								<div class="tags">
									<ul>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
										<li><a href="#">Tag,</a></li>
									</ul>
								</div>
						</div>
		       <section  class="sky-form">
					<div class="sellers">
							<h3 class="m_2">Special Offers</h3>
							<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
								<li>
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
								<li>	
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
								<li>	
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
							</ul>
						</div>
					</section>
				
						<!-- FlexSlider -->
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
						<!-- FlexSlider -->

						</div>
		       </section>
		       

	  </div>
<div class="col-md-9 w_content">
		<div class="women">
			<a href="#"><h4>Enthecwear - <span>4449 itemms</span> </h4></a>
			<ul class="w_nav">
						<li>Sort : </li>
		     			<li><a class="active" href="#">popular</a></li> |
		     			<li><a href="#">new </a></li> |
		     			<li><a href="#">discount</a></li> |
		     			<li><a href="#">price: Low High </a></li> 
		     			<div class="clear"></div>	
		     </ul>
		     <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		<div class="grids_of_4">
		 	<s:iterator value="#session.womenshoe" var="womenshoe">
		 		
		  <div class="grid1_of_4">
				<div class="content_box">
					<a href="details.action?sid=<s:property value="#womenshoe.sid"/>">
			   	  		<div class="view view-fifth">
			   	   	 		<img src="images/<s:property value="#womenshoe.picture"/> " class="img-responsive" alt=""/>
				   	   		<div class="mask"><div class="info">Quick View</div></div>
				    </a>
				   	    </div>
				    <h4><a href="details.action?sid=<s:property value="#womenshoe.sid"/>"> <s:property value="#womenshoe.shoename"/> </a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$<s:property value="#womenshoe.price"/></span>
			   	</div>
			</div>
			
		</s:iterator>	
  <div class="clearfix"></div>
		</div>
		<!-- end grids_of_4 -->
	</div>
				<div class="clearfix"></div>	
	</div>		
</div>		
<!-- content -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	</div>
<!-- footer -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
