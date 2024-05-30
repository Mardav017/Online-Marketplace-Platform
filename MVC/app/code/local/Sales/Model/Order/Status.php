<?php

class Sales_Model_Order_Status extends Core_Model_Abstract
{

    public function init()
    {
        $this->_modelClass = "Sales_Model_Order_Status";
        $this->_resourceClass = "Sales_Model_Resource_Order_Status";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Order_Status";

    }

    protected function __beforeSave()
    {
        $this->_data['date'] = date('Y-m-d H:i:s');
    }

    public function getStatus()
    {
        return ['pending','shipped','cancel','declined','refunded','completed'];
    }

}