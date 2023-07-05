<!DOCTYPE html>
<html>
<head>
    <title>Dashboard Admin</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .hide-column {
            display: none;
        }
    </style>
</head>
<body>
    <h1>Dashboard Admin</h1>
    <a class="button" href="create.php">Tambah Artikel</a>
    <a class="button" href="viewuser.php">Data Pengguna</a>
    <br><br>
    <table>
        <tr>
            <th>No</th>
            <th class="hide-column">ID</th>
            <th>Judul</th>
            <th>Gambar</th>
            <th>Isi</th>
            <th>Aksi</th>
        </tr>
        <?php
            // Mengambil data artikel dari database
            $koneksi = mysqli_connect("localhost", "root", "", "capstone");
            $query = mysqli_query($koneksi, "SELECT * FROM artikel_api");
            
            $no = 1; // Inisialisasi variabel nomor
            
            while($artikel = mysqli_fetch_array($query)){
                echo "<tr>";
                echo "<td>".$no."</td>"; // Menampilkan nomor
                echo "<td class='hide-column'>".$artikel['id']."</td>"; // Menyembunyikan kolom ID
                echo "<td>".$artikel['judul']."</td>";
                echo "<td>".$artikel['gambar']."</td>";
                echo "<td>".$artikel['summary']."</td>";
                echo "<td>
                        <a class='button' href='edit.php?id=".$artikel['id']."'>Edit</a>
                        <a class='button' href='delete.php?id=".$artikel['id']."'>Hapus</a>
                      </td>";
                echo "</tr>";
                
                $no++; // Increment nomor setiap perulangan
            }
        ?>
    </table>
</body>
</html>
