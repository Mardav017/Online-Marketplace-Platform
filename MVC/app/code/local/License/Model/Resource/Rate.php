<?php

class License_Model_Resource_Rate extends Core_Model_Resource_Abstract
{
    public function __construct()
    {
        $this->init();
    }
    public function init()
    {
        $this->tablename = 'ccc_statewise_license_rate';
        $this->primarykey = 'id';

    }


}