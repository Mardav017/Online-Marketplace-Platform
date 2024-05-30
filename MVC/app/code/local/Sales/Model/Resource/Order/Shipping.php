<?php

class Sales_Model_Resource_Order_Shipping extends Core_Model_Resource_Abstract
{

    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_order_shipping_method';
        $this->primarykey = 'shipping_id';

    }

}