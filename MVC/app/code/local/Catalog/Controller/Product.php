<?php

class Catalog_Controller_Product extends Core_Controller_Front_Action
{

    public function viewAction()
    {

        try {
            $layout = $this->getLayout();
            $child = $layout->getChild('content');
            $layout->getChild('head')->addCss('skin/css/style.css');
            $layout->getChild('head')->addCss('skin/css/catalog/product/view.css');

            $viewProduct = $layout->createBlock('catalog/product_view')->setTemplate('catalog/product/view.phtml');
            $child->addChild('view', $viewProduct);

            $layout->toHtml();
            
        } catch (Exception $e) {
            echo "Item Not Present on this ID";
        }
    }

}