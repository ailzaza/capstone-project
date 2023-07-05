<?php
    // Mengambil data dari form
    $id = $_POST['id'];
    $judul = $_POST['judul'];
    $gambar = $_POST['gambar'];
    $summary = $_POST['summary'];

    // Mengupdate data di database
    $koneksi = mysqli_connect("localhost", "root", "", "capstone");
    $query = mysqli_query($koneksi, "UPDATE artikel_api SET judul='$judul', gambar='$gambar', summary='$summary' WHERE id='$id'");

    if($query){
        header("Location: index.php");
    }else{
        echo "Gagal mengupdate artikel.";
    }
?>
