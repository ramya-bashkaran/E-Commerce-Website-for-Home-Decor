 <%@page import ="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
String username=request.getParameter("username");
String email_id=request.getParameter("email_id");
String gender=request.getParameter("gender");
String password=request.getParameter("password");
String number=request.getParameter("number");

try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into user(username,email_id,gender,password,number) values(?,?,?,?,?)");
ps.setString(1, username);
ps.setString(2, email_id);
ps.setString(3, gender);
ps.setString(4, password);
ps.setString(5, number);
String strQuery = "SELECT COUNT(*) FROM user where username='"+username+"'";
ResultSet rs = ps.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
if(Countrow.equals("0")){
int i=ps.executeUpdate();
if(i>0){
out.println("<html><body><b><center>Thank you for registering ! Please <a href='signin.jsp'>Login</a> to continue."+ "<center></b></body></html>");
}
}
else{
out.println("<html><body><b><center>Email already exists! Please proceed to <a href='signin.jsp'>Login</a>"+ "<center></b></body></html>");
}
}
catch(Exception e)
{
out.println(e);
}
%>