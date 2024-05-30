<?php

class Catalog_Controller_Category extends Core_Controller_Front_Action
{

    public function viewAction()
    {

        try {
            $layout = $this->getLayout();
            $child = $layout->getChild('content');

            $layout->getChild('head')->addCss('skin/css/style.css');
            $layout->getChild('head')->addCss('skin/css/catalog/category/view.css'); 
            $viewCategory = $layout->createBlock('catalog/category_view')->setTemplate('catalog/category/view.phtml');
            $child->addChild('view', $viewCategory);

            $layout->toHtml();

        } catch (Exception $e) {
            echo "Item Not Present on this ID";
        }
    }

}