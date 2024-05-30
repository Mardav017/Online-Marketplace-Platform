<?php

class Admin_Controller_Import extends Core_Controller_Admin_Action
{
    public function __construct()
    {
        $this->init();

    }

    public function formAction()
    {

        $layout = $this->getLayout()->setTemplate('core/2columnAdmin.phtml');
        $child = $layout->getChild('content');

        $layout->getChild('head')->addCss('skin/css/style.css');
        $layout->getChild('head')->addCss('skin/css/import/admin/form.css');

        $formImport = $layout->createBlock('import/admin_form')->setTemplate('import/admin/form.phtml');
        $child->addchild('form', $formImport);

        $layout->toHtml();
    }

    public function uploadAction()
    {
        $file = $this->getRequest()->getParams();

        if (isset($_FILES['file']) && $_FILES['file']['error'] === UPLOAD_ERR_OK) {
            $fileName = $_FILES['file']['name'];
            $fileTmpName = $_FILES['file']['tmp_name'];

            $uploadDirectory = Mage::getBaseDir('media/import/');
            $destination = $uploadDirectory . $fileName;

            if (move_uploaded_file($fileTmpName, $destination)) {
                echo "File uploaded successfully.";
            } else {
                echo "Error uploading file.";
            }
        }
    }

    public function readAction()
    {

        $fileName = $this->getRequest()->getParams();

        $fullPath = Mage::getBaseDir('media/import/') . $fileName['fileName'];
        $row = 0;
        if (($handle = fopen($fullPath, 'r')) !== false) {
            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                if (!$row) {
                    $header = $data;
                    $row++;
                    continue;
                }
                $jsonData = array_combine($header, $data);
                $jsonData = json_encode($jsonData);
                Mage::getModel("import/import")->addData("json_data", $jsonData)->save();
            }


            fclose($handle);
        }
    }

    public function importAction()
    {

        $dataModel = Mage::getSingleton("import/import")
            ->getCollection()
            ->addFieldToFilter(['status' => ['eq' => 0]])
            ->getData();

        if (!empty($dataModel)) {


            foreach ($dataModel as $data) {

                $jsData = json_decode($data->getJsonData(), true);


                $image = $jsData['image_link'];
                $temp_path = "D:/Downloads/downthemall/" . $image;
                $escaped_file_path = addslashes($temp_path);
                $new_path = Mage::getBaseDir('media/catalog/product/') . $image;

                // if (file_exists($escaped_file_path)) {
                    
                    // if (copy($escaped_file_path, $new_path)) {
                        
                        Mage::getSingleton('catalog/product')->setData($jsData)->save();
                        Mage::getSingleton("import/import")->setData([
                            'import_id' => $data->getImportId(),
                            'status' => 1
                        ])->save();
                        echo 'Success';
                    // } else {
                        
                        // echo "Failed to copy $escaped_file_path to $new_path";
                    // }
                // } else {
                    
                    // echo "Source file $escaped_file_path does not exist";
                // }
            }
        } else {
            echo "Insert Data First!!";
        }


    }

}