<?php

class Sales_Model_Resource_Quote_Payment extends Core_Model_Resource_Abstract
{

    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'sales_quote_payment_method';
        $this->primarykey = 'payment_id';

    }

}