<?php

class Admin_Controller_Catalog_Category extends Core_Controller_Admin_Action
{
    protected $_allowedAction = [
        'login'
    ];
    public function __construct()
    {
        $this->init();
    }
    public function formAction()
    {

        $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');

        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');

        $child = $layout->getChild('content');

        $categoryForm = $layout->createBlock('catalog/admin_category_form')
            ->setTemplate('catalog/admin/category/form.phtml');

        $child->addChild('form', $categoryForm);
        $layout->toHtml();

    }

    public function saveAction()
    {

        $data = $this->getRequest()->getParams('cdata');
        $categoryModel = Mage::getModel('catalog/category');
        $categoryModel->setData($data)
            ->save();

        $this->setRedirect('Admin/Catalog_Category/list');
        // print_r($categoryModel);
    }

    public function listAction()
    {

        $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');

        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/category/list.css');

        $child = $layout->getChild('content');

        $categoryList = $layout->createBlock('catalog/admin_category_list')
            ->setTemplate('catalog/admin/category/list.phtml');

        $child->addChild('list', $categoryList);
        $layout->toHtml();
    }

}