<?php
require '../../model/formModel.php';
$formentry = new FormEntry();
echo json_encode($formentry->getAllForm());