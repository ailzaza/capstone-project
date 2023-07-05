<?php
    // Mengambil ID artikel yang akan dihapus
    $id = $_GET['id'];

    // Menghapus data dari database
    $koneksi = mysqli_connect("localhost", "root", "", "capstone");
    $query = mysqli_query($koneksi, "DELETE FROM artikel_api WHERE id='$id'");

    if($query){
        header("Location: index.php");
    }else{
        echo "Gagal menghapus artikel.";
    }
?>
