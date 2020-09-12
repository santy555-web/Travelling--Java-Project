<%@page import="java.util.ArrayList"%>
<%@page import="model.*" %>
<%@page import="java.sql.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Edit offer</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="files/css/bootstrap.css">
	<link rel="stylesheet" href="files/css/animate.css">
	<link rel="stylesheet" href="files/css/simple-line-icons.css">
	<link rel="stylesheet" href="files/css/font-awesome.min.css">
	<link rel="stylesheet" href="files/css/style.css">
	<link rel="stylesheet" href="files/rs-plugin/css/settings.css">
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<c:set var="u" value="${sessionScope.admin}"/>
<c:if test="${u==null}">
<c:redirect url="Login.jsp"></c:redirect>
</c:if>


<div class="sidebar-menu-container" id="sidebar-menu-container">

		<div class="sidebar-menu-push">

			<div class="sidebar-menu-overlay"></div>

			<div class="sidebar-menu-inner">
			<header class="site-header">
					<div id="main-header" class="main-header header-sticky">
						<div class="inner-header clearfix">
							<div class="logo">
								<a href="index-2.jsp">N-World</a>
							</div>
							<div class="header-right-toggle pull-right hidden-md hidden-lg">
								<a href="javascript:void(0)" class="side-menu-button"><i class="fa fa-bars"></i></a>
							</div>
							<nav class="main-navigation pull-right hidden-xs hidden-sm">
								<ul>
							<li><a href="header.jsp">HOME</a></li>
							<li class="active"><a href="addblog.jsp">ADD BLOG</a></li>
								<li><a href="show-offer.jsp">SHOW OFFER</a></li>
								<li><a href="Addimages.html">ADD IMAGES</a></li>
								<li><a href="Addoffer.jsp">ADD OFFER</a></li>
								<li><a href="registerdetails.jsp">USER DETAILS</a></li>
								<li><a href="ViewBlog.jsp">VIEW BLOG</a></li>
							<li><a href="Logout">Logout</a></li>
							<li><a href="#"
								class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white"
								title="My Account"> <img src="images/santu.jpg"
									class="w3-circle" style="height: 23px; width: 23px"
									alt="Avatar">
							</a>
							<li>
						</ul>

						</nav>
						</div>
					</div>
				</header>
			<section class="page-heading wow fadeIn" data-wow-duration="1.5s" style="background-image: url(files/images/01-head.jpg)">
					<div class="container">
						<div class="page-name">
							<h1>ADMIN EDIT OFFER </h1>
							
						</div>
					</div>
			</section>	
			


<section class="services green">
					<div class="container">
						<div class="section-heading">
							<h2>EDIT OFFERS</h2>
							<div class="section-dec"></div>
						</div>
						<div class="row">
							<div class="col-md-12">
								
						<div class="container" align="center">

								<div class="container">
									<%
										int id = Integer.parseInt(request.getParameter("id"));
										OfferDao p1 = new OfferDao();
										AddOffer p = p1.getoffer(id);
									%>
									<form action="editoffer" method="post">
										<table class="table">
											<tr>
												<td>Tour Name:</td>
												<td><input type="text" name="a1"
													value='<%=p.getTourname()%>' /></td>
											</tr>
											<tr>
												<td>Location:</td>
												<td><input type="text" name="a2"
													value='<%=p.getLocation()%>' /></td>
											</tr>
											<tr>
												<td>Days:</td>
												<td><input type="text" name="a3"
													value='<%=p.getDays()%>' /></td>
											</tr>
											<tr>
												<td>Start Date:</td>
												<td><input type="text" name="a4"
													value='<%=p.getDate()%>' /></td>
											</tr>
											<tr>
												<td>Price:</td>
												<td><input type="text" name="a5"
													value='<%=p.getPrice() %>' /></td>
											</tr>
											<tr>
												<td>oid:</td>
												<td><input type="text" name="a6"
													value='<%=p.getOid() %>' readonly="readonly" /></td>
											</tr>
											<tr>
												<td><input type="submit" value="Update offer"
													class="btn btn-success" /></td>
											</tr>
										</table>
									</form>
								</div>


							</div>

							
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
						</ul>
					</nav>
				</div>
			</div>
		</nav>
	</div>

	<script type="text/javascript" src="files/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="files/js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script src="files/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="files/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="files/js/plugins.js"></script>
	<script type="text/javascript" src="files/js/custom.js"></script>

</body>
</html>