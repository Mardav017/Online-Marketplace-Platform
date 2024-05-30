<?php

class Banner_Model_Resource_Banner extends Core_Model_Resource_Abstract{

    protected $tablename = null;
    protected $primarykey = null;

    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'banner';
        $this->primarykey = 'banner_id';

    }
    
}