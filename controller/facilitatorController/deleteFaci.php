<?php
require '../../model/facilitatorModel.php';
$facilitator = new Facilitator();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->faci_id;
// $id="4";
$facilitator->deleteFaci($id);