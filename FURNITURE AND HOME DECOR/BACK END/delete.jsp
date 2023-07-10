<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Delete record page</title>
</head>
<body>
<br><br><br><br>

<%
String product_name=request.getParameter("product_name");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "nisha@12345");
Statement st = con.createStatement();
st.executeUpdate("DELETE FROM product WHERE product_name='"+product_name+"'");
%>

<%
response.sendRedirect("cartl.jsp");
}

catch(Exception e){
	System.out.print(e);
e.printStackTrace();

}

%>
</body>
</html>
