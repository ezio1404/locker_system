<?php
require '../../model/lockerModel.php';
$locker = new Locker();
if(isset($_POST['addLocker'])){ // button name addLocker 
    
    $dept_id = $_POST['dept_id'];
    $locker_status = "Vacant";
    // $dept_id = "2";
    // $locker_status = "Maintenance";
    for($i=0;$i<30;$i++){
  $locker->addLocker(array($dept_id,$locker_status));
//    echo $ok?"Success":"Error";
    }
    
    header('location:../../view/locker.html'); // redirect page
}