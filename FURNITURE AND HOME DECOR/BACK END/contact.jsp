<%@page import="java.sql.*"%>
<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String country=request.getParameter("country");
String subject=request.getParameter("subject");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into contact(firstname,lastname,country,subject) values(?,?,?,?)");
ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,country);
ps.setString(4,subject);
int x=ps.executeUpdate();
if(x>0){
out.println("Your Data has been stored Successfully");
}
else
{
out.println("Data Not Stored");
}

}catch(Exception e){
out.println(e);
}
%>
