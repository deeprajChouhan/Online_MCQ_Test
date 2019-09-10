<?php
    include 'connection.php';
    if(isset($_GET['values'])){
        $values = $_GET['values'];
    }
    $values = explode(",",$values);
    $sql = "insert into login (name,uname,password) values ('$values[0]','$values[1]','$values[2]')";
    if($conn->query($sql)) header("Location:../login/");
?>