



<div ng-app="">

<div style="margin-right: 15em;" align="center" >
	<form:form method="post" action="../shiipingAddess/${username}" onsubmit=" ">
		<table align="center">
		<tr>
		<td colspan="1" align="center"><h3>Shipping Address </h3></td>
		</tr>

			<tr>
				<td>User Name :</td>			
				<td><input class="form-control" type="text" name="name" id="user" required="true" value="${User.name}"/>
			</tr>
			
			<tr>
				<td>Phone Number :</td>				
				<td><input class="form-control" type="text" name="phoneNo" id="ph" required="true" value="${User.mobile}"/>
			</tr>
			<tr>
				<td>Email id :</td>				
				<td><input class="form-control" type="email" name="emailid" id="email" required="true" value="${User.email}"/>
			</tr>
			<tr>
				<td>Address :</td>				
				<td><input class="form-control" type="text" name="address" id="address"  required="true"value="${User.address}"/></td>
			</tr>
			<tr>
				<td>Zipcode :</td>			
				<td><input class="form-control" type="text" name="zipCode" id="zip" required="true" value="${User.zipCode}"/></td>
			</tr>
	
			<tr>
				
				<td align="left">
				<input class="btn btn-success" type="submit" value="submit" >
				<input class="btn btn-danger" type="button" value="Cancel"></td>
			</tr>
			
		</table>
	</form:form>
	</div>
	</div>