<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<body>
		<h1>Edit page</h1>
		<br>
		<%
			try{
			
			String id = request.getParameter("id");
			String.valueOf(id);
			
			
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
			String sql = "SELECT *FROM student where id= "+id;//ele pega a tabela que eu criei e lista  apenas o id selecionado
			
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
					<td>ações</td>
				</tr>	
			<% 
			while(rs.next()){
			%>
			 
			 <form action="Update.jsp?id=<%=id %>" method="post">
			 <% 
			 	 out.print("<tr><td>"+
				 "<input type='text' name='name' id='name' value='"+rs.getString("name")+"'/>"+
				 "</td><td>"+
				 "<input type='text' name='city' id='city' value='"+ rs.getString("city")+"'/>"+
				 "</td><td>"+
				 "<input type='text' name='phone' id='phone' value='"+rs.getString("phone")+"'/>"+
				 "</td>"+
				 "<td><input type='submit' value='Atualizar'></td></tr>");
			 	
			 %>
			 </form>
			<% 			
			}		
			}catch(SQLException esql){
				
			}
			%>
			
			</table>
			
		<a href ="Index.jsp">Voltar</a>
	</body>
</html>