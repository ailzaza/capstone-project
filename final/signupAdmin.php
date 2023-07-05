<?php
// Memeriksa apakah form signup telah disubmit
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

    // Mengamankan password dengan fungsi hash (contoh: menggunakan bcrypt)
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Menyimpan data admin ke database
    $query = "INSERT INTO admins (admin, password) VALUES ('$admin', '$hashed_password')";
    $result = $conn->query($query);

    if ($result === TRUE) {
        // Pendaftaran admin berhasil, lakukan tindakan yang diinginkan (misalnya redirect ke halaman login)
        header("Location: adminlogin.php");
        exit;
    } else {
        // Pendaftaran admin gagal
        $error = "Pendaftaran admin gagal";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Signup</title>
</head>
<body>
    <h2>Admin Signup</h2>
    <?php if (isset($error)) { ?>
        <p><?php echo $error; ?></p>
    <?php } ?>
    <form method="POST" action="">
        <label for="admin">Admin:</label><br>
        <input type="text" name="admin" required><br><br>
        <label for="password">Password:</label><br>
        <input type="password" name="password" required><br><br>
        <button type="submit" name="sub">sign up </button> <a href="loginAdmin.php">login</a>
    </form>
</body>
</html>
