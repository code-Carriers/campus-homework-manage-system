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
		<!-- Meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Metga-tags -->

	<!-- Custom Theme files -->
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<!-- creative blog css -->

	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Pop-up -->
	<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
	<!--// banner-css -->
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<!--// shop-css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- common-css -->
	<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
	<!--// banner-css -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop up box -->

	<!-- services -->
	<link href="css/easy-responsive-tabs1.css" rel='stylesheet' type='text/css' />
	<!-- //services -->
	<link href="css/single.css" type="text/css" rel="stylesheet" media="all">
	<!--// Responsive-tabs -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- font-awesome icons -->
	<!-- //Custom Theme files -->
	<!-- Web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //Web-fonts -->
		
	</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="demo-main demo-sec">
		<div class="containers">
			<div class="demo-content-left col-md-8">
				<img src="./picture/<s:property value="#request.book.picture"/>" width="120" align="left" />
				<div style="border:1px; padding:30px">
					<h3><s:property value="#request.book.bookname"/></h3><br>
					销售价：<span style="color:red;font-size:36">&yen<s:property value="#request.book.price"/></span>
					<form action="addToCart.action">
						数量：<input type="text" name="quantity" value="1" size="4"/>
						<input type="hidden" name="bookid" value="<s:property value="#request.book.bookid"/>">
						<br>
						<input type="submit" value="加入购物车">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="image" name="submit" src="./picture/buy.gif">
					</form>
				</div>
			</div>
			<div class="col-md-4 demo-right">
				<div class="newsletter">
					<h4 class="demo-trial">在线书店免费读</h4>
					<a class="demo-btn" href="video.html">开启阅读之旅</a>

				</div>
				<div class="demo-course">
					<h4 class="demo-trial">最新书籍</h4>
					<div class="demo-desc">
						<div class="col-md-4 col-sm-4 col-xs-4 demo-desc-left">
							<a href="course-2.html">
								<img src="images/mf5.jpg" class="img-responsive" alt="">
							</a>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 demo-desc-right">
							<div class="demo-desc-text">
								<a href="course-2.html">
									<h4>course title</h4>
								</a>
								<p>The standard chunk of Lorem Ipsum used since the 1500s..</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="demo-desc">
						<div class="col-md-4 col-sm-4 col-xs-4 demo-desc-left">
							<a href="course-3.html">
								<img src="images/mf2.jpg" class="img-responsive" alt="">
							</a>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 demo-desc-right">
							<div class="demo-desc-text">
								<a href="course-3.html">
									<h4>course title</h4>
								</a>
								<p>The standard chunk of Lorem Ipsum used since the 1500s..</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="demo-desc">
						<div class="col-md-4 col-sm-4 col-xs-4 demo-desc-left">
							<a href="course-4.html">
								<img src="images/mf3.jpg" class="img-responsive" alt="">
							</a>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 demo-desc-right">
							<div class="demo-desc-text">
								<a href="course-4.html">
									<h4>course title</h4>
								</a>
								<p>The standard chunk of Lorem Ipsum used since the 1500s..</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="demo-desc">
						<div class="col-md-4 col-sm-4 col-xs-4 demo-desc-left">
							<a href="course-5.html">
								<img src="images/mf4.jpg" class="img-responsive" alt="">
							</a>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-8 demo-desc-right">
							<div class="demo-desc-text">
								<a href="course-5.html">
									<h4>course title</h4>
								</a>
								<p>The standard chunk of Lorem Ipsum used since the 1500s..</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="single-side-bar">
					<div class="first_half">
						<div class="list_vertical">
							<div class="accordation_menu">
								
									<div>
										<input id="label-2" name="lida" type="radio" />
										<label for="label-2" id="item2">
											<i class="icon-leaf" id="i2"></i>excersise files
											<i class="icon-plus-sign i-right1"></i>
											<i class="icon-minus-sign i-right2"></i>
										</label>
										<div class="content" id="a2">
											<div class="scrollbar" id="style-3">
												<div class="force-overflow">
													<div class="demo-accs">
														<div class="post-text">
															<ul>
																<li>contains supporting documents
																	<a class="span_link" href="#">
																		<span class="fa fa-file-archive-o" aria-hidden="true" title="Download"></span>
																	</a>
																</li>
																<li>(x MB)</li>
															</ul>
														</div>
														<div class="post-text">
															<ul>
																<li> contains supporting documents
																	<a class="span_link" href="#">
																		<span class="fa fa-file-archive-o" aria-hidden="true" title="Download"></span>
																	</a>
																</li>
																<li>(x MB)</li>
															</ul>
														</div>
														<div class="post-text">
															<ul>
																<li>contains supporting documents
																	<a class="span_link" href="#">
																		<span class="fa fa-file-archive-o" aria-hidden="true" title="Download"></span>
																	</a>
																</li>
																<li>(x MB)</li>
															</ul>
														</div>
														<div class="post-text">
															<ul>
																<li>contains supporting documents
																	<a class="span_link" href="#">
																		<span class="fa fa-file-archive-o" aria-hidden="true" title="Download"></span>
																	</a>
																</li>
																<li>(x MB)</li>
															</ul>
														</div>
														<div class="post-text">
															<ul>
																<li>contains supporting documents
																	<a class="span_link" href="#">
																		<span class="fa fa-file-archive-o" aria-hidden="true" title="Download"></span>
																	</a>
																</li>
																<li>(x MB)</li>
															</ul>
														</div>
														<div class="post-text">
															<ul>
																<li>contains supporting documents
																	<a class="span_link" href="#">
																		<span class="fa fa-file-archive-o" aria-hidden="true" title="Download"></span>
																	</a>
																</li>
																<li>(x MB)</li>
															</ul>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="demo-skills">
						<h4 class="demo-trail">skills covered in course</h4>
						<ul>
							<li>
								<span class="fa fa-check-square-o" aria-hidden="true"></span>courses grouped by subject</li>
							<li>
								<span class="fa fa-check-square-o" aria-hidden="true"></span>individual online course</li>
							<li>
								<span class="fa fa-check-square-o" aria-hidden="true"></span>master program</li>
							<li>
								<span class="fa fa-check-square-o" aria-hidden="true"></span>fully certified courses</li>

						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="form-demo">
				<div class="form-inner text-center">
					<fieldset>
						<legend>join the course</legend>

						<ul class="form-demo-list">
							<li>
								<span class="fa fa-check" aria-hidden="true"></span>lorem ipsum is a dummy text </li>
							<li>
								<span class="fa fa-check" aria-hidden="true"></span>lorem ipsum is a dummy text </li>
							<li>
								<span class="fa fa-check" aria-hidden="true"></span>lorem ipsum is a dummy text </li>
						</ul>
						<a href="#" data-toggle="modal" data-target="#myModal">sign up</a>
					</fieldset>
				</div>
				<h6>most advanced solution for
					<span class="demo-ftxt"> e-learning!</span>
				</h6>
			</div>
			<div class="demo-inst demo-sec">
				<h6 class="sec-title">about the
					<span>作者</span>
				</h6>
				<div class="col-md-5 left-instr">
					<div class="col-md-5 demo-inst-left">
						<img src="images/i1.png" class="img-responsive" alt="" />
						<div class="inst-txt">
							<h5>Helen L. Odom</h5>
							<p>designation in detail</p>
						</div>
					</div>
					<div class="col-md-7 demo-inst-center ">
						<ul>
							<li>
								<i class="fa fa-star" aria-hidden="true"></i>
								<span>4.7</span> average rating</li>
							<li>
								<i class="fa fa-comment-o" aria-hidden="true"></i>
								<span>75,000</span> reviews</li>
							<li>
								<i class="fa fa-play" aria-hidden="true"></i>
								<span>19</span> courses</li>
							<li>
								<i class="fa fa-user" aria-hidden="true"></i>
								<span>34,826</span> students</li>

						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-7 demo-inst-right">
					<h6>Best Lead Educator</h6>
					<p>Nunc gravida sagittis nunc, pellentesque vehicula lacus viverra quis. Fusce ultricies velit nibh, ut aliquet elit hendrerit
						ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ullamcorper augue iaculis fermentum ultrices. Nullam
						nec faucibus odio. Donec at dui ut tellus pharetra congue a at tellus. Sed facilisis est et est eleifend, a iaculis
						massa maximus. Pellentesque condimentum lorem maximus justo blandit eleifend.
					</p>
					<a href="#">view more</a>
				</div>

				<div class="clearfix"></div>

			</div>
			<!-- reviews -->
			<div class="demo-sec">
				<div class="reviews col-md-8 col-sm-8">
					<h6 class="sec-title">评论
						<span>review</span>
					</h6>
					<!-- review grid -->
					<div class="row blockquote review-item">
						<div class="col-md-3 col-sm-3 col-xs-3 text-center review-left">
							<img class="rounded-circle reviewer" src="images/r.jpg" alt="">
							<div class="caption">
								<small>by
									<a href="#joe">Jones</a>
								</small>
							</div>

						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 review-right">
							<h4>Here goes your review title</h4>
							<ul class="ratebox">
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star-half-o" aria-hidden="true"></span>
								</li>
							</ul>
							<p class="review-text">Fusce ultricies velit nibh, ut aliquet elit hendrerit ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut ullamcorper augue iaculis fermentum ultrices. Nullam nec faucibus odio. Donec at dui ut tellus pharetra congue
								a at tellus.</p>
							<small class="review-date">March 26, 2017</small>
						</div>
					</div>
					<!-- //review grid -->
					<!-- review grid -->
					<div class="row blockquote review-item">
						<div class="col-md-3 col-sm-3 col-xs-3 text-center review-left">
							<img class="rounded-circle reviewer" src="images/r.jpg" alt="">
							<div class="caption">
								<small>by
									<a href="#joe">Rosy</a>
								</small>
							</div>

						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 review-right">
							<h4>Here goes your review title</h4>
							<ul class="ratebox">
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star-half-o" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star-o" aria-hidden="true"></span>
								</li>
							</ul>
							<p class="review-text">Fusce ultricies velit nibh, ut aliquet elit hendrerit ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut ullamcorper augue iaculis fermentum ultrices. Nullam nec faucibus odio. Donec at dui ut tellus pharetra congue
								a at tellus.</p>
							<small class="review-date">March 26, 2017</small>
						</div>
					</div>
					<!-- //review grid -->
					<!-- review grid -->
					<div class="row blockquote review-item">
						<div class="col-md-3 col-sm-3 col-xs-3 text-center review-left">
							<img class="rounded-circle reviewer" src="images/r.jpg" alt="">
							<div class="caption">
								<small>by
									<a href="#joe">Jack</a>
								</small>
							</div>

						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 review-right">
							<h4>Here goes your review title</h4>
							<ul class="ratebox">
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star-o" aria-hidden="true"></span>
								</li>
							</ul>
							<p class="review-text">Fusce ultricies velit nibh, ut aliquet elit hendrerit ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut ullamcorper augue iaculis fermentum ultrices. Nullam nec faucibus odio. Donec at dui ut tellus pharetra congue
								a at tellus.</p>
							<small class="review-date">March 26, 2017</small>
						</div>
					</div>
					<!-- //review grid -->
					<!-- review grid -->
					<div class="row blockquote review-item">
						<div class="col-md-3 col-sm-3 col-xs-3 text-center review-left">
							<img class="rounded-circle reviewer" src="images/r.jpg" alt="">
							<div class="caption">
								<small>by
									<a href="#joe">Ben</a>
								</small>
							</div>

						</div>
						<div class="col-md-9 col-sm-9 col-xs-9 review-right">
							<h4>Here goes your review title</h4>
							<ul class="ratebox">
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star-o" aria-hidden="true"></span>
								</li>
								<li>
									<span class="fa fa-star-o" aria-hidden="true"></span>
								</li>

							</ul>
							<p class="review-text">Fusce ultricies velit nibh, ut aliquet elit hendrerit ac. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut ullamcorper augue iaculis fermentum ultrices. Nullam nec faucibus odio. Donec at dui ut tellus pharetra congue
								a at tellus.</p>
							<small class="review-date">March 26, 2017</small>
						</div>
					</div>
					<!-- //review grid -->
				</div>
				<!-- //reviews -->
				<!-- Materials -->
				<div class="col-md-4 col-sm-4 sidebar-demo">
					<h6 class="sec-title1">you can also
						<span>refer</span>
					</h6>
					<div class="carousel slide materialf-slider" id="myCarousel1">
						<div class="carousel-inner">
							<div class="item active">
								<ul class="thumbnails">
									<li class="demo-car">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/sp1.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description About Course</h4>
												<p>Clayton Barton</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf2.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Niel Fontine</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf3.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Jose portilla</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf4.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Niel Fontine</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf5.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Jose portilla</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf2.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Niel Fontine</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf6.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Jose portilla</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<!-- /Slide1 -->
							<div class="item">
								<ul class="thumbnails">
									<li class="demo-car">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/sp1.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description About Course</h4>
												<p>Clayton Barton</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf4.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Niel Fontine</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf5.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Jose portilla</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf6.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Niel Fontine</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf3.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Jose portilla</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf2.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Niel Fontine</p>
											</div>
										</div>
									</li>
									<li class="col-sm-6 demo-sidecourse">
										<div class="fff">
											<div class="thumbnail">
												<a href="#">
													<img src="images/mf3.jpg" alt="">
												</a>
											</div>
											<div class="caption">
												<h4>Description</h4>
												<p>Jose portilla</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<!-- /Slide3 -->
						</div>
						<nav>
							<ul class="control-box pager">
								<li>
									<a data-slide="prev" href="#myCarousel1" class="">
										<i class="glyphicon glyphicon-chevron-left"></i>
									</a>
								</li>
								<li>
									<a data-slide="next" href="#myCarousel1" class="">
										<i class="glyphicon glyphicon-chevron-right"></i>
									</a>
								</li>
							</ul>
						</nav>
						<!-- /.control-box -->
					</div>
					<!-- /#myCarousel -->
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- //Materials-->
		</div>
	</div>
	<!-- content-section-ends-here -->
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
