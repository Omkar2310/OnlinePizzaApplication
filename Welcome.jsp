<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Welcome </title>
	<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<script src="jquery.min.js">
	</script>	
<link rel="stylesheet" type="text/css" href="font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="stylewelcome.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link href="buttonLoader.css" rel="stylesheet">
	<script src="jquery.buttonLoader.js"></script>
<title>Insert title here</title>
<style>
.blueText {
   color: blue;
}</style>
</head>
<body>
    <%   
    String name=(String)request.getAttribute("myname");  
    
    %>  
<header>
		<div class="head">
			<h2>GOS PIZZA'S HERE</h2>
		</div>

		<!-- NAVIGATION -->
		<nav>
			<ul>
			<li><a href="index.html" class="active">Home</a></li>
			<li><a href="About.html" class="active"> About Us </a></li>
			<li><a href="Contact.html" class="active"> Contact Us</a></li>
			<li><a href="first_xml.xml" class="active">Offers</a>	</li>
			<li><a href="Customersupp.html" class="active"> Customer Support </a></li>
			<li>
				<a href="javascript:history.back()" class="active">Go Back</a>
			</li>

			<li>
				<a href="SignUp.html" class="active">SignUp</a>
			</li>
			<li>
				<a href="Login.html" class="active">Login</a>
			</li>
			</ul>
		</nav>
		<!-- END OF NAVIGN -->
	</header>
	 <span class="blueText"><h3>Your Query is Submitted <%= name %> We will contact you soon!!!</h3>
	 </span>.
	<br/>
	

		<section style="color: #00FFFF">
			<br/>
			<strong>
			<!-- <strong>Delivery Orders</strong><br/> -->
			</br>
			</br>
			<ul class="deliv" type="disc">
				<li>1.Customer satisfaction is important for us.</li>
				</br>
				<li>2.Our Executive will contact you very soon.</li>
				</br>
				<li>3.Thanks for your query we will get back to you soon on this.</li>
				</br>
			</ul>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			</br>
			<hr>

		
	
	<footer>
	<nav>
			<ul>
			<li><a href="term&con.html" class="active">Terms and Conditions</a></li>
			<li><a href="sitemap.html" class="active"> Sitemap </a></li>
			</ul>
		</nav>
	</footer>
</body>
</html>