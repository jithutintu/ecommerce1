
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/views/common-header.jsp"%>
<%@include file="/WEB-INF/views/index.jsp"%>
<%@include file="/WEB-INF/views/listedItem.jsp"%>
<c:choose>
<c:when
			test="${not empty isProductClicked && empty email}">
			<h1>you have to login first</h1>
		<h1>${username}</h1>
		</c:when>
		</c:choose>