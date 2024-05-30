<?php

class Sales_Model_Resource_Quote extends Core_Model_Resource_Abstract
{
    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_quote';
        $this->primarykey = 'quote_id';

    }

}