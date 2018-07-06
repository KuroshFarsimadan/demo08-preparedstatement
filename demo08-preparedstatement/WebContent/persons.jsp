<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Persons</title>
</head>
<body>

	<form action="persons" method="post">
		<table>
			<caption>Persons</caption>
			<thead>
				<tr>
					<td>ID</td>
					<td>Firstname</td>
					<td>Lastname</td>
					<td>+/-</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${persons}" var="per">
					<tr>
						<td><c:out value="${per.id}" /></td>
						<td><c:out value="${per.firstname}" /></td>
						<td><c:out value="${per.lastname}" /></td>
						<td>&nbsp;<!-- A possible position for delete button? --></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td>Add</td>
					<td><input type="text" name="firstname" placeholder="Firstname..."/></td>
					<td><input type="text" name="lastname" placeholder="Lastname..."/></td>
					<td><button type="submit"><b>+</b></button></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>