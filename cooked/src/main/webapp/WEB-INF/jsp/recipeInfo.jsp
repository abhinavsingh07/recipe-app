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

	<div class="breadcumb-area bg-img bg-overlay"
		style="background-image: url(<c:url value="/images/bg-img/breadcumb3.jpg" />);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcumb-text text-center">
						<h2>Recipe</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Receipe Content Area -->
	<div class="receipe-content-area">
		<c:forEach items="${recipeResult}" var="recipe">
			<div class="container">

				<div class="row">
					<div class="col-12 col-md-8">
						<div class="receipe-headline my-5">
							<h2>${recipe.title}</h2>
							<div class="receipe-duration">
								<h6>Ready: ${recipe.readyInMinutes} mins</h6>
								<h6>Yields: ${recipe.servings} Servings</h6>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-lg-8">
						<!-- Single Preparation Step -->
						<c:forEach items="${recipe.analyzedInstructions[0].steps}"
							var="instruction">
							<div class="single-preparation-step d-flex">
								<h4>${instruction.number}.</h4>
								<p>${instruction.step}</p>
							</div>
						</c:forEach>
					</div>

					<!-- Ingredients -->
					<div class="col-12 col-lg-4">
						<div class="ingredients">
							<h4>Ingredients</h4>
							<c:forEach items="${recipe.extendedIngredients}" var="ingredient">
								<!-- Custom Checkbox -->
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="customCheck${ingredient.id}"> <label
										class="custom-control-label" for="customCheck${ingredient.id}">${ingredient.original}</label>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	</div>


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