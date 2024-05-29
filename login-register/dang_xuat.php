<?php
    include("config/connect_sql.php");
    unset( $_SESSION["email"]  );
    // xóa session email 
    header("location:../index.php");
?>