<?php

class Sales_Model_Quote_Item extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "Sales_Model_Quote_Item";
        $this->_resourceClass = "Sales_Model_Resource_Quote_Item";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Quote_Item";

    }

    protected function __beforeSave()
    {
        if ($this->getProductId()) {
            $row_total = $this->getProduct()->getPrice() * $this->getQty();
            $this->addData('row_total', $row_total);
            $this->addData('price', $this->getProduct()->getPrice());
        }
    }

    protected $_product = '';

    public function getProduct()
    {
        if ($this->_product) {
            return $this->_product;
        }
        $this->_product = Mage::getModel('catalog/product')->load($this->getProductId());
        return $this->_product;
    }

    public function addItem(Sales_Model_Quote $quote, $productId, $qty)
    {
        $item = $quote->getItemCollection()->addFieldToFilter(['product_id'=>['eq'=>$productId]])->getFirstItem();
        $itemId = ($item && $item->getId()) ? $item->getId() : 0;
        $qty = ($item && $item->getId()) ? $item->getQty() + $qty : $qty;

        $data = [
            'item_id' => $itemId,
            'quote_id' => $quote->getId(),
            'customer_id' => Mage::getSingleton('core/session')->get('customer_id'),
            'product_id' => $productId,
            'qty' => $qty,
            "price" => 0,
            "row_total" => 0
        ];
        $this->setData($data)->save();

    }

    public function updateItem(Sales_Model_Quote $quote, $itemId, $productId, $qty){
        

        $data = [
            'item_id' => $itemId,
            "quote_id" => $quote->getId(),
            'product_id' => $productId,
            'qty' => $qty,
            "price" => 0,
            "row_total" => 0
        ];
        $this->setData($data)->save();

    }

}