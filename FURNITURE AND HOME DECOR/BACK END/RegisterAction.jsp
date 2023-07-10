<%@page import ="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
String full_name=request.getParameter("full_name");
String last_name=request.getParameter("last_name");
String gender=request.getParameter("gender");
String email_id=request.getParameter("email_id");
String password=request.getParameter("password");
String number=request.getParameter("number");

try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ADP_PROJECT","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into register(full_name,last_name,gender,email_id,password,number) values(?,?,?,?,?,?)");



ps.setString(1, full_name);
ps.setString(2, last_name);
ps.setString(3, gender);
ps.setString(4, email_id);
ps.setString(5, password);
ps.setString(6, number);
String strQuery = "SELECT COUNT(*) FROM register where email_id='"+email_id+"'";
ResultSet rs = ps.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
if(Countrow.equals("0")){
int i=ps.executeUpdate();
if(i>0){
out.println("<html><body><b><center>Thank you for registering ! Please <a href='Login.html'>Login</a> to continue."+ "<center></b></body></html>");
}
}
else{
out.println("<html><body><b><center>Email already exists! Please proceed to <a href='Login.html'>Login</a>"+ "<center></b></body></html>");
}
}
catch(Exception e)
{
out.println(e);
}
%>