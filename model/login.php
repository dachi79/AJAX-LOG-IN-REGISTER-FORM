<?php
require "../config.php";
//header("Content-Type: application/json; charset=UTF-8");

$sve =json_decode($_POST['data']);
$email = $sve->logmejl;
$pasw =$sve->logsifra;

if($email == ""){
	die("Niste uneli mejl");
}

if($pasw == ""){
	die("Niste uneli password");
}

$pasw=md5($pasw);
$korisnici = new Users;
$ja = $korisnici->get();

for($u=0;$u<sizeof($ja);$u++){
	if($ja[$u]->email == $email && $ja[$u]->status == 3){
		die('VAS AKAUNT JE BANOVAN SA SERVERA !!!');
	}
	if($ja[$u]->email == $email && $ja[$u]->pass == $pasw){
		session_start();
		$_SESSION["ime"]=$ja[$u]->name;
		$_SESSION['email']=$ja[$u]->email;
		$_SESSION["status"]=$ja[$u]->status;
		die("super");
	}
};
echo "Ne valja pokusajte opet !";
