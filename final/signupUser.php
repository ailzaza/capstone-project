<?php
// Koneksi ke database (sesuaikan dengan informasi database Anda)
$koneksi = mysqli_connect("localhost", "root", "", "capstone");

// Fungsi untuk mengenkripsi password dengan metode md5
function encryptPassword($password) {
    return md5($password);
}

// Pengecekan apakah tombol Sign Up ditekan
if (isset($_POST['sub'])) {
    $name = $_POST['getname'];
    $username = $_POST['getusername'];
    $password = $_POST['getpass'];
    $confirmPassword = $_POST['conpass'];

    // Cek apakah password dan konfirmasi password sesuai
    if ($password !== $confirmPassword) {
        echo "Password dan konfirmasi password tidak sesuai.";
        return;
    }

    // Enkripsi password
    $encryptedPassword = encryptPassword($password);

    // Query untuk memeriksa apakah username sudah terdaftar
    $checkQuery = "SELECT * FROM users_details WHERE username = '$username'";
    $checkResult = mysqli_query($koneksi, $checkQuery);

    // Jika username sudah terdaftar, tampilkan pesan kesalahan
    if (mysqli_num_rows($checkResult) > 0) {
        echo "Username sudah terdaftar. Silakan gunakan username lain.";
        return;
    }

    // Query untuk menyimpan data user baru ke database
    $insertQuery = "INSERT INTO users_details (name, username, password) VALUES ('$name', '$username', '$encryptedPassword')";
    mysqli_query($koneksi, $insertQuery);

    echo "Sign Up berhasil! Silakan login dengan akun yang telah dibuat.";
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="../assets/css/signupUser.css">
</head>
<body>
    <h1>Sign Up</h1>
    <form method="POST" action="">
        <label for="getname">Enter your name:</label><br>
        <input type="text" name="getname" required><br>

        <label for="getusername">Enter username:</label><br>
        <input type="text" name="getusername" required><br>

        <label for="getpass">Enter password:</label><br>
        <input type="password" name="getpass" required><br>

        <label for="conpass">Confirm password:</label><br>
        <input type="password" name="conpass" required><br><br>

        <button type="submit" name="sub">Sign Up</button> <a href="loginUser.php">Log In</a>
    </form>
</body>
</html>
