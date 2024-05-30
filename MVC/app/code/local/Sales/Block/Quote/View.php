<?php
class Sales_Block_Quote_View extends Core_Block_Template
{
    public function getQuoteId(){
        return Mage::getSingleton('core/session')->get('quote_id');
    }
    public function getItemModel(){
        return Mage::getModel('sales/quote_item')->getCollection()->addFieldToFilter(['quote_id'=> ["eq" => $this->getQuoteId()]])->getData();
    }
    public function getQuoteModel(){
        return Mage::getModel('sales/quote')->load($this->getQuoteId());
    }


}