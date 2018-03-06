<?php

require 'db/dbhelper.php';

Class Department extends DBHelper{
    private $table = 'tbl_dept';
    private $fields = array(
        'dept_code',
        'dept_description',
        'office_location'
    );
//constructor
    function __construct(){
        return DBHelper::__construct();
    }
// Create
function addDept($data){
    return DBHelper::insertRecord($data,$this->fields,$this->table); 
 }
// Retreive
 function getAllDept(){
     return DBHelper::getAllRecord($this->table);
 }
 function getDeptById($ref_id){
     return DBHelper::getRecordById($this->table,'dept_id',$ref_id);
 }
 function getDept($ref_id){
     return DBHelper::getRecord($this->table.' d','d.dept_id',$ref_id);
 }
// Update
function updateDept($data,$ref_id){
    return DBHelper::updateRecord($this->table.' d',$this->fields,$data,'d.dept_id',$ref_id); 
 }
 // Delete
 function deleteDept($ref_id){
          return DBHelper::deleteRecord($this->table,'dept_id',$ref_id);
}
// Some Functions
      function getStudentDepts($data){
        return DBHelper::getByRelation('tbl_student s, '.$this->table.' d','d.dept_id','s.dept_id',$data);
    }
    function getCountDept(){
        return DBHelper::countRecord('dept_id',$this->table);
    }
}