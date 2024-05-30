<?php

class Sales_Model_Order_Shipping extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "Sales_Model_Order_Shipping";
        $this->_resourceClass = "Sales_Model_Resource_Order_Shipping";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Order_Shipping";

    }

    public function addOrderShipping($data, $orderModel)
    {
        $this->setData($data)
            ->removeData('quote_id')
            ->removeData('shipping_id')
            ->addData('order_id', $orderModel->getId())
            ->save();
        $orderModel->addData('shipping_id', $this->getId())
            ->save();
    }

}