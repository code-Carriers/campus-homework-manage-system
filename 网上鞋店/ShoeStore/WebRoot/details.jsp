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
    
    <title>My JSP 'details.jsp' starting page</title>
    
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
      <!-- details -->
<div class="details">
<div class="container">
<div class="row single">
<div class="col-md-9">
			<s:set value="#session.oneshoe" id="oneshoe"></s:set>
				  <div class="single_left">
				 
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="#">
									<img class="etalage_thumb_image" src="images/<s:property value="#oneshoe.picture"/>" class="img-responsive" />
									<img class="etalage_source_image" src="images/d1.jpg" class="img-responsive" title="" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/d2.jpg" class="img-responsive" />
								<img class="etalage_source_image" src="images/d2.jpg" class="img-responsive" title="" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/d3.jpg" class="img-responsive"  />
								<img class="etalage_source_image" src="images/d3.jpg" class="img-responsive"  />
							</li>
						    <li>
								<img class="etalage_thumb_image" src="images/d4.jpg" class="img-responsive"  />
								<img class="etalage_source_image" src="images/d4.jpg" class="img-responsive"  />
							</li>
						</ul>
						 <div class="clearfix"></div>		
				  </div>
				  <div class="desc1 span_3_of_2">
					<h3><s:property value="#oneshoe.shoename"/></h3>
					<p>Rs. <s:property value="#oneshoe.price"/> <a href="#">click for offer</a></p>
					<div class="det_nav">
						<h4>related styles :</h4>
						<ul>
							<li><a href="#"><img src="images/1.jpg" class="img-responsive" alt=""/></a></li>
							<li><a href="#"><img src="images/12.jpg" class="img-responsive" alt=""/></a></li>
							<li><a href="#"><img src="images/3.jpg" class="img-responsive" alt=""/></a></li>
							<li><a href="#"><img src="images/ss2.jpg" class="img-responsive" alt=""/></a></li>
						</ul>
					</div>
					<div class="det_nav1">
						<h4>Select a size :</h4>
							<div class=" sky-form col col-4">
								<ul>
									<li><label class="checkbox"><input type="radio" name="checkbox"><i></i>L</label></li>
									<li><label class="checkbox"><input type="radio" name="checkbox"><i></i>S</label></li>
									<li><label class="checkbox"><input type="radio" name="checkbox"><i></i>M</label></li>
									<li><label class="checkbox"><input type="radio" name="checkbox"><i></i>XL</label></li>
								</ul>
							</div>
					</div>
					<div class="btn_form">
						<a href="buy.jsp">buy</a>
					</div>
					<a href="#"><span>login to save in cart </span></a>
					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
          	    <div class="single-bottom1">
					<h6>Details</h6>
					<p class="prod-desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option</p>
				</div>
				<div class="single-bottom2">
					<h6>Related Products</h6>
						<div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="images/12.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
					  <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="images/9.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
				     <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="images/8.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
		   	  </div>
	       </div>	
<div class="col-md-3 span_1_of_right">
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
				<div class="clearfix"></div>	
	</div>
	</div>
	</div>
<!-- details -->
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
