<%@page import="java.util.ArrayList"%>
<%@page import="model.*" %>
<%@page import="javax.servlet.http.Part" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="ie ie9" lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>Blog Page</title>
		<link
    href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="files/css/bootstrap.css">
<link rel="stylesheet" href="files/css/animate.css">
<link rel="stylesheet" href="files/css/simple-line-icons.css">
<link rel="stylesheet" href="files/css/font-awesome.min.css">
<link rel="stylesheet" href="files/css/style.css">
<link rel="stylesheet" href="files/rs-plugin/css/settings.css">

<!-- Font Awesome Icons -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet"
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
<!-- for user profile -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- glyphicon -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




</head>
<body>

	
	<div class="sidebar-menu-container" id="sidebar-menu-container">

		<div class="sidebar-menu-push">

			<div class="sidebar-menu-overlay"></div>

			<div class="sidebar-menu-inner">

		<header class="site-header">
					<div id="main-header" class="main-header header-sticky">
					
						<div class="inner-header clearfix">
							<div class="logo">
								<a href="index-2.jsp">N-WORLD</a>
							</div>

							<div class="header-right-toggle pull-right hidden-md hidden-lg">
								<a href="javascript:void(0)" class="side-menu-button"><i
									class="fa fa-bars"></i></a>
							</div>

							<nav class="main-navigation pull-right hidden-xs hidden-sm">
								<ul>
									<li><a href="index-2.jsp">Home</a></li>
									<li><a href="#" class="has-submenu">Blog</a>
										<ul class="sub-menu">
											<li><a href="blog.jsp">Read Blog</a></li>
										</ul>
									</li>

									<li><a href="#" class="has-submenu">Images</a>
										<ul class="sub-menu">
											<li><a href="showimages.jsp">See images</a></li>
										</ul>
									</li>
									
									<li><c:set
											var="u" value="${sessionScope.uname}" /> <c:choose>
											<c:when test="${u!=null}">
												<li><a href="#"><c:out value="${u}" /></a>
												</li>
												<li><a href="Logout">&nbsp;Logout</a></a></li>
											</c:when>
											<c:otherwise>
											<li><a href="#" class="has-submenu">sign in/sign up</a>
											<ul class="sub-menu">
												<li><a href="register.html"><span
														class="glyphicon glyphicon-user"></span>&nbsp;Registration</a></li>
												<li><a href="Login.jsp"><span
														class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
											</ul>
											</li>			
											</c:otherwise>
										</c:choose>
									</li>
									<li>
											<form action="ViewBlog.jsp">
												<input type="text" placeholder="Search blog" name="n">
												<button type="submit">
													<i class="fa fa-search"></i>
												</button>
											</form>
										</li>
																	</ul>
							</nav>
						</div>
					</div>
				</header>

				<section class="page-heading wow fadeIn" data-wow-duration="1.5s" style="background-image: url(images/travel.gif)">
					<div class="container">
	
						<div class="page-name">
							<h1>OUR BLOG</h1>
						</div>
					</div>
				</section>
				
			<section class="on-blog-grid">
					<div class="container">		
						<div class="section-heading" >
							<h2 style="color:black">TRAVEL BLOGS</h2>
							<div class="section-dec"></div>
						</div>
								<div class="row">
								<%
									BlogDao d = new BlogDao();
									ArrayList<Blog> al = d.getblog();
									for (Blog p : al) {
								%>
								<div class="col-sm-4">
									<div class="blog-item">
										<div class="panel-body">
											<a href="seemore.jsp"> <img src='getimage.jsp?id=<%=p.getBid()%>'
												class="img-responsive" style="width: 100%" alt="Image"></a>
											<h3><a href="seemore.jsp"><%=p.getName()%></a></h3>	
											<span>Date:<%=p.getDates()%></span>
											<div>
											<a href='seemore.jsp?id=<%=p.getBid()%>'>See more</a>
										</div>
										</div>
									</div>
								</div>
							<%
								}
							%>
						
						</div>
							<div class="col-md-12">
								<div class="blog-page-nav text-center">
									<ul>
										<li><a href="#" class="current">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>	
				</section>
				
					
<section class="call-to-action-1">				
				<div class="container">
					<div class="section-heading" >
							<h2 style="color:black">BLOGS VIDEOS</h2>
							<div class="section-dec"></div>
						</div>
						
						
						<div class="row">
						<div class="col-md-6">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/RcmrbNRK-jY" 
						frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; 
						picture-in-picture" allowfullscreen></iframe>
						</div>
						
						<div class="col-md-6">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/hdA03p6egdg" 
						frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
						allowfullscreen></iframe>
						</div>
						</div>
				 </div>	
</section>
			
				
				
 <footer class="footer">
					<div class="three spacing"></div>
					<div class="container">
						<div class="row">
							<div class="col-md-4">
								<h1>
									<a href="index-2.jsp"> N-WORLD </a>
								</h1>
								<p>©2015 N-WORLD. All rights reserved.</p>
								<div class="spacing"></div>
								<ul class="socials">
									<li><a href="http://facebook.com"> <i
											class="fa fa-facebook"></i>
									</a></li>
									<li><a href="http://twitter.com"> <i
											class="fa fa-twitter"></i>
									</a></li>
									<li><a href="http://dribbble.com"> <i
											class="fa fa-dribbble"></i>
									</a></li>
									<li><a href="http://tumblr.com"> <i
											class="fa fa-tumblr"></i>
									</a></li>
								</ul>
								<div class="spacing"></div>
							</div>
							<div class="col-md-4">
								<div class="spacing"></div>
								<div class="links">
									<h4>Information</h4>
									<ul>
										<li><a href="index-2.jsp">Home</a></li>
										<li><a href="#">View some works here</a></li>
										<li><a href="instagram.com">Follow our blog</a></li>
										<li><a href="about.jsp">Contact us</a></li>
										<li><a href="about.jsp">About us</a></li>
										<li><a href="#">Our services</a></li>
									</ul>
								</div>
								<div class="spacing"></div>
							</div>
							<div class="col-md-4">
								<div class="spacing"></div>
								<h4>Email us</h4>
								<p>We want to share our latest trends, news and insights
									with you.</p>
								<form>
									<input class="email-address" placeholder="Your email address"
										type="text"> <input class="button boxed small"
										type="submit">
								</form>
								<div class="spacing"></div>
							</div>
						</div>
					</div>
					<div class="two spacing"></div>
				</footer>
				<a href="about.jsp" class="go-top"><i class="fa fa-angle-up"></i></a>
			</div>
		

<!-- side menu slide from left side for mobile view -->
		<nav class="sidebar-menu slide-from-left">
			<div class="nano">
				<div class="content">
					<nav class="responsive-menu">
						<ul>
							<li><a href="#">Special Offer</a>	
									</li>
									<li><a href="#" class="has-submenu">Blog</a>
										<ul class="sub-menu">
											<li><a href="blog.jsp">Read Blog</a></li>
										</ul>
									</li>

									<li><a href="#" class="has-submenu">Images</a>
										<ul class="sub-menu">
											<li><a href="showimages.jsp">See images</a></li>
										</ul>
									</li>
									
										<li><c:set
											var="u" value="${sessionScope.uname}" /> <c:choose>
											<c:when test="${u!=null}">
												<li><a href="#"><c:out value="${u}" /></a>
												</li>
												<li><a href="Logout">&nbsp;Logout</a></li>
											</c:when>
											<c:otherwise>
											<li><a href="#" class="has-submenu">sign in/sign up</a>
											<ul class="sub-menu">
												<li><a href="register.html"><span
														class="glyphicon glyphicon-user"></span>&nbsp;Registration</a></li>
												<li><a href="Login.jsp"><span
														class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
											</ul>
											</li>			
											</c:otherwise>
										</c:choose>
								</li>	
						</ul>
					</nav>
				</div>
			</div>
		</nav>
	

	<script type="text/javascript" src="files/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="files/js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script src="files/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="files/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="files/js/plugins.js"></script>
	<script type="text/javascript" src="files/js/custom.js"></script>

</body>
</html>    