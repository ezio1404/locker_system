<?php
require '../../model/facilitatorModel.php';
$facilitator = new Facilitator();
echo json_encode($facilitator->getAllFaci());