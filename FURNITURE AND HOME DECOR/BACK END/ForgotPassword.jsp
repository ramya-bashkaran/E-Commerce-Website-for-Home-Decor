<%@page import ="java.sql.*"%>
<html lang="en">
<head>
<title> Forgot Password </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="build/css/demo.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="forgot_style.css">
<style>

.alert {
  padding: 20px;
  background-color:green;
  color: white;
}
.alert1 {
  padding: 20px;
  background-color:red;
  color: white;
}
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>
</head>
<body>

<div class="signup_box">
<header style="  color: white"> Forgot Password </header>
<form action="ForgotPasswordAction.jsp" method="post">
<input type="text" class="button" name="username"  required placeholder="Enter Your Username"> <br> <br>

  <input type="tel" name="number" style="color:black"  required placeholder="Enter Your Mobile Number"  id="phone">

<br>
<select  name="question" class="button"  required > <br> <br>
    <option value="q1"> Your favorite subject ?</option>
    <option value="q2">Your Favorite Destination ?</option>
     <option value="q3"> Your favorite pet ?</option>
  </select> <br> <br>
<input type="text" class="button" name="answer" required  placeholder="Enter Your Answer"> <br> <br>


<input type="password" class="button" name="newPassword" required  placeholder="Enter New Password"> <br><br>

<input type ="submit" class="reg" value="RESET">

  </form>
<br>
<div class="signup">
              Updated Your Password?
               <a href="signin.jsp">Login Now</a>
            </div>
         </div>

<script src="build/js/intlTelInput.js"></script>
  <script>
    var input = document.querySelector("#phone");
    window.intlTelInput(input, {
      // allowDropdown: false,
      // autoHideDialCode: false,
      // autoPlaceholder: "off",
      // dropdownContainer: document.body,
      // excludeCountries: ["us"],
      // formatOnDisplay: false,
      // geoIpLookup: function(callback) {
      //   $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
      //     var countryCode = (resp && resp.country) ? resp.country : "";
      //     callback(countryCode);
      //   });
      // },
      // hiddenInput: "full_number",
      // initialCountry: "auto",
      // localizedCountries: { 'de': 'Deutschland' },
      // nationalMode: false,
      // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
      // placeholderNumberType: "MOBILE",
      // preferredCountries: ['cn', 'jp'],
      // separateDialCode: true,
      utilsScript: "build/js/utils.js",
    });
  </script>


<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Success!</strong> Password Updated Successfully !!
</div>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<div class="alert1">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Failed!</strong> Wrong Inputs !!
</div>
 <%
}
%>

</body>

</html>