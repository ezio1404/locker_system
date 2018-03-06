<?php

require 'db/dbhelper.php';


Class Locker extends DBHelper{
    private $table = 'tbl_locker';
    private $fields = array(
        'dept_id',
        'locker_status'
    );
//constructor
    function __construct(){
        return DBHelper::__construct();
    }
// Create
function addLocker($data){
    return DBHelper::insertRecord($data,$this->fields,$this->table); 
 }
// Retreive
 function getAllLocker(){
     return DBHelper::getAllRecord($this->table);
 }
 function getLockerById($ref_id){
     return DBHelper::getRecordById($this->table,'locker_num',$ref_id);
 }
 function getLocker($ref_id){
     return DBHelper::getRecord($this->table.' l','l.locker_num',$ref_id);
 }
// Update
function updateLocker($data,$ref_id){
    return DBHelper::updateRecord($this->table.' l',array('l.locker_status'),$data,'l.locker_num',$ref_id); 
 }
 // Delete
 function deleteLocker($ref_id){
          return DBHelper::deleteRecord($this->table,'locker_num',$ref_id);
}
// Some Functions
function getAllDeptByID(){
    return DBHelper::getAllRecord('tbl_dept');
}
function getCountLocker(){
    return DBHelper::countRecordGroup('locker_num','dept_id','NoOfLockers',$this->table,'dept_id');
}
// function getCountLockerVacant(){
//     return DBHelper::countRecordType('locker_num',$this->table,'locker_status','Vacant');
// }
// function getCountLockerReserve(){
//     return DBHelper::countRecordType('locker_num',$this->table,'locker_status','Reserve');
// }
// function getCountLockerOccupied(){
//     return DBHelper::countRecordType('locker_num',$this->table,'locker_status','Occupied');
// }
// function getCountLockerMaintenance(){
//     return DBHelper::countRecordType('locker_num',$this->table,'locker_status','Maintenance');
// }
}
