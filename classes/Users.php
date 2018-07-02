<?php

class Users extends Activerecord {
	public $id;
	public $name;
	public $email;
	public $pass;
	public $status;
	public $time;
	
	public static $table = "users";
	public static $key = "id";
}