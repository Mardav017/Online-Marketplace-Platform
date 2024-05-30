<?php

class License_Model_License extends Core_Model_Abstract
{

    protected function __beforeSave()
    {
        $this->_data['created_at'] = date('Y-m-d H:i:s');
        
        

        
    }


    public function init()
    {
        $this->_modelClass = "License_Model_License";
        $this->_resourceClass = "License_Model_Resource_License";
        $this->_collectionClass = "License_Model_Resource_Collection_License";

    }


}