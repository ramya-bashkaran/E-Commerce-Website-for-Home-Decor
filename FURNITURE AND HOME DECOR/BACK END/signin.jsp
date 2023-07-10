<%@page import ="java.sql.*"%>
<html lang="en">
<head>
<title> Login </title>
	<title>Login Form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/22e25e938b.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="log.css">
</head>
<body>
<section>

<div class="form-box">
 <header>Login Form</header>
<form name="Login" action="" method="">
	<div class="field">

<span class="fa fa-user"></span>
                <input type="text" required placeholder=" Your Username" name="username">
               </div>
<br>

	

               <div class="field space">
<span class="fa fa-lock"></span>
                <input type="password"  name="password" class="pass-key" required placeholder="Your Password" id="myInput"><br>
         </div>
<br>
<div class="show">
<input type="checkbox" onclick="myFunction()">Show Password
</div>
 
               <div class="field">
                  <input type="submit" value="LOGIN">
               </div>

            </form>
            <div class="signup">
               Don't have an account?
               <a href="Signup.html">Sign Up Now</a>
            </div>
         </div>
      </div>
      <script>
     function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
      </script>

</section>
<%
String username=request.getParameter("username");
session.putValue("username",username);
String password=request.getParameter("password");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","nisha@12345");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user where username='"+username+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("username").equals(username)&&rs.getString("password").equals(password))
{
	session.setAttribute("username",username);
	session.setAttribute("password",password);
	response.sendRedirect("indianplayers.html");
}
else{
	response.sendRedirect("indianplayers.html");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
