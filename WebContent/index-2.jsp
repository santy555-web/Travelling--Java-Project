
<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="model.*" %>
<%@page import="javax.servlet.http.Part" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>Home page</title>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet' type='text/css'>
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
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- glyphicon -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- style for offer table -->
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td, th {
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
background-color: #dddddd;
}
</style>
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
									<li><a href="#showoffer">Special Offer</a></li>
									<li><a href="#" class="has-submenu">Blog</a>
										<ul class="sub-menu">
											<li><a href="blog.jsp">Read Blog</a></li>
										</ul></li>

									<li><a href="#" class="has-submenu">Images</a>
										<ul class="sub-menu">
											<li><a href="showimages.jsp">See images</a></li>
										</ul></li>

									<li><c:set var="u" value="${sessionScope.uname}" /> <c:choose>
											<c:when test="${u!=null}">
												<li><a href="#"><c:out value="${u}" /></a></li>
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
						<%
					if (request.getParameter("msg")!= null) {
				%>

				<div class="container">
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4 alert alert-success">
							<h4 style="text-align: center;">${param.msg}</h4>
						</div>
						<div class="col-sm-4"></div>
					</div>
				</div>
				<%
					}
				%>
				</div>
</header>

				<div class="slider">
					<div class="fullwidthbanner-container">
						<div class="fullwidthbanner">
							<ul>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/BowRiverBanffAlbertaCanada.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">beach holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Tourist & Travel guide</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/BrentaDolomitesItalyViaFerrata.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the nature</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Tourist & Travel guide blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/CappadociaCaveTurkey.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the nature</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Tourist & Travel guide blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>




								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/CappadociaTurkey.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the nature</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Tourist & Travel guide blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>


								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/GrandCanyonArizona.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the nature</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Tourist & Travel guide blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>



								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/KaprunAustria.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the hills</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create multi author
										Blog platform</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class=" second-btn btn btn-slider">Let's ready</a>
									</div></li>


								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/KnucklesSriLanka.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the hills</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create multi author
										Blog platform</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class=" second-btn btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/LakeMinnewankaBanffAlbertacanada.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the hills</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create multi author
										Blog platform</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class=" second-btn btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/les-anderson.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the hills</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create multi author
										Blog platform</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class=" second-btn btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/ManangNepal.jpg" data-fullwidthcentering="on"
									alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Holidays in the hills</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create multi author
										Blog platform</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class=" second-btn btn btn-slider">Let's ready</a>
									</div></li>


								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/MývatnIceland.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Driving holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create a Multi Author
										Blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/SantaBarbaraUSA.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Driving holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create a Multi Author
										Blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/unsplash.jpg" data-fullwidthcentering="on"
									alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Driving holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create a Multi Author
										Blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/VernazzaItaly.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Driving holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create a Multi Author
										Blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>

								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/YulongRiverGuilinChina.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Driving holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create a Multi Author
										Blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>




								<li class="first-slide" data-transition="fade"
									data-slotamount="10" data-masterspeed="300"><img
									src="files/images/KaunertalerGletscherFeichtenimKaunertalAustria.jpg"
									data-fullwidthcentering="on" alt="slide">
									<div class="tp-caption first-line lft tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="250"
										data-speed="1000" data-start="200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">Driving holidays</div>
									<div class="tp-caption second-line lfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="340"
										data-speed="1000" data-start="800"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">you can create a Multi Author
										Blogs</div>
									<div class="tp-caption slider-btn sfb tp-resizeme start"
										data-x="center" data-hoffset="0" data-y="510"
										data-speed="1000" data-start="2200"
										data-easing="Power4.easeOut" data-splitin="none"
										data-splitout="none" data-elementdelay="0"
										data-endelementdelay="0">
										<a href="#" class="btn btn-slider">Let's ready</a>
									</div></li>
							</ul>
						</div>
					</div>
				</div>


<section class="blog-posts">
					<div class="container">
						<div class="section-heading-blog">
							<h2 style="text-align:center;">LATEST POSTS BLOG</h2>
							<span></span>
							<h1><br/></h1>
							<div class="section-dec"></div>
						</div>
				<div class="on-blog-grid">
						<div class="container">
							<div class="row" style="height:300">
								<%
									String name1  = request.getParameter("n");
									BlogDao d1 = new BlogDao();
									ArrayList<Blog> all = d1.getblog();
									for (Blog p : all) {
								%>
									<div class="col-sm-4">
									<div class="panel panel-primary">
										<div class="panel-heading"><%=p.getName()%></div>
										<div class="panel-body">
											<img src='getimage.jsp?id=<%=p.getBid()%>'class="img-responsive" style="width:100%" alt="Image">
										</div>
										<div class="panel-footer">
											<a href='seemore.jsp?id=<%=p.getBid()%>'>See more</a>
										</div>
									</div>
								</div>								<% 
								}
								%>
							</div>
						
							<div class="col-md-12">
								<div class="blog-page-nav text-center">
									<ul>
										<li><a href="#" class="current">1</a></li>
										<li><a href="#" class="next">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>	
</section>

<section class="call-to-action-3" id="showoffer">
					<div class="container">

						<h4 style="text-align: center">Read your latest newsletters,
							we have an offer for you!</h4>
						<hr>
						<br/>
						
						
						<div class="container" >
						
							<%
								String name = request.getParameter("n");
								OfferDao d = new OfferDao();
								ArrayList<AddOffer> al = d.getoffer();
								for (AddOffer p : al)
							%>

							<table class="table tabel-responsive table-bordered" >
								<thead align="center">
									<tr>
										<th>TOUR NUMBER</th>
										<th>TOUR NAME</th>
										<th>LOCATION</th>
										<th>DAYS</th>
										<th>START DATE</th>
										<th>PRICE</th>
										<th>&nbsp; &nbsp; &nbsp; &nbsp; BOOKING</th>
									</tr>
								</thead>
								<tbody>
									<%
										OfferDao k = new OfferDao();
										ArrayList<AddOffer> a = k.getoffer();
										for (AddOffer p : a) {
									%>
									<tr>
										<td><%=p.getOid()%></td>
										<td><%=p.getTourname()%></td>
										<td><%=p.getLocation()%></td>
										<td><%=p.getDays()%></td>
										<td><%=p.getDate()%></td>
										<td><span>&#8377;</span><%=p.getPrice()%></td>
										<td><a href='Booknow.jsp?id=<%=p.getOid()%>'><button type="button" style="background-color:green; color:white;">BOOK NOW</button></a></td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
					</div>
	</section>





<section class="services green">
		<div class="container">
				<div class="section-heading">
					<h2>What We Suggest</h2>
						<div class="section-dec"></div>
						 </div>
						   <div class="service-item col-md-4" align="center">
							 <span><i class="fa fa-support"></i></span>
							   <div class="tittle">
								 <h3>Couch suffering</h3>
							</div>
							<h4>
								If you want to travel in world without money, we suggest you to
								go through the couch suffering and Hitch-hiking. just go to the
								couch-suffering <br/> <a href="https://blog.couchsurfing.com/" target="_blank">www.couchsuufering.com</a>
							</h4>
						</div>
						<div class="service-item col-md-4" align="center">
							<span><i class="fa fa-cogs"></i></span>
							<div class="tittle">
								<h3>Teach Abroad</h3>
							</div>
							<h4>
								There are lot's of schools all over the world
								looking for qualified teachers or specialties
							 	If you are interested, just go through the website <br/>
								<a href="https://www.searchassociates.com/" target="_blank">www.abroaderview.org</a>
							</h4>
						</div>
						<div class="service-item col-md-4" align="center">
							<span><i class="fa fa-eye"></i></span>
							<div class="tittle">
								<h3>Forming Abroad </h3>
							</div>
							<h4>
								WWOOF is a worldwide movement linking volunteers with organic
								farmers. As a volunteer you will live alongside your host 
								helping with daily tasks and experiencing life as a farmer. <br />
								<a href="https://wwoof.net/" target="_blank">www.wwoof.net</a>
							</h4>
						</div>
					</div>
				</section>

<section class="call-to-action-1">				
				<div class="container">
					<div class="section-heading" >
							<h2 style="color:black">TRAVEL BLOGS VIDEOS</h2>
							<div class="section-dec"></div>
						</div>
						
						
						<div class="row">
							<div class="col-md-6">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/RcmrbNRK-jY" 
						frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; 
						picture-in-picture" allowfullscreen></iframe>
						</div>
						
						<div class="col-md-6">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/0GZSfBuhf6Y" 
						frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
						allowfullscreen></iframe>
						</div>
						</div>
						
						<div class="row">
						<div class="col-md-6">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/hdA03p6egdg" 
						frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
						allowfullscreen></iframe>
						</div>
						
						
						<div class="col-md-6">
						<iframe width="560" height="315" src="https://www.youtube.com/embed/Kne3Y0Yrc2Q" 
						frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; 
						picture-in-picture" allowfullscreen></iframe>
						</div>
						</div>
				    	 </div>	
</section>

	
	<section class="call-to-action-1">
					<div class="container">
						<h4>To know about how to travel in the world freely</h4>
						<p class="col-md-10 col-md-offset-1">Do you dream of seeing
							the world, but you do not have a fat travel fund to do it?
							Today, there are more opportunities than ever before to travel
							the world on the cheap â or, for that matter, for free.</p>
						<div class="buttons">
							<div class="col-md-6 col-sm-6 col-xs-6">
								<div class="border-btn">
									<a
										href="https://www.worldtravelfamily.com/ways-to-travel-for-free/">See More</a>
								</div>
							</div>
							<div class="col-md-2 col-sm-6 col-xs-6">
								<div class="border-btn">
									<a href="https://www.moneycrashers.com/travel-world-free/">Get More</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				
	
	





<section class="testimonials">
					<div class="container">
						<div class="section-heading">
							<h2>What They Say</h2>
							<div class="section-dec"></div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div id="owl-demo" class="owl-carousel owl-theme">
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p> Travel is not reward for working, its education for
												living. </p>
											<h6>Diane Arbus</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p> A mind that is stretched by a new experience can
												never go back to its old dimensions. </p>
											<h6>Oliver Wendell Holmes</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>Travel makes one modest, you see what a tiny place
												you occupy in the world. </p>
											<h6>Gustave Flaubert</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p> To awaken quite alone in a strange town is one of
												the most pleasant sensations in the world. </p>
											<h6>Freya Stark</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p> Traveling  it leaves you speechless, then turns you
												into a storyteller. </p>
											<h6>Ibn Battuta</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>The world is a book and those who do not travel read
												only one page.</p>
											<h6>Augastine of Hippo</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p> Travel is the only thing you buy that makes you
												richer. </p>
											<h6>Paulo Coelho</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p> Your imagination is your preview of lifes coming
												attractions.</p>
											<h6>Albert Einstein</h6>
										</div>
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
							<div class="col-md-6">
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
							<div class="col-md-6">
								<div class="spacing"></div>
								<div class="links">
									<h4>Information</h4>
									<ul>
										<li><a href="index-2.jsp">Home</a></li>
										<li><a href="about.jsp">About Us</a></li>
										<li><a href="#">View some works here</a></li>
										<li><a href="instagram.com">Follow our blog</a></li>
										<li><a href="about.jsp">Contact us</a></li>
										<li><a href="about.jsp">About us</a></li>
										<li><a href="#">Our services</a></li>
									</ul>
								</div>
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
							<li><a href="#showoffer">Special Offer</a></li>
							<li><a href="#" class="has-submenu">Blog</a>
								<ul class="sub-menu">
									<li><a href="blog.jsp">Read Blog</a></li>
								</ul></li>

							<li><a href="#" class="has-submenu">Images</a>
								<ul class="sub-menu">
									<li><a href="showimages.jsp">See images</a></li>
								</ul></li>

							<li><c:set var="u" value="${sessionScope.uname}" /> <c:choose>
									<c:when test="${u!=null}">
										<li><a href="#"><c:out value="${u}" /></a></li>
										<li><a href="Logout">&nbsp;Logout</a></a></li>
									</c:when>
									<c:otherwise>
										<li><a href="#" class="has-submenu">sign in/sign up</a>
											<ul class="sub-menu">
												<li><a href="register.html"><span
														class="glyphicon glyphicon-user"></span>&nbsp;Registration</a></li>
												<li><a href="Login.jsp"><span
														class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
											</ul></li>
									</c:otherwise>
								</c:choose></li>
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
