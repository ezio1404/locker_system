<?php
require '../../model/lockerModel.php';
$locker = new Locker();
echo json_encode($locker->getCountLocker());
