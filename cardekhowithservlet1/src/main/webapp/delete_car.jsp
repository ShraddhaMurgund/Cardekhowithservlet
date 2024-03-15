<%@page import="com.jspiders.cardekhowithservlet1.JDBC.CarJDBC"%>
<%@page import="com.jspiders.cardekhowithservlet1.object.Car"%>
<%@page import="java.util.List"%>
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
	<%
	List<Car> cars = CarJDBC.searchAllCars();
	if (cars != null && cars.size() > 0) {
	%>
	<div align="center">
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Brand</th>
				<th>Price</th>
			</tr>
			<%
			for (Car car : cars) {
			%>
			<tr>
				<td><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h4>Car details unavailable</h4>
	</div>
	<%
	}
	%>
	<br>
	<div align="center">
		<form action="delete_car" method="post">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" name="id"></td>
				</tr>
			</table>
			<input type="submit" value="DELETE">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h4><%=message%></h4>
	</div>
	<%
	}
	%>
</body>
</html>
