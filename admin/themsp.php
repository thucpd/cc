<?php
    session_start();
    include '../DB/db.php'; 
    $connection = db_connect();
    
    if(isset($_POST['tensp'])){
        $tensp = $_POST['tensp'];
        $giatien = $_POST['giatien'];
        $loaisp = $_POST['loaisp'];
        $soluong = $_POST['soluong'];
        $hinh = 'demo';
        
        $sql = "INSERT INTO sanpham (tensanpham, giatien, loaisanpham,soluong,hinh) VALUES ('$tensp',$giatien,$loaisp,$soluong,'$hinh')";
        $result = db_insert($connection,$sql);
        if($result){
            header("location:http://localhost:8081/Nhom07_WebsiteBuonBanBanh/admin/danhsachsanpham.php");
        }else{
            echo "Thêm thất bại";die();
        }
    }

?>


<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Page Admin Bán bánh</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="../css/admin/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="../css/admin/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="../css/admin/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../css/admin//pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Creative Tim
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="">
                        <i class="pe-7s-note2"></i>
                        <p>Danh sách sản phẩm</p>
                    </a>
                </li>

            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Danh sách sản phẩm</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               Hello <?php echo  $_SESSION['user_name'] ?>
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8081/Nhom07_WebsiteBuonBanBanh/admin/logout.php">
                                <p>Log out</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="row">
            <div class="">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Thêm sản phẩm</h4>
                            </div>
                            <div class="content">
                                <form action="themsp.php" method="POST">
                                    <div class="form-group">
                                        <label for="formGroupExampleInput">Tên sản phẩm</label>
                                        <input type="text" class="form-control" name= "tensp" id="tensp" placeholder="Example input">
                                    </div>
                                    <div class="form-group">
                                        <label for="formGroupExampleInput2">Giá tiền</label>
                                        <input type="text" class="form-control" name= "giatien" id="giatien" placeholder="Another input">
                                    </div>
                                    <div class="form-group">
                                        <label for="formGroupExampleInput2">Loại sản phẩm</label>
                                        <input type="text" class="form-control" name= "loaisp" id="loaisp" placeholder="Another input">
                                    </div>
                                    <div class="form-group">
                                        <label for="formGroupExampleInput2">Số lượng</label>
                                        <input type="text" class="form-control" name= "soluong" id="soluong" placeholder="Another input">
                                    </div>
                                    <!-- <div class="form-group">
                                        <label for="formGroupExampleInput2">Hình</label>
                                        <input type="text" class="" name= "hinh" id="hinh" placeholder="Another input">
                                    </div> -->
                                    <div class="form-group">
                                        <button type ="submit" class="btn btn-primary">Thêm</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>

                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href=">Trang Admin bán bánh</a>
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="../js/admin/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="../js/admin/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="../js/admin/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="../js/admin/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="../js/admin/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="../js/admin/demo.js"></script>


</html>
