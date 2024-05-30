<?php
class Sales_Block_Admin_Order_List extends Core_Block_Template
{
    public function getOrder()
    {
        return Mage::getSingleton('sales/order')->getCollection()->addOrderByToFilter('order_id','DESC')->getData();
    }

    public function getOrderItem()
    {
        return Mage::getSingleton('sales/order_item')->getCollection();
    }

    public function getStatus(){
        return Mage::getModel('sales/order_status')->getStatus();
    }
}