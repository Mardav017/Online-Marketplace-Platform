<?php


class Core_Block_Layout extends Core_Block_Template
{

    public function __construct()
    {
        $this->setTemplate('core/1column.phtml');
        $this->prepareChildren();
        
    }

    public function prepareChildren()
    {
        $head = $this->createBlock('page/head');
        $this->addChild('head', $head);

        $header = $this->createBlock('page/header');
        $this->addChild('header', $header);

        
        $adminLeft = $this->createBlock('page/adminleft');
        $this->addChild('adminleft', $adminLeft);

        $left = $this->createBlock('page/left');
        $this->addChild('left', $left);

        $right = $this->createBlock('page/right');
        $this->addChild('right', $right);

        $content = $this->createBlock('page/content');
        $this->addChild('content', $content);
        
        $footer = $this->createBlock('page/footer');
        $this->addChild('footer', $footer);
    }

    public function createBlock($className)
    {
        return Mage::getBlock($className);
        
    }

    public function getRequest()
    {
        return Mage::getModel('core/request');
    }


}