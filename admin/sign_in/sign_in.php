<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./assets/style.css">
</head>
<body>
<!--admin-->
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">LOGIN ADMIN</button>
<div id="id01" class="modal">
  <form class="modal-content animate" action="./check_ac/check.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<div class="bg-lg">
    <img src="./assets/bg_lg.jpg" class="img-thumbnail" alt="Cinque Terre" width="50%" height="50%"> 
</div>
<script src="./assets/app.js"></script>
</body>
</html>
