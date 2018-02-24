<?php
require '../../model/departmentModel.php';
$department = new Department();
if(isset($_POST['updatedept'])){
    $ref_id = $_POST['id'];
    $dept_code = $_POST['dept_code'];
    $dept_description = $_POST['dept_description'];
    $office_location = $_POST['office_location'];
    // $ref_id=5;
    //     $dept_code = "BSHRM";
    // $dept_description = "Shukogeki";
    // $office_location = "sex plor";
    $department->updateDept(array($dept_code, $dept_description,$office_location),$ref_id);
    header('location:../../view/departments.html');
}