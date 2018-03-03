<?php

require 'db/dbhelper.php';


Class Student extends DBHelper{
    private $table = 'tbl_student';
    private $fields = array(
        'stud_id',
        'stud_fname',
        'stud_lname',
        'dept_id',
        'stud_yearLevel',
        'email',
        'date_applied',
    );
//constructor
    function __construct(){
        return DBHelper::__construct();
    }
// Create
function addStud($data){
    return DBHelper::insertRecord($data,$this->fields,$this->table); 
 }
// Retreive
 function getAllStud(){
     return DBHelper::getAllRecord($this->table);
 }
 function getStudById($ref_id){
     return DBHelper::getRecordById($this->table,'stud_id',$ref_id);
 }
 function getStud($ref_id){
     return DBHelper::getRecord($this->table.' s','s.stud_id',$ref_id);
 }
// Update
function updateStud($data,$ref_id){
    return DBHelper::updateRecord($this->table.' s',$this->fields,$data,'s.stud_id',$ref_id); 
 }
 // Delete
 function deleteStud($ref_id){
          return DBHelper::deleteRecord($this->table,'stud_id',$ref_id);
}
// Some Functions
      function getStudentDepts($data){
        return DBHelper::getByRelation('tbl_student s, '.$this->table.' d','d.stud_id','s.stud_id',$data);
    }
    function getAllDept(){
        return DBHelper::getAllRecord('tbl_dept');
    }

}
