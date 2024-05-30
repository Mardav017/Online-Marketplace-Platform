<?php

class Sales_Model_Order_Item extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "Sales_Model_Order_Item";
        $this->_resourceClass = "Sales_Model_Resource_Order_Item";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Order_Item";

    }

    public function addItem($data, $orderId)
    {
        $productDetails = Mage::getSingleton('catalog/product')->load($data['product_id']);

        $this->setData($data);
        $this->addData('order_id', $orderId);
        $this->addData('product_name', $productDetails->getName());
        $this->addData('product_color', $productDetails->getColor());
        $this->removeData('customer_id');
        $this->removeData('item_id');
        $this->removeData('quote_id');
        $this->save();
    }
}