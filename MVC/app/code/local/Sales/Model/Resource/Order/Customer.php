<?php

class Sales_Model_Resource_Order_Customer extends Core_Model_Resource_Abstract
{

    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_order_customer';
        $this->primarykey = 'order_customer_id';

    }

}