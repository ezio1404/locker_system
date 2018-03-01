<?php
require '../../model/studentModel.php';
$student = new Student();
if(isset($_POST['updateStud'])){
    $stud_id= $_POST['id'];
    $stud_fname = $_POST['stud_fname'];
    $stud_lname = $_POST['stud_lname'];
    $dept_id=$_POST["dept_id"];
    $stud_yearLevel = $_POST['stud_yearLevel'];
    $email = $_POST['email'];
    $date_apply = $_POST['date_apply'];
    // $stud_id = "15387467";
    // $stud_fname = "Potot";
    // $stud_lname = "Ej Anton";
    // $dept_id="4";
    // $stud_yearLevel = "4";
    // $email = "ezio";
    // $date_apply = "1234";
    $student->updateStud(array($stud_id, $stud_fname,$stud_lname,$dept_id, $stud_yearLevel,$email, $date_apply),$stud_id);
    header('location:../../view/students.html');
}