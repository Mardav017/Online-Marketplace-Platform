<?php
class Admin_Controller_Sales extends Core_Controller_Admin_Action
{
    public const ACTION = 'admin';
    public function __construct()
    {
        $this->init();

    }

    public function orderAction()
    {
        try {

            $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');
            $child = $layout->getChild('content');
            $layout->getChild('head')->addCss('skin/css/style.css');
            $layout->getChild('head')->addCss('skin/css/sales/admin/order/list.css');

            $ordersView = $layout->createBlock('sales/admin_order_list')->setTemplate('sales/admin/order/list.phtml');
            $child->addChild('list', $ordersView);

            $layout->toHtml();

        } catch (Exception $e) {
            echo "No orders placed yet!!!";
        }
    }

    public function updateStatusAction()
    {
        $data = $this->getRequest()->getParams();
        Mage::getSingleton('sales/order')
            ->setData($data)
            ->removeData('from_status')
            ->save();

        Mage::getSingleton('sales/order_status')
            ->setData($data)
            ->removeData('status')
            ->addData('to_status', $data['status'])
            ->addData('action_by', self::ACTION)
            ->save();


    }

    public function viewAction()
    {
        try {
            $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');
            $child = $layout->getChild('content');

            $layout->getChild('head')->addCss('skin/css/style.css');
            $layout->getChild('head')->addCss('skin/css/sales/admin/order/view.css');

            $statusForm = $layout->createBlock('sales/admin_order_view')->setTemplate('sales/admin/order/view.phtml');
            $child->addChild('form', $statusForm);

            $layout->toHtml();

        } catch (Exception $e) {
            echo "<div align='center' class='font-semibold'>Order Not Found</div>";
        }


    }

    public function saveAction()
    {
        $data = $this->getRequest()->getParams('sdata');
    }


}