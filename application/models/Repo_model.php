<?php



class Repo_model extends CI_Model{
    public function __construct()
    {
        parent::__construct();
    }

    public function hasRecords(){
        return false;
    }
}