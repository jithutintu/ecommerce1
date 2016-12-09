
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

	<div class="container col-md-10 col-md-offset-4" style="margin-top:50px">



  <c:if test="${not empty error}">
<div class="alert alert-danger col-sm-4  error">${error} 
</div>
 </c:if>
 <c:if test="${not empty logout}">
		 <div class="alert alert-success col-sm-4 col-xs-3 col-xs-offset-1 logout">${logout}</div>
	</c:if>
 
  <c:if test="${not empty success}">
		 <div class="alert alert-success col-sm-4 col-xs-3 col-xs-offset-1 success">${success}</div>
	</c:if>
  
  <c:if test="${not empty querySuccess}">
			<div class="alert alert-success col-sm-5 col-xs-5 col-xs-offset-1 querySuccess">${querySuccess}</div>
		</c:if>
		
 </div>
<div class="container col-md-7 col-md-offset-4" style="margin-top:50px">
  <h2>Login Here</h2>
	
  <form:form action="login" method="post" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-1" for="email">Email:</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="email" required="true" name="email" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-1" for="pwd">Password:</label>
      <div class="col-sm-3">
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
 
		
				
    
    <div class="form-group ">
      <div class="col-sm-offset-2 col-sm-5">
        <button type="submit" class="btn btn-success">Submit</button>
      <a  href="home" class="btn btn-danger">Home</button></a>
        <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
      </div>
    </div>
    
  
  </form:form>
</div>

</body>
</html>

