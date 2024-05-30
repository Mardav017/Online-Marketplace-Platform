<?php
class Core_Model_Resource_Collection_Abstract
{

    protected $_resource = null;
    protected $_select = [];
    protected $_isLoaded = false;
    protected $_data = [];
    protected $_modelClass = "";

    public function setModelClass($modelClass)
    {
        $this->_modelClass = $modelClass;
        return $this;
    }

    public function setResource(Core_Model_Resource_Abstract $resource)
    {
        $this->_resource = $resource;
        return $this;
    }

    public function getFirstItem()
    {
        if (!$this->_isLoaded) {
            $this->load();
        }
        return (!empty($this->_data[0]))?$this->_data[0]:null;
    }

    public function getData()
    {
        (!$this->_isLoaded) ? $this->load() : '';
        return $this->_data;
    }

    public function select()
    {
        $this->_select['from'] = $this->_resource->getTableName();
        return $this;
    }

    public function joinLeft($table, $condition)
    {
        $this->_select['join'][] = [
            'type' => 'LEFT',
            'table' => $table,
            'condition' => $condition,
        ];
        return $this;
    }

    public function joinRight($table, $condition)
    {
        $this->_select['join'][] = [
            'type' => 'RIGHT',
            'table' => $table,
            'condition' => $condition,
        ];
        return $this;
    }

    public function joinInner($table, $condition)
    {
        $this->_select['join'][] = [
            'type' => 'INNER',
            'table' => $table,
            'condition' => $condition,
        ];
        return $this;
    }

    public function addFieldToFilter($data)
    {
        $this->_select['where'] = $data;
        return $this;
    }

    public function addGroupByToFilter($column, $filter)
    {
        $this->_select['group by'][$column][] = $filter;
        return $this;
    }

    public function addHavingToFilter($column, $filter)
    {
        $this->_select['having'][$column][] = $filter;
        return $this;
    }

    public function addOrderByToFilter($column, $filter)
    {
        $this->_select['order by'][$column][] = $filter;
        return $this;
    }

    public function addLimitToFilter($filter)
    {
        $this->_select['limit'] = $filter;
        return $this;
    }



    public function load()
    {
        $sql = "SELECT * FROM {$this->_select['from']} ";
        if (isset($this->_select['join']) && count($this->_select['join'])) {
            foreach ($this->_select['join'] as $join) {
                $sql .= "{$join['type']} JOIN {$join['table']} ON {$join['condition']} ";
                // echo $sql;
            }
        }

        if (isset($this->_select['where']) && count($this->_select['where'])) {
            $whereClause = [];
            $arr = [];
            $exp = [];
            foreach ($this->_select['where'] as $field => $filter) {
                if (strpos($field, "=")) {

                    $exp = explode("=", $field);
                    $field = $exp[0];
                    $arr[0] = $exp[1];
                } else {
                    $arr[0] = " ";
                }

                foreach ($filter as $key => $value) {

                    switch ($key) {
                        case 'eq':
                            $whereClause[] = "" . $field . " = '" . $value . "' " . $arr[0];
                            break;
                        case 'gt':
                            $whereClause[] = "" . $field . " > '" . $value . "' " . $arr[0];
                            break;
                        case 'lt':
                            $whereClause[] = "" . $field . " < '" . $value . "' " . $arr[0];
                            break;
                        case 'gteq':
                            $whereClause[] = "" . $field . " >= '" . $value . "' " . $arr[0];
                            break;
                        case 'lteq':
                            $whereClause[] = "" . $field . " <= '" . $value . "' " . $arr[0];
                            break;
                        case 'noteq':
                            $whereClause[] = "" . $field . " != '" . $value . "' " . $arr[0];
                            break;
                        case 'between':
                            $whereClause[] = "" . $field . " BETWEEN '" . implode("' AND '", $value) . "' " . $arr[0];
                            break;
                        case 'like':
                            $whereClause[] = "" . $field . " LIKE '" . $value . "%}' " . $arr[0];
                            break;
                        case 'in':
                            $whereClause[] = "" . $field . " IN '(" . implode(", ", $value) . ")' " . $arr[0];
                            break;

                        default:
                            break;
                    }
                }
            }

            $whereClause = implode(" ", $whereClause);
            $pos = strrpos($whereClause, " ");

            $sql .= " WHERE " . $whereClause;
            // echo $sql . "<br>";
        }


        if (isset($this->_data['group by']) && count($this->_data['group by'])) {
            $sql .= "GROUP BY " . implode(", ", $this->_data['group by']);
        }


        if (isset($this->_data['order by']) && count($this->_data['order by'])) {
            $orderByClause = [];
        }

        if (isset($this->_select['limit']) && count($this->_select['limit'])) {
            $sql .= " LIMIT " . implode(", ", $this->_select['limit']);
        }


        // echo $sql;
        $result = $this->_resource->getAdapter()->fetchAll($sql);
        foreach ($result as $row) {
            $modelObj = new $this->_modelClass();
            $this->_data[] = $modelObj->setData($row);
        }
        $this->_isLoaded = true;
        return $this;
    }
}
