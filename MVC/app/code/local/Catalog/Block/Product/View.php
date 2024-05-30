<?php

class Catalog_Block_Product_View extends Core_Block_Template{

    public function getProduct()
    {
        return Mage::getModel("catalog/product")->load($this->getRequest()->getParams('id', 0));
    }
    public function getCategory()
    {
        return Mage::getModel('catalog/category')->load($this->getProduct()->getCategoryId());
    }
    
}