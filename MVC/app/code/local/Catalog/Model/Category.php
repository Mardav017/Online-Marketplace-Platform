<?php

class Catalog_Model_Category extends Core_Model_Abstract{

    public function init()
    {
        $this->_modelClass = "Catalog_Model_Category";
        $this->_resourceClass = "Catalog_Model_Resource_Category";
        $this->_collectionClass = "Catalog_Model_Resource_Collection_Category";

    }
    
    public function getStatus()
    {
        $mapping = [1 => 'E', 0 => 'D'];
        if (isset($this->_data['status'])) {
            return $mapping[$this->_data['status']];
        }
    }
}