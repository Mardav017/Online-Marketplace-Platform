<?php

class Page_Controller_Index extends Core_Controller_Front_Action
{

    public function indexAction()
    {
        $layout = $this->getLayout();
      
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/banner/banner.css');
        $child = $layout->getChild('content');

        $banner = $layout->createBlock('banner/banner')
            ->setTemplate('banner/banner.phtml');
        
        $child->addChild('banner', $banner);


        $layout->toHtml();

    }

    public function testAction()
    {
        $layout = $this->getLayout()->setTemplate('core/2columns.phtml');

        $child1 = $layout->getChild('left');

        $data = $this->getRequest()->getParams('data');
        $model = Mage::getModel('core/abstract');
        $model->addData('name', $data);

        $child2 = $layout->getChild('right');

        $form = $layout->createBlock('page/left')->setTemplate('test/form.phtml');
        $postData = $layout->createBlock('page/right')->setTemplate('test/postdata.phtml');

        $child1->addChild('form', $form);
        $child2->addChild('postdata', $postData);

        $layout->toHtml();
        

    }

    

}
