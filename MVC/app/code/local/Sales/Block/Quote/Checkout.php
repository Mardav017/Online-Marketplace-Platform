<?php
class Sales_Block_Quote_Checkout extends Core_Block_Template
{

    public function getQuoteId()
    {
        return Mage::getSingleton('core/session')->get('quote_id');
    }
    public function getQuoteModel()
    {
        return Mage::getModel('sales/quote')->load($this->getQuoteId());
    }

    public function getItemModel()
    {
        return Mage::getModel('sales/quote_item')->getCollection()->addFieldToFilter(['quote_id' => ["eq" => $this->getQuoteId()]])->getData();
    }

    public function getCustomer()
    {
        return Mage::getModel('customer/customer')->load($this->getCustomerId());
    }

    public function getShippingMethod(){
        return Mage::getModel('sales/quote_shipping')->getShippingMethod();
    }
    public function getPaymentMethod(){
        return Mage::getModel('sales/quote_payment')->getPaymentMethod();
    }


    public function getCustomerId()
    {
        return Mage::getSingleton('core/session')->get('customer_id');
    }
    public function getCustomerAddress()
    {
        return Mage::getModel('customer/address')->getCollection()->addFieldToFilter(['customer_id'=> ["eq" => $this->getCustomerId()]])->getData();

    }
}