<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Quiz Question</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<?php
  session_start();    
  echo $_SESSION['uname'];
  include '../server/connection.php';
  if(isset($_GET['code'])){
    $code = $_GET['code'];
    $sql = "select * from questions where id=$code";
    $res = $conn->query($sql);
    $row = $res->fetch_array();
    $_SESSION['id'] = $row['id'];
    $data = array();
    array_push($data,$row["question"],$row["option1"],$row["option2"],$row["option3"],$row["option4"],$row["answer"]);
    if($row['id'] == NULL) echo "<script>window.location.assign('../after/');</script>";
  }else{
    $sql = "select * from questions";
    $res = $conn->query($sql);
    $row = $res->fetch_array();
    $_SESSION['id'] = $row['id'];
    $data = array();
    array_push($data,$row["question"],$row["option1"],$row["option2"],$row["option3"],$row["option4"],$row["answer"]);
  }
?>
<bodyc>
<?php
  include '../server/connection.php';
?>
  <div class="quiz">
  <div class="quiz-header"></div>
  
  <div class="question" id="que">
  <div class='quiz'>
    <div class='quiz-header'></div>
    <h1>Quiz</h1>
    <div class='question'>
      <h3><?php echo $data[0];?></h3>
    </div>
    <div class='option' id='a'>
      <a>
        <span class='letter'><p>A</p></span>
        <span><p onclick="checkAns('<?php echo $data[1];?>')"><?php echo $data[1];?></p></span>
      </a>
    </div>
    <div class='option borderme' id='b'>
      <a>
        <span class='letter'><p>B</p></span>
        <span><p onclick="checkAns('<?php echo $data[2];?>')"><?php echo $data[2]?></p></span>
      </a>
    </div>
    <div class='option borderme' id='c'>
      <a>
        <span class='letter'><p>C</p></span>
        <span><p onclick="checkAns('<?php echo $data[3];?>')"><?php echo $data[3]?></p></span>
      </a>
    </div>
      <div class='option borderme' id='d'>
      <a>
        <span class='letter'><p>D</p></span>
        <span><p onclick="checkAns('<?php echo $data[4];?>')"><?php echo $data[4]?></p></span>
      </a>
    </div>
  </div>
    
  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
