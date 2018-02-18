<?php
require '../../model/departmentModel.php';
$department = new Department();
if(isset($_POST['addDept'])){ /// button name 'addDept'
    $dept_code = $_POST['dept_code'];
    $dept_description = $_POST['dept_code'];
    $office_location = $_POST['office_location'];
    $department->addDept(array($coursename, $dept_description,$office_location));
    header('location:department.php'); // redirect
}