<?php
require_once("MVC/Models/danhmuc.php");
class DanhmucController
{
	var $danhmuc_model;
	function __construct()
	{
		$this->danhmuc_model = new Danhmuc();
	}
//lisst danh muc
	public function list()
	{
		$data = array();
		$data = $this->danhmuc_model->All(); 
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/list.php');
	}
//action add danh muc
	public function add()
	{
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/add.php');
	}
//showwdanh muc
	public function store()
	{
		$data = array(
			'MaDM' => $_POST['MaDM'],
			'TenDM' => $_POST['TenDM']
		);
		foreach ($data as $key => $value) {
            if (strpos($value, "'") != false) {
                $value = str_replace("'", "\'", $value);
                $data[$key] = $value;
            }
        }
		$this->danhmuc_model->store($data);
	}
//find danh muc
	public function detail()
	{
		$id = isset($_GET['id']) ? $_GET['id'] : 5;
		$data = $this->danhmuc_model->find($id);
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/detail.php');
	}
//action delete danh muc
	public function delete()
	{
		if (isset($_GET['id'])) {
			$this->danhmuc_model->delete($_GET['id']);
		}
	}
//action edit
	public function edit()
	{
		$id = isset($_GET['id']) ? $_GET['id'] : 5;
		$data = $this->danhmuc_model->find($id);
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/edit.php');
	}
//action update
	public function update()
	{
		$data = array(
			'MaDM' => $_POST['MaDM'],
			'TenDM' => $_POST['TenDM'],
		);
		foreach ($data as $key => $value) {
            if (strpos($value, "'") != false) {
                $value = str_replace("'", "\'", $value);
                $data[$key] = $value;
            }
        }
		$this->danhmuc_model->update($data);
	}
}
