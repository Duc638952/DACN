<?php
   include("../../PDO/pdo.php")
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style/style.css">
    <link rel="stylesheet" href="./assets/font/themify-icons/themify-icons.css">
    <title>DETAIL PRODUCT - DONCARE STUDIO</title>
</head>
<body>   
<div id="home-page">
    <!-- MENU -->
    <?php
         include("detail_pd_page/menu.php")
    ?>
    <!--Search-->
    <?php
         include("detail_pd_page/search.php")
    ?>

    <!--start container-->
    <?php
         include("detail_pd_page/container.php")
    ?>

    <!--end container-->
    <!--footer-->
    <?php
         include("detail_pd_page/footer.php")
    ?>
    

    <!--endfooter-->
</div>

    <script src="./assets/style/app.js"></script>
</body>
</html>