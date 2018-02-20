<?php
require '../../model/lockerModel.php';
$locker = new Locker();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->locker_num;
// $id="35";
$locker->deleteLocker($id);