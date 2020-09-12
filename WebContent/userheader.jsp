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
	<title>header</title>
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
								<a href="index-2.jsp">N-World</a>
							</div>
								<div class="header-right-toggle pull-right hidden-md hidden-lg">
									<a href="javascript:void(0)" class="side-menu-button"><i
									class="fa fa-bars"></i></a>
								</div>
							<nav class="main-navigation pull-right hidden-xs hidden-sm">
								<ul>
									<li><a href="index-2.jsp">Home</a></li>
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
											var="u" value="${sessionScope.uname}" /> 
										
											<c:choose>
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
				</header>
</div></div></div>
</body>
</html>