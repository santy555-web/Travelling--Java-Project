<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="model.AddOffer"%>
<%@page import="model.OfferDao"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en-US">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<title> About page</title>


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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

				<section class="page-heading wow fadeIn" data-wow-duration="1.5s"
					style="background-image: url(files/images/01-head.jpg)">
					<div class="container">
						<div class="page-name">
							<h1>ABOUT US</h1>
						</div>
					</div>
				</section>

				<section class="call-to-action-1">
					<div class="container">
						<h1>JUST GO</h1>

						<p class="col-md-10 col-md-offset-1">
							<font size="3"> Ever since company founders Santosh and
								Shubham stapled together their first guidebook after an epic
								trip across Asia, We put travellers at the heart of everything
								we do, informing and inspiring them with trusted content for
								print and digital from experts who visit every destination. 
						</p>
						</font>
						<div class="buttons">

							<div class="col-md-6 col-sm-6 col-xs-6">
								<div class="border-btn">
									<a
										href="https://www.worldtravelfamily.com/ways-to-travel-for-free/">See
										More</a>
								</div>
							</div>
							
							
							<div class="col-md-2 col-sm-6 col-xs-6">
								<div class="border-btn">
									<a href="https://www.moneycrashers.com/travel-world-free/">Get
										More</a>
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
											<p>“ Travel is not reward for working, it’s education for
												living. ”</p>
											<h6>Diane Arbus</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“ A mind that is stretched by a new experience can
												never go back to its old dimensions. ”</p>
											<h6>Oliver Wendell Holmes</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“Travel makes one modest, you see what a tiny place
												you occupy in the world. ”</p>
											<h6>Gustave Flaubert</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“ To awaken quite alone in a strange town is one of
												the most pleasant sensations in the world. ”</p>
											<h6>Freya Stark</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“ Traveling – it leaves you speechless, then turns you
												into a storyteller. ”</p>
											<h6>Ibn Battuta</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“The world is a book and those who do not travel read
												only one page. ”</p>
											<h6>Augastine of Hippo</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“ Travel is the only thing you buy that makes you
												richer. ”</p>
											<h6>Paulo Coelho</h6>
										</div>
									</div>
									<div class="item">
										<div class="testimonials-post">
											<span class="fa fa-quote-left"></span>
											<p>“ Your imagination is your preview of life’s coming
												attractions.”</p>
											<h6>Albert Einstein</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="team">
					<div class="container">
						<div class="section-heading">
							<h2 style="color:red">Meet The Team</h2>
							<div class="section-dec"></div>
						</div>
						<div class="col-md-4">
							<div class="team-member">
								<img src="files/images/01-tea.jpg" alt="image" height="300" width="550">
								<div class="team-content">
									<h3>Santosh Lokare</h3>
									<span>Web Designer</span>
									<p>A position with an organization where my skill can be
										utilized to achieve the organizational strategic vision A
										thought leader with passion in building human capital and
										creating people.</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
										<li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
										<li><a href="https://googleplus.com/"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="https://instagram.com/"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="team-member">
								<img src="files/images/02-shubham.JPG" alt="image" height="300" width="550">
								<div class="team-content">
									<h3>Shubham Mhadgut</h3>
									<span>Manager</span>
									<p>I was working in corporate Performance Management team
										in Google. Now I have join N-world. Earlier was part of
										generalist HR team and Resource management group in N-World</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
										<li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
										<li><a href="https://googleplus.com/"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="https://instagram.com/"><i class="fa fa-instagram"></i></a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="team-member">
								<img src="files/images/02-team.jpg" alt="image" height="300" width="550">
								<div class="team-content">
									<h3>Ankita Mahale</h3>
									<span>Marketing Agent</span>
									<p>I have two decades of experience in print and digital
										design. From websites to brochures to videos, I can take care
										of all of your marketing needs.</p>
								</div>
								<div class="social-icons">
									<ul>
										<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
										<li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
										<li><a href="https://googleplus.com/"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="https://instagram.com/"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</section>


				<section class="call-to-action-4">
					<div class="container-fluid"
						style="background-color: rgb(255, 255, 255);">
						
						
					  <!--
						<div class="row" style="border:1px solid black" >
							  <div class="col-sm-04">
								<img src="files/images/03-flower.jpg" align="left" alt="flower" style="float:left;width:40%;height:60%;  transform: rotate(90deg); border:1px solid #ffcc73">
							</div>
							-->
							<div class="col-sm-08" Style="border:1px solid black" height="300" width="300">
							<!--<p Style="border:1px solid #ffcc73">ENCOUNTERS TRAVEL DISCOUNTED SMALL GROUP TOURS
								<br/>-->
								<!--
								Encounters Travel is an adventure tour
								operator, based in the UK but with representatives in Canada,
								South Africa, Australia and New Zealand. We run a wide selection
								of cultural and adventurous tours around the world, each
								carefully designed to help you get the most out of the country
								you're visiting. Our tours range from historical sight seeing and
								Nile cruises in Egypt, through to long strenuous treks and white
								water rafting in Nepal or swimming with whales in Tonga. You can
								join other travellers on a small group departure, or personalise
								and tailor-make an itinerary for you to enjoy privately.
								Whatever your preference, we have a team of experienced travel
								consultants ready to advise you and help arrange your next great
								adventure tour!
								</p>
							-->
							<!--
							</div>
							<div class="col-sm-02">ijdfdhfjdjghfh
							</div>
							-->
						</div>
					</div>
				</section>



				<section class="team">
					<div class="container">
					<h3 align="center">Make an Enquiry</h3>
						<div class="section-heading">
							
							<div class="section-dec"></div>
						</div>
						<div class="col-md-4">
							<div class="team-member">
								<div class="team-content">
								<img src="files/images/enquiry.png"  height="180" width="20">
									<h3>Make an Enquiry</h3>
									
									<p>Phone or email us with any 
									questions, we’re here to help</p>
								<a href="contact.html" class="btn btn-success" role="button" aria-disabled="true">Enquiry</a>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="team-member">
								
								<div class="team-content" >
								<img src="files/images/call.png"  height="180" width="20">
									<h3>Request a call back</h3>
									
									<p>We'll ring you and help you start
									 planning your next holiday</p>
								<a href="contact.html" class="btn btn-success" role="button" aria-disabled="true">Request</a>
								</div>
							</div>
						</div>
						<div class="col-md-4" >
							<div class="team-member">
								
								<div class="team-content">
								<img src="files/images/booknow.png" height="180" width="20">
									<h3>Start your Booking</h3>
									
									<p>Once you find what you’re 
									looking for, book online now</p>
									<a href="contact.html" class="btn btn-success" role="button" aria-disabled="true">Book now</a>
			
								</div>
							</div>
						</div>
					</div>
				</section>





				<section class="clients">
					<div class="container">
						<div class="section-heading">
							<font size="5" color="red">OUR CLIENTS</font>
							<div class="section-dec"></div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-12">
							<div class="client-item">
								<img src="files/images/01-client.png" alt="">
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-12">
							<div class="client-item">
								<img src="files/images/02-client.png" alt="">
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-12">
							<div class="client-item">
								<img src="files/images/03-client.png" alt="">
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-12">
							<div class="client-item">
								<img src="files/images/04-client.png" alt="">
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-12">
							<div class="client-item">
								<img src="files/images/05-client.png" alt="">
							</div>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-12">
							<div class="client-item">
								<img src="files/images/06-client.png" alt="">
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