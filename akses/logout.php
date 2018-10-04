<?php
session_start();
unset($_SESSION['usermame']); unset($_SESSION['password']);
session_destroy(); 
header('location:login.php');
?>