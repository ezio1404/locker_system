<?php

require 'db/dbhelper.php';


Class Locker extends Connection{
    private $table = 'tbl_locker';
    private $fields = array(
        'dept_id',
        'locker_status'
    );
//constructor
    function __construct(){
        return Connection::__construct();
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
 function getLocker($table,$ref_id){
     return DBHelper::getRecord(array($table,$this->table.' l'),'l.locker_num',$ref_id);
 }
// Update
function updateLocker($data){
    return DBHelper::updateRecord($this->table.' l',$this->fields,$data,'l.locker_num',$ref_id); 
 }
 // Delete
 function deleteLocker($ref_id){
          return DBHelper::deleteRecord($this->table,'locker_num',$ref_id);
}
// Some Functions



}
