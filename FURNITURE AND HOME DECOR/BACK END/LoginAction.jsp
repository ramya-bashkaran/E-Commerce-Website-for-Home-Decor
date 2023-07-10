<%@page import="java.sql.*"%>
<%
String email_id=request.getParameter("email_id");
String password=request.getParameter("password");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ADP_PROJECT","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into login(email_id, password) values(?,?)");
ps.setString(1,email_id);
ps.setString(2, password);
int x=ps.executeUpdate();
if(x>0){
out.println("<html><body><b><center>Logged In Successfully ! Please Visit<a href='project.html'>Home</a> To Continue Shopping."+ "<center></b></body></html>");
}
else
{
out.println("<html><body><b><center>Oops!! Seems You Didn't Register. Click<a href='Register.html'>Here </a> To Register."+ "<center></b></body></html> ");
}

}catch(Exception e){
out.println(e);
}
%>