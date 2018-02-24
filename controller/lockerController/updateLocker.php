<?php
require '../../model/lockerModel.php';
$locker = new Locker();
if(isset($_POST['updateLocker'])){ // button name addLocker 
    // $locker_num=$_POST['locker_num'];
    $ref_id = $_POST['id'];
    $locker_status = $_POST['locker_status'];
    // $dept_id = "14";
    // $locker_status = "Occupied";
    
    $locker->updateLocker(array($dept_id,$locker_status),$ref_id);//naa niy error
    header('location:locker.php'); // redirect page
}