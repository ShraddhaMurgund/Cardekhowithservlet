<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{

   background-image: url("https://tse2.mm.bing.net/th?id=OIP.rCgJ8OiwWJxABrZ9KWmfYwHaCv&pid=Api&P=0&h=220");
   background-position:center;
   background-size: cover;
   background-repeat: no-repeat;
   background-attachment: fixed;
    margin: 0; 
    padding: 0; 
    height: 100vh;
    weight: 100vw;
 }

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h4>Add car details</h4>
		<form action="add_car" method="post">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Brand</td>
					<td><input type="text" name="brand"></td>
				</tr>
				<tr>
					<td>color</td>
					<td><input type="text" name="color"></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="price"></td>
				</tr>
			</table>
			<input type="submit" value="ADD">
		</form>
	</div>
	<%!String message;%>
	<%
	message = (String)request.getAttribute("message");
	%>
	<div align="center">
		<%
		if (message != null) {
		%>
		<h4><%=message%>
		</h4>
		<%
		}
		%>
	</div>
</body>
</html>
