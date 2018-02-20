<?php
require '../../model/studentModel.php';
$student = new Student();
if(isset($_POST['updatestud'])){
    //$id = $_POST['id'];
    $stud_id = $_POST['stud_id'];
    $stud_fname = $_POST['stud_fname'];
    $stud_lname = $_POST['stud_lname'];
    $stud_yearLevel = $_POST['stud_yearLevel'];
    $username = $_POST['username'];
    $stud_lname = $_POST['password'];
    // $stud_id = "15387467";
    // $stud_fname = "Potot";
    // $stud_lname = "Ej Anton";
    // $dept_id="4";
    // $stud_yearLevel = "4";
    // $username = "ezio";
    // $password = "1234";
    $student->updateStud(array($stud_id, $stud_fname,$stud_lname,$dept_id, $stud_yearLevel,$username, $password),$stud_id);
    header('location:student.php');
}