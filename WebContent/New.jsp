<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>New</title>
	</head>
	<body>
		<h1>New ID</h1>
		
		<form action="Save.jsp" method="post">
			<table>
				
					<tr><td>ID:</td><td><input type="text" name="id" id="id"></td></tr>
					<tr><td>NAME:</td>	<td><input type="text" name="name" id="name"></td></tr>
					<tr><td>CITY:</td>	<td><input type="text" name="city" id="city"></td></tr>
					<tr><td>PHONE:</td>	<td><input type="text" name="phone" id="phone"></td></tr>
					<tr><td colspan=2 align="center"><input type="submit" value="Criar"></td></tr>
				
			</table>
			
		</form>
	</body>
</html>