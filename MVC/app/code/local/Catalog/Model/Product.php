<?php

class Catalog_Model_Product extends Core_Model_Abstract
{

    public function init()
    {
        $this->_modelClass ="Catalog_Model_Product";
        $this->_resourceClass = "Catalog_Model_Resource_Product";
        $this->_collectionClass = "Catalog_Model_Resource_Collection_Product";
    }

    public function getStatus()
    {
        $mapping = [1 => 'E', 0 => 'D'];
        if (isset($this->_data['status'])) {
            return $mapping[$this->_data['status']];
        }
    }

    protected function __beforeSave()
    {

        empty($this->_data['product_id']) ? $this->_data['created_at'] = date('Y-m-d H:i:s') : $this->_data['updated_at'] = date('Y-m-d H:i:s');
    }
    
    protected function __afterSave()
    {
        return $this;
    }

    

}