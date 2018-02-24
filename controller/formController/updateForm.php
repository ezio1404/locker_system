<?php
require '../../model/formModel.php';
$formentry = new FormEntry();
if(isset($_POST['updateForm'])){ // button name addStud 
    // $form_id = $_POST['form_id'];
    $ref_id = $_POST['id'];
    $stud_id = $_POST['stud_id'];
    $locker_num = $_POST['locker_num'];
    $form_type = $_POST['form_type'];
    $date_submitted = $_POST['date_submitted'];
    $date_expiration = $_POST['date_expiration'];
    $form_status = $_POST['form_status'];
    $formentry->updateForm(array( $stud_id,$locker_num,$form_type, $date_submitted,$date_expiration, $form_status),$ref_id);
    header('location:applicants.php'); // redirect page
}