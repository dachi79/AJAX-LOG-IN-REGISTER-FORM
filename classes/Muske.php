<?php

class Muske extends Activerecord {
	public $id;
	public $slika;
	public $cena;
	public $boja;
	
	public static $table ="muske";
	public static $key = "id";
}