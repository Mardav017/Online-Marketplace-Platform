<?php

class Catalog_Block_Category_View extends Core_Block_Template{

    public function getCategory()
    {
        return Mage::getModel("catalog/category")->load($this->getRequest()->getParams('id', 0));
    }
    public function getProduct()
    {
        return Mage::getModel("catalog/product")->getCollection()->addFieldToFilter(["category_id"=> ["eq" => $this->getRequest()->getParams('id', 0)]]);
    }
    
}