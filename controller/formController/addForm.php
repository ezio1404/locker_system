<?php
require '../../model/formModel.php';
$formentry = new FormEntry();
if(isset($_POST['addform'])){ // button name addStud 
    // date_default_timezone_set('Asia/Manila');
    // $date = date('F j, Y');
    // $newdate = new DateTime($date);
    // $newdate->add(new DateInterval('P3D'));
    // $expdate = $newdate->format('F j, Y');
    $stud_id = $_POST['stud_id'];
    $locker_num = $_POST['locker_num'];
    $form_type = $_POST['form_type'];
    $date_submitted = $_POST['date_submitted'];
    $form_status = $_POST['form_status'];
    // date('F j, Y', strtotime($varial['date_submitted']));   
    // echo 'date today: '.$date.'<br>';
    // echo 'date expiry: '.$expdate;
    // $stud_id ="11";
    // $locker_num = "11";
    // $form_type = "vacant";
    // $date_submitted = $date;
    // $date_expiration = $expdate;
    // $form_status = "Active";
    $formentry->addForm(array( $stud_id,$locker_num,$form_type, $date_submitted, $form_status));
    header('location:../../view/form.html'); // redirect page
}