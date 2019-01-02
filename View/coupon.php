<?php
    include '../DB/db.php'; 
    session_start();
    $response = array(
        "status" => false
    );
    if(isset($_POST['coupon'])){
        if($_POST['coupon'] != ''){
            $connection = db_connect();
            $coupon = $_POST['coupon'];
            $sql = "select * from coupon where code = '$coupon'";
            $result = db_select($connection,$sql);
            if($result){
                $gia = $result[0]['price'];
                $_SESSION['cart']['total_price'] -= $gia;
                $response["gia"] =  $_SESSION['cart']['total_price'];          
            }
        }
    }  
    return json_encode($response);
?>