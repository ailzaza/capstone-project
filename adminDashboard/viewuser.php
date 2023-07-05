<!DOCTYPE html>
<html>
<head>
    <title>Data Pengguna</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Data Pengguna</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nama</th>
            <th>Username</th>
        </tr>
        <?php
            // Mengambil data pengguna dari database
            $koneksi = mysqli_connect("localhost", "root", "", "capstone");
            $query = mysqli_query($koneksi, "SELECT * FROM user_details");
            
            while($user = mysqli_fetch_array($query)){
                echo "<tr>";
                echo "<td>".$user['sign_id']."</td>";
                echo "<td>".$user['full_name']."</td>";
                echo "<td>".$user['user_name']."</td>";
                echo "</tr>";
            }
        ?>
    </table>
</body>
</html>
