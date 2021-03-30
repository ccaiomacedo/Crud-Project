<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<body>
		<h1>Update page</h1>
			<% 
			try{
			String id =request.getParameter("id");
			//tenho que passar o driver para que ele possa ser utilizado com java
			//é o driver que faz a comunicação com o banco de dados
			String Driver ="com.mysql.jdbc.Driver";
			Class.forName(Driver);//Metodo pra utilizar o driver
					
			String url ="jdbc:mysql://localhost:3306/softsquare";//caminho do banco de dados que irei utilizar
			String root="root";
			String psw="caio0101";
			Connection con =null; 
			Statement st = null;
			String sql = "DELETE from student WHERE id="+id;
			
			con = DriverManager.getConnection(url,root,psw);//fazer conexão com o banco de dados
			//Prepara o sql que eu to passando			
			st = con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("Index.jsp");
			}catch(SQLException es){
				System.out.print("Error"+es);
				
			}
			%>
			
	</body>
</html>