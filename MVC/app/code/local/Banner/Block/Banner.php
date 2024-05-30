<?php

class Banner_Block_Banner extends Core_Block_Template{

   public function getBanner(){
        return Mage::getModel('banner/banner')->getCollection()->getData();
   }
   public function getProduct(){
        return Mage::getModel("catalog/product")->getCollection()->addLimitToFilter([10]);
   }
    
}