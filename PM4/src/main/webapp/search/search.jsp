<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="shortcut icon" href="assets/logo.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>

	<header>
	<div class="container">
		<header
			class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
		<a href="/Cargo/search"
			class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
			<img class="mb-4" src="assets/logo.svg" alt="" width="72" height="57">
			<span class="fs-4">CarGo</span>
		</a>

<!-- 
		<ul class="nav nav-pills">
			<li class="nav-item">
				<form action="/Cargo/signin" method="GET">
					<button class="btn btn-outline-primary" type="submit">Sign In</button>
				</form>
			</li>
		</ul> -->
		
		<ul class="nav nav-pills">
			<li class="nav-item">
				<form action="/Cargo/signin" method="GET">
					<button class="btn btn-outline-primary" type="submit">Sign In</button>
				</form>
			</li>
			<li class="nav-item">
				<form action="/Cargo/signup/signup.jsp" method="GET">
					<button class="btn btn-outline-primary" type="submit">Sign Up</button>
				</form>
			</li>
			<li class="nav-item">
				<form action="/Cargo/new" method="GET">
					<button class="btn btn-outline-primary" type="submit">New</button>
				</form>
			</li>
		</ul>
		</header>
	</div>
	</header>

	<main> <section class="py-5 text-center container">
	<div class="container-fluid">
		<c:if test="${messages['success'] != null}"><div class="alert alert-success" role="alert"><c:out value = "${messages['success']}"/></div></c:if>
		<form class="d-flex" action="/Cargo/search" method="GET">
			<input class="form-control form-control-lg me-2" type="search"
				placeholder="Year" aria-label="year" name="year"
				value=${messages['previousYear']}> <input
				class="form-control form-control-lg me-2" type="search"
				placeholder="Make" aria-label="make" name="make"
				value=${messages['previousMake']}> <input
				class="form-control form-control-lg me-2" type="search"
				placeholder="Model" aria-label="model" name="model"
				value=${messages['previousModel']}> <input
				class="form-control form-control-lg me-2" type="search"
				placeholder="State" aria-label="state" name="state"
				value=${messages['previousState']}>
			<button class="btn btn-outline-primary" type="submit">Search</button>
		</form>

	</div>
	</section>

	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<c:forEach items="${cars}" var="car">
					<div class="col">
						<div class="card shadow-sm">
							<div class="card-body">
								<h4 class="card-title">
									<c:out value="${car.getMake()}" />
									<c:out value="${car.getModel()}" />
									</h5>
									<h5 class="card-title mb-3 text-muted">
										$
										<c:out value="${car.getSellingPrice()}" />
										</h6>
										<h5 class="card-subtitle mb-3 text-muted">
											<c:out value="${car.getOdometer()}" />
											&nbsp Miles
											</h6>

											<p class="card-text">
												Color:&nbsp
												<c:out value="${car.getColor()}" />
												&nbsp&nbsp&nbsp&nbsp Interior:&nbsp
												<c:out value="${car.getInterior()}" />
												&nbsp&nbsp&nbsp&nbsp State:&nbsp
												<c:out value="${car.getState().toUpperCase()}" />
												&nbsp
											</p>
											<form action="/Cargo/update" method="GET"
												style="display: inline">
												<input type="hidden" aria-label="vin" name="vin"
													value="${car.getVin()}">
												<button class="btn btn-outline-success" type="submit">Update</button>
											</form>
											<form action="/Cargo/delete" method="GET"
												style="display: inline">
												<input type="hidden" aria-label="vin" name="vin"
													value="${car.getVin()}">
												<button class="btn btn-outline-danger" type="submit">Delete</button>
											</form>
							</div>
						</div>
					</div>


				</c:forEach>


			</div>

		</div>
	</div>
	</div>

	</main>

	<footer class="text-muted py-5">
	<div class="container">
		<p class="float-end mb-1">
			<a href="#">Back to top</a>
		</p>
	</div>
	</footer>


	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
