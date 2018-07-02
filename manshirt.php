<?php
require "config.php";
session_start();
if($_SESSION['status'] != 5){
	header("location:ban.php");
};
$majce = new Muske;
$ja=json_encode($majce->get());
print_r($ja);