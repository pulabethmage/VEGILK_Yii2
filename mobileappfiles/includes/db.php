<?php
  $dbuser = "root";
  $dbname = "vegiLK_db";
  $password = "accimtroot@123";
  $db = mysqli_connect("localhost",$dbuser,$password,$dbname);
	// Change character set to utf8
	mysqli_set_charset($db,"utf8");
?>
