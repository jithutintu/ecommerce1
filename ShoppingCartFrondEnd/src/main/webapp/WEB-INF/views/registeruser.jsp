<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<c:if test="${not empty userexists }">
	<div>
		<div class=" col-xs-3 col-xs-offset-3">
			<strong>${userexists}</strong>
		</div>
	</div>
</c:if>

<form:form action="register" method="post" commandName="user">
	<div class="span9 margin-top">
		<div class="span9 center margin-bottom">
			<h3>Registration Form</h3>
		</div>

		<div class="span3 no_margin_left">
			<legend>Your Personal Details</legend>
			<div class="control-group">
				<label class="control-label">userName</label>
				<form:errors path="name" cssStyle="color: #ff0000" />
				<div class="controls docs-input-sizes">
					<form:input path="name" required="true" id="fullname"
						class="form-Control" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Email</label>
				<form:errors path="email" cssStyle="color: #ff0000" />
				<div class="controls docs-input-sizes">
					<form:input path="email" required="true" id="email" class="form-Control" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Password</label>
				<form:errors path="password" cssStyle="color: #ff0000" />
				<div class="controls docs-input-sizes">
					<form:input path="password" required="true" id="password" class="form-Control" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Mobile</label>
				<form:errors path="mobile" cssStyle="color: #ff0000" />
				<div class="controls docs-input-sizes">
					<form:input path="mobile" required="true" id="mobile" class="form-Control" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">address</label>
				<form:errors path="address" cssStyle="color: #ff0000" />
				<div class="controls docs-input-sizes">
					<form:input path="address" required="true" id="address" class="form-Control" />
				</div>
			</div>

<div class="control-group">
				<label class="control-label">ZipCode</label>
				<form:errors path="zipCode" cssStyle="color: #ff0000" />
				<div class="controls docs-input-sizes">
					<form:input path="zipCode" required="true" id="zipcode" class="form-Control" />
				</div>
			</div>



	 <div class="form-group ">
      <div class="col-sm-offset-2 col-sm-5 col-xs-offset-2 col-xs-3"style="margin-top:50px">
        <button type="submit" class="btn btn-success">Submit</button>
       
        <a href="home" class="btn btn-danger">Home</button></a>
        <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
      </div>
    </div>
</form:form>


</html>