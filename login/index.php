<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="wrapper">
	<div class="container">
		<h1>Welcome</h1>
		
		<form class="form" method="post">
			<input type="text" name="uname" placeholder="Username">
			<input type="password" name="pass" placeholder="Password">
			<a href="../register/">Register here!</a><br><br><br><br>
			<button type="submit" name="submit" id="login-button">Login</button>
			<?php
				include '../server/connection.php';
				session_start();
				if(isset($_POST['submit'])){
					$uname = $_POST['uname'];
					$pass = $_POST['pass'];
					$_SESSION['uname'] = $uname;
					$sql = "select * from login where uname = '$uname' and password = '$pass'";
					$res = $conn->query($sql);
					$row = $res->fetch_array();
					if($row['uname'] == $uname && $row['password'] == $pass)
					{
						echo "<script>window.location.assign('../pannel/')</script>";
					}else{
						echo "<script>window.location.assign('#')</script>";
					}
				}
			?>
		</form>
	</div>

	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
