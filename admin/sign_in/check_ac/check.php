<?php
    if (!isset($_SESSION)) session_start();

    include("../../../PDO/pdo.php");

    $name = isset($_POST['uname'])?$_POST['uname']:'';
    $pass = isset($_POST['psw'])?$_POST['psw']:'';

    $sql="SELECT * FROM admin WHERE ad_usern=? AND ad_passw=?";
    $a =[$name, $pass];
    $objStatement= $objPDO->prepare($sql);
    $objStatement->execute($a);
    $data1 = $objStatement->fetch(PDO::FETCH_OBJ);

    
    if ($data1 != null) 
    {
        $_SESSION['admin']=$name;
        header('location:../../home/home.php');
        exit;
    }
    else 
    {
        echo ("<h1>sai tài khoản hoặc mật khẩu</h1>");
    }
?>
