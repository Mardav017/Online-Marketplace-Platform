<?php

class Core_Model_Abstract
{

    protected $_data = [];
    protected $_modelClass = '';
    protected $_resourceClass = '';
    protected $_collectionClass = '';
    protected $_resource = null;
    protected $_collection = null;

    public function __construct()
    {
        $this->init();
    }

    public function init()
    {

    }
    protected function __beforeSave()
    {
        return $this;
    }
    protected function __afterSave()
    {
        return $this;
    }



    public function setResource($resourceClass)
    {
        $this->_resourceClass = $resourceClass;

    }

    public function setCollectionClass($collectionClass)
    {

    }

    public function setId($id)
    {
        $this->_data[$this->getResource()->getPrimaryKey()] = $id;
        return $this;
    }

    public function getId()
    {
        return isset($this->_data[$this->getResource()->getPrimaryKey()]) ?
            $this->_data[$this->getResource()->getPrimaryKey()] : false;
    }

    public function getResource()
    {
        return new $this->_resourceClass();

    }

    public function getCollection()
    {
        // echo 123123;

        $_collection = new $this->_collectionClass();
        $_collection->setModelClass($this->_modelClass);
        $_collection->setResource($this->getResource());
        $_collection->select();
        return $_collection;
    }


    public function __set($key, $value)
    {

    }

    public function __get($key)
    {

    }

    public function __unset($key)
    {

    }

    public function __call($name, $args)
    {
        // $name = strtolower(substr($name, 3));
        $name = $this->camelTodashed(substr($name, 3));
        return isset($this->_data[$name])
            ? $this->_data[$name]
            : "";
    }

    public function camelTodashed($className)
    {
        return strtolower(preg_replace('/([a-zA-Z])(?=[A-Z])/', '$1_', $className));
    }

    public function dashesToCamelCase($string, $capitalizeFirstCharacter = false)
    {
        $str = str_replace(' ', '', ucwords(str_replace('-', ' ', $string)));
        if (!$capitalizeFirstCharacter) {
            $str[0] = strtolower($str[0]);
        }
        return $str;
    }

    public function getData($key = null)
    {
        return $this->_data;
    }

    public function setData($data)
    {
        $this->_data = $data;
        return $this;

    }

    public function addData($key, $value)
    {
        $this->_data[$key] = $value;
        return $this;
    }

    public function removeData($key = null)
    {
        unset($this->_data[$key]);
        return $this;
    }

    public function save()
    {

        $this->__beforeSave();

        $this->getResource()->save($this);

        $this->__afterSave();

        return $this;

    }

    public function load($id, $column = null)
    {

        $this->_data = $this->getResource()->load($id, $column);
        return $this;

    }

    public function delete()
    {
        $this->getResource()->delete($this);
        return $this;

    }



}