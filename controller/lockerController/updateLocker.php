<?php
require '../../model/lockerModel.php';
$locker = new Locker();
if(isset($_POST['updateLocker'])){ // button name addLocker 
    $dept_id = $_POST['dept_id'];
    $locker_status = $_POST['locker_status'];
    // $dept_id = "14";
    // $locker_status = "Occupied";
    
    $locker->updateLocker(array($dept_id,$locker_status),$dept_id);//naa niy error
    header('location:locker.php'); // redirect page
}