<?php
require '../../model/studentModel.php';
$student = new Student();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->stud_id;
$student->deleteStud(array($id));