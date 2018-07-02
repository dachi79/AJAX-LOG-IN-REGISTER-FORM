<?php
require "../config.php";

//header("Content-Type: application/json; charset=UTF-8");
if(isset($_POST['data'])){
	$all =json_decode($_POST['data']);
}

$ime=$all->ime;
if($ime == ""){
	die("Niste uneli username");
}
$mail=$all->mejl;

if($mail == ""){
	die("Niste uneli mejl");
}

$slova=(str_split($mail));

if(array_search("@",$slova) != true ){
	die("Niste stavili @ !!!");
}
if(array_search(".",$slova) != true){
	die("Pogrešno upisan mejl !!!");
}

$pasword=$all->sifra;

if($pasword == ""){
	die("Niste uneli password");
}
$user=new Users;
$svi=$user->get();
for($i=0;$i<sizeof($svi);$i++){
	if($svi[$i]->name == $ime){
	die("Korisnik postoji probajte drugo ime");
	}
	if($svi[$i]->email == $mail){
	die("Email postoji probajte drugi mejl");
	}
}

$user->name=$ime;
$user->email=$mail;
$user->pass=md5($pasword);
$user->status=1;
$user->time=date("H:i:s Y-m-d ");
$user->save();
echo "great";

if ($user){
	session_start();
	$_SESSION["ime"]=$user->name;
	$_SESSION["status"]=$user->status;
	$_SESSION['email']=$user->email;
}









