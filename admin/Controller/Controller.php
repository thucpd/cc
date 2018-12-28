<?php 
    //include '../Model/db.php'; 

    function listProduct(){
        $connection = db_connect();
        if(isset($_POST['search']) && $_POST['search'] != ''){
            $search = $_POST['search'];
            $sql = "SELECT * FROM sanpham where deleted = 0 and tensanpham like '%$search%'";
            $results = db_select($connection,$sql);
        }else{
            $sql = "SELECT * FROM sanpham where deleted = 0 and soluong > 0 order by idsanpham desc";
            $results = db_select($connection,$sql);
        }
        return $results;
    }
    function listProduct2(){
        $connection = db_connect();
        if(isset($_POST['search']) && $_POST['search'] != ''){
            $search = $_POST['search'];
            $sql = "SELECT * FROM sanpham where deleted = 0 and tensanpham like '%$search%'";
            $results = db_select($connection,$sql);
        }else{
            $sql = "SELECT * FROM sanpham where deleted = 0 and soluong > 0 order by idsanpham desc limit 7";
            $results = db_select($connection,$sql);
        }
        return $results;
    }
    function listProduct3(){
        $connection = db_connect();
        if(isset($_POST['search']) && $_POST['search'] != ''){
            $search = $_POST['search'];
            $sql = "SELECT * FROM sanpham where deleted = 0 and tensanpham like '%$search%'";
            $results = db_select($connection,$sql);
        }else{
            $sql = "SELECT * FROM sanpham where deleted = 0  and soluong > 0 order by idsanpham asc limit 4";
            $results = db_select($connection,$sql);
        }
        return $results;
    }
    function getProduct($id){
        $connection = db_connect();
        if(!empty($id)){
            $sql = "SELECT * FROM sanpham where deleted = 0 and idsanpham = '$id' and soluong > 0 ";
            $results = db_select($connection,$sql);
            return $results[0];
        }
        return 0;
    }
    function getProductByType($type,$id){
        $connection = db_connect();
        $sql = "SELECT * FROM sanpham where deleted = 0  and soluong > 0 and loaisanpham = '$type' AND idsanpham != '$id'";
        $results = db_select($connection,$sql);
        return $results;
    }
    function getListBanner(){
        $connection = db_connect();
        $sql = "SELECT * FROM sanpham where deleted = 0  and soluong > 0 and loaisanpham = 8 limit 4";
        $results = db_select($connection,$sql);
        return $results;
    }
?>