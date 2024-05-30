<?php

class Admin_Controller_Account extends Core_Controller_Admin_Action
{

    public function __construct()
    {
        $this->init();

        if (Mage::getSingleton('core/session')->get('admin_id') != null && $this->getRequest()->getActionName() == 'login') {
            $this->setRedirect('admin/account/dashboard');
        }

    }


    public function loginAction()
    {
        $message='';
        try {

            if ($this->getRequest()->isPost()) {
                $postData = $this->getRequest()->getParams("adminlogin");
                $login = 0;
                $password = 0;

                if (Admin_Model_User::USERNAME == $postData['username']) {
                    $login++;
                } else {
                    throw new Exception("Username is incorrect.");
                }

                if (Admin_Model_User::PASSWORD == $postData['password']) {
                    $password++;
                    if ($login == 1 && $password == 1) {
                        $message = ['type' => 'success', 'message' => 'Login successful'];
                        $session = Mage::getSingleton('core/session');
                        $session->set('admin_id', Admin_Model_User::ID);
                        // $this->setRedirect('Admin/Account/dashboard');
                    }   
                } else {
                    throw new Exception("Password is incorrect.");
                    // $this->setRedirect('Admin/Account/login');

                }

            } else {
                $layout = $this->getLayout()->setTemplate('core/admin.phtml');
                $child = $layout->getChild('content');
                $layout->getChild('head')->addCss('skin/css/style.css');
                $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');
                $loginForm = $layout->createBlock('admin/login')->setTemplate('admin/login.phtml');
                $child->addChild('form', $loginForm);
                $layout->toHtml();
            }

        } catch (Exception $e) {
            $message = ['type' => 'error', 'message' => $e->getMessage()];
        }
        
        if($message){
           echo json_encode($message);
        }
    }

    public function dashboardAction()
    {

        $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');

        $child = $layout->getChild('content');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/Admin/dashboard.css');


        $dashboard = $layout->createBlock('admin/dashboard')
            ->setTemplate('admin/dashboard.phtml');

        $child->addChild('dashboard', $dashboard);

        $layout->toHtml();

    }

    public function logoutAction()
    {
        Mage::getSingleton('core/session')->remove('admin_id');
        
        $this->setRedirect('Admin/Account/login');
        

    }

}
