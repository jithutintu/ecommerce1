<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<h2 align="center" style="margin-top: 0em; margin-bottom: -2em;">${product.product_Name}</h2>

<div style="margin: 0px 10px 0px 300px">

<form:form>
<table>
<tr>
<td>
<img src="<c:url value="/images/products/${product.product_Id}.png"/>" alt="${product.product_Id}" width="200" height="200">
</td>
<tr><td>Product Name : ${product.product_Name}</td><br></tr>
<tr><td>Product Description : ${product.description}</td><br></tr>
<tr><td>Product Price : ${product.product_Price}</td><br></tr>
<tr><td>Product Available : ${product.product_Stock}</td></tr></table>
<div class="row">
<a href="addToCart/${email}/${product.product_Id}"><input class ="btn btn-info col-xs-offset-2" style="color:white;" type="button" name="button" value="Add To Cart"/></a>
<button class ="btn btn-primary col-xs-offset-2 col-xs-1" onclick="goBack()">Go Back</button></div>

</form:form>
</div>


<script>
function goBack() {
    window.history.back();
}
</script>





