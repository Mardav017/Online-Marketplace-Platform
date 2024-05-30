<?php

class Catalog_Model_Resource_Product extends Core_Model_Resource_Abstract
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
        $this->tablename = 'catalog_product';
        $this->primarykey = 'product_id';

    }


}