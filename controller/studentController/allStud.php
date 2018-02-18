<?php
require '../../model/studentModel.php';
$student = new Student();
echo json_encode($student->getAllStud());