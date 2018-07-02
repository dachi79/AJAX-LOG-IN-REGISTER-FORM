<?php
require "../config.php";

$majce = new Muske;
$majca = json_encode($majce->get());
echo $majca;