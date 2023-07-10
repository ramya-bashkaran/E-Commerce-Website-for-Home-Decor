<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userId = "root";
String password = "nisha@12345";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<style>
button a{
	text-decoration:none;
	padding:14px;
}
body{
	background-color:cornsilk;
}
#tot{
	text-align:center;
	font-size:18px;
}
table{
	width:900px;
	box-shadow:-1px 12px 12px -6px rgba(0,0,0,0.5)
}
table,td,th
{
	padding:20px;
	border:1px solid lightgray;
	border-collapse:collapse;
	text-align:center;
}
td{
	font-size:18px;
}
th{
	background-color:blue;
	color:white;
}
tr:hover{
	background-color:lightblue;
}
td a{
	text-decoration:none;
}

</style>
<body>
<center><h1>Your Cart</h1></center>
<table align="center" border="1" cellpadding="50px">
<tr>
<td><b>Product name<b></td>
<td><b>Product price<b></td>
<td><b>Product Quantity<b></td>
<td><b>subtotal<b></td>
</tr>
<p><button class="pay"><a href="Payment.html">Pay Now</a></button>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
statement=connection.createStatement();
String sql ="select * from product";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("product_name") %></td>
<td><%=resultSet.getInt("product_price") %></td>
<td><%=resultSet.getInt("product_quantity") %></td>
<td><%=resultSet.getInt("subtotal") %></td>
<td><button type="button"><a href="delete.jsp?product_name=<%=resultSet.getString("product_name") %>">Remove</a></button></td>
</tr>
<%
}sql ="select sum(subtotal) as total from product";
resultSet = statement.executeQuery(sql);
resultSet.next();
%>
<p id="tot"><b>Total amount:</b>
<%=resultSet.getInt("total")%>
</p>
<%
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>