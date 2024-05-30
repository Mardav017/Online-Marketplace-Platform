<?php

class Mfr_Block_Form extends Core_Block_Template
{
   
    public function getMfrModel()
    {
        return Mage::getModel('mfr/mfr')->getCollection()->getData();
    }
}