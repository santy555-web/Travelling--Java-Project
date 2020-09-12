




<%@page import="java.util.ArrayList"%>
<%@page import="model.*" %>
<%@page import="controller.*" %>
<%@page import="java.sql.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>

<script>
function myFunction() {
  window.print();
}
</script>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>print page</title>
</head>
<body>





<div ng-if="UserInfo.approvedTermsAndConditions || !UserInfo.isAuthenticated">
	<ncy-breadcrumb></ncy-breadcrumb>
</div>
<div class="container">
	<div class="row">
		<div class="col-nd-12">
			<form name="tandc" ng-submit="approveTandC()">
				<div class="panel panel-default" style="margin-top:20px;">
					
						<h1 style="text-align:center" >N-world Travel and Tourism</h1>
						<h5 style="text-align:center"><b>Booking Details</b></h5>
						<br>
						<div style="text-align:justify;">


<%
				Register r = (Register) session.getAttribute("name");	
				BookDao d = new BookDao();
				ArrayList<Book> al = d.getbook(r.getGmail());
				
							%>

				<% 
			for (Book p : al)
			{
			%>
				<div class="row">
				<div class=col-md-12 align="center">
				<p>TOUR ID:&nbsp; <%=p.getCid()%></p>
				<p>USER NAME: &nbsp;<%=p.getUname()%> </p>
				<p>GMAIL:&nbsp; <%=p.getGmail()%></p>
				<p>TOUR NAME:&nbsp; <%=p.getTname()%> </p>
				<p>LOCATION:&nbsp;<%=p.getLocations()%></p>
				<p>DAYS:&nbsp; <%=p.getDays()%></p>
				<p>START DATE:&nbsp;<%=p.getDates()%> </p>
				<p>NO OF PERSON:&nbsp;<%=p.getNoofperson()%></p>
				<p>PRICE:&nbsp; <%=p.getPrice()%></p>
				
	
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
 				<br>
 				<br>
 				<br>
 		  </div>
</div>

		<%
			}
		%>
</div>
					
				</div>
				<div style="text-align:center;" ng-if="settings.Authentication.RequireTermsAndConditions && !UserInfo.approvedTermsAndConditions && UserInfo.isAuthenticated">
					<button style="margin:20px; background:skyblue" onclick="myFunction()">Print</button>
				
				</div>
			</form>
		</div>
	</div>
</div>


</body>
</html>