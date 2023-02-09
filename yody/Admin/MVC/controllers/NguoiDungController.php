<?php
require_once("MVC/models/nguoidung.php");
class NguoiDungController
{
    var $nguoidung_model;
    public function __construct()
    {
        $this->nguoidung_model = new nguoidung();
    }
//list usser
    public function list()
    {
        $data = $this->nguoidung_model->All();
        require_once("MVC/Views/Admin/index.php");
        //require_once("MVC/Views/authors/list.php");
    }
//find nguoi dung
    public function detail()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 1;
        $data = $this->nguoidung_model->find($id);
        require_once("MVC/Views/Admin/index.php");
        //require_once("MVC/Views/authors/detail.php");
    }
//action add san pham
    public function add()
    {
        require_once("MVC/Views/Admin/index.php");
        //require_once("MVC/Views/authors/add.php");
    }
//show nguoi dung
//truy xuat chuc nang
    public function store()
    {
        $data = array(
            'Ho' =>    $_POST['Ho'],
            'Ten'  =>   $_POST['Ten'],
            'GioiTinh' => $_POST['GioiTinh'],
            'SDT' => $_POST['SDT'],
            'Email' =>    $_POST['Email'],
            'DiaChi'  =>   $_POST['DiaChi'],
            'TaiKhoan' => $_POST['TaiKhoan'],
            'MatKhau' => md5($_POST['MatKhau']),
            'MaQuyen' =>  '2',
            'TrangThai'  =>  '1'
        );
        foreach ($data as $key => $value) {
            if (strpos($value, "'") != false) {
                $value = str_replace("'", "\'", $value);
                $data[$key] = $value;
            }
        }
        $this->nguoidung_model->store($data);
    }
//action delete
    public function delete()
    {
        $id = $_GET['id'];
        $this->nguoidung_model->delete($id);
    }
//action edit
    public function edit()
    {
        $id = isset($_GET['id']) ? $_GET['id'] : 1;
        $data = $this->nguoidung_model->find($id);
        require_once("MVC/Views/Admin/index.php");
        //require_once("MVC/Views/authors/edit.php");
    }
//update nguoi dung
    public function update()
    {
        $data = array(
            'MaND' => $_POST['MaND'],
            'Ho' =>    $_POST['Ho'],
            'Ten'  =>   $_POST['Ten'],
            'GioiTinh' => $_POST['GioiTinh'],
            'SDT' => $_POST['SDT'],
            'Email' =>    $_POST['Email'],
            'DiaChi'  =>   $_POST['DiaChi'],
            'TaiKhoan' => $_POST['TaiKhoan'],
            'MatKhau' => md5($_POST['MatKhau']),
            'MaQuyen' =>  $_POST['MaQuyen'],
            'TrangThai'  =>  $_POST['TrangThai'],
        );
        foreach ($data as $key => $value) {
            if (strpos($value, "'") != false) {
                $value = str_replace("'", "\'", $value);
                $data[$key] = $value;
            }
        }
        $this->nguoidung_model->update($data);
    }
}
