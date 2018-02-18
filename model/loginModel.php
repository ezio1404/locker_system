<?php

require 'db/dbhelper.php';

Class Login extends Connection{
    private $user = 'username';
    private $pass = 'password';

    function __construct(){
        return Connection::__construct();
    }

    function signIn($data){
        return Connection::logginUser($data,$this->user,$this->pass);
    }
}