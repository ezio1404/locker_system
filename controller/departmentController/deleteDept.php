<?php
require '../../model/departmentModel.php';
$department = new Department();
$data = file_get_contents("php://input");
$request = json_decode($data);
$id = $request->dept_id;
$department->deleteDept(array($id));