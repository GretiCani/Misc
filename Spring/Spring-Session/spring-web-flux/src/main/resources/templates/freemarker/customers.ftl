<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org"
	xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Dashboard</title>

<!-- Bootstrap core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./css/dashboard.css" rel="stylesheet">
</head>

<body>
	<div th:replace="fragments/header :: header">&nbsp;</div>

	<div class="container-fluid">
		<div class="row">
			<div th:replace="fragments/left-sidebar :: left-sidebar">&nbsp;</div>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
				<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
					<h1 class="h2">Dashboard</h1>
				</div>
				<h2>List of Customers</h2>
				<div class="table-responsive" th:if="${not #lists.isEmpty(customers)}">
					<table class="table table-striped table-sm">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Membership ID</th>
							</tr>
						</thead>
						<tbody id="customers-list">
							<tr th:each="customer : ${customers}">
								<td><span th:text="${customer.id}"> ID </span></td>
								<td><span th:text="${customer.name}"> Name </span></td>
								<td><span th:text="${customer.membershipId}"> Membership ID </span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</main>
		</div>
	</div>
	<div th:replace="fragments/footer :: footer">&nbsp;</div>
</body>
</html>
