<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <p><strong>Add A question Here</strong></p>
    <form action="" method="post">
    <input type="text" name="question" required>
    <input type="text" name="optn1" required>
    <input type="text" name="optn2" required>
    <input type="text" name="optn3" required>
    <input type="text" name="optn4" required>
    <input type="text" name="correct" required>
    <input type="submit" name="submit" value="Add Question"required>
    <?php
        include '../server/connection.php';
        if(isset($_POST['submit'])){
            $question = $_POST['question'];
            $optn1 = $_POST['optn1'];
            $optn2 = $_POST['optn2'];
            $optn3 = $_POST['optn3'];
            $optn4 = $_POST['optn4'];
            $ans = $_POST['correct'];
            $sql = "insert into questions (question,option1,option2,option3,option4,answer) values ('$question','$optn1','$optn2','$optn3','$optn4','$ans')";
            $conn->query($sql);
        }
    ?>        
    </form>
</body>
</html>
