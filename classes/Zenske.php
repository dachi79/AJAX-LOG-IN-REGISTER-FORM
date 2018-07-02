<?php

class Zenske extends Activerecord {
	public $id;
	public $slika;
	public $cena;
	public $boja;
	
	public static $table ="zenske";
	public static $key = "id";
}