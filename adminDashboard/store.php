<?php
    // Mengambil data dari form
    $judul = $_POST['judul'];
    $gambar = $_POST['gambar'];
    $summary = $_POST['summary'];

    // Menyimpan data ke database
    $koneksi = mysqli_connect("localhost", "root", "", "capstone");
    $query = mysqli_query($koneksi, "INSERT INTO artikel_api (judul, gambar, summary) VALUES ('$judul', '$gambar', '$summary')");

    if($query){
        header("Location: index.php");
    }else{
        echo "Gagal menyimpan artikel.";
    }
?>
