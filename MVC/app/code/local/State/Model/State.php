<?php

class State_Model_State extends Core_Model_Abstract
{

    public function init()
    {
        $this->_modelClass = "State_Model_State";
        $this->_resourceClass = "State_Model_Resource_State";
        $this->_collectionClass = "State_Model_Resource_Collection_State";
    }

   
}