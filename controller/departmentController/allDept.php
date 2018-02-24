<?php
require '../../model/departmentModel.php';
$department = new Department();
echo json_encode($department->getAllDept());
