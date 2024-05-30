<?php
class Sales_Block_Admin_Order_View extends Core_Block_Template
{

    public function getOrderModel()
    {
        return Mage::getModel('sales/order')->load($this->getRequest()->getParams('id', 0));
    }

    public function getCustomerModel()
    {
        return Mage::getModel('sales/order_customer')->getCollection()->addFieldToFilter(['order_id' => ['eq' => $this->getRequest()->getParams('id', 0)]])->getFirstItem();
    }

    public function getItemCollection()
    {
        return Mage::getModel('sales/order_item')->getCollection()
            ->addFieldToFilter(['order_id' => ['eq' => $this->getRequest()->getParams('id', 0)]]);
    }

    public function getPaymentModel()
    {
        return Mage::getModel('sales/order_payment')
            ->load($this->getOrderModel()->getPaymentId());

    }
    public function getShippingModel()
    {
        return Mage::getModel('sales/order_shipping')
            ->load($this->getOrderModel()->getShippingId());

    }

    public function getStatus()
    {
        return Mage::getModel('sales/order_status')->getStatus();
    }

    public function getStatusHistory()
    {
        return Mage::getModel('sales/order_status')->getCollection()->addFieldToFilter(['order_id'=>['eq'=>$this->getRequest()->getParams('id', 0)]])->getData();

    }

}