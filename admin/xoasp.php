<?php
    include '../DB/db.php'; 
    $connection = db_connect();
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql="UPDATE sanpham SET deleted = 1 WHERE idsanpham = $id";
        $result = db_update($connection,$sql);
        if($result){
            header("location:http://localhost:8081/Nhom07_WebsiteBuonBanBanh/admin/danhsachsanpham.php");
        }
    }

?>