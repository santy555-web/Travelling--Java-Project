<%@page import="java.util.ArrayList"%>
<%@page import="model.*" %>
<%@page import="controller.*" %>
<%@page import="java.sql.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

</head>


<body>
<%@include file="userheader.jsp"%> 
<section class="page-heading wow fadeIn" data-wow-duration="1.5s" style="background-image: url(files/images/01-head.jpg)">
					<div class="container">
						<div class="page-name">
							<h1>BOOKING PRINT</h1>
						</div>
					</div>
			</section>
			
<section class="call-to-action-1">				
<div class="container">				
			
			<%
				Register r = (Register) session.getAttribute("name");	
				BookDao d = new BookDao();
				ArrayList<Book> al = d.getbook(r.getGmail());
				
			%>

		<table class="table tabel-responsive table-bordered">
			<thead align="center">
				<tr>
					<th>TOUR ID</th>
					<th>USER NAME</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GMAIL</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TOUR NAME</th>
					<th>LOCATION</th>
					<th>DAYS</th>
					<th>START DATE</th>
					<th>NO OF PERSON</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRICE &nbsp;(&#8377;)<th>
				</tr>
			</thead>
			<tbody>
			<% 
			for (Book p : al)
			{
			%>
				<tr>
					<td><%=p.getCid() %></td>
					<td><%=p.getUname()%></td>
					<td><%=p.getGmail()%></td>
					<td><%=p.getTname()%></td>
					<td><%=p.getLocations()%></td>
					<td><%=p.getDays()%></td>
					<td><%=p.getDates()%></td>
					<td><%=p.getNoofperson()%></td>
					<td><%=p.getPrice()%></td>	
				</tr>
				<%
										}
									%>
			</tbody>

	<tr>
			<td colspan="8"></td>
			<td style="text-align: right">
			<%
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "admin", "str654321");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select sum(price)from book");
				while (rs.next()) {
				%>
					<span><b>Total:</b><b><%=rs.getDouble(1)%>(&#8377;)&nbsp;&nbsp;</b></span> 
				<%
 				}
 				con.close();
 			%> 
 				
 		  </td>			
		</tr>
</table>
</div>
</section>
	
	
</body>
</html>