<?php
    session_start();
    include 'connection.php';
    if(isset($_GET['answer'])){
        $answer = $_GET['answer'];
    }
    $id = $_SESSION['id'];
    echo $sql_check = "select id from questions where id='$id' and answer='$answer'";
    $res_check = $conn->query($sql_check);
    $row_check = $res_check->fetch_array();
    if($row_check['id'] == $id){
        $id = $_SESSION['id'] + 1;
        $_SESSION['id'] = $id;
        include '../server/connection.php';
        $uname = $_SESSION['uname'];
        echo $sql_select = "select score from login where uname = '$uname'";
        $res_select = $conn->query($sql_select);
        $row_select = $res_select->fetch_array();
        $score = $row_select['score'];
        $score = $score + 1;
        echo $sql_score = "update login set score = $score where uname = '$uname'";
        $res = $conn->query($sql_score);
        echo "<script>window.location.assign('../pannel/index.php?code=".$id."');</script>";
    
    }else{
        $id = $_SESSION['id'] + 1;
        echo "<script>window.location.assign('../pannel/index.php?code=".$id."');</script>";
    }
?>