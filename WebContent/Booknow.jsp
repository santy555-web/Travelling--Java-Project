<%@page import="java.util.ArrayList"%>
<%@page import="model.*" %>
<%@page import="controller.*" %>
<%@page import="java.sql.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Book Now</title>
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
	
	
	<!-- glyphicon -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="userheader.jsp" %>
</head>
<body>

			<section class="page-heading wow fadeIn" data-wow-duration="1.5s" style="background-image: url(files/images/01-head.jpg)">
					<div class="container">
						<div class="page-name">
							<h1>BOOKING OFFER</h1>
							
						</div>
					</div>
			</section>	
			

<section class="services green">
					<div class="container">
						<div class="section-heading">
							<h2>BOOK OFFER</h2>
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
									<%
									if(session.getAttribute("name")!=null)
									{
										Register r = (Register) session.getAttribute("name");
									
									%>

									<form action="booknow" method="post" action="/action_page.php">
										<table class="table tabel-responsive table-bordered" >
											<tr>
												<td align="center">USER NAME:</td>
												<td><input type="text" name="username" size="46"
													value='<%=r.getName()%>' readonly="readonly" /></td>
											</tr>
											<tr>
												<td align="center">USER GMAIL:</td>
												<td><input type="text" name="gmail" size="46"
													value='<%=r.getGmail()%>' readonly="readonly" /></td>
											</tr>
											<tr>
											<tr>
												<td align="center">TOUR NAME:</td>
												<td><input type="text" name="tname" size="46" 
													value='<%=p.getTourname()%>' readonly="readonly" /></td>
											</tr>
											<tr>
												<td align="center">LOCATION:</td>
												<td><input type="text" name="location" size="46"
													value='<%=p.getLocation()%>' readonly="readonly" /></td>
											</tr>
											<tr>
												<td align="center">DAYS:</td>
												<td><input type="text" name="days" size="46" 
													value='<%=p.getDays()%>' readonly="readonly" /></td>
											</tr>
											<tr>
												<td align="center">START DATE:</td>
												<td><input type="text" name="date" size="46"
													value='<%=p.getDate()%>' readonly="readonly"/></td>
											</tr>
											
											<tr>
												<td align="center">PRICE:</td>
												<td><input type="text" name="price" size="46"
													value='<%=p.getPrice() %>'  readonly="readonly"/></td>
											</tr>
											<tr>
												<td align="center">NO OF PERSONS:</td>
												<td><input type="text" name="no" size="46" placeholder="Enter number of person" required/></td>
											</tr>
										
											<tr>
												<td align="center">OFFER ID:</td>
												<td><input type="text" name="oid" size="46"
													value='<%=p.getOid() %>'   readonly="readonly" /></td>
											</tr>
											<tr>
											<td> </td>
												<td> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
												 &nbsp; &nbsp; &nbsp;<input type="submit" value="book now"/>
												</td>
											</tr>
										</table>
									</form>
									<%}
									else
									{
										response.sendRedirect("Login.jsp");
									}%>
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