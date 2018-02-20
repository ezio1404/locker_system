<?php
require '../../model/formModel.php';
$formentry = new FormEntry();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->form_id;
// $id="35";
$formentry->deleteForm($id);