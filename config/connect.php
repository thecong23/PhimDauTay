<?php
    $server="localhost";
    $username="root";
    $password="";
    $database="qldulieu";

    $conn = mysqli_connect($server, $username, $password, $database) or die("Không thể kết nối Database");
    mysqli_select_db($conn, "qldulieu") or die("Chưa có SQL");
    mysqli_query($conn, "SET NAMES 'utf8'");
?>