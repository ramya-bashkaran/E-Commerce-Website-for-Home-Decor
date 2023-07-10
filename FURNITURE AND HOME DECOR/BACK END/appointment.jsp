<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String address=request.getParameter("address");
String contactno=request.getParameter("contactno");
String sqftarea=request.getParameter("sqftarea");
String workingscale=request.getParameter("workingscale");
String blueprint=request.getParameter("blueprint");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into appointment(name,email,address,contactno,sqftarea,workingscale,blueprint) values(?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,address);
ps.setString(4,contactno);
ps.setString(5,sqftarea);
ps.setString(6,workingscale);
ps.setString(7,blueprint);
int x=ps.executeUpdate();
if(x>0){
out.println("<h1>Thank You!</h1> ");
out.println("<h2>Your appointment has been fixed </h2> ");
out.println("<h2>Our Designers will contact you within 24 hrs </h2> ");
}
else
{
out.println("Sorry! Your appointment has not been fixed");
}

}catch(Exception e){
out.println(e);
}
%>