<?php

class License_Model_Rate extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "License_Model_Rate";
        $this->_resourceClass = "License_Model_Resource_Rate";
        $this->_collectionClass = "License_Model_Resource_Collection_Rate";

    }
    

}