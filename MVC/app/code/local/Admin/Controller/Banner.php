<?php

class Admin_Controller_Banner extends Core_Controller_Admin_Action
{
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

        $bannerForm = $layout->createBlock('banner/admin_banner_form')->setTemplate('banner/admin/form.phtml');
        $child->addChild('form', $bannerForm);

        $layout->toHtml();

    }

    public function saveAction()
    {
        echo "<pre>";
        $data = $this->getRequest()->getParams('bdata');

        // print_r($data);
        if (isset($_FILES['bdata']['name']['banner_image'])) {
            echo "_FIlES variable has the data<br>";

            $targetFolder = Mage::getBaseDir('media/banner/');
            $targetPath = $targetFolder . basename($_FILES['bdata']['name']['banner_image']);


            if (move_uploaded_file($_FILES['bdata']['tmp_name']['banner_image'], $targetPath)) {
                echo "File upload successful";
            } else {
                echo "file not uploaded";
            }

        }

        $data['banner_image'] = basename($_FILES['bdata']['name']['banner_image']);
        // print_r($data);


        $bannerModel = Mage::getModel('banner/banner');
        $bannerModel->setData($data)
            ->save();

        print_r($bannerModel);
        $this->setRedirect("Admin/Banner/list");


    }

    public function listAction()
    {
        $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');
        $child = $layout->getChild('content');

        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');

        $bannerList = $layout->createBlock('banner/admin_banner_list')->setTemplate('banner/admin/list.phtml');
        $child->addChild('list', $bannerList);

        $layout->toHtml();



    }

    public function deleteAction()
    {
        echo "<pre>";

        Mage::getModel('banner/banner')
            ->load($this->getRequest()
                ->getParams('id', 0))
            ->delete();

        $this->setRedirect('Admin/Banner/list');

    }
}