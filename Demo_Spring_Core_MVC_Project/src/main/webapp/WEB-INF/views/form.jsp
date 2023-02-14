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
				<h1 class="text-center mb-3">Fill the Employee detail</h1>
				<form action="handle-employee" method="post">
					<div class="form-group">
						<label for="name">Employee Id</label> <input type="number"
							class="form-control" id="id" aria-describedby="emailHelp"
							name="id" placeholder="Enter the employee id here">
					</div>

					<div class="form-group">
						<label for="name">Employee Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the employee name here">
					</div>

					<div class="form-group">
						<label for="name">Employee Email</label> <input type="email"
							class="form-control" id="email" aria-describedby="emailHelp"
							name="email" placeholder="Enter the employee email here">
					</div>

					<div class="form-group">
						<label for="exampleFormControlSelect1" class="form-label">Select
							Your Department</label> <select class="form-select  form-control"
							aria-label=".form-select-lg example" name="department">
							<option selected>Open this select menu</option>
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
							class="form-control" id="salary">
					</div>

					<div class="form-group">
						<label for="doj" class="form-label">Enter Date of Joining</label>
						<input type="text" class="form-control" id="doj"
							placeholder="Enter your doj" name="doj">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>