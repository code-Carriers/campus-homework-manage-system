<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>Home </title>
	<!-- Meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Metga-tags -->

	<!-- Styleshets -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Bootstrap-css -->
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<!--// Responsive-tabs -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Pop-up -->
	<link href="css/banner.css" rel="stylesheet" type="text/css" media="all" />
	<!--// banner-css -->
	<link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
	<!--// shop-css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- common-css -->
	<link rel="stylesheet" href="css/client.css" type="text/css" media="all" />
	<!-- // client-css -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- // Font-awesome-css -->
	<!--// Styleshets -->

	<!-- Online-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Montserrat:300,500,600,700,800" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<!--// Online-fonts -->
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <!-- about -->
	<div class="aboutf">
		<div class="container">
			<h3 class="tittlef-agileits-w3layouts">流行书籍</h3>
			<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis tristique est, et egestas odio. Mauris ac tristique
				arcu, sed interdum risus.Integer quis tristique est, et egestas odio. Mauris ac tristique arcu, sed interdum risus.</p>
		</div>
		<div class="banner_bottom_tab_grids">
			<div id="verticalTab" class="resp-vtabs" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab">Courses</li>
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab">Marketing</li>
					<li class="resp-tab-item" aria-controls="tab_item-2" role="tab">Development</li>
					<li class="resp-tab-item" aria-controls="tab_item-3" role="tab">Business</li>
					<li class="resp-tab-item" aria-controls="tab_item-4" role="tab">Maths</li>
				</ul>
				<div class="resp-tabs-container">
					<!-- tab1 -->
					<div class="resp-tab-content resp-tab-content-active" style="display:block" aria-labelledby="tab_item-0">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="courses.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">IT Management</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="courses.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Core IT Skills</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="courses.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Databases</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="courses.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Mobile Apps</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<!-- //tabs-info -->
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Network And Security</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Data Science</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Game Development</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Hardware</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>

							<!-- // video-button-popup -->
							<div id="small-dialog" class="mfp-hide">
								<iframe src=""></iframe>
							</div>
							<!-- // video-button-popup -->

						</div>
						<!-- //tabs-info -->
					</div>
					<!-- //tab1 -->
					<!-- tab2 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-1">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf5.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="marketing.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Digital marketing</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="marketing.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Marketing Management</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf6.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="marketing.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Social Media Marketing</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf7.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="marketing.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Public Relations</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<!-- //tabs-info -->
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog1" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Social Media Marketing</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog1" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Digital marketing</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog1" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Public Relations</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf7.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog1" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Marketing Management</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>

							<!-- // video-button-popup -->
							<div id="small-dialog1" class="mfp-hide">
								<iframe src=""></iframe>
							</div>
							<!-- // video-button-popup -->

						</div>
						<!-- //tabs-info -->
					</div>
					<!--// tab2 -->
					<!-- tab3 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-2">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="development.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Web Development</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="development.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Mobile Apps</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="development.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Programming Languages</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="development.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Game Development</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<!-- //tabs-info -->
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog2" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Databases</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog2" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Software Testing</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog2" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Software Engineering</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog2" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Development Tools</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>

							<!-- // video-button-popup -->
							<div id="small-dialog2" class="mfp-hide">
								<iframe src=""></iframe>
							</div>
							<!-- // video-button-popup -->

						</div>
						<!-- //tabs-info -->
					</div>
					<!--// tab3 -->
					<!-- tab4 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-3">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="business.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Business Law</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="business.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Project Management</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="business.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">E-Commerce</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="business.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Strategy</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<!-- //tabs-info -->
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog3" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Communications</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog3" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Entrepreneurship</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog3" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Finance</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog3" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Leadership & Management</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>

							<!-- // video-button-popup -->
							<div id="small-dialog3" class="mfp-hide">
								<iframe src=""></iframe>
							</div>
							<!-- // video-button-popup -->

						</div>
						<!-- //tabs-info -->
					</div>
					<!--// tab4 -->
					<!-- tab5 -->
					<div class="resp-tab-content" aria-labelledby="tab_item-4">
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf9.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="maths.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Algebra</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bbf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="maths.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Calculus</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf8.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="maths.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Core maths skills</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf10.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="maths.html" class="buttonf">Know More</a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Geometry</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<!-- //tabs-info -->
						<!-- tabs-info -->
						<div class="main-topicsf">
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf1.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog4" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Probability & Statistics</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf2.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog4" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Geometry</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf4.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog4" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Test Taking Skills</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="col-md-3 col-sm-6 tabsf-w3-agileits-grids">
								<img src="images/bf3.jpg" alt="" />
								<div class="img-caption">
									<div class="tabs-inn-info-agileits-w3layouts">
										<a href="#small-dialog4" class="popup-with-zoom-anim buttonf"><span class="fa fa-play-circle-o" aria-hidden="true"></span></a>
									</div>
								</div>
								<h3 class="sub-w3ls-headf">Series and Sequences</h3>
								<p class="paragraphf">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet lectus turpis. Donec maximus odio nec odio</p>
							</div>
							<div class="clearfix"> </div>

							<!-- // video-button-popup -->
							<div id="small-dialog4" class="mfp-hide">
								<iframe src=""></iframe>
							</div>
							<!-- // video-button-popup -->

						</div>
						<!-- //tabs-info -->
					</div>
					<!--// tab5 -->
				</div>
			</div>
		</div>
	</div>
	<!-- //about-->
    
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
	
	<!-- js -->

	<!-- Common js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!--// Common js -->

	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		edu.render();

		edu.cart.on('edu_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->

	<!-- reviews -->
	<script>
		function blinker() {
			$('.blinking').fadeOut(500);
			$('.blinking').fadeIn(500);
		}
		setInterval(blinker, 1000);
	</script>
	<script>
		function cycle($item, $cycler) {
			setTimeout(cycle, 2000, $item.next(), $cycler);

			$item.slideUp(1000, function () {
				$item.appendTo($cycler).show();
			});
		}
		cycle($('#cycler div:first'), $('#cycler'));
	</script>
	<!--// reviews -->

	<!-- responsive-tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!-- //responsive-tabs -->

	<!-- Carousel Auto-Cycle -->
	<script>
		$(document).ready(function () {
			$('.carousel').carousel({
				interval: 6000
			})
		});
	</script>
	<!-- // Carousel Auto-Cycle -->

	<!-- Nav Js -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, true).slideDown("400");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).not('.in .dropdown-menu').stop(true, true).slideUp("400");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!--// Nav Js -->

	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
				<section>
					<div class="modal-body">
						<div class="loginf_module">
							<div class="module form-module">
								<div class="toggle"><i class="fa fa-times fa-pencil"></i>
									<div class="tooltip">Click Me</div>
								</div>
								<div class="form">
									<h3>Login to your account</h3>
									<form action="#" method="post">
										<input type="text" name="Username" placeholder="Username" required="">
										<input type="password" name="Password" placeholder="Password" required="">
										<input type="submit" value="Login">
									</form>
									<div class="cta"><a href="#">Forgot your password?</a></div>
								</div>
								<div class="form">
									<h3>Create an account</h3>
									<form action="#" method="post">
										<input type="text" name="Username" placeholder="Username" required="">
										<input type="password" name="Password" placeholder="Password" required="">
										<input type="email" name="Email" placeholder="Email address" required="">
										<input type="text" name="Phone" placeholder="Phone Number" required="">
										<input type="submit" value="Register">
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function () {
			// Switches the Icon
			$(this).children('i').toggleClass('fa-pencil');
			// Switches the forms  
			$('.form').animate({
				height: "toggle",
				'padding-top': 'toggle',
				'padding-bottom': 'toggle',
				opacity: "toggle"
			}, "slow");
		});
	</script>
	<!-- //bootstrap-pop-up -->

	<!--pop-up-box -->
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //pop-up-box -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smoothscroll -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smoothscroll -->
  </body>
</html>
