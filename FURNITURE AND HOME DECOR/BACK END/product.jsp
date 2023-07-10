<%@page import="java.sql.*"%>
<%
String product_name=request.getParameter("product_name");
int product_price=Integer.parseInt(request.getParameter("product_price").toString());
String temp=request.getParameter("product_quantity");
int product_quantity=Integer.parseInt(temp);
int subtotal=product_price*product_quantity;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into product(product_name,product_price,product_quantity,subtotal) values(?,?,?,?)");
ps.setString(1,product_name);
ps.setInt(2,product_price);
ps.setInt(3,product_quantity);
ps.setInt(4,subtotal);
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