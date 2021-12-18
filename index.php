<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style/style.css">
    <link rel="stylesheet" href="./assets/font/themify-icons/themify-icons.css">
    <title>DONCARE STUDIO</title>
</head>
<body>    
<div id="home-page">
     <!-- MENU -->
     <nav> 
    <div class="logo">
        <h4>DONCARE STUDIO</h4>
    </div>
    <ul class="nav-links">
        <li>
            <a href="">Home</a>
        </li>
        <li class="dropdown">
            <a href="./user/shop.php" class="drop">Shop</a>
            <ul class="dropdown-content">
                <li>
                    <a href="./user/tshirt/tshirt.php">T-Shirts</a>
                </li>
                <li>
                    <a href="./user/jacket/jacket.php">Jecket</a>
                </li>
                <li>
                    <a href="./user/bottom/bottom.php">Bottom</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="./user/blog/blog.php">ARCHIVE</a>
        </li>
        <li>
            <a href="">Cart</a>
        </li>
    </ul>
        <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>
    </nav>
    <!--Search-->    
    <div class="search-box">
        <form action="./user/Search_pd/index_search.php" method="get" enctype="multipart/form-data">
            <input class="search-txt" type="text" name="Search_title" placeholder="Search . . .">
            <button class="search-btn" value="search" type="submit">GO</button>
        </form>
    </div>
    <!--start container-->
    <div class="bg-container">

        <div class="img-bg2">
            <img src="./assets/img/2.jpg" alt="">
        </div>
        <div class="text">
            <h1>“The difference between style and fashion is quality”</h1>
        </div>
        <div class="img-bg3">
            <img src="./assets/img/3.jpg" alt="">
        </div>
    </div>
    <!--end container-->
    
    <!--footer-->
    <div class="footer">
        <ul>
            <li><a href="./user/contact/contact.php">Contact</a></li>
            <li><a href="">Shipping</a></li>
            <li><a href="">Terms</a></li>
            <li><a href="./admin/sign_in/sign_in.php">ADMIN</a></li>
        </ul>
        <ul id="tt">
            <li>Copyright © 2021 DONCARE STUDIO. Powered by Tylow</li>
        </ul>
    </div>
</div>
    <script src="./assets/style/app.js"></script>
</body>
</html>