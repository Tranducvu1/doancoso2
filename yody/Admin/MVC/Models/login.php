<?php
require_once("connection.php");
class login
{
    var $conn;
    function __construct()
    {
        $conn_obj = new Connection();
        $this->conn = $conn_obj->conn;
    }
//count san pham
    function tk_sanpham($id){
        $query = "SELECT count(MaSP) as Count FROM sanpham WHERE MaDM = $id";

        return $this->conn->query($query)->fetch_assoc();
    }
//count hoa don
    function tk_thongbao(){
        $query = "SELECT count(MaHD) as Count FROM HoaDon WHERE TrangThai = 0";

        return $this->conn->query($query)->fetch_assoc();
    }
//sum doanh thu month
    function tk_dtthang($m){
        $query = "SELECT SUM(TongTien) as Count FROM HoaDon WHERE MONTH(NgayLap) = $m And TrangThai = 1";

        return $this->conn->query($query)->fetch_assoc();
    }
//sum doanh thu nam
    function tk_dtnam($y){
        $query = "SELECT SUM(TongTien) as Count FROM HoaDon WHERE YEAR(NgayLap) = $y And TrangThai = 1";

        return $this->conn->query($query)->fetch_assoc();
    }
//count usser
    function tk_nguoidung($id){
        $query = "SELECT count(MaND) as Count FROM NguoiDung WHERE MaQuyen = $id";
        
        return $this->conn->query($query)->fetch_assoc();
    }
}
