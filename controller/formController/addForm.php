<?php
require '../../model/formModel.php';
$student = new FormEntry();
if(isset($_POST['addform'])){ // button name addStud 
    $form_id = $_POST['form_id'];
    $stud_id = $_POST['stud_id'];
    $locker_num = $_POST['locker_num'];
    $form_type = $_POST['form_type'];
    $date_submitted = $_POST['date_submitted'];
    $date_expiration = $_POST['date_expiration'];
    $form_status = $_POST['form_status'];
    $student->addForm(array($form_id, $stud_id,$locker_num,$form_type, $date_submitted,$date_expiration, $form_status));
    header('location:applicants.php'); // redirect page
}