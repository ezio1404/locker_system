<?php
require '../../model/facilitatorModel.php';
$facilitator = new Facilitator();
if(isset($_POST['updateFaci'])){
    // $faci_id  = $_POST['faci_id'];
    $ref_id = $_POST['id'];
    $faci_fname = $_POST['faci_fname'];
    $faci_lname = $_POST['faci_lname'];
    $dept_id = $_POST['dept_id'];
    $username = $_POST['username'];
    $password = $_POST['password'];
// $faci_id = "12346";
// $faci_fname = "Anna Marie";
// $faci_lname = "Jumaos";
// $dept_id="1";
// $username = "Anna";
// $password = "1234";
$facilitator->updateFaci(array($faci_id, $faci_fname,$faci_lname,$dept_id,$username, $password),$ref_id);
header('location:facilitator.php');
}