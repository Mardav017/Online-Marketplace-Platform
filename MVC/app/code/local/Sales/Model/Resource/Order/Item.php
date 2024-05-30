<?php

class Sales_Model_Resource_Order_Item extends Core_Model_Resource_Abstract
{

    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_order_item';
        $this->primarykey = 'item_id';

    }

}