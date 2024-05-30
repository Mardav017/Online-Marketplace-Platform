<?php
class Catalog_Model_Resource_Category extends Core_Model_Resource_Abstract
{


    public function __construct()
    {
        $this->init();
    }


    public function init()
    {
        $this->tablename = 'catalog_category';
        $this->primarykey = 'category_id';

    }


}
