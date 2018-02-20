<?php
require '../../model/studentModel.php';
$student = new Student();
if(isset($_POST['addStud'])){ // button name addStud 
    $stud_id = $_POST['stud_id'];
    $stud_fname = $_POST['stud_fname'];
    $stud_lname = $_POST['stud_lname'];
    $stud_yearLevel = $_POST['stud_yearLevel'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    // $stud_id = "15387467";
    // $stud_fname = "Polleros";
    // $stud_lname = "Pearl";
    // $dept_id="3";
    // $stud_yearLevel = "3";
    // $username = "pearl";
    // $password = "1234";
    $student->addStud(array($stud_id, $stud_fname,$stud_lname,$dept_id, $stud_yearLevel,$username, $password));
    header('location:student.php'); // redirect page
}