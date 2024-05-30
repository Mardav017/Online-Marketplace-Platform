<?php

class Customer_Controller_Account extends Core_Controller_Front_Action
{

    public function __construct()
    {
        $this->init();

        if (Mage::getSingleton('core/session')->get('customer_id') != null && $this->getRequest()->getActionName() == 'login') {
            $this->setRedirect('Customer/Account/dashboard');
        }
    }

    public function registerAction()
    {

        $layout = $this->getLayout();

        $child = $layout->getChild('content');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');


        $registerForm = $layout->createBlock('customer/form')
            ->setTemplate('customer/form.phtml');

        $child->addChild('form', $registerForm);

        $layout->toHtml();


    }

    public function saveAction()
    {

        $data = $this->getRequest()->getParams('custdata');

        
        if ($this->isString($data, 'first_name') && $this->isString($data, 'last_name')) {
            $data = $this->validateEmail($data);
            $data = $this->validatePassword($data);
            $customerModel = Mage::getModel('customer/customer');
            $customerModel->setData($data)
                ->save();
        }


        $this->setRedirect('Customer/Account/login');
        
    }

    public function loginAction()
    {

        try {

            if ($this->getRequest()->isPost()) {
                $postData = $this->getRequest()->getParams("custlogin");
                
                
                
                
                $customerData = Mage::getModel('customer/customer')->getCollection()
                ->addFieldToFilter(['customer_email' => ['eq' => $postData['customer_email']]])->getData();
                

                $login = 0;
                $password = 0;
                foreach ($customerData as $value) {
                    if ($value->getCustomerEmail() == $postData['customer_email']) {
                        $login++;
                    }
                    echo $value->getPassword();
                    
                    if (password_verify($postData['password'], $value->getPassword())) {
                        $password++;
                        echo 123;

                        if ($login == 1 && $password == 1) {
                            echo "password match<br>";
                            $session = Mage::getSingleton('core/session');
                            $session->set('customer_id', $value->getCustomerId());

                            $this->setRedirect('');

                        }
                    }
                    else{
                        $this->setRedirect('customer/account/login');
                    }

                }


            } else {
                $layout = $this->getLayout();

                $child = $layout->getChild('content');
                $layout->getChild('head')->addCss('skin/css/style.css');
                $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');



                $loginForm = $layout->createBlock('customer/login')
                    ->setTemplate('customer/login.phtml');

                $child->addChild('form', $loginForm);

                $layout->toHtml();
            }

        } catch (Exception $e) {
            print_r($e);
        }
    }

    public function dashboardAction()
    {

        $layout = $this->getLayout();

        $child = $layout->getChild('content');
        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/customer/dashboard.css');


        $dashboard = $layout->createBlock('customer/dashboard')
            ->setTemplate('customer/dashboard.phtml');

        $child->addChild('dashboard', $dashboard);

        $layout->toHtml();

    }

    public function forgotpasswordAction()
    {
        if ($this->getRequest()->isPost()) {
            $postData = $this->getRequest()->getParams("custlogin");
            $customerModel = Mage::getModel('customer/customer');
            $customerData = $customerModel->getCollection()->getData();

            $email = 0;
            foreach ($customerData as $value) {
                if ($value->getCustomerEmail() == $postData['customer_email']) {
                    $email++;

                    if ($email == 1) {
                        echo "match found<br>";
                        $postData['customer_id'] = $value->getCustomerId();

                        $postData = $this->validatePassword($postData);
                        $customerModel->setData($postData)->save();

                        $this->setRedirect('Customer/Account/login');
                    }
                } else {

                    echo "<script>alert('Email Does not Match!!')</script>";
                    echo "<script>window.location.href = './forgotpassword';</script>";
                }
            }



        } else {

            $layout = $this->getLayout();

            $child = $layout->getChild('content');
            $layout->getChild('head')->addCss('skin/css/style.css');
            $layout->getChild('head')->addCss('skin/css/catalog/category/form.css');


            $Forgotpassword = $layout->createBlock('customer/forgotpassword')
                ->setTemplate('customer/forgotpassword.phtml');

            $child->addChild('forgot', $Forgotpassword);

            $layout->toHtml();
        }

    }

    public function logoutAction()
    {
        $sessionModel = Mage::getSingleton('core/session');
        $customerId = $sessionModel->get('customer_id');

        if ($customerId) {
            // Clear specific data from the session if needed
            unset($_SESSION['customer_id']);

            $this->setRedirect('Customer/Account/Login');
        }



        echo "Done";

    }







    //Validation Logics below this.

    protected function validatePassword($data)
    {
        if ($data['password'] === $data['confirm_password']) {
            unset($data['confirm_password']);
            $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);
            return $data;
        } else {
            exit("Passwords does not match!");
        }
    }

    protected function validateEmail($data)
    {
        return (filter_var($data['customer_email'], FILTER_VALIDATE_EMAIL)) ? $data : exit("Email is not valid!");
    }


    //Validation for Names
    protected function isString($data, $params)
    {
        return ctype_alpha($data[$params]) ? true : false;
    }


}