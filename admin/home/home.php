<?php
    include("../../PDO/pdo.php")
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>DONCARE STUDIO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./assets/style.css">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark">
  <a class="navbar-brand" href="#">DONCARE STUDIO</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Product Management</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../sign_in/sign_in.php">LOGN OUT</a>
      </li>    
    </ul>
  </div>  
</nav>
<br>

<div class="container">
  <h3>DONCARE STUDIO MANAGEMENT WELCOM</h3>
  <?php
    $sql = "SELECT * from product";
    $objStatement = $objPDO->prepare($sql);
    $objStatement->execute();
    $n = $objStatement ->rowCount();
    // echo "co $n ket qua";
  ?>
  <ul class="list-group">
    <p><b>Overview</b></p>
    <li class="list-group-item">DONCARE STUDIO have :<?php echo "$n" ?> All Item</li>
    <li class="list-group-item">DONCARE STUDIO have :
        <?php 
            $sql = "SELECT * from product where cat_id='TS'";
            $objStatement = $objPDO->prepare($sql);
            $objStatement->execute();
            $n = $objStatement ->rowCount();
            echo "$n";
        ?> T-Shirts
    </li>
    <li class="list-group-item">DONCARE STUDIO have :
        <?php 
            $sql = "SELECT * from product where cat_id='JK'";
            $objStatement = $objPDO->prepare($sql);
            $objStatement->execute();
            $n = $objStatement ->rowCount();
            echo "$n";
        ?> Jackets
    </li>
    <li class="list-group-item">DONCARE STUDIO have :
        <?php 
            $sql = "SELECT * from product where cat_id='BT'";
            $objStatement = $objPDO->prepare($sql);
            $objStatement->execute();
            $n = $objStatement ->rowCount();
            echo "$n";
        ?> Bottoms
    </li>
  </ul>
</div>
</body>
</html>


