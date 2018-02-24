<?php
require '../../model/facilitatorModel.php';
$facilitator = new Facilitator();
if(isset($_POST['addfaci'])){ // button name addStud 
    $faci_id = $_POST['faci_id'];
    $faci_fname = $_POST['faci_fname'];
    $faci_lname = $_POST['faci_lname'];
    $dept_id = $_POST['dept_id'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    // $faci_id = "12346";
    // $faci_fname = "Anna";
    // $faci_lname = "Jumaos";
    // $dept_id="1";
    // $username = "Anna";
    // $password = "1234";
    $facilitator->addFaci(array($faci_id, $faci_fname,$faci_lname,$dept_id,$username, $password));
    header('location:facilitator.php'); // redirect page
}