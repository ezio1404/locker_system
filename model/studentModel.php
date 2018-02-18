<?php

require 'db/dbhelper.php';


Class Student extends Connection{
    private $table = 'tbl_student';
    private $fields = array(
        'stud_id',
        'stud_fname',
        'stud_lname',
        'dept_code',
        'stud_yearLevel',
        'username',
        'password',

    );
//constructor
    function __construct(){
        return Connection::__construct();
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
 function getStud($table,$ref_id){
     return DBHelper::getRecord(array($table,$this->table.' s'),'s.stud_id',$ref_id);
 }
// Update
function updateStud($data){
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
    function getDepartment(){
        return Connection::getAllRecord('tbl_dept');
    }

}
