<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Cooked</title>
<!-- Favicon -->
<link rel="icon" href="<c:url value="/images/core-img/favicon.ico" />">
<!-- Core Stylesheet -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />">

</head>

<body>
	<jsp:include page="app/loader.jsp" />
	<jsp:include page="app/header.jsp" />
	<!-- ##### Best Receipe Area Start ##### -->
	<section class="best-receipe-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading">
						<h3>Search Results</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<c:forEach items="${listOfRecipes}" var="recipe">
					<div class="col-12 col-sm-6 col-lg-4">
						<div class="single-best-receipe-area mb-30"
							style="min-height: 286.8px;">
							<div class="receipe-content">
								<a
									href="${pageContext.request.contextPath}/recipeView/${recipe.id}">
									<img src="<c:url value="${recipe.image}" />" alt="Recipe Image"
									 class="img-gradient">
									<h5>
										<c:out value="${recipe.title}" />
									</h5>
								</a>
								<div class="recipe-info">
									<div class="serving-info">
										<i class="fa fa-cutlery fa-2" aria-hidden="true"></i> <span><c:out
												value="${recipe.servings}" /> servings</span>
									</div>
									<div class="time-info">
										<i class="fa fa-clock-o fa-2" aria-hidden="true"></i> <span><c:out
												value="${recipe.readyInMinutes}" /> min</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<jsp:include page="app/footer.jsp" />
	<script src="<c:url value="/js/jquery/jquery-2.2.4.min.js"/>"></script>
	<script src="<c:url value="/js/jquery-ui.js" />"></script>
	<script src="<c:url value="/js/bootstrap/popper.min.js"/>"></script>
	<script src="<c:url value="/js/bootstrap/popper.min.js"/>"></script>
	<script src="<c:url value="/js/plugins/plugins.js"/>"></script>
	<script src="<c:url value="/js/active.js" />"></script>
	<script src="<c:url value="/js/util.js" />"></script>
	<script src="<c:url value="/js/ajaxWrapper.js" />"></script>
</body>
</html>