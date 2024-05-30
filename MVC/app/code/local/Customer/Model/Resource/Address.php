<?php
class Customer_Model_Resource_Address extends Core_Model_Resource_Abstract
{

    protected $tablename = null;
    protected $primarykey = null;

    public function __construct()
    {
        $this->init();
    }


    // Above all call move to resourse abstract
    public function init()
    {
        $this->tablename = 'customer_address';
        $this->primarykey = 'address_id';

    }

}