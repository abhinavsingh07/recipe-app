<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="css/jquery-ui.css" />">
<style type="text/css">
.search-wrapper.on {
	top: 50px;
}

.search-wrapper {
	width: 100%;
	height: 70px;
	position: fixed;
	z-index: 200;
	top: -80px;
	left: 0;
	background-color: goldenrod;
}

.search-wrapper form input {
	width: 90%;
	height: 40px;
	border: 2px solid #ffffff;
	font-size: 14px;
	padding: 0 6px;
	margin: 15px 0;
}

.search-wrapper form button {
	position: absolute;
	width: 60px;
	height: 40px;
	z-index: 1;
	top: 15px;
	border: none;
	right: 15.6%;
	cursor: pointer;
	outline: none;
}

.autocomplete-suggestions {
	border: 1px solid #999;
	background: #FFF;
	overflow: auto;
}

.autocomplete-suggestion {
	padding: 5px 5px;
	white-space: nowrap;
	overflow: hidden;
	font-size: 22px
}

.autocomplete-selected {
	background: #F0F0F0;
}

.autocomplete-suggestions strong {
	font-weight: bold;
	color: #3399FF;
}
#ui-id-1{
    width: 68.3% !important;
    top: 103px !important;
    left: 183px !important;
    z-index: 9999;
}
.ui-autocomplete-loading {
    background: white url("<c:url value="images/searchLoader-sm.gif" />") right center no-repeat;
  }
</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Cooked</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Grocery</a></li>
					<li><a href="#">Post a Recipe</a></li>
					<li><a href="#">Plan Meal</a></li>
					<li><a href="#">Admin</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><i class="fa-solid fa-user"></i></span> Sign Up</a></li>
					<li><a href="#"><i class="fa-solid fa-right-to-bracket"></i></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="search-wrapper on">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<form action="#" method="post">
						<input type="search" name="search" id="recipeSearch"
							placeholder="Type any keywords...">
						<button type="button" title="Search recipes">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="<c:url value="js/jquery.min.js" />"></script>
	<script src="<c:url value="js/jquery-ui.js" />"></script>
	<script src="<c:url value="js/bootstrap.min.js" />"></script>
	<script src="<c:url value="js/fontawesome.js"/>"></script>
	<script>
	$(document).ready(function() {

	    $("#recipeSearch").autocomplete({
	        source: function(request, response) {
	            $.ajax({
	                url: '${pageContext.request.contextPath}/searchAutoComplete',
	                dataType: "json",
	                data: {
	                    search: request.term
	                },
	                success: function(data) {
	                    response(data);
	                }
	            });
	        },
	        search: function(event, ui) {
	            //highlight matched text
	            setTimeout(() => {
	                let w = $(this).autocomplete("widget").find("li"),
	                    re = new RegExp("(" + this.value + ")", "i");
	                w.html((i, html) =>
	                    html.replace(re, "<b>$1</b>")
	                );
	            }, 1500);
	        },
	        minLength: 3,
	        select: function(event, ui) {
	            console.log("AUTOCOMPLETE SELECT" + JSON.stringify(ui));
	        }
	    });
	});
  </script>
</body>
</html>