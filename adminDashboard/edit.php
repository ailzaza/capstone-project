<!DOCTYPE html>
<html>
<head>
    <title>Edit Artikel</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Edit Artikel</h1>
    <?php
        // Mengambil data artikel yang akan diedit
        $id = $_GET['id'];
        $koneksi = mysqli_connect("localhost", "root", "", "capstone");
        $query = mysqli_query($koneksi, "SELECT * FROM artikel_api WHERE id='$id'");
        $artikel = mysqli_fetch_array($query);
    ?>
    <form method="post" action="update.php">
        <input type="hidden" name="id" value="<?php echo $artikel['id']; ?>">
        <label for="judul">Judul:</label>
        <input type="text" id="judul" name="judul" value="<?php echo $artikel['judul']; ?>">
        <br><br>
        <label for="gambar">Image:</label>
        <input type="text" id="gambar" name="gambar" value="<?php echo $artikel['gambar']; ?>">
        <br><br>
        <label for="summary">Summary:</label>
        <textarea id="summary" name="summary"><?php echo $artikel['summary']; ?></textarea>
        <br><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
