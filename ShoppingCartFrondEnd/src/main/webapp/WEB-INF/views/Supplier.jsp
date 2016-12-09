
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<c:if test="${login}">
		<c:set var="s" scope="application" value="9" />
	</c:if>
	
	<c:if test="${logout}">
		<c:set var="s" scope="application" value="10" />
	</c:if>
	

 
			<div>
	<c:if test="${s eq 9}">
<div class="alert alert-danger col-sm-3 col-xs-offset-3">
  <strong>${error}</strong> 
</div>
 </c:if></div>
 
 <div>
	<c:if test="${s eq 10}">
<div class="alert alert-success  col-xs-3 col-xs-offset-3">
  <strong>${msg}</strong> 
</div>
 </c:if></div>
 
<div class="container">
  <h2>Horizontal form</h2>
  <form:form action="login" method="post" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" required="true" name="email" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="password" name="password" required="true" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
        <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
				
      </div>
    </div>
  </form:form>
</div>

</body>
</html>

