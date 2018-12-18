<?php
    session_start();
    session_unset();
    session_destroy();
    ob_start();
    header("location:http://localhost:8081/Nhom07_WebsiteBuonBanBanh/admin/index.php");
?>