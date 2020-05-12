<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
> 

<xsl:template match="/">
  <html>
  <head>
  	<style>
  		table {
  border-collapse: separate;
  border-spacing: 150px 0;

}

td {
  	padding: 10px 0;
	}


header{
	width : 80%;
	margin: auto;
	overflow: hidden;
}



.head{
	float: left;
	color: #fff;
	font-family: cursive;

}


nav{
	float: right;
}

li{
	display: inline;
	padding: 1rem;
}

li a{
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

.active{
	color: blue;
}

  	</style>
  </head>
  <body>
  <h2>My Offers</h2>

  <header>
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
	</header>






  <table border="0">
    <tr bgcolor="#9acd32">
      <th>Name</th>
      <th>Decription</th>
      <th>Price(Rs)</th>
      <th>Offer Price(Rs)</th>
    </tr>
    <xsl:for-each select="Offers/offer">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="descrip"/></td>
      <td><del><xsl:value-of select="price"/></del></td>
      <td><xsl:value-of select="price - 0.5*price"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>