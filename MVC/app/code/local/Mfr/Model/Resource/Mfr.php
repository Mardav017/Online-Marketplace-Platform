<?php
class Mfr_Model_Resource_Mfr extends Core_Model_Resource_Abstract
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
        $this->tablename = 'ccc_mfr';
        $this->primarykey = 'id';

    }

}