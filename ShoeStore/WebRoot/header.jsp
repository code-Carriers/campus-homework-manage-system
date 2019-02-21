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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.easydropdown.js"></script>
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>


</head>
<body>
<!-- header -->
	<div class="header">
	<div class="top_bg">
<div class="container">
<div class="header_top">
	<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
			</div>
	<div class="top_right">
		<ul>
			<li><a href="registration.html">Create Account </a></li>|
			<li><a href="contact.html">Contact</a></li>|
			<s:if test="#session.user">
				 <li class="login" >
					<div id="loginContainer">
							<a href="#" id="loginButton">
								<span>My Account:<s:property value="#session.user.name"/></span></a>
						    <div id="loginBox">
						    	 <div id="loginForm">     
					                <fieldset id="body">
						                	<fieldset>
						                          <label for="email"><a href="#">我的账号</a></label>      
						                    </fieldset>
						                    <fieldset>
						                            <label for="password"><a href="#">修改个人信息</a></label>
						                    </fieldset>
						                    <fieldset>
						                            <label for="password"><a href="query_userOrder.action">查看我的订单</a></label>
						                    </fieldset>
						                     <fieldset>
						                            <label for="password"><a href="logout.action">退出登录</a></label>
						                    </fieldset>
						              </fieldset>
						           </div>  
				       	 	</div>
			      		</div>
				
				 </li> 
				 
			</s:if>
			<s:else>
				<li class="login" >
						<div id="loginContainer">
							<a href="#" id="loginButton"><span>Login</span></a>
						    <div id="loginBox">                
						        <form id="loginForm" action="login.action" method="post">
						                <fieldset id="body">
						                	<fieldset>
						                          <label for="email">username</label>
						                          <input type="text" name="user.phone" id="email">
						                    </fieldset>
						                    <fieldset>
						                            <label for="password">Password</label>
						                            <input type="password" name="user.password" id="password">
						                     </fieldset>
						                    <input type="submit" id="login" value="Sign in">
						                	<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
						            	</fieldset>
						            <span><a href="#">Forgot your password?</a></span>
								 </form>
				       	 	</div>
			      		</div>
				</li>
			</s:else>
		</ul>
	</div>
	<div class="clearfix"> </div>
</div>
</div>
</div>
	</div>
	<div class="head-bann">
		<div class="container">
			<div class="head-nav">
				<span class="menu"> </span>
					<ul class="megamenu skyblue">
			<li><a class="color1" href="index.jsp">Home</a></li>
			<li class="grid"><a class="color2" href="menshoe.action">Men's</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="women.html">login</a></li>
									<li><a href="women.html">create an account</a></li>
									<li><a href="women.html">create wishlist</a></li>
									<li><a href="women.html">my shopping bag</a></li>
									<li><a href="women.html">brands</a></li>
									<li><a href="women.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
			<li><a class="color4" href="womenshoe.action">Women's</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="women.html">login</a></li>
									<li><a href="women.html">create an account</a></li>
									<li><a href="women.html">create wishlist</a></li>
									<li><a href="women.html">my shopping bag</a></li>
									<li><a href="women.html">brands</a></li>
									<li><a href="women.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
				<li><a class="color5" href="kidshoe.action">Kids</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="women.html">login</a></li>
									<li><a href="women.html">create an account</a></li>
									<li><a href="women.html">create wishlist</a></li>
									<li><a href="women.html">my shopping bag</a></li>
									<li><a href="women.html">brands</a></li>
									<li><a href="women.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color6" href="sportshoe.action">Sports</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="women.html">login</a></li>
									<li><a href="women.html">create an account</a></li>
									<li><a href="women.html">create wishlist</a></li>
									<li><a href="women.html">my shopping bag</a></li>
									<li><a href="women.html">brands</a></li>
									<li><a href="women.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color7" href="brand.action">Brands</a>
				</li>
				<li><a class="color8" href="#">Collections</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>shop</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">brands</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>help</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>account</h4>
								<ul>
									<li><a href="women.html">login</a></li>
									<li><a href="women.html">create an account</a></li>
									<li><a href="women.html">create wishlist</a></li>
									<li><a href="women.html">my shopping bag</a></li>
									<li><a href="women.html">brands</a></li>
									<li><a href="women.html">create wishlist</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>my company</h4>
								<ul>
									<li><a href="women.html">trends</a></li>
									<li><a href="women.html">sale</a></li>
									<li><a href="women.html">style videos</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>popular</h4>
								<ul>
									<li><a href="women.html">new arrivals</a></li>
									<li><a href="women.html">men</a></li>
									<li><a href="women.html">women</a></li>
									<li><a href="women.html">accessories</a></li>
									<li><a href="women.html">kids</a></li>
									<li><a href="women.html">style videos</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    			   </div>
				</li>
				<div class="clearfix"> </div>
		 </ul> 
			</div>
		</div>	
	</div>
					<!-- script-for-nav -->
					<script>
						$( "span.menu" ).click(function() {
						  $( ".head-nav ul" ).slideToggle(300, function() {
							// Animation complete.
						  });
						});
					</script>
				<!-- script-for-nav -->
		
	<div class="banner1">
		<div class="container">
		</div>
	</div>
<!-- header -->
  </body>
</html>
