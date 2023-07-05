<?php
// Memeriksa apakah form login telah disubmit
if (isset($_POST['submit'])) {
    // Konfigurasi database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "capstone";

    // Membuat koneksi ke database
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Memeriksa koneksi
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }

    // Mendapatkan data dari form
    $admin = $_POST['admin'];
    $password = $_POST['password'];

    // Memeriksa apakah admin dan password cocok dengan yang ada di database
    $query = "SELECT * FROM admins WHERE admin = '$admin'";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            // Login berhasil, lakukan tindakan yang diinginkan (misalnya redirect ke halaman admin)
            header("Location: admin_dashboard.php");
            exit;
        } else {
            // Password tidak cocok
            $error = "Password salah";
        }
    } else {
        // Data admin tidak ditemukan
        $error = "Admin tidak ditemukan";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
</head>
<body>
    <h2>Admin Login</h2>
    <?php if (isset($error)) { ?>
        <p><?php echo $error; ?></p>
    <?php } ?>
    <form method="POST" action="">
        <label for="admin">Admin:</label><br>
        <input type="text" name="admin" required><br><br>
        <label for="password">Password:</label><br>
        <input type="password" name="password" required><br><br>
        <button type="submit" name="sub">Log in </button> <a href="signupAdmin.php">Sign Up</a>
    </form>
</body>
</html>
