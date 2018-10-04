<?php
    session_start();
    if(!isset($_SESSION['username'])&&!isset($_SESSION['password'])){
    header('location:akses/login.php');}
    else{
    // $username=$_SESSION['username'];
    // $password=$_SESSION['password'];
  }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>ATR/BPN</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">
    <!-- datatable -->
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
    <link rel="shortcut icon" href="images/bpn.png" />
    <!-- Jquery JS-->
    <script src="vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->    <style type="text/css">
        [type="search"] {

            outline-offset: -2px;
            -webkit-appearance: none;
            border-style: solid;
            border-width: 1px;
            width: 170px;
            margin-right: 6px;

        }
    </style>






</head>

<body class="animsition">
    <div class="page-wrapper">

        <?php include 'menu.php'; ?>

        <?php
                if(isset($_GET['menu'])){
                $menu=$_GET['menu'];
                switch($menu){
                  case('home');include('home.php');break;
                  case('project');include('project/project.php');break;
                  case('t_project');include('project/tambah.php');break;
                  case('penyusunan');include('penyusunan/penyusunan.php');break;
                  case('t_penyusunan');include('penyusunan/tambah.php');break;
                  case('g_penyusunan');include('penyusunan/penyusunanGantt.php');break;
                  case('suitability');include('publish/suitability.php');break;
                  case('urbanperformance');include('publish/urbanperformance.php');break;
                }
                }
        ?>
    </div>


    <script src="vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor/slick/slick.min.js">
    </script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js/main.js"></script>
     <!-- <script src="https://ajax.googleapis.com/ajax/gantt/libs/jquery/3.1.0/jquery.min.js"></script> -->
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>

  <script type="text/javascript">
      $(document).ready( function () {
          $('#barang').DataTable();
      } );
  </script>

</body>

</html>
<!-- end document
