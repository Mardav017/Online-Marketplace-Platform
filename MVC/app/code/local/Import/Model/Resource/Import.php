<?php
class Import_Model_Resource_Import extends Core_Model_Resource_Abstract
{

    protected $tablename = null;
    protected $primarykey = null;

    public function __construct()
    {
        $this->init();
    }

    public function init()
    {
        $this->tablename = 'import_data';
        $this->primarykey = 'import_id';

    }

}