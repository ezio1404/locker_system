<?php
session_start();
if(isset($_SESSION['student'])){
    session_unset($_SESSION['student']);
}else if(isset($_SESSION['admin'])){
    session_unset($_SESSION['admin']);
}
header('location:index.php');