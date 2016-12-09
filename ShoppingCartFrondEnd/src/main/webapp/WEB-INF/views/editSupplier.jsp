<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/common-header.jsp" %>
  
<h2>Product</h2>


<form:form action="../editSupplier" method="post">
	<table align="center" class="col-lg-8 col-lg-offset-1 col-sm-7 col-sm-offset-1">
		<tr>
			<td>Supplier ID:</td>
			<td><input class="form-control" type="text" name="id" value="${supplier.id} "></td>
		</tr>
		<tr>
			<td>Supplier Name:</td>
			<td><input class="form-control" type="text" name="name" value="${supplier.name}"></td>
		</tr>
		<tr>
			<td>Supplier PhoneNo:</td>
			<td><input class="form-control" type="text" name=contact value="${supplier.contact}"></td>
		</tr>
		<tr>
			<td>Supplier EmailId:</td>
			<td><input class="form-control" type="text" name="email" value="${supplier.email}"></td>
		</tr>
		<tr>
			<td>Supplier Address:</td>
			<td><input class="form-control" type="text" name="address" value="${supplier.address}"></td>
		</tr>
	
		<tr>
			<td><input type="submit" value="Add">
			<td><input type="reset" value="Reset">
		</tr>

	</table>

</form:form>