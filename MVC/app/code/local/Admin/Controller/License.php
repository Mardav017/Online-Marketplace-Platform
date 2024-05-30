<?php

class Admin_Controller_License extends Core_Controller_Admin_Action
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
        $child = $layout->getChild('content');

        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');

        $form = $layout->createBlock('license/admin_license_form')->setTemplate('license/admin/form.phtml');
        $child->addChild('form', $form);

        $layout->toHtml();

    }

    public function listAction()
    {

        $layout = $this->getLayout()->setTemplate('core/admin.phtml');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/product/list.css');
        $child = $layout->getChild('content');

        $list = $layout->createBlock('license/admin_license_list')
            ->setTemplate('license/admin/list.phtml');

        $child->addChild('list', $list);

        $layout->toHtml();

    }

    public function deleteAction()
    {

        
        $licenseModel = Mage::getModel('license/license')->load($this->getRequest()->getParams('id', 0))
            ->delete();

        print_r($licenseModel);



        // $this->setRedirect('admin/license/list');

    }

}