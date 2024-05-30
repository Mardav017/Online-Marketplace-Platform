<?php

class Mfr_Controller_Mfr extends Core_Controller_Front_Action
{

    public function formAction()
    {

        $layout = $this->getLayout();
        $child = $layout->getChild('content');

        $layout->getChild('head')->addCss('skin/css/style.css');

        $form = $layout->createBlock('mfr/form')->setTemplate('mfr/form.phtml');
        $child->addChild('form', $form);

        $layout->toHtml();

    }

    public function stateAction(){
        $data = $this->getRequest()->getParams();
        

        $stateModel = Mage::getSingleton('state/state')->getCollection()->addFieldToFilter(['mfr_id' => ['eq' => $data['id']]])->getData();

        $state = [];

        foreach ($stateModel as $st) {
            $state[] = $st->getName();
        }

        print_r(json_encode($state));
    }
}