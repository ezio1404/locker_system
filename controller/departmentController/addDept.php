<?php
require '../../model/departmentModel.php';
$department = new Department();
if(isset($_POST['addDept'])){ /// button name 'addDept'
    $dept_code = $_POST['dept_code'];
    $dept_description = $_POST['dept_description'];
    $office_location = $_POST['office_location'];
    // $dept_code = "CBA";
    // $dept_description = "College of Business Admin";
    // $office_location = "pep plor";
    $department->addDept(array($dept_code, $dept_description,$office_location));
   header('location:../../view/departments.html'); // redirect
}