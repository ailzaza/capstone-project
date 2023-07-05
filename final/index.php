<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <div class="row">
            <div class="col-md-6">
                <form action="loginAdmin.php" method="POST">
                    <input type="hidden" name="accountType" value="admin">
                    <button type="submit" class="btn btn-primary btn-block">Admin<a href="signupAdmin.php"></a></button>
                </form>
            </div>
            <div class="col-md-6">
                <form action="loginuser.php" method="POST">
                    <input type="hidden" name="accountType" value="user">
                    <button type="submit" class="btn btn-primary btn-block">User<a href="signupUser.php"></a></button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
