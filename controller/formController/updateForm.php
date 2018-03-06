<?php
require '../../model/formModel.php';
$formentry = new FormEntry();
if(isset($_POST['updateForm'])){ // button name addStud 
    $form_id = $_POST['form_id'];
    $stud_id = $_POST['stud_id'];
    $locker_num = $_POST['locker_num'];
    $form_type = $_POST['form_type'];
    $date_submitted = $_POST['date_submitted'];
    $form_status = $_POST['form_status'];

    // $stud_id = "15387467";
    // $locker_num = "1";
    // $form_type = "Occupation";
    // $date_submitted = "2018-03-11";
    // $form_status = "Paid";


    $formentry->updateForm(array( $stud_id,$locker_num,$form_type, $date_submitted, $form_status),$form_id);
    header('location:../../view/form.html'); // redirect page
}