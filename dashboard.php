<?php
    session_start();
    echo "Welcome ".$_SESSION['sendusername'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form method="POST">
        <button type="submit" name="logoutsub">Log out</button>
     </form>
     <?php
        if(isset($_POST['logoutsub'])){
         session_unset();
         session_destroy();

         header("location: login.php");
         exit;
       }
       ?>
</body>
</html>