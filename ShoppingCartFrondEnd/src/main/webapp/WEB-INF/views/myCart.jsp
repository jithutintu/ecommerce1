<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container">

  <script>
function goBack() {
    window.history.back();
}
</script>
<style>
.view
{
    
}
</style>
</head>



<body>


<table  width="100%" class="view table table-bordered">
<tr>
<td colspan = "6" align="center"><h4 >List of available categories</h4></td>
</tr>
	<tr>
	    
	    <th align="left">S.No</th>
	
	
		<th align="left">ProductName</th>
		
		<th align="left">Quantity</th>
		<th align="left">Price</th>
       
		<th align="left">Delete</th>		
	</tr>
	<c:forEach items="${cartList}" var="cart" varStatus="status">
		<tr>
			<td>${status.count}</td>
			
			<td>${cart.productName}</td>		
			<td>${cart.quantity}</td>
				<td>${cart.price}</td>
			 
			<td><a href="<c:url value='deletecart/${cart.id}' />" onclick="return confirm('Are You Sure? Do you Want Delete Produt : ${cart.productName} ?')">delete</a></td>
		
		
		</tr>
	</c:forEach>
	<tr style="margin-top: 3px">
	<td colspan="3" align = "right" margin-right= "-30px">Total Amount :</td>
	<td colspan="2">${total}</td>
	</tr>
	
</table>
<div class="row">
<button class ="btn btn-primary col-xs-1" onclick="goBack()">Go Back</button>

<a href="Proceed/${username}"><button type="button" name="button" class="btn btn-success col-xs-offset-2 col-xs-1"> Place Order </button></a>

<div class="dropdown col-xs-1" style="margin-left:60px;">
    <button class="btn btn-primary dropdown-toggle"  type="button" data-toggle="dropdown">Proceed<span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="onLinePayment/${username}">On Line Payment</a></li>
    
      <li class="divider"></li>
      <li><a href="cashOnDelivery/${email}">Cash On Delivery</a></li>
    </ul>
  </div>
  </div>
  
  
  
  </body>
