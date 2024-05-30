<?php

class Core_Model_DB_Adapter
{

    public $config = [
        "host" => "localhost",
        "user" => "root",
        "pswd" => "",
        "db" => "ccc_practice"
    ];
    public $connect = null;

    public function connect()
    {
        if (is_null($this->connect)) {
            $this->connect = mysqli_connect(
                $this->config["host"],
                $this->config["user"],
                $this->config["pswd"],
                $this->config["db"]
            );
        }
        return $this->connect;

    }

    public function fetchAll($query)
    {
        
        
        $rows = [];
        $sql = $this->connect()->query($query);
        while ($_row = mysqli_fetch_assoc($sql)) {
            $rows[] = $_row;
            // print_r($_row);
        }
        
        return $rows;

    }

    public function fetchPairs($query)
    {

    }

    public function fetchOne($query)
    {

    }

    public function fetchRow($query)
    {
        $row = [];
        $sql = mysqli_query($this->connect(), $query);
        while ($_row = mysqli_fetch_assoc($sql)) {
            $row = $_row;
        }
        return $row;

    }

    public function insert($query)
    {
        
        if (mysqli_query($this->connect(), $query)) {

            // echo "<b>In Adapter Backtrace: </b><br>";
            // print_r(debug_print_backtrace());
            return mysqli_insert_id($this->connect());
        } else {
            return false;
        }

    }
    public function update($query)
    {
        echo "<br>";
        if (mysqli_query($this->connect(), $query)) {

            // echo "<b>In Adapter Backtrace: </b><br>";
            // print_r(debug_print_backtrace());
            return true;
        } else {
            return false;
        }

    }

    public function delete($query)
    {
        echo $query;
        if (mysqli_query($this->connect(), $query)) {
            // echo "<br>from Adapter after execution of query<br>";
            // print_r(debug_print_backtrace());
            return $this->connect();
        } else {
            return false;
        }


    }

    public function query($query)
    {

    }



}