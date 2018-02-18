<?php
require '../../model/studentModel.php';
$student = new Student();
if(isset($_POST['addStud'])){ // button name addStud 
    $stud_id = $_POST['stud_id'];
    $stud_fname = $_POST['stud_fname'];
    $stud_lname = $_POST['stud_lname'];
    $stud_yearLevel = $_POST['stud_yearLevel'];
    $username = $_POST['username'];
    $stud_lname = $_POST['password'];
    $student->addStud(array($stud_id, $stud_fname,$stud_lname, $stud_yearLevel,$username, $stud_lname));
    header('location:student.php'); // redirect page
}