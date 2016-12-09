<%@include file="/WEB-INF/views/common-header.jsp" %>

<c:if test="${not empty isLoggedInUser || not empty isLoggedInAdmin}">
<marquee width="70%"><h4  style="text-align:left;float:left;">Welcome ${username}!!</h4></marquee> 
<h4 style="text-align:;float:right;"><b>${msg}</b></h4>
<!-- <hr style="clear:both;"/> -->
</c:if>

<aside class="col-lg-3 col-sm-4" style="width: 0.333333%;">
	<%@include file="/WEB-INF/views/sidebar.jsp"%>
</aside>

	<c:choose>
		<c:when
			test="${not empty isMyCartClicked || not empty isAddToCartClicked }">
			<%@include file="/WEB-INF/views/myCart.jsp"%>
		</c:when>
		<c:when
			test="${not empty isProductClicked && empty isLoggedInUser}">
<%@include file="/WEB-INF/views/login.jsp"%>
		</c:when>
		<c:when
			test="${not empty isProductClicked && not empty isLoggedInUser}">
			<%@include file="/WEB-INF/views/productDetails.jsp"%>
		</c:when>
		 
		<c:when test="${not empty onLinePaymentClicked}">
			<%@include file="/WEB-INF/views/creditCard.jsp"%>

		</c:when>
		
		<c:when test="${not empty cashOnDeliveryClicked}">
			<%@include file="/WEB-INF/views/shippingAddress.jsp"%>
		</c:when>

		<c:when test="${not empty ProductDelivered}">
			<%@include file="/WEB-INF/views/delivery.jsp"%>
		</c:when>
		
		<c:when test="${not empty isPlaceOrderClicked}">
			<%@include file="/WEB-INF/views/deliverWhere.jsp"%>
		</c:when>
		
		<c:otherwise>
			<%@include file="/WEB-INF/views/listedItem.jsp"%> 
		</c:otherwise>
 
	</c:choose>
 
</article>
