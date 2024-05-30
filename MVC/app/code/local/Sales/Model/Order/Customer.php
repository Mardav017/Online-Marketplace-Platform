<?php

class Sales_Model_Order_Customer extends Core_Model_Abstract
{

    public function init()
    {
        $this->_modelClass = "Sales_Model_Order_Customer";
        $this->_resourceClass = "Sales_Model_Resource_Order_Customer";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Order_Customer";

    }

    public function addCustomerData($data,$orderId)
    {
        $this->setData($data);
        $this->addData('order_id',$orderId);
        $this->removeData('quote_customer_id');
        $this->removeData('quote_id');
        $this->save();

    }

}