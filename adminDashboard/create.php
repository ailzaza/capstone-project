<!DOCTYPE html>
<html>
<head>
    <title>Tambah Artikel</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Tambah Artikel</h1>
    <form method="post" action="store.php">
        <label for="judul">Judul:</label>
        <input type="text" id="judul" name="judul">
        <br><br>
        <label for="gambar">Image:</label>
        <input type="text" id="gambar" name="gambar">
        <br><br>
        <label for="summary">Summary:</label>
        <textarea id="summary" name="summary"></textarea>
        <br><br>
        <input type="submit" value="Simpan">
    </form>
</body>
</html>
