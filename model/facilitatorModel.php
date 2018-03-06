<?php

require 'db/dbhelper.php';


Class Facilitator extends DBHelper{
    private $table = 'tbl_facilitator';
    private $fields = array(
        'faci_id',
        'faci_fname',
        'faci_lname',
        'dept_id',
        'username',
        'password',
    );
//constructor
    function __construct(){
        return DBHelper::__construct();
    }
// Create
function addFaci($data){
    return DBHelper::insertRecord($data,$this->fields,$this->table); 
 }
// Retreive
 function getAllFaci(){
     return DBHelper::getAllRecord($this->table);
 }
 function getFaciById($ref_id){
     return DBHelper::getRecordById($this->table,'faci_id',$ref_id);
 }
 function getFaci($ref_id){
     return DBHelper::getRecord($this->table.' f','f.faci_id',$ref_id);
 }
// Update
function updateFaci($data,$ref_id){
    return DBHelper::updateRecord($this->table.' f',$this->fields,$data,'f.faci_id',$ref_id); 
 }
 // Delete
 function deleteFaci($ref_id){
          return DBHelper::deleteRecord($this->table,'faci_id',$ref_id);
}
// Some Functions
function getAllFaci(){
        return DBHelper::getAllRecord('faci_id','tbl_facilitator');
    }
}
