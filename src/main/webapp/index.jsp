<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<h2>Welcome To Student Management APP</h2>
	<a href="students">Go to Student Management</a>
	<br>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Sno</th>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Mobile</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>AIT-01</td>
				<td>Aditya</td>
				<td>92387450932</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>AIT-02</td>
				<td>Akshay</td>
				<td>9387450345345</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>AIT-03</td>
				<td>Vishal</td>
				<td>0938457093284</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td colspan="2">Option</td>
				<td>edit</td>
				<td>delete</td>
			</tr>
		</tbody>
	</table>
</body>
</html>