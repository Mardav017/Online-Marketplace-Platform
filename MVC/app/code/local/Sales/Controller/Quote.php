<?php

class Sales_Controller_Quote extends Core_Controller_Front_Action
{
    public function addAction()
    {
        $data = $this->getRequest()->getParams('qdata');
        Mage::getSingleton('sales/quote')->addProduct($data);
        $this->setRedirect('catalog/product/view?id=' . $data['product_id']);
    }

    public function viewAction()
    {
        try {
            $layout = $this->getLayout();
            $child = $layout->getChild('content');
            $layout->getChild('head')->addCss('skin/css/style.css');
            $layout->getChild('head')->addCss('skin/css/sales/quote/view.css');

            $viewCart = $layout->createBlock('sales/quote_view')->setTemplate('sales/quote/view.phtml');
            $child->addChild('view', $viewCart);

            $layout->toHtml();
            
        } catch (Exception $e) {
            echo "<div align='center' class='text-2xl font-semibold'>Cart is Empty</div>";
        }
    }

    public function updateItemAction()
    {
        $data =$this->getRequest()->getParams();
        Mage::getSingleton('sales/quote')->updateProduct($data);

    }

    public function deleteAction()
    {

        $itemId = $this->getRequest()->getParams('id', 0);

        $itemModel = Mage::getModel('sales/quote_item')
            ->load($itemId)
            ->delete();

        Mage::getModel('sales/quote')->updateTotal();

        $this->setRedirect('sales/quote/view');

    }


    public function checkoutAction()
    {
        $custId = Mage::getSingleton('core/session')->get('customer_id');
        try {
            if (!$custId) {

                $this->setRedirect('customer/account/login');

            } else {

                $layout = $this->getLayout();
                $child = $layout->getChild('content');
                $layout->getChild('head')->addCss('skin/css/style.css');
                $layout->getChild('head')->addCss('skin/css/sales/quote/checkout.css');

                $checkout = $layout->createBlock('sales/quote_checkout')->setTemplate('sales/quote/checkout.phtml');
                $child->addChild('view', $checkout);

                $layout->toHtml();
            }
        } catch (Exception $e) {
            $this->setRedirect('sales/quote/view');
        }

    }

    public function saveAction()
    {
        //Save to Quote Shipping
        $shipping = $this->getRequest()->getParams('shipping');
        Mage::getSingleton('sales/quote')->shippingQuote($shipping);

        //Save to Quote Payment
        $payment = $this->getRequest()->getParams('pay');
        Mage::getSingleton('sales/quote')->paymentQuote($payment);

        //Save to Quote Customer
        $address = Mage::getModel('customer/address')->load($this->getRequest()->getParams('address_id'))->getData();
        Mage::getSingleton('sales/quote')->addAddress($address);

        //Convert Quote to Order
        Mage::getSingleton('sales/quote')->convert();
        Mage::getSingleton('core/session')->remove('quote_id');

        $this->setRedirect('sales/quote/confirm');

    }

    public function confirmAction()
    {

        $layout = $this->getLayout();
        $child = $layout->getChild('content');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/sales/quote/checkout.css');

        $confirm = $layout->createBlock('sales/quote_confirm')->setTemplate('sales/quote/confirm.phtml');

        $child->addChild('confirm', $confirm);

        $layout->toHtml();
    }

    public function saveaddressAction()
    {
        $addressData = $this->getRequest()->getParams('add');
        $customerModel = Mage::getModel('customer/address')->setData($addressData)->save();

        $this->setRedirect('sales/quote/checkout');

    }

}