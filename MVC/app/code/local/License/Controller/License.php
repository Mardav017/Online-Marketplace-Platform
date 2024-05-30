<?php

class License_Controller_License extends Core_Controller_Front_Action
{

    public function formAction()
    {

        $layout = $this->getLayout()->setTemplate('core/2columns.phtml');
        $left = $layout->getChild('left');

        $recordData = $this->getRequest()->getParams('ldata');
        $session = Mage::getSingleton('core/session')->set('session_id', rand(0, 10));
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/product/list.css');

        $right = $layout->getChild('right');

        $formRequest = $layout->createBlock('License/License_Form')->setTemplate('license/form.phtml');
        $listRecords = $layout->createBlock('License/License_List')->setTemplate('license/list.phtml');

        $left->addChild('form', $formRequest);
        $right->addChild('list', $listRecords);

        $layout->toHtml();


    }

    public function saveAction()
    {
        $recordData = $this->getRequest()->getParams('ldata');
        
        $stateRate = Mage::getModel("license/rate")
            ->getCollection()
            ->addFieldToFilter(['state', ["eq" => $recordData["state"]]]);
        $LL = $stateRate->getData()[0]->getRate();
        $DL = $stateRate->getData()[1]->getRate();



        // if ($recordData['LL'] && $recordData['DL']) {
        //     $recordData['license_type'] = 'LL,DL';
        //     $totalRate = $LL + $DL;
        // } elseif ($recordData['LL']) {
        //     $recordData['license_type'] = 'LL';
        //     $totalRate = $LL;

        // } elseif ($recordData['DL']) {
        //     $recordData['license_type'] = 'DL';
        //     $totalRate = $DL;

        // }

        if ($recordData['license_type'][0] && $recordData['license_type'][1]) {
            $recordData['license_type'] = 'LL,DL';
            $totalRate = $LL + $DL;
        } elseif ($recordData['license_type'][0]=='LL') {
            $recordData['license_type'] = 'LL';
            $totalRate = $LL;

        } elseif ($recordData['license_type'][0]=='DL') {
            $recordData['license_type'] = 'DL';
            $totalRate = $DL;

        }

        $recordData['total_rate'] = $totalRate;


        $session = Mage::getSingleton('core/session');
        $_data = Mage::getModel('license/license')->getData();
        
        $session->set('user_name',$recordData['user_name']);
        if(empty($_data['session_id'])) { 
            
            $session->set('session_id', rand(0, 10));
        }

        $recordData['session_id'] = $session->get('session_id');
        print_r($recordData);
        


        $licenseModel = Mage::getModel('license/license')->setData($recordData)->save();

        $this->setRedirect('license/license/form');



    }

}