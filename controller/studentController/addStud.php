<?php
require '../../model/studentModel.php';
$student = new Student();
if(isset($_POST['addStud'])){ // button name addStud 
    $stud_id = $_POST['stud_id'];
    $stud_fname = $_POST['stud_fname'];
    $stud_lname = $_POST['stud_lname'];
    $stud_yearLevel = $_POST['stud_yearLevel'];
    $dept_id=$_POST["dept_id"];
    $email = $_POST['email'];
    $date_apply = $_POST['date_apply'];
    // $stud_id = "15387467";
    // $stud_fname = "Polleros";
    // $stud_lname = "Pearl";
    // $dept_id="3";
    // $stud_yearLevel = "3";
    // $email = "pearl";
    // $date_apply = "1234";
    $student->addStud(array($stud_id, $stud_fname,$stud_lname,$dept_id, $stud_yearLevel,$email, $date_apply));
    header('location:student.php'); // redirect page
}