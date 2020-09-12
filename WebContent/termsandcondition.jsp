<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Terms and condition</title>
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
					
						<h1 style="text-align:center" >Terms and Conditions</h1>
						<br>
						<div style="text-align:justify;">
							
							<p>
								<B>he Booking:</B>
							<br>
                                Your contract is with Pioneer Journeys Pvt. Ltd. A contract exists between us when we have confirmed you on our tour of your choice and we have received your signed booking form and deposits. All the relevant section must be correctly and fully completed. We can only accept booking form signed as this confirms that you and other people on the tour accept our booking terms and condition and are entering into the contract.
							</p>
								<b>Cancellations:</b>
							<br>
								If you or any member of your party wishes to cancel your holiday, you must notify us in writing, in any case the date of cancellation will be at the date on which notice is received by Pioneer Journeys Pvt. Ltd. As this incurs administrative cost and retention charges by hotel, the cancellation charges will apply on the following scale:
							 <table border="aero-blue" align="center">
							 <tr>
							 <th>Number of days before departure &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
							<th>Amount of Cancellation charges</th></tr>
							 </tr>
							 <tr>
							 <td>More than 28 Days</td>
							 <td>Deposit only</td>
							  </tr>
							<tr> <td>27-14 Days</td>
							 <td>50% of the Tour Cost</td>
							  </tr>
							 <tr><td>13-07 Days</td>
							  <td>75% of the Tour Cost</td>
							 </tr>
							  <tr><td>06 Days or less</td>
							 <td>100% of the Tour Cost</td>
							 </tr>
							 <tr>
							 </table>
							 
							<b>Liability:</b> 
							<br>
							The company does not own or control hotels, coach or other facilities mentioned in the tour. As an operator of the package tour therefore, we cannot be held liable.<br>
							<li>Where there has been no fault on the part of the company, supplier or agents.</li>
							<li>Where the failures in performance of the contract are attributable to the customer.</li>
							<li>Where the failures are attributable to a third party not connected with the provision of the holiday and is unforeseeable or unavoidable.</li>
							<li>Where the failures are due to unusual and unforeseeable circumstances beyond your control.</li>
							<li>Where the failures are due to an event which you or your supplier even with all due care could not foresee or foretell.</li>
							We do take all reasonable steps in ensuring that the organization maintains standards and provide a service that is acceptable to the passengers. The information within this website has been compiled with all reasonable care and is correct to the best knowledge of the company and is published in good faith.
						
						
						</div>
					
				</div>
				<div style="text-align:center;" ng-if="settings.Authentication.RequireTermsAndConditions && !UserInfo.approvedTermsAndConditions && UserInfo.isAuthenticated">
					<button style="margin:20px; background:skyblue"> <a href="register.html">Agree to Terms and Conditions</button></a>
				</div>
			</form>
		</div>
	</div>
</div>


</body>
</html>