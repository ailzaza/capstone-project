<?php
session_start();
require 'config.php';

if (isset($_SESSION['username'])) {
    header('Location: index.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $stmt = $pdo->prepare('SELECT * FROM admin WHERE username = ?');
    $stmt->execute([$username]);
    $admin = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($admin && password_verify($password, $admin['password'])) {
        $_SESSION['username'] = $admin['username'];
        header('Location: index.php');
        exit();
    } else {
        $error = 'Username atau password salah';
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style1.css">

</head>
<body>
    <div class="container">

        <h2>Login</h2>
        <?php if (isset($error)) : ?>
            <p><?php echo $error; ?></p>
            <?php endif; ?>
            
            <form method="POST" class="form_isi" action="">
                <input type="text" name="username" placeholder="Username" required><br>
                <input type="password" name="password" placeholder="Password" required><br>
                <button type="submit">Login</button>
            </class=form>
            <p>Belum memiliki akun? <a href="signup.php">Sign Up</a></p>
        </div>

</body>
</html>
