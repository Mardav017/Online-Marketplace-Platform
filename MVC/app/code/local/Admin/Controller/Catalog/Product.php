<?php

class Admin_Controller_Catalog_Product extends Core_Controller_Admin_Action
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
        // $layout->getChild('head')->addJs('js/page.js');
        // $layout->getChild('head')->addJs('js/page.js');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/product/form.css');


        $child = $layout->getChild('content');

        $productForm = $layout->createBlock('catalog/admin_product_form')
            ->setTemplate('catalog/admin/product/form.phtml');

        $child->addChild('form', $productForm);

        $layout->toHtml();


    }

    public function listAction()
    {

        $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');
        // $layout->getChild('head')->addJs('js/page.js');
        // $layout->getChild('head')->addJs('js/page.js');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/product/list.css');
        $child = $layout->getChild('content');

        $productList = $layout->createBlock('catalog/admin_product_list')
            ->setTemplate('catalog/admin/product/list.phtml');

        $child->addChild('list', $productList);

        $layout->toHtml();

    }

    public function saveAction()
    {
        echo "<pre>";
        $data = $this->getRequest()->getParams('pdata');

        
        if (isset($_FILES['pdata']['name']['image_link'])) {
            echo "_FIlES variable has the data<br>";

            $targetFolder =   Mage::getBaseDir('media/catalog/product/');
            $targetPath = $targetFolder.basename($_FILES["pdata"]["name"]["image_link"]);


            if (move_uploaded_file($_FILES['pdata']['tmp_name']['image_link'], $targetPath)) {
                echo "File upload successful";
            }else{
                echo "file not uploaded";
            }
            
        }
        $data['image_link'] = basename($_FILES["pdata"]["name"]["image_link"]);
        
        $productModel = Mage::getModel('catalog/product');
        $productModel->setData($data)
            ->save();

        print_r($productModel);

        $this->setRedirect("Admin/Catalog_Product/list");


    }

    public function deleteAction()
    {
        echo "<pre>";

        Mage::getModel('catalog/product')
            ->load($this->getRequest()
                ->getParams('id', 0))
            ->delete();



        // header('Location: ./list');
        $this->setRedirect('admin/catalog_product/list');

    }


}