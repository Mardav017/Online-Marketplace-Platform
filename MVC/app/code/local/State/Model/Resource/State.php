<?php
class State_Model_Resource_State extends Core_Model_Resource_Abstract
{

    protected $tablename = null;
    protected $primarykey = null;

    public function __construct()
    {
        $this->init();
    }


    // Above all call move to resourse abstract
    public function init()
    {
        $this->tablename = 'ccc_state';
        $this->primarykey = 'id';

    }

}