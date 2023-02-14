<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Employee Details</h1>

				<form action="${pageContext.request.contextPath }/handle-product"
					method="post">

					<input type="hidden" value="${employee.id}" name="id" />
					<div class="form-group">
						<label for="name">Employee Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the employee name here"
							value="${employee.name }">
					</div>

					<div class="form-group">
						<label for="name">Employee Email</label> <input type="text"
							class="form-control" id="email" aria-describedby="emailHelp"
							name="email" placeholder="Enter the employee name here"
							value="${employee.name }">
					</div>

					<div class="form-group">
						<label for="exampleFormControlSelect1" class="form-label">Select
							Your Department</label> <select class="form-select  form-control"
							aria-label=".form-select-lg example" name="department">
							<option selected>"${employee.department}"</option>
							<option value="Developer">Developer</option>
							<option value="Tester">Tester</option>
							<option value="HR">HR</option>
							<option value="IT">IT</option>
							<option value="Operations">Operations</option>
							<option value="Finance">Finance</option>
						</select>
					</div>

					<div class="form-group">
						<label for="gender" class="form-label">Select Employee
							Gender</label>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								id="flexRadioDefault1" value="Male"> <label
								class="form-check-label" for="flexRadioDefault1"> Male </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								id="flexRadioDefault1" value="Female"> <label
								class="form-check-label" for="flexRadioDefault1"> Female
							</label>
						</div>
					</div>

					<div class="form-group">
						<label for="price">Employee Salary</label> <input type="text"
							placeholder="Enter Employee Salary" name="salary"
							class="form-control" id="salary" value="${employee.salary }">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>

						<button type="submit" class="btn btn-warning">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>