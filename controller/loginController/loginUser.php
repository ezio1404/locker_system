<?php
require '../../model/loginModel.php';
$login = new Login();
if(isset($_POST['login'])){ // button name login 
    $username = $_POST['username'];
    $password = $_POST['password'];
    $login->signIn(array($username,$password));
    if (ok){
    header('location:../../view/home.html'); // redirect page
    }
}
