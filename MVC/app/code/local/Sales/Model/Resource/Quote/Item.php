<?php

class Sales_Model_Resource_Quote_Item extends Core_Model_Resource_Abstract
{

    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_quote_item';
        $this->primarykey = 'item_id';

    }

}