<?php

class Core_Model_Resource_Abstract
{

    protected $tablename = null;
    protected $primarykey = null;

    public function getPrimaryKey()
    {
        return $this->primarykey;

    }

    public function getTableName()
    {
        return $this->tablename;

    }

    public function getAdapter()
    {
        return new Core_Model_DB_Adapter();
    }



    public function getData($id = null)
    {
        
        if (!empty($id)) {

            $query = "SELECT * FROM {$this->getTableName()} WHERE {$this->getPrimaryKey()} = {$id}";
        } else {
            $query = "SELECT * FROM {$this->getTableName()}";
        }
        print_r($query);
        
        return $this->getAdapter()->fetchAll($query);
    }




    public function insertSql($table_name, $data)
    {
        $columns = [];
        $values = [];

        foreach ($data as $_field => $_value) {
            $columns[] = "`{$_field}`";
            $values[] = "'" . addslashes($_value) . "'";
        }

        $columns = implode(",", $columns);
        $values = implode(",", $values);


        return "INSERT INTO {$table_name} ({$columns}) VALUES ({$values})";
    }

    public function updateSql($table_name, $data, $where)
    {
        $columns = [];

        foreach ($data as $_field => $_value) {
            $columns[] = "`{$_field}` = " . "'" . addslashes($_value) . "'";
        }
        $columns = implode(",", $columns);

        foreach ($where as $key => $value) {
            $whereCond[] = "`{$key}` = '" . addslashes($value) . "'";
        }
        $whereCond = implode(" AND ", $whereCond);


        return "UPDATE {$table_name} SET {$columns} WHERE {$whereCond}";
    }

    public function deleteSql($table_name, $where)
    {
        $wherecond = [];

        foreach ($where as $_field => $_value) {
            $wherecond[] = "`{$_field}` = " . "'" . addslashes($_value) . "'";
        }

        $wherecond = implode(",", $wherecond);


        return "DELETE FROM {$table_name} WHERE {$wherecond}";
    }


    public function load($id, $column = null)
    {
        if ($column){
            $sql = "SELECT * FROM {$this->getTableName()} WHERE {$column} = {$id}";
        }else{
            $sql = "SELECT * FROM {$this->getTableName()} WHERE {$this->getPrimaryKey()} = {$id}";

        }
        return $this->getAdapter()->fetchRow($sql);

    }



    public function save(Core_Model_Abstract $product)
    {
        $_data = $product->getData();

        if (isset($_data[$this->getPrimaryKey()]) && !empty($_data[$this->getPrimaryKey()])) {

            unset($_data[$this->getPrimaryKey()]);
            $sql = $this->updateSql($this->getTableName(), $_data, [$this->getPrimaryKey() => $product->getId()]);

            echo "<br>Update Condition Called<br>";
            print_r($sql);

            $this->getAdapter()->update($sql);


        } else {


            $sql = $this->insertSql($this->getTableName(), $_data);

            echo "<br>Insert Condition Called<br>";
            print_r($sql);

            $id = $this->getAdapter()->insert($sql);
            $product->setId($id);


        }
    }
    public function delete(Core_Model_Abstract $product)
    {


        $sql = $this->deleteSql($this->getTableName(), [$this->getPrimaryKey() => $product->getId()]);

        return $this->getAdapter()->delete($sql);



    }




}