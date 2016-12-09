<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Thank you for your business!</h1>

					<h2>Your Product Delivered with in ${day} days</h2>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/" />" class="btn btn-default">OK</a>
			</p>
		</section>
	</div>
</div>