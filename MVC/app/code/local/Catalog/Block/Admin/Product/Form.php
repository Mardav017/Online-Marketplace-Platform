<?php

class Catalog_Block_Admin_Product_Form extends Core_Block_Template
{
    public function getProduct()
    {
        return Mage::getModel("catalog/product")->load($this->getRequest()->getParams('id', 0));
    }
}