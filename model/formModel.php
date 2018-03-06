<?php

require 'db/dbhelper.php';

class FormEntry extends DBHelper 
{
    private $table = 'tbl_forms';
    private $fields = array(
        'stud_id',
        'locker_num',
        'form_type',
        'date_submitted',
        'form_status'
    );
//constructor
function __construct(){
    return DBHelper::__construct();
}
// Create
function addForm($data){
    return DBHelper::insertRecord($data,$this->fields,$this->table); 
 }
// Retreive
function getAllForm(){
    return DBHelper::getAllRecord($this->table);
}
function getFormById($ref_id){
    return DBHelper::getRecordById($this->table,'form_id',$ref_id);
}
function getDept($ref_id){
    return DBHelper::getRecord($this->table.' f','f.form_id',$ref_id);
}
// Update
function updateForm($data,$ref_id){
    return DBHelper::updateRecord($this->table.' f',$this->fields,$data,'f.form_id',$ref_id); 
 }
// Delete
function deleteForm($ref_id){
    return DBHelper::deleteRecord($this->table,'form_id',$ref_id);
}
//SOME FUNCTIONs
function getAllDept(){
        return DBHelper::getAllRecord('tbl_dept');
    }
    function getAllStud(){
        return DBHelper::getAllRecord('tbl_student');
    }
}
