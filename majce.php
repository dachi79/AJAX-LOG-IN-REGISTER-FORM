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
<title>Untitled Document</title>
</head>

<body>

<div id="demo">
<h2>MAJCE</h2>	
</div>

	
<script>

var xml = new XMLHttpRequest();
xml.onreadystatechange=function(){
	if(this.readyState == 4){
		var daki = JSON.parse(this.responseText);
		console.log(daki);
		var ja = document.getElementById('demo');
		for(i=0;i<daki.length;i++){
			ja.innerHTML+="<h3>Boja:"+daki[i].boja+"</h3>";
			ja.innerHTML+="<p>Cena:"+daki[i].cena+"</p>";
			ja.innerHTML+="<img src='slike/"+daki[i].slika+"' title='"+daki[i].slika+"' width='200px'>";
		}
		
	}
}
xml.open("POST","view/manshirt.php",true);
xml.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
xml.send();

</script>	
	
</body>

</html>