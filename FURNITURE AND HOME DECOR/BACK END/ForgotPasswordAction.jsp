<%@page import ="java.sql.*"%>
<%
String username=request.getParameter("username");
String number=request.getParameter("number");
String question=request.getParameter("question");
String answer=request.getParameter("answer");
String newPassword=request.getParameter("newPassword");

int check=0;
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from final where username='"+username+"' and number='"+number+"' and question='"+question+"' and answer='"+answer+"'");
while (rs.next())
{
check=1;
st.executeUpdate("update final set password=' "+newPassword+" ' where username='"+username+"'");
response.sendRedirect("ForgotPassword.jsp?msg=done");
}
if (check==0)
{
response.sendRedirect("ForgotPassword.jsp?msg=invalid");
}
}
catch(Exception e)
{
System.out.println(e);
}
%>