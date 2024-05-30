<?php

class Core_Controller_Admin_Action extends Core_Controller_Front_Action
{

    protected $_allowedAction = [
        'login'
    ];
    public function init()
    {

        if (($this->getRequest()->getModuleName() == 'Admin'||'admin') && !in_array($this->getRequest()->getActionName(), $this->_allowedAction)) {
            $session = Mage::getSingleton('core/session')->get('admin_id');
            // $session = false;
            if ($session == false) {
                $this->setRedirect('admin/account/login');
            }
        }

    }
}