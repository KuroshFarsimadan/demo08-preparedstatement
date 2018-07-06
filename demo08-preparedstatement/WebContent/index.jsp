<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java EE - Demo 08</title>
</head>
<body>

	<h1>Java EE</h1>
	<h2>DEMO 08 - Prepared Statement</h2>

	<div>
		<h3>Content</h3>
		<ul>
			<li>PreparedStatement</li>
			<li>SQL Injection</li>
			<li>Own Exception class</li>
		</ul>
		<h3>Functionality</h3>
		<p> In this demo, we have an extended personlist for the person addition form. 
			The servlet doPost-method will receive the form and requests the DAO-class
			to execute the addition of a person. DAO-class contains a new addition method,
			which executes a new persons addition in a safe manner to the database using
			the PreparedStatement-class. In exception cases, the DAOException will be
			thrown back to the servlet. If the addition is successful to the database,
			the servlet will redirect the browser back to the doGet-method.</p>
		<h3>Link</h3>
		<p>
			<a href="persons">persons</a>
		</p>
	</div>
</body>
</html>