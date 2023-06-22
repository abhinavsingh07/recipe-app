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
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">

</head>

<body>
	<jsp:include page="app/loader.jsp" />
	<jsp:include page="app/header.jsp" />

	<section class="hero-area">
		<div class="hero-slides owl-carousel">
			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(<c:url value="/images/bg-img/bg1.jpg" />);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="hero-slides-content" data-animation="fadeInUp"
								data-delay="100ms">
								<h2 data-animation="fadeInUp" data-delay="300ms">Delicios
									Homemade Burger</h2>
								<p data-animation="fadeInUp" data-delay="700ms">Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Cras tristique
									nisl vitae luctus sollicitudin. Fusce consectetur sem eget dui
									tristique, ac posuere arcu varius.</p>
								<a href="#" class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="1000ms">See Receipe</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url( <c:url value="images/bg-img/bg6.jpg" />);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="hero-slides-content" data-animation="fadeInUp"
								data-delay="100ms">
								<h2 data-animation="fadeInUp" data-delay="300ms">Delicios
									Homemade Burger</h2>
								<p data-animation="fadeInUp" data-delay="700ms">Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Cras tristique
									nisl vitae luctus sollicitudin. Fusce consectetur sem eget dui
									tristique, ac posuere arcu varius.</p>
								<a href="#" class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="1000ms">See Receipe</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(<c:url value="images/bg-img/bg7.jpg" />);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12 col-md-9 col-lg-7 col-xl-6">
							<div class="hero-slides-content" data-animation="fadeInUp"
								data-delay="100ms">
								<h2 data-animation="fadeInUp" data-delay="300ms">Delicios
									Homemade Burger</h2>
								<p data-animation="fadeInUp" data-delay="700ms">Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Cras tristique
									nisl vitae luctus sollicitudin. Fusce consectetur sem eget dui
									tristique, ac posuere arcu varius.</p>
								<a href="#" class="btn delicious-btn" data-animation="fadeInUp"
									data-delay="1000ms">See Receipe</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="top-catagory-area section-padding-80-0">
		<div class="container">
			<div class="row">
				<c:forEach items="${randomRecipeList}" var="recipe">
					<!-- Random Recipe Catagory Area -->
					<div class="col-12 col-lg-6">
						<div class="single-top-catagory">
							<img src="<c:url value="${recipe.image}" />" alt="">
							<!-- Content -->
							<div class="top-cta-content">
								<h3>${recipe.title}</h3>
								<h6>Simple &amp; Delicious</h6>
								<a
									href="${pageContext.request.contextPath}/recipeView/${recipe.id}"
									class="btn delicious-btn">See Full Receipe</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>

	<section class="cta-area bg-img bg-overlay"
		style="background-image: url(<c:url value="images/bg-img/bg4.jpg" />);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<!-- Cta Content -->
					<div class="cta-content text-center">
						<h2>Gluten Free Receipies</h2>
						<p>Fusce nec ante vitae lacus aliquet vulputate. Donec
							scelerisque accumsan molestie. Vestibulum ante ipsum primis in
							faucibus orci luctus et ultrices posuere cubilia Curae; Cras sed
							accumsan neque. Ut vulputate, lectus vel aliquam congue, risus
							leo elementum nibh</p>
						<a href="#" class="btn delicious-btn">Discover all the
							receipies</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		
	</script>
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