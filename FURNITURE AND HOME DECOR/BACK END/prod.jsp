<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String product_name=request.getParameter("product_name");
String product_price=request.getParameter("product_price");
String product_quantity=request.getParameter("product_quantity");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into prod(id,product_name,product_price,product_quantity) values(?,?,?,?)");
ps.setString(1,id);
ps.setString(2,product_name);
ps.setString(3,product_price);
ps.setString(4,product_quantity);
int x=ps.executeUpdate();
if(x>0){
out.println("Added to Cart");
}
else
{
out.println("Not Added to the cart");
}

}catch(Exception e){
out.println(e);
}
%>