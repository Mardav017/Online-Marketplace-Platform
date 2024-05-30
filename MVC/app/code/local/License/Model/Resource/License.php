<?php

class License_Model_Resource_License extends Core_Model_Resource_Abstract
{
    public function __construct()
    {
        $this->init();
    }
    
    public function init()
    {
        $this->tablename = 'ccc_license_request';
        $this->primarykey = 'id';

    }

}