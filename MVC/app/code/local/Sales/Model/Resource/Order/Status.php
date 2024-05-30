<?php

class Sales_Model_Resource_Order_Status extends Core_Model_Resource_Abstract
{
    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_order_status_history';
        $this->primarykey = 'history_id';

    }

}