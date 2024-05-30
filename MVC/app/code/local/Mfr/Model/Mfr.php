<?php

class Mfr_Model_Mfr extends Core_Model_Abstract
{

    public function init()
    {
        $this->_modelClass = "Mfr_Model_Mfr";
        $this->_resourceClass = "Mfr_Model_Resource_Mfr";
        $this->_collectionClass = "Mfr_Model_Resource_Collection_Mfr";
    }

   
}