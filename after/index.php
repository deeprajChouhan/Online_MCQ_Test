<!DOCTYPE html>
<?php 
  include '../server/connection.php';
  session_start();
?>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Game profile concept (Responsive)</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,500,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>
<?php
  $uname = $_SESSION['uname'];
  $sql = "select score from login where uname = '$uname'";
  $res = $conn->query($sql);
  $row = $res->fetch_array();
?>
<body>
  <main class="profile">
  <h1 class="profile-title">
    Game Over
  </h1>
  <div class="profile-container">
    <div class="user">
      <div class="image-container">
        <img alt="" class="avatar" src="https://image.freepik.com/free-vector/coloured-knight-design_1152-54.jpg" />
      </div>
      <div class="user-info">
        <p class="user-name">
          <?php echo $_SESSION['uname'];?>
        </p>
      </div>
    </div>
    <div class="info-container">
      <div class="info">
        <div class="title">
          Score
        </div>
        <div class="description">
        <?php echo $row['score'];?>
        </div>
      </div>
    
      <div class="span share-btn">
        <i class="material-icons">share</i>
      </div>
      <div class="span share-btn">
        <i class="material-icons"><a href="../server/logout.php">done</i>
      </div>
    </div>
  </div>
</main>
  
  

    <script  src="js/index.js"></script>




</body>

</html>
