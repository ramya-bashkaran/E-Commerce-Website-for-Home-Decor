<html>
    <head>
        <title>Website For Furniture Shopping</title>
        <meta charset="UTF-8">
        <link href="home_style.css" rel="stylesheet" type="text/css"/>
		<script src="https://kit.fontawesome.com/22e25e938b.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		</head>
		<body>
<header>
        <div class="h1">Borahae</div>
        <i><div class="h2">Love it till the end of the days.....</div></i>
 </header>
 <div class="navbar">
        <a href="home.jsp"><i class="fa fa-fw fa-home"></i> HOME</a>
 <div class="dropdown">
           
  <button class="dropbtn"> <i class="fab fa-shopify"></i>
                SHOP BY CATEGORY
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
     <a href="livin.html">living room</a>
	<a href="bedroom.html">Bed room</a>
	<a href="Dining.html"> Dining</a>
	<a href="kitchen.html">kitchen</a>
</div>
        </div>
<a href="appointment.html"><i class="fas fa-tools"></i> CUSTOMER SERVICE</a>
        <a href="conta.html"><i class="fas fa-phone-square-alt"></i>&nbspCONTACT</a>
        <a href="ABOUT_US.html"><i class="fas fa-book-reader"></i>&nbspABOUT US</a>
<a href=""><i class="fas fa-user"  style="color:white"></i>
<%
	Object username =(session.getAttribute("username"));
	out.println("Hi " +username);
	%>
</a>

<a href="Logout.jsp"><i class="fas fa-sign-out-alt">LOGOUT</i></a>
</div>
<div class="navimg"><img src="n3.jpg" height="540px" width="100%"></div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<p id="tc">Top Categories</p>
<br/>
<br/>
<div id="image">
<p class="imgThumb">
<a href="livin.html" target="#sofa"><img src="sofa.jpg" height="300" width="200"></a>
<span><input type="button" value="Sofa"></span></p>
<p class="imgThumb">
<a href="bedroom.html"><img src="bed.jpg" height="300" width="200"></a>
<span><input type="button" value="Bed"></span></p>
<p class="imgThumb">
<a href="livin.html"><img src="chair.jpg" height="300" width="200"></a>
<span><input type="button" value="Chair"></span></p>
<p class="imgThumb">
<a href="bedroom.html"><img src="bt8.jpg" height="300" width="200"></a>
<span><input type="button" value="Bedside Tables"></span></p>
<p class="imgThumb">
<a href="Dining.html"><img src="dining tables.jpg" height="300" width="200"></a>
<span><input type="button" value="Dining Tables"></span></p>
<p class="imgThumb">
<a href="livin.html"><img src="decoration.jpg" height="300" width="200"></a>
<span><input type="button" value="Decoration"></span></p>
<p class="imgThumb">
<a href="kitchen.html"><img src="lightings.jpg" height="300" width="200"></a>
<span><input type="button" value="Lightings"></span></p>
<p class="imgThumb">
<a href="Dining.html"><img src="mirror.jpg" height="300" width="200"></a>
<span><input type="button" value="Mirror"></span></p>
</div>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<p id="pp">Our Works</p>
<br/>
<br/>
<marquee scrollamount="25" direction="left">
<img src="h1.jpeg"  width="300" height="300" >
<img src="h2.jpeg"  width="300" height="300" >
<img src="h3.jpeg"  width="300" height="300" >
<img src="h4.jpeg" width="300" height="300" >
<img src="h5.jpeg" width="300" height="300" >
</marquee>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<marquee scrollamount="22" direction="left">
<img src="i1.jpeg"  width="300" height="300" >
<img src="i2.jpeg"  width="300" height="300" >
<img src="i3.jpeg"  width="300" height="300" >
<img src="i4.jpeg" width="300" height="300" >
<img src="i5.jpeg"  width="300" height="300" >
<img src="i6.jpeg"  width="300" height="300" >
<img src="i7.jpeg" width="300" height="300" >
</marquee>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<marquee scrollamount="20" direction="left">
<img src="b1.jpeg"  width="300" height="300" >
<img src="b2.jpeg"  width="300" height="300" >
<img src="b3.jpeg"  width="300" height="300" >
<img src="b4.jpeg" width="300" height="300" >
</marquee>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<marquee scrollamount="18" direction="left">
<img src="kh1.jpeg"  width="300" height="300" >
<img src="kh2.jpeg"  width="300" height="300" >
<img src="kh3.jpeg"  width="300" height="300" >
<img src="kh4.jpeg" width="300" height="300" >
<img src="kh5.jpeg"  width="300" height="300" >
</marquee>

<hr width="100%">
</body>

<footer id="footer">
<div class="footer-content">
<h3>Contact</h3>
<p><b>Mail to:</b>Borahae158@gmail.com</p>
<br/>
<h3>Follow us on</h3>
<ul class="socials">
<li><a href="#"><i class="fab fa-facebook-square"></i></a>
<li><a href="#"><i class="fab fa-instagram-square"></i></a>
<li><a href="#"><i style="font-size:19px" class="fa">&#xf16a;</i></i></a>
<li><a href="#"><i class="fab fa-twitter-square"></i></a>
</ul>
</div>
<br/>
<div class="footer-bottom">
<p>copyright &copy;2021 Borahae</p>
</div>
</footer>

</html>