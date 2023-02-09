<?php
require_once("MVC/Models/khuyenmai.php");
class KhuyenmaiController
{
	var $khuyenmai_model;
	function __construct()
	{
		$this->khuyenmai_model = new khuyenmai();
	}
//lisst khuyen main
	public function list()
	{
		$data = array();
		$data = $this->khuyenmai_model->All(); 
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/list.php');
	}
//action add khuyen mai
	public function add()
	{
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/add.php');
	}
//show khuyen mai
	public function store()
	{
		date_default_timezone_set('Asia/Ho_Chi_Minh');
		$NgayBD =  date('Y-m-d H:i:s');
		$data = array(
			'TenKM' => $_POST['TenKM'],
			'LoaiKM' => $_POST['LoaiKM'],
			'GiaTriKM' => $_POST['GiaTriKM'],
			'NgayBD' => $NgayBD,
			'TrangThai' => '1'
		);
		foreach ($data as $key => $value) {
            if (strpos($value, "'") != false) {
                $value = str_replace("'", "\'", $value);
                $data[$key] = $value;
            }
        }
		$this->khuyenmai_model ->store($data);
	}
//find khuyen mai
	public function detail()
	{
		$id = isset($_GET['id']) ? $_GET['id'] : 5;
		$data = $this->khuyenmai_model->find($id);
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/detail.php');
	}
//delete khuyen mai
	public function delete()
	{
		if (isset($_GET['id'])) {
			$this->khuyenmai_model ->delete($_GET['id']);
		}
	}
//action edit khuyen main
	public function edit()
	{
		$id = isset($_GET['id']) ? $_GET['id'] : 5;
		$data = $this->khuyenmai_model ->find($id);
		require_once("MVC/Views/Admin/index.php");
		//require_once('MVC/views/categories/edit.php');
	}
//update khuyen mai
	public function update()
	{
		date_default_timezone_set('Asia/Ho_Chi_Minh');
		$NgayBD =  date('Y-m-d H:i:s');
		$data = array(
			'MaKM' => $_POST['MaKM'],
			'TenKM' => $_POST['TenKM'],
			'LoaiKM' => $_POST['LoaiKM'],
			'GiaTriKM' => $_POST['GiaTriKM'],
			'NgayBD' => $NgayBD,
			'TrangThai' => $_POST['TrangThai']
		);
		foreach ($data as $key => $value) {
            if (strpos($value, "'") != false) {
                $value = str_replace("'", "\'", $value);
                $data[$key] = $value;
            }
        }
		$this->khuyenmai_model ->update($data);
	}
}
