<?php

class Core_Model_Request
{

	private $_moduleName;
	private $_controllerName;
	private $_actionName;

	public function __construct()
	{
		$uri = $this->getRequestUri();

		$uri = explode("?", $uri);

		$uri1 = array_filter(explode("/", $uri[0]));

		$this->_moduleName = isset($uri1[0]) ? $uri1[0] : 'Page';
		$this->_controllerName = isset($uri1[1]) ? $uri1[1] : 'Index';
		$this->_actionName = isset($uri1[2]) ? $uri1[2] : 'index';
	}

	public function getParams($key = '', $arg = null)
	{
		return ($key == '')
			? $_REQUEST
			: (isset($_REQUEST[$key])
				? $_REQUEST[$key]
				: ((!is_null($arg)) ? $arg : '')
			);
	}

	public function getPostData($key = '')
	{
		return ($key == '')
			? $_POST
			: (isset($_POST[$key])
				? $_POST[$key]
				: ''
			);
	}

	public function getQueryData($key = '')
	{
		return ($key == '')
			? $_GET
			: (isset($_GET[$key])
				? $_GET[$key]
				: ''
			);
	}

	public function isPost()
	{
		if ($_SERVER['REQUEST_METHOD'] === 'POST') {
			return true;
		}
		return false;
	}

	public function getRequestUri()
	{
		$Uri = $_SERVER['REQUEST_URI'];

		$uri = str_replace('/Internship/MVC/', "", $Uri);

		return $uri;
	}

	public function getUrl($path)
	{
		return "http://localhost/Internship/MVC/" . $path;
	}


	public function getModuleName()
	{
		return $this->_moduleName;
	}
	public function getControllerName()
	{
		return $this->_controllerName;
	}
	public function getActionName()
	{
		return $this->_actionName;
	}

	public function getFullControllerClass()
	{

		$str_class = $this->_moduleName . "_Controller_" . $this->_controllerName;
		$str_class = ucwords($str_class, "_");

		return $str_class;
	}


}