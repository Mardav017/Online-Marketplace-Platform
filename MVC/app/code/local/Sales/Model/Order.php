<?php

class Sales_Model_Order extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "Sales_Model_Order";
        $this->_resourceClass = "Sales_Model_Resource_Order";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Order";

    }

    protected function __beforeSave()
    {
        empty($this->_data['date']) ? $this->_data['date'] = date('Y-m-d H:i:s') : $this->_data['date'];
    }



}