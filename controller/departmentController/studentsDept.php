<?php
require '../../model/departmentModel.php';
$department = new Department();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->dept_id;
$row = $department->getStudentDepts(array($id));
echo json_encode($row);