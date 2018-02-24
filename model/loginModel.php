<?php

require 'db/dbhelper.php';

Class Login extends DBHelper{
    private $user = 'username';
    private $pass = 'password';

    function __construct(){
        return DBHelper::__construct();
    }

    function signIn($data){
        return DBHelper::logginUser($this->user,$this->pass);
    }
}