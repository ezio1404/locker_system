<?php
require '../../model/lockerModel.php';
$locker = new Locker();
if(isset($_POST['addLocker'])){ // button name addLocker 
    $dept_id = $_POST['dept_id'];
    $locker_status = $_POST['locker_status'];
    // $dept_id = "3";
    // $locker_status = "Maintenance";
   /* $ok=*/$locker->addLocker(array($dept_id,$locker_status));
    // echo $ok?"Success":"Error";
    header('location:locker.php'); // redirect page
}