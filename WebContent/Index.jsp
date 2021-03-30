<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Index</title>
	</head>
	<body>
		<h1>Index</h1>
		<%
			try{
			//tenho que passar o driver para que ele possa ser utilizado com java
			//é o driver que faz a comunicação com o banco de dados
			String Driver ="com.mysql.jdbc.Driver";
			Class.forName(Driver);//Metodo pra utilizar o driver
					
			String url ="jdbc:mysql://localhost:3306/softsquare";//caminho do banco de dados que irei utilizar
			String root="root";
			String psw="caio0101";
			Connection con =null; 
			Statement st = null;
			ResultSet rs = null;
			String sql = "SELECT *FROM student";//ele pega a tabela que eu criei e lista ela
			
			con = DriverManager.getConnection(url,root,psw);//fazer conexão com o banco de dados
			//Prepara o sql que eu to passando			
			st = con.createStatement();
			rs = st.executeQuery(sql);
		%>
			
				<table border=1">
				<tr>
					<td>nome</td>
					<td>cidade</td>
					<td>telefone</td>
					<td colspan=2 align="center">ações</td>
				</tr>	
			<% 
			while(rs.next()){
			%>
			
			 <% out.print("<tr><td>"+
			 rs.getString("name")+
			 "</td><td>"+
			 rs.getString("city")+"</td><td>"+
			 rs.getString("phone")+"</td>"+
			 "<td><a href ='Edit.jsp?id="+rs.getString("id")+"'>Editar</a></td><td>"+
			 "<a href ='Delete.jsp?id="+rs.getString("id")+"'>Delete</a></td></tr>");//ta passando o parametro id
			 %>
			
			
		
			<% 			
			}		
			}catch(SQLException esql){
				
			}
			%>
			
			</table>
	</body>
</html>