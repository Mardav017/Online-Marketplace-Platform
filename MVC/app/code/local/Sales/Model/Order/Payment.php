<?php

class Sales_Model_Order_Payment extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "Sales_Model_Order_Payment";
        $this->_resourceClass = "Sales_Model_Resource_Order_Payment";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Order_Payment";

    }

    public function addOrderPayment($data, $orderModel)
    {
        $this->setData($data)
            ->removeData('quote_id')
            ->removeData('payment_id')
            ->addData('order_id', $orderModel->getId())
            ->save();
        $orderModel->addData('payment_id', $this->getId())
            ->save();
    }

}