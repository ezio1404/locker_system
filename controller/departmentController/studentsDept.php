<?php
require '../../model/departmentModel.php';
$department = new Department();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->dept_id;
// $id='5';
$row = $department->getStudentDepts(array($id));
echo json_encode($row);