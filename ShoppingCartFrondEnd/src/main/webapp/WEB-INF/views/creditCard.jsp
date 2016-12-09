<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div style="margin-right:30%" align="center">
	<form:form class="form-group" action="../cardPayment/${username}">

		<table align="center">
			<tr>
			<td colspan="2" align="center"><h3>Payment Details</h3></td>
			</tr>
			<tr>
				<td>Name on Card</td>
				<td>:</td>
				<td><input class="form-control" type="text" name="nameOnCard" />
				<td>
			</tr>
			<tr>
				<td>Card Number</td>
				<td>:</td>
				<td><input class="form-control" type="text" name="cardNumber" /></td>
			</tr>
			<tr>
				<td>Expiration Date</td>
				<td>:</td>
				<td>
				<script language="JavaScript">
					document.write("<select class='form-control' name='month'>");
					document.write("<option>month</option>")
					for (var month = 01; month <= 12; month++) {
						document.write("<option>" + month + "</option>");
					}
					document.write("</select>");
				</script> 
				<script language="JavaScript">
					document.write("<select class='form-control' name='years'>");
					document.write("<option>years</option>")
					for (var year = 2013; year <= 2021; year++) {
						document.write("<option>" + year + "</option>");
					}
					document.write("</select>");
</script></td>
			</tr>
			<tr>
				<td>Card CVV</td>
				<td>:</td>
				<td><input class="form-control" type="text" name="cvv" />
			</tr>
			<tr>
				<td colspan="3" align="center"><input class="btn btn-success"  type="submit"
					value="Proceed" /></td>
			</tr>
		</table>
	</form:form>
