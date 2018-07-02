<?php 
session_start();
unset($_SESSION['ime']);
unset($_SESSION['email']);
unset($_SESSION['status']);
header("location:index.html");