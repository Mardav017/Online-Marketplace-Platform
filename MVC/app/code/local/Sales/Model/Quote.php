<?php

class Sales_Model_Quote extends Core_Model_Abstract
{
    public function init()
    {
        $this->_modelClass = "Sales_Model_Quote";
        $this->_resourceClass = "Sales_Model_Resource_Quote";
        $this->_collectionClass = "Sales_Model_Resource_Collection_Quote";

    }



    protected function __beforeSave()
    {
        $grandTotal = 0;
        foreach ($this->getItemCollection()->getData() as $item) {
            $grandTotal += $item->getRowTotal();
        }
        $tax = $grandTotal * $this->getTaxPercent() / 100;

        $grandTotal += $tax;

        $this->addData('grand_total', $grandTotal);
    }

    public function initQuote()
    {
        $customerId = Mage::getSingleton('core/session')->get('customer_id');
        $quoteId = Mage::getSingleton('core/session')->get('quote_id');

        $customerId = (!$customerId) ? 0 : $customerId;
        $quoteId = (!$quoteId) ? 0 : $quoteId;

        if ($customerId && $quoteId) {
            $quote = Mage::getModel('sales/quote')
                ->setData(
                    [
                        'quote_id' => $quoteId,
                        'customer_id' => $customerId,
                        'tax_percent' => 7,
                        'grand_total' => 0
                    ]
                )
                ->save();
        }

        $this->load($quoteId);
        if (!$this->getId()) {
            $quote = Mage::getModel('sales/quote')
                ->setData([
                    'tax_percent' => 7,
                    'grand_total' => 0,
                    'customer_id' => $customerId,
                ])
                ->save();
            Mage::getSingleton('core/session')->set('quote_id', $quote->getId());
            $this->load($quote->getId());

        }
    }

    public function merge()
    {
        $this->initQuote();
        $quoteModel = Mage::getModel('sales/quote')->getCollection()->addFieldToFilter([
            'order_id=AND' => ['eq' => 0],
            'customer_id' => ['eq' => $this->getCustomerId()]
        ]);

        $quoteId = [];
        foreach ($quoteModel->getData() as $quote) {
            $quoteId = $quote->getId();
        }

        if (count($quoteId) > 1) {
            
        }

    }


    public function addProduct($product)
    {
        $this->initQuote();
        if ($this->getId()) {
            Mage::getModel('sales/quote_item')->addItem($this, $product['product_id'], $product['qty']);
        }
        $this->addData('customer_id', Mage::getSingleton('core/session')->get('customer_id'));
        $this->save();
    }

    public function updateProduct($product)
    {
        $this->initQuote();
        $itemId = Mage::getModel('sales/quote_item')->load($product['item_id'])->getId();
        if ($this->getId()) {
            Mage::getModel('sales/quote_item')->updateItem($this, $product['item_id'], $product['product_id'], $product['qty']);
            $this->save();
        }
    }

    public function getItemCollection()
    {
        return Mage::getModel('sales/quote_item')->getCollection()
            ->addFieldToFilter(['quote_id' => ['eq' => $this->getId()]]);
    }
    public function getCustomerCollection()
    {
        return Mage::getModel('sales/quote_customer')->getCollection()->addFieldToFilter(['quote_id' => ['eq' => $this->getId()]]);
    }

    public function updateTotal()
    {
        $this->initQuote();
        $this->save();
    }


    public function shippingQuote($data)
    {
        $this->initQuote();
        if ($this->getId()) {
            $shipping = Mage::getModel('sales/quote_shipping')
                ->setData($data)
                ->addData('quote_id', $this->getId())
                ->save();

            $this->addData('shipping_id', $shipping->getId());
            $this->save();
        }
    }
    public function paymentQuote($data)
    {
        $this->initQuote();
        if ($this->getId()) {
            $payment = Mage::getModel('sales/quote_payment')
                ->setData($data)
                ->addData('quote_id', $this->getId())
                ->save();

            $this->addData('payment_id', $payment->getId());
            $this->save();
        }
    }

    public function addAddress($data)
    {
        Mage::getModel('sales/quote_customer')
            ->setData($data)
            ->removeData('address_id')
            ->addData('quote_id', $this->getId())
            ->save();

    }

    public function convert()
    {
        $this->initQuote();
        if ($this->getId()) {
            $order = Mage::getSingleton('sales/order')
                ->setData($this->getData())
                ->removeData('quote_id')
                ->removeData('order_id')
                ->removeData('payment_id')
                ->removeData('shipping_id')
                ->addData('order_number', uniqid('CCC-'))
                ->save();

            foreach ($this->getItemCollection()->getData() as $item) {
                Mage::getModel('sales/order_item')->addItem($item->getData(), $order->getId());
            }

            $customerData = $this->getCustomerCollection()->getFirstItem()->getData();
            Mage::getModel('sales/order_customer')->addCustomerData($customerData, $order->getId());

            $shippingData = Mage::getModel('sales/quote_shipping')->getData();
            Mage::getModel('sales/order_shipping')->addOrderShipping($shippingData, $order);

            $paymentData = Mage::getModel('sales/quote_payment')->getData();
            Mage::getModel('sales/order_payment')->addOrderPayment($paymentData, $order);


            $this->addData('order_id', $order->getId());
            $this->save();
        }

    }



}