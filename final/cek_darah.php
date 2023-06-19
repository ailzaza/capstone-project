<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DarahKu</title>
    <link rel="stylesheet" href="../assets/css/cek_darah.css">
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/GlobalStyle.css">
</head>
<body>
    <nav>
        <div class="wrapper">
            <div class="logo"><a href="dashboard.php">DarahKu</a></div>
            <div class="menu">
                <a href="#" class="tombol-menu">
                    <span class="garis"></span>
                    <span class="garis"></span>
                    <span class="garis"></span>
                </a>
                <ul>
                    <li><a href="dashboard.php">Home</a></li>
                    <li><a href="artikel1.php">Artikel</a></li>
                    <li><a href="cek_darah.php">Cek Darah Mu</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="wrapper">
        <img src="../assets/img/darah.png" alt="darah" style="width:40%" id="drh">

        <h2>Cek Darahmu</h2>
        <form action="hasil_darah.php" method="POST">
            <label for="gDarah">Gula Darah</label><br>
            <input type="text" id="gDarah" name="gDarah" placeholder="Isi Gula Darahmu" required><br><br>
            <label for="kol">Kolestrol</label><br>
            <input type="text" id="kol" name="kol" placeholder="Isi Kolestrol" required><br><br>
            <label for="aUrat">Asam Urat</label><br>
            <input type="text" id="aUrat" name="aUrat" placeholder="Isi Asam Urat" required><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>

    <div id="copyright">
        <div class="wrapper" style="align-items: center">
            &copy; 2023. <b>DarahKu</b> Dicoding Academy.
        </div>
    </div>
    
</body>
</html>
