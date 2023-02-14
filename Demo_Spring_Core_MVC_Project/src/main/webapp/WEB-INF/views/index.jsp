<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to BSiPL App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Employee Name</th>
							<th scope="col">Employee Email</th>
							<th scope="col">Department</th>
							<th scope="col">Gender</th>
							<th scope="col">Salary</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employees}" var="e">
							<tr>
								<th scope="row">BSiPL${e.id }</th>
								<td>${e.name}</td>
								<td>${e.email}</td>
								<td>${e.department}</td>
								<td>${e.gender}</td>
								<td class="font-weight-bold">&#x20B9; ${e.salary}</td>
								<td><a href="delete/${e.id }"><i
										class="fas fa-trash text-danger" style="font-size: 30px;"></i></a>
									<a href="update/${e.id }"><i
										class="fas fa-pen-nib text-primary" style="font-size: 30px;"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="form" class="btn btn-outline-success">Add Employee</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
