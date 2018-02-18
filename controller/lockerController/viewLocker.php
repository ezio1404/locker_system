<?php
require '../../model/lockerModel.php';
$locker = new Locker();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->locker_num;
$row = $locker->getLockerById(array($id));
echo json_encode($row);
?>