<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="search-wrapper">
	<!-- Close Btn -->
	<div class="close-btn">
		<i class="fa fa-times" aria-hidden="true"></i>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<form id="searchRecipeForm" action="${pageContext.request.contextPath}/recipes" method="post">
					<input type="search" name="query" id="recipeSearch" placeholder="Type any keywords...">
					<button type="submit" id="searchRecipeBtn">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
</div>
<header class="header-area">
	<!-- Navbar Area -->
	<div class="delicious-main-menu">
		<div class="classy-nav-container breakpoint-off">
			<div class="container">
				<!-- Menu -->
				<nav class="classy-navbar justify-content-between" id="deliciousNav">

					<!-- Logo -->
					<a class="nav-brand" href="${pageContext.request.contextPath}/"><img
						src="<c:url value="/images/core-img/logo.png" />" alt=""></a>

					<!-- Navbar Toggler -->
					<div class="classy-navbar-toggler">
						<span class="navbarToggler"><span></span><span></span><span></span></span>
					</div>

					<!-- Menu -->
					<div class="classy-menu">

						<!-- close btn -->
						<div class="classycloseIcon">
							<div class="cross-wrap">
								<span class="top"></span><span class="bottom"></span>
							</div>
						</div>

						<!-- Nav Start -->
						<div class="classynav">
							<ul>
								<li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
								<li><a href="receipe-post.html">Receipies</a></li>
								<li><a href="receipe-post.html">4 Vegans</a></li>
							</ul>

							<!-- Newsletter Form -->
							<div class="search-btn">
								<i class="fa fa-search" aria-hidden="true"></i>
							</div>

						</div>
						<!-- Nav End -->
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>