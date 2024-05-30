<?php

class Core_Controller_Front_Action
{
    protected $_loginRequiredActions = [
        'dashboard'
    ];

    public function init()
    {
        if (($this->getRequest()->getModuleName() == 'Customer' || 'customer') && in_array($this->getRequest()->getActionName(), $this->_loginRequiredActions)) {
            $session = Mage::getSingleton('core/session')->get('customer_id');
            if ($session == false) {
                $this->setRedirect('Customer/Account/login');
            }
        }

    }

    protected $_layout = null;
    public function getLayout()
    {
        if (is_null($this->_layout)) {
            $this->_layout = Mage::getBlock('core/layout');
        }
        return $this->_layout;

    }

    public function setRedirect($url)
    {
        $url = Mage::getBaseUrl() . $url;
        header("Location:" . $url);
        exit();

    }

    public function getRequest()
    {
        return Mage::getModel('core/request');
    }
}