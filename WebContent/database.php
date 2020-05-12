<?php
$url='127.0.0.1:3306';
$username='root';
$password='rootpasswordgiven';
$conn=mysqli_connect($url,$username,$password,"mydb");
if(!$conn){
die('Could not Connect My Sql:' .mysql_error());
}
?> 
