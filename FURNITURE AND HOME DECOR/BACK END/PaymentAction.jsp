<%@page import="java.sql.*"%>
<%
String fullname =request.getParameter("fullname");
String email =request.getParameter("email");
String address =request.getParameter("address");
String city =request.getParameter("city");
String state =request.getParameter("state");
String zip_code =request.getParameter("zip_code");
String cardname =request.getParameter("cardname");
String cardnum =request.getParameter("cardnum");
String exp_month =request.getParameter("exp_month");
String exp_year =request.getParameter("exp_year");
String cvv =request.getParameter("cvv");
String sameadr =request.getParameter("sameadr");

try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
PreparedStatement ps=conn.prepareStatement("insert into payment(fullname,email,address,city,state,zip_code,cardname,carnum,exp_month,exp_year,cvv,sameadr) values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1, fullname);
ps.setString(2, email);
ps.setString(3, address);
ps.setString(4, city);
ps.setString(5, state);
ps.setString(6, zip_code);
ps.setString(7, cardname);
ps.setString(8, cardnum);
ps.setString(9, exp_month);
ps.setString(10, exp_year);
ps.setString(11, cvv);
ps.setString(12, sameadr);


int x=ps.executeUpdate();
if(x>0){
out.println("<html><body><b><center>Payment Successfull ! You Will Get Notified Soon. Visit <a href='welcome.jsp'>Home</a> To Continue Shopping."+ "<center></b></body></html>");
}
else
{
out.println("<html><body><b><center>Oops!! Transaction Failed. Click<a href='Home.html'>Here </a>."+ "<center></b></body></html> ");
}

}catch(Exception e){
out.println(e);
}
%>