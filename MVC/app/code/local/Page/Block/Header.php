<?php
class Page_Block_Header extends Core_Block_Template
{
    public function __construct()
    {
        $this->setTemplate('page/header.phtml');
    }

    public function getCustomerId()
    {
        return Mage::getSingleton('core/session')->get('customer_id');

    }
    public function getAdminId()
    {
        return Mage::getSingleton('core/session')->get('admin_id');

    }
    public function getCategory()
    {
        return Mage::getModel('catalog/category')->getCollection()->getData();

    }

}
