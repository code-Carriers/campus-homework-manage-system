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
    
    <title>Home</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
					
	<div class="banner">
		<div class="container">
		<div class="col-md-6">
		</div>
		<div class="col-md-6 banner-info">
			<h1>Big Title Here</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed malesuada sapien. Nulla aliquam orci nec massa hendrerit tincidunt. Donec in sollicitudin lacus. Curabitur et faucibus nulla. Maecenas sit amet semper libero, in iaculis felis. Aliquam erat volutpat. Donec sollicitudin turpis eget tortor tincidunt euismod.</p>
			<a class="show-more" href="#">SHOW ME MORE</a>
		</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- header -->
	<div class="instock">
		<div class="container">
			<div class="col-md-6 chuk">
				
					<div class="blanc-info">
						<h3>2014 Chuck Taylor ALL STARS</h3>
						<h4>NOW IN STOCK!FREE SHIPPINGSTARTING AT $24.99</h4>
						<a class="show" href="#">SHOW ME MORE</a>
					</div>
			</div>
			<div class="col-md-6 blanc">
				
					<div class="blanc-info">
						<h3>2014 Le Blanc Dress Shoes</h3>
						<h4>NOW IN STOCK!FREE SHIPPINGSTARTING AT $24.99</h4>
						<a class="show" href="#">SHOW ME MORE</a>
					</div>
			</div>
			<div class="clearfix"> </div>
		</div>	
	</div>
<!-- instock -->
<div class="featured">
<div class="container">
<div class="col-md-9">
<div class="biseller-info">

<h3 class="new-models">featured products</h3>
			<ul id="flexiselDemo3">
				<li>
					<div class="biseller-column">
					<img src="images/1.jpg" class="img-responsive" alt="" class="veiw-img">
						<a href="details.action?sid=1"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
											
					</div>
				</li>
				<li>
					<div class="biseller-column">
					<img src="images/2.jpg" class="img-responsive" alt="" class="veiw-img">
						<a href="details.action?sid=2"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
										
					</div>
				</li>
			
				<li>
					<div class="biseller-column">
					<img src="images/3.jpg" class="img-responsive" alt="" class="veiw-img">
						<a href="details.action?sid=3"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
						
					</div>
				</li>
				
	     	</ul>
			
		</div>	

			<script type="text/javascript">
				 $(window).load(function() {
					$("#flexiselDemo3").flexisel({
						visibleItems: 3,
						animationSpeed: 1000,
						autoPlay: false,
						autoPlaySpeed: 3000,    		
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
				    	responsiveBreakpoints: { 
				    		portrait: { 
				    			changePoint:480,
				    			visibleItems: 1
				    		}, 
				    		landscape: { 
				    			changePoint:640,
				    			visibleItems: 2
				    		},
				    		tablet: { 
				    			changePoint:768,
				    			visibleItems: 3
				    		}
				    	}
				    });
				    
				});
			   </script>
			   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
			
				<div class="best-seller">
				
					<div class="biseller-info">
					 <h3 class="new-models">latest products</h3>
					<ul id="flexiselDemo1">
						<li>
							<div class="biseller-column">
							<img src="images/ss6.jpg" class="img-responsive" alt="">
							<a href="details.action?sid=1"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
						
							</div>
						</li>
						<li>
							<div class="biseller-column">
							<img src="images/ss4.jpg" class="img-responsive" alt="">
							<a href="details.action?sid=2"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
						
							</div>
						</li>
						<li>
							<div class="biseller-column">
							<img src="images/ss5.jpg" class="img-responsive" alt="">
							<a href="details.action?sid=4"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
						
							</div>
						</li>
						
			     	</ul>
					</div>
		
			</div>
			<script type="text/javascript">
				 $(window).load(function() {
					$("#flexiselDemo1").flexisel({
						visibleItems: 3,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,    		
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
				    	responsiveBreakpoints: { 
				    		portrait: { 
				    			changePoint:480,
				    			visibleItems: 1
				    		}, 
				    		landscape: { 
				    			changePoint:640,
				    			visibleItems: 2
				    		},
				    		tablet: { 
				    			changePoint:768,
				    			visibleItems: 3
				    		}
				    	}
				    });
				    
				});
			   </script>
			   <script type="text/javascript">
				 $(window).load(function() {
					$("#flexiselDemo5").flexisel({
						visibleItems: 3,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,    		
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
				    	responsiveBreakpoints: { 
				    		portrait: { 
				    			changePoint:480,
				    			visibleItems: 1
				    		}, 
				    		landscape: { 
				    			changePoint:640,
				    			visibleItems: 2
				    		},
				    		tablet: { 
				    			changePoint:768,
				    			visibleItems: 3
				    		}
				    	}
				    });
				    
				});
			   </script>
			   <div class="best-seller">
				
					<div class="biseller-info">
					
					<ul id="flexiselDemo5">
						<li>
							<div class="biseller-column1">
							<img src="images/ss3.jpg" class="img-responsive" alt="">
							<a href="details.action?sid=5"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
							</div>
						</li>
						<li>
							<div class="biseller-column1">
							<img src="images/ss1.jpg" class="img-responsive" alt="">
							<a href="details.action?sid=6"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
						
							</div>
						</li>
						<li>
							<div class="biseller-column1">
							<img src="images/ss2.jpg" class="img-responsive" alt="">
							<a href="details.action?sid=1"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>
						
							</div>
						</li>
						
			     	</ul>
					</div>
		
			</div>
			   <script type="text/javascript" src="js/jquery.flexisel.js"></script>

			<div class="clearfix"></div>
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
										<h4><a href="details.action?sid=1">Sample Item Title Goes Here</a></h4>
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
										<h4><a href="details.action?sid=1">Sample Item Title Goes Here</a></h4>
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
