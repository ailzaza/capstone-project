<?php
    //Terima Input Form
    $gDarah = "";
    $kol = "";
    $aUrat = "";
    if(isset($_POST['gDarah'])) {
        $gDarah = $_POST['gDarah'];
        $kol = $_POST['kol'];
        $aUrat = $_POST['aUrat'];
    }

    //Hasil Gula Darah
    $hasilDarah = "";
    if($gDarah < 80 ){
        $hasilDarah = "Rendah, anda harus kedokter sekarang";
    } else if($gDarah <= 180 && $gDarah >= 80) {
        $hasilDarah = "Normal";
    } else if($gDarah > 180) {
        $hasilDarah = "Tinggi, anda harus kedokter sekarang";
    }

    //Hasil Kolesterol
    $hasilKolesterol = "";
    if($kol < 200 ){
        $hasilKolesterol = "Normal";
    } else {
        $hasilKolesterol = "Tinggi, anda harus kedokter sekarang";
    }

    //Hasil Asam Urat
    $hasilAsamUrat = "";
    if($aUrat >= 3.4 AND $aUrat <= 7 ){
        $hasilAsamUrat = "Normal";
    } else if ($aUrat > 7) {
        $hasilAsamUrat = "Tinggi, anda harus kedokter sekarang";
    } else if ($aUrat < 3.5) {
        $hasilAsamUrat = "Rendah, anda harus kedokter sekarang";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DarahKu</title>
    <link rel="stylesheet" href="../assets/css/GlobalStyle.css">
</head>
<body>
    <nav>
        <div class="wrapper">
            <div class="logo"><a href="#home">DarahKu</a></div>
            <div class="menu">
                <a href="#" class="tombol-menu">
                    <span class="garis"></span>
                    <span class="garis"></span>
                    <span class="garis"></span>
                </a>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#artikelcekdarah">Artikel</a></li>
                    <li><a href="#artikelcekdarah">Cek Darah Mu</a></li>
                    <li><a href="#tutors">Our Team</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="wrapper">
        <img src="../assets/img/darah.png" alt="">

        <h2>Hasil Darah</h2>

        <p>Gula Darah : <?= $gDarah ?> = <?= $hasilDarah ?></p>
        <p>Kolesterol : <?= $kol ?> = <?= $hasilKolesterol ?></p>
        <p>Asam Urat : <?= $aUrat ?> = <?= $hasilAsamUrat ?></p>
    </div>

    <div id="copyright">
        <div class="wrapper" style="align-items: center">
            &copy; 2023. <b>DarahKu</b> Dicoding Academy.
        </div>
    </div>
    
</body>
</html>