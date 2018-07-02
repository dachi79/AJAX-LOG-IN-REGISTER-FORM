<?php
require "config.php";
session_start();
if(!isset($_SESSION['ime'])){
	header("location:index.html");
}
if($_SESSION['status'] == 3){
	header("location:ban.php");
}

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>

<body>
	
<h1>WELCOME</h1>
<p>welcome : <?=$_SESSION['ime']?></p><a href="gasiti.php">log out</a>	
<h4>Muske majce</h4>
<a href="majce.php">majce</a>
	
	
	
	
<script>
	function register (){
	var reg = document.getElementById('regforma');
	var input=document.getElementsByTagName('input.name').value;
	document.getElementById('demo').innerHTML=input;
}	
	
	
</script>	
	
	
	
	
	
	
	
	
	
</body>
</html>