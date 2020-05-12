<?php
include_once 'database.php';

$email=$_POST["em1"];
$name=$_POST["nam"];
$passw=$_POST["psw"];
$result=mysqli_query($conn,"INSERT INTO Accounts(Email,Name,Pass)
				VALUES('$email','$name','$passw')");
?>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>GOS PIZZA</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="sconfsignup.css">
	<script src="jquery.min.js">
	</script>
</head>
<body>
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

			<!-- <input type="button" value="Back"
		onclick="history.go(-1)" style="align-content: left"> -->
			</ul>
		</nav>
		<!-- END OF NAVIGN -->
	</header>

<h2 style="color:gold">
<?php

echo "Thanks you ";
echo $name;
echo "\n Successfully created Account!!!";

?>
</h2>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>






























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

