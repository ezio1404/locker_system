<?php
require '../../model/lockerModel.php';
$locker = new Locker();
if(isset($_POST['addLocker'])){ // button name addLocker 
    $dept_code = $_POST['dept_code'];
    $locker_status = $_POST['locker_status'];
    $locker->addLocker(array($dept_code,$locker_status));
    header('location:locker.php'); // redirect page
}