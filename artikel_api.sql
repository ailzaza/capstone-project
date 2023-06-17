-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2023 pada 05.10
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_api`
--

CREATE TABLE `artikel_api` (
  `id` int(11) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel_api`
--

INSERT INTO `artikel_api` (`id`, `tipe`, `judul`, `image`, `summary`) VALUES
(1, 'tips', 'Gula Darah (diabetes)', 'https://dummyimage.com/300x200/aaa/fff', 'Apakah Anda mengalami Gejala dibawah ini?\r\n-Sering buang air kecil\r\n-Berat badan turun drastis\r\n-Dehidrasi yang berlebihan\r\n-Kebanyakan tidur\r\n\r\nMungkin Gula Darah Anda tinggi.\r\nAnda harus cek kadar gula darah Anda. Karena gejala diatas adalah gejala penyakit Diabetes.\r\n\r\nBahkan data pada tahun 2017, terdapat sebanyak 425 juta orang pengidap penyakit diabetes di seluruh dunia. Dan Indonesia menempati urutan ke-6 dengan jumlah pasien diabetes tertinggi, \r\n\r\nDan diperkirakan akan terus meningkat, kenapa? Karena masyarakat Indonesia cenderung menyukai makanan dan minuman yang manis yang mengandung banyak Gula. Dan juga, makanan pokok Indonesia adalah Nasi Putih.'),
(2, 'tips', 'Gula Darah (diabetes)', 'https://dummyimage.com/300x200/aaa/fff', 'Agar terhindar dari penyakit diabetes, berikut ini ada beberapa tips yang bisa anda lakukan, diantaranya adalah :\r\n\r\n1. Terus bergerak\r\nAktivitas fisik dapat menurunkan gula darah dan meningkatkan sensitivitas terhadap insulin. Penelitian menunjukkan bahwa latihan aerobik atau aktivitas fisik semacamnya dapat membantu mengendalikan diabetes. (ADA) American Diabetes Association merekomendasikan untuk latihan aerobik ringan seperti senam atau tenis setengah jam setiap kali latihan, 5 kali per minggu.\r\n\r\n2. Beralih ke gandum dan konsumsi biji-bijian\r\nRoti tawar, nasi putih, dan kentang tidak hanya menyebabkan lingkar pinggang membesar, namun makanan tersebut juga memiliki indeks glikemik yang tinggi, menyebabkan lonjakan gula darah dan kadar insulin. Penelitian lain dari Harvard School of Public Health juga menemukan bahwa mereka yang mengonsumsi rata-rata 2-3 porsi biji-bijian per hari, 30% lebih kecil kemungkinannya untuk mengembangkan diabetes tipe 2 dibandingkan dengan mereka yang jarang mengonsumsi biji-bijian.\r\n\r\n3. Cobalah cuka apel\r\nDua sendok makan cuka apel sehari dapat menurunkan lonjakan gula darah. Hal ini berdasarkan serangkaian penelitian oleh Carol Johnston, Ph.D., profesor dan direktur program gizi dari Arizona State University, yang menemukan bahwa cuka apel dapat menurunkan gula darah. Anda bisa menambahkan cuka apel pada makanan anda.\r\n\r\n4. Konsumsi kayu manis\r\nDalam sebuah studi tahun 2003, peneliti Pakistan bersama dengan Richard Anderson, seorang ilmuwan dengan Departemen Pertanian AS, menemukan bahwa mengonsumsi 1 gram kayu manis setiap hari dapat mengurangi gula darah. Walaupun penelitian di Amerika masih ragu soal ini, namun para ahli diabetes tetap merekomendasikan kayu manis untuk dikonsumsi.\r\n\r\n5. Minum kopi\r\nSebuah penelitian yang melibatkan 125.000 peserta (84.276 adalah wanita) oleh Harvard School of Public Health menunjukkan bahwa wanita yang minum kopi sebanyak enam cangkir atau lebih per hari dapat mengurangi risiko diabetes tipe 2 sebesar hampir 30 %, meskipun hal tersebut dapat menimbulkan risiko kesehatan lainnya. Jadi, konsumsilah kopi sesuai kebutuhan. Kopi kaya akan antioksidan, termasuk asam klorogenat dan magnesium yang dapat meningkatkan sensitivitas terhadap insulin.'),
(3, 'tips', 'Gula Darah (diabetes)', 'https://dummyimage.com/300x200/aaa/fff', 'Diabetes bisa menyerang siapa saja dan kapan saja, termasuk di usia muda. Penyakit ini terjadi karena meningkatnya kadar gula darah hingga berada jauh di atas angka normal. Meski umum terjadi di Indonesia, penyakit ini tidak boleh disepelekan begitu saja. Sebab, penyakit ini bisa membuat pengidapnya mengalami sejumlah gejala, termasuk penurunan penglihatan dan sulit sembuh dari luka.\r\n\r\nDiabetes juga sering dikaitkan dengan berbagai macam masalah kesehatan serius, seperti kebutaan, gagal ginjal sampai serangan jantung. Maka dari itu, tindakan pencegahan sebaiknya segera dilakukan sejak usia muda. Cara yang bisa dilakukan adalah dengan menerapkan pola hidup sehat, berolahraga, serta menghindari kebiasaan mengonsumsi makanan dan minuman manis secara berlebihan. \r\n\r\nBerikut ini beberapa cara yang bisa dilakukan untuk membantu menurunkan risiko penyakit ini, antara lain: \r\n\r\n1. Konsumsi Makanan Sehat\r\n2. Menurunkan Berat Badan Berlebih\r\n3. Banyak Bergerak\r\n4. Cukup Tidur\r\n5. Kelola Stres'),
(4, 'Berita', 'Gula Darah (diabetes)', 'https://dummyimage.com/300x200/aaa/fff', 'Saat ini penderita kencing manis—penyakit mematikan ketiga di Indonesia setelah stroke dan jantung—sekitar 10 juta orang. Jumlahnya sekitar 10 tahun mendatang dapat meningkat dua sampai tiga kali lipat, kata Dr Susie Setyowati, konsultan endroktrin, metabolik, diabetes di Jakarta.\r\n\r\nDr Susie mengatakan penyakit kronis ini \"tak bisa disembuhkan tapi dapat dikendalikan agar tak terjadi komplikasi\".\r\n\r\nCara pencegahannya adalah menjaga asupan makan, berolahraga serta menghentikan rokok, kebiasaan yang dapat menyebabkan komplikasi terutama bagi penderita jantung.\"\r\n\r\nKalau mengurangi berat badan 10% saja dari saat ini, bisa mengurangi risiko diabetes besar,\" kata dr Susie.\r\n\r\nDi dunia penyakit kencang manis ini membunuh lebih satu juta orang setiap tahun - dan siapapun dapat terkena.Penyakit ini terjadi saat tubuh tidak bisa memproses semua gula (glukosa) di dalam aliran darah; menimbulkan komplikasi yang dapat menyebabkan serangan jantung, tekanan darah tinggi, kebutaan, gagal ginjal dan amputasi anggota tubuh bagian bawah.\r\n\r\nJumlah penderita terus meningkat dan tercatat saat ini mencapai 422 juta orang di dunia - empat kali lebih banyak dari pada 30 tahun lalu, menurut Organisasi Kesehatan Dunia (WHO).Meskipun terdapat berbagai risiko ini, setengah penderita diabetes tidak menyadarinya.Tetapi perubahan gaya hidup dapat mencegahnya, dalam beberapa kasus. '),
(5, 'Berita', 'Gula Darah (diabetes)', 'https://dummyimage.com/300x200/aaa/fff', 'Kelebihan gula stevia dibandingkan gula pasir dan gula merah menarik untuk diketahui. Pasalnya, mungkin masih banyak di antara masyarakat yang belum tahu kelebihan dari gula stevia. Penggunaan gula stevia sebagai pemanis sudah banyak digunakan di berbagai negara, termasuk Jepang, Korea, China, Asia Tenggara, Amerika Selatan, bahkan Indonesia. Salah satu kelebihan gula stevia dibandingkan gula pasir dan gula merah adalah karena tidak mengandung kalori, dan tidak menyebabkan kenaikan kadar gula darah saat dikonsumsi.\r\n\r\nGula stevia juga memiliki keunggulan karena manfaatnya untuk penderita diabetes, obesitas, dan mereka yang sedang menjaga asupan kalori/ berdiet dan aman dikonsumsi oleh semua orang.\r\n'),
(6, 'Berita', 'Gula Darah (diabetes)', 'https://dummyimage.com/300x200/aaa/fff', 'Buah yang harus dihindari penderita diabetes karena mengandung gula yang tinggi. Walaupun buah-buahan terkenal memiliki berbagai kandungan yang sehat untuk tubuh, ternyata beberapa jenis buah malah harus dihindari oleh orang-orang dengan kondisi tertentu. \r\n\r\nKhususnya bagi penderita diabetes, buah-buahan tertentu bisa menyebabkan perubahan tingkat gula dalam darah. Oleh karena itu, penderita diabetes harus benar-benar memperhatikan jenis buah yang dikonsumsinya.\r\n\r\nBuah yang harus dihindari penderita diabetes merupakan buah yang cukup umum dikonsumsi. Buah-buahan manis tersebut perlu kamu kontrol konsumsinya agar tidak menimbulkan akibat yang merugikan bagi tubuh kamu. contoh nya\r\n-Mangga\r\n-Anggur\r\n-Nanas\r\n-Pisang'),
(7, 'Tips', 'Kolestrol', 'https://dummyimage.com/300x200/aaa/fff', 'Kolesterol adalah lemak yang diproduksi oleh tubuh, dan juga berasal dari makanan hewani. Senyawa ini membantu tubuh memproduksi vitamin D, sejumlah hormon, dan asam empedu untuk mencerna lemak. Dalam kadar yang sesuai, ini sebenarnya dibutuhkan oleh tubuh dalam membantu membangun sel-sel baru agar tubuh bisa tetap berfungsi secara normal. \r\n\r\nSelain itu, senyawa ini juga tubuh butuhkan untuk proses pencernaan, produksi hormon, dan membentuk vitamin D. Namun, jika kadarnya terlalu tinggi, maka hal tersebut berbahaya bagi tubuh karena akan menyebabkan berbagai penyakit dan komplikasi.\r\n\r\nDi dalam darah, senyawa ini dibawa oleh protein. Gabungan keduanya disebut dengan lipoprotein. Dua jenis utama lipoprotein adalah lipoprotein dengan kepadatan rendah (LDL) yang biasa disebut dengan kolesterol jahat dan lipoprotein dengan kepadatan tinggi (HDL) yang biasa disebut dengan kolesterol baik.\r\n\r\nTugas LDL adalah mengangkut kolesterol dari organ hati ke sel-sel yang membutuhkan. Namun jika jumlahnya melebihi kebutuhan, maka dapat mengendap pada dinding-dinding arteri yang menyebabkan penyakit. \r\n\r\nSementara itu, HDL bertugas untuk mengangkut kolesterol kembali ke dalam organ hati, sebagai kebalikan dari LDL. Dalam hati, senyawa ini akan dihancurkan atau dikeluarkan oleh tubuh melalui feses atau kotoran.\r\n\r\nKadar koletesterol dalam darah yang disarankan untuk setiap orang bervariasi. Tergantung tiap orang apakah memiliki risiko lebih tinggi atau lebih rendah untuk bisa terkena penyakit pembuluh arteri. Sementara itu, pemeriksaan terkait kadar atau jumlah kolesterol dalam darah bisa diukur dengan melalui tes darah.'),
(8, 'Tips', 'Asam Urat', 'https://dummyimage.com/300x200/aaa/fff', 'Asam urat awalnya mungkin tidak menimbulkan gejala sampai serangan akutnya benar-benar terjadi. Berangsur-angsur, gejala asam urat dapat semakin melemahkan ketika penyakit ini sudah berlangsung lama (kronis). Sebagian besar gejala biasanya terjadi selama beberapa jam dalam 1-2 hari. Jika tidak diobati, kekambuhan serangan sewaktu-waktu dapat menghambat aktivitas harian. Lantas, bagaimana cara mengobati atau menurunkan kadar asam urat yang berlebih\r\n\r\n1. Pantau kadar asam urat Anda\r\n2. Minum obat asam urat dari dokter\r\n3. Minum obat penghilang rasa sakit\r\n4. Lakukan olahraga teratur\r\n5. Jaga berat badan dengan diet yang tepat'),
(9, 'Tips', 'Asam Urat', 'https://dummyimage.com/300x200/aaa/fff', 'Asam urat menjadi salah satu penyakit yang cukup sering dikeluhkan masyarakat Indonesia. Asam urat adalah jenis radang sendi yang berkembang ketika kadar asam urat darah tinggi secara tidak normal. Asam urat membentuk kristal di persendian, sering kali di kaki dan jempol kaki, yang menyebabkan pembengkakan parah dan menyakitkan. Beberapa orang memerlukan obat untuk mengatasi asam urat, tetapi perubahan pola makan dan gaya hidup juga dapat membantu. Menurunkan asam urat dapat mengurangi risiko asam urat dan bahkan dapat mencegah serangan berikutnya pada orang dengan kondisi ini.\r\n\r\n1. Batasi makanan kaya purin\r\n2. Konsumsi lebih banyak makanan rendah purin\r\n3. Hindari obat-obatan yang meningkatkan kadar asam urat\r\n\r\n\r\n'),
(10, 'Berita', 'Asam Urat', 'https://dummyimage.com/300x200/aaa/fff', 'Gejala asam urat tinggi biasanya ditandai dengan keluhan nyeri, sensasi panas, kemerahan, hingga bengkak di area persendian. Semua area persendian berisiko terserang asam urat, tetapi yang paling sering dikeluhkan adalah bagian jari, lutut, pergelangan kaki, tangan hingga jempol kaki. Serangan asam urat bisa terjadi secara tiba-tiba. Oleh karena itu, sebaiknya kita mengetahui ciri-ciri penyakit asam urat agar rasa nyeri dapat segera diatasi.\r\n\r\nMeski begitu, bukan berarti kadar asam urat yang tinggi tidak dapat dideteksi sejak dini. Sebab, beberapa gejalanya sudah dapat dicurigai bila merasakan beberapa kondisi berikut ini. \r\n\r\n1. Sering nyeri sendi\r\n2. Ketidaknyamanan\r\n3. Area persendian berubah kemerahan\r\n4. Area persendia berubah tidak fleksibel\r\n'),
(11, 'Berita', 'Asam Urat', 'https://dummyimage.com/300x200/aaa/fff', 'Penyakit asam urat atau gout merupakan radang sendi yang umum menyerang lanjut usia atau lansia, sekitar 60 tahun ke atas. Dikutip dari laman WebMD, penyakit ini akan meningkat seiring bertambahnya usia, dengan puncak pada umur 75 tahun. Kendati begitu, asam urat juga bisa menyerang orang lebih muda, termasuk dewasa, remaja, bahkan anak-anak. Lantas, apa saja ciri-ciri asam urat di usia muda?\r\n\r\nCiri-ciri asam urat di usia muda Penyakit asam urat terjadi karena penumpukan kristal asam urat di persendian, sehingga memicu rasa nyeri, bengkak, dan kemerahan. Kristal asam urat sendiri terbentuk berkat kadar zat ini yang terlalu tinggi di dalam darah atau kerap disebut hiperurisemia. Berdasarkan ulasan pada 2020, penyakit asam urat telah menyerang 696.277 orang muda antara usia 0-18 tahun di Jepang.\r\n\r\n1. Rasa sakit nyeri yang parah\r\n2. Pembengkakan\r\n3. Kemerahan\r\n4. Terasa kaku dan sulit bergerak\r\n5. Hangat atau panas'),
(12, 'Berita', 'Asam Urat', 'https://dummyimage.com/300x200/aaa/fff', 'Pegal linu atau nyeri sendi merupakan gangguan kesehatan yang kerap dialami oleh banyak orang. Adapun salah satu penyakit yang paling banyak terjadi akibat nyeri sendi adalah asam urat atau gout. Sebagai informasi, asam urat adalah jenis penyakit yang diakibatkan oleh penumpukan kristal asam urat atau uric acid. Biasanya, tubuh manusia akan memproduksi uric acid secara alami ketika sedang memecah zat purin. Zat ini berasal dari makanan yang dikonsumsi. Pada kondisi normal, uric acid akan dikeluarkan oleh tubuh melalui urine dan feses. Namun, jika kadar asam urat dalam tubuh tinggi, zat tersebut akan menumpuk dan membentuk kristal di sekitar sendi. Hal inilah yang menimbulkan peradangan pada sendi. Meski kerap terjadi pada orang dewasa, gangguan asam urat juga kerap dirasakan oleh anak muda. Utamanya, mereka yang tidak memiliki pola hidup sehat.\r\n\r\nSebut saja, jarang berolahraga, pola makan buruk, mengonsumsi makanan yang tinggi akan zat purin, mengonsumsi alkohol, dan kurang asupan air putih. Sementara itu, berdasarkan artikel jurnal dari Universitas Airlangga berjudul “Asam Urat di Usia Muda”, 2021, asam urat pada anak muda terjadi karena konsumsi makanan, seperti seafood, daging, dan jeroan yang tinggi akan zat purin, terlalu banyak. Tak hanya itu, makanan yang diawetkan dalam kaleng, seperti kornet, sarden, kaldu daging, dan minuman manis, juga menjadi pemicu utama tingginya risiko asam urat pada anak muda. Adapun bagi penderita asam urat, termasuk anak muda, dianjurkan untuk segera mengobati penyakit tersebut. Tujuannya, agar tak menimbulkan dampak yang lebih parah.\r\n\r\n'),
(13, 'Tips', 'Asam Urat', 'https://dummyimage.com/300x200/aaa/fff', 'Penyakit asam urat adalah jenis radang sendi yang terjadi karena kadar uric acid (asam urat) yang tinggi di tubuh. Pada masyarakat awam, kondisi ini disebut juga encok. Oleh karena itu, kadar asam urat perlu dijaga di kisaran normal sebagai bentuk pencegahan penyakit asam urat. Lantas, bagaimana cara mencegah asam urat yang bisa dilakukan?\r\n\r\nBerbagai cara pencegahan asam urat yang bisa Anda lakukan\r\nUntuk mencegah penyakit asam urat, kadar asam urat normal perlu dijaga, setidaknya di bawah angka 6,0 mg/dL pada wanita dan 7,0 mg/dL pada pria. Bila melebihi angka tersebut, asam urat yang berlebih di tubuh bisa menumpuk dan kemudian mengkristal di persendian, sehingga menimbulkan berbagai gejala asam urat.\r\n\r\nMeski demikian, tidak semua orang yang memiliki kadar asam urat tinggi akan merasakan gejala. Namun, golongan orang ini perlu tetap menjaga kadar uric acid untuk mencegah gejala atau serangan asam urat pada masa mendatang. Selain itu, pencegahan asam urat pun perlu dilakukan bagi Anda yang berisiko tinggi terhadap penyakit ini, seperti riwayat keluarga, obesitas, atau memasuki usia paruh baya.\r\n\r\n1. Pilih makanan mengandung protein tinggi, tetapi rendah lemak, seperti lentil, susu rendah lemak, atau daging unggas.\r\n2. Olahraga secara rutin dan teratur selama 30 menit selama lima hari dalam seminggu.\r\n3. Bila sudah kelebihan berat badan, Anda sebaiknya berupaya menurunkan berat badan hingga mencapai angka ideal Anda.'),
(14, 'Tips', 'Kolesterol', 'https://dummyimage.com/300x200/aaa/fff', 'Sama pentingnya dengan kadar gula darah, menjaga kadar kolesterol normal merupakan hal yang perlu diperhatikan bagi setiap orang. Apabila kadar kolesterol melebihi normal, maka akan timbul berbagai masalah kesehatan, seperti stroke dan penyakit jantung. \r\n\r\nNah, sebagai antisipasi, yuk pahami berapa kadar kolesterol normal dalam ulasan berikut ini.\r\n\r\nKolesterol adalah senyawa berupa lemak yang diproduksi oleh berbagai sel dalam tubuh, kolesterol dalam tubuh kita berasal dari dua sumber yaitu makanan dan hati.\r\n\r\n \r\n\r\nMeski pada dasarnya tubuh membutuhkan kolesterol untuk menjalankan beberapa fungsi tubuh, namun kadar kolesterol yang terlalu tinggi justru dapat menimbulkan berbagai masalah kesehatan. Beberapa masalah kesehatan yang dapat terjadi saat kadar kolesterol tinggi di antaranya, gejala stroke, penyakit jantung, dan gangguan sirkulasi darah. Maka dari itu, pemeriksaan kadar kolesterol perlu dilakukan sejak dini dan berkala.\r\n\r\nApabila Anda memiliki keluarga dengan riwayat penyakit jantung, maka ada baiknya memulai tes kolesterol sejak usia 20 tahun. Hal ini dilakukan untuk mencegah risiko serangan jantung di usia muda. Tetapi, jika Anda tidak terbiasa merokok atau mengidap penyakit tertentu, maka tes kolesterol secara berkala dapat dilakukan mulai umur 35 tahun.\r\n\r\nJika tes kolesterol menunjukkan angka normal, maka Anda dapat melakukan pemeriksaan berkala 5 tahun sekali. Namun, bagi penderita diabetes, jantung, dan gangguan ginjal, pemeriksaan kolesterol disarankan untuk dilakukan lebih sering. Cara cek kolesterol normal yang paling efektif dapat dilakukan dengan menggunakan alat pengukur kadar kolesterol atau langsung mengunjungi dokter.'),
(15, 'Tips', 'Kolestrol', 'https://dummyimage.com/300x200/aaa/fff', 'Di Indonesia, penderita kolesterol bisa dibilang cukup tinggi, yaitu mencapai 28%. Lebih mengejutkan lagi, ternyata 7,9% orang di dunia meninggal akibat penyakit ini. Jika terlambat diatasi, kolesterol tinggi memang akan membahayakan kesehatan, bahkan bisa menyebabkan kematian. Secara umum, kolesterol tinggi dapat diartikan sebagai kondisi ketika kadar kolesterol dalam darah lebih tinggi dibandingkan nilai normal. Kolesterol yang dibiarkan tidak terkendali lama-kelamaan dapat menyumbat pembuluh darah, yang pada akhirnya bisa menyebabkan penyakit stroke, aterosklerosis, angina, dan serangan jantung. Kolesterol merupakan senyawa lemak menyerupai lilin. Ada beberapa penyakit yang bisa timbul akibat tingginya kolesterol, seperti jantung, penyumbatan pembuluh darah, dan stroke. \r\n\r\nBerikut adalah beberapa gejala kolesterol tinggi :\r\n\r\n1.      Mudah Mengantuk\r\n\r\nSeringnya menguap terjadi akibat pasokan oksigen ke otak berkurang. Kalau frekuensi menguap sudah tidak wajar, Anda patut curiga karena bisa jadi, hal itu disebabkan menumpuknya kolesterol yang tinggi sehingga pasokan oksigen menuju otak tidak optimal.\r\n\r\n2.      Kesemutan\r\n\r\nSering merasakan kesemutan pada kaki, tangan, atau bagian tubuh tertentu merupakan salah satu gejala aliran darah tidak lancar. Akibatnya, ada syaraf yang tidak mendapat pasokan darah yang optimal. Secara umum, penyebab aliran darah tidak lancar disebabkan oleh kolesterol.\r\n\r\n3.      Pegal pada Tengkuk atau Pundak\r\n\r\nTengkuk atau pundak terasa pegal? Ada kemungkinan hal itu terjadi karena kurangnya suplai oksigen serta darah ke daerah tersebut akibat penumpukan kolesterol. Segera atasi agar tidak berkelanjutan.\r\n\r\n4.      Rasa Nyeri di Kaki\r\n\r\nNyeri pada kaki bisa jadi merupakan gejala kolesterol tinggi akibat tersumbatnya aliran di arteri sehingga aliran darah ke kaki terhambat.\r\n\r\n5.      Xanthelasma\r\n\r\nYaitu endapan kolesterol yang berada di bawah jaringan kulit. Jika ini terjadi, biasanya tampak noda kuning muda di ujung kelopak mata atau mucul bentolan kecil padat di lipatan tubuh seperti tumit, siku, atau lutut.'),
(16, 'Berita', 'Kolestrol', 'https://dummyimage.com/300x200/aaa/fff', 'Salah satu penyakit yang harus diwaspadai semua orang adalah kolestreol tinggi. Pasalnya, kolesterol tinggi dapat menyebabkan kondisi medis serius, seperti stroke dan serangan jantung.\r\n\r\nOleh karenanya, mengenali tanda-tanda kolesterol tinggi itu penting agar dapat segera mengatasi dan mencegah kondisi berkembang lebih parah. Kolesterol tinggi dikenal juga sebagai hiperkolesterolemia. Mengutip Verywell Health, ketika Anda mengalami kolesterol tinggi, artinya kadar kolesterol jahat (LDL) dalam darah Anda lebih banyak dari pada kolesterol baik (HDL).  Menurut Kementerian Kesehatan, kadar kolesterol Anda dikategorikan tinggi, jika angkanya mencapai lebih dari 240 mg/dL.  Kolesterol tinggi umumnya tidak menimbulkan tanda-tanda khas di awal. Sehingga, tanda-tanda kolesterol tinggi muncul seiring dengan bertambah parahnya kesehatan tubuh Anda terpengaruh.\r\n\r\nSaat itu, ciri-ciri kolesterol tinggi yang bisa Anda alami meliputi:  \r\n1. Tekanan darah tinggi (hipertensi)  \r\n2. Kelelahan  \r\n3. Kesulitan bernapas atau sesak napas  4. Sakit kepala  \r\n5. Masalah penglihatan  \r\n6. Detak jantung tidak teratur  \r\n7. Nyeri dada \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(17, 'Berita', 'Kolestrol', 'https://dummyimage.com/300x200/aaa/fff', 'Kolesterol tinggi menjadi masalah yang makin umum ditemui. Kolesterol tinggi dikaitkan dengan risiko penyakit jantung. Kolesterol tinggi dapat menyebabkan timbunan lemak di pembuluh darah. Endapan ini akan menyulitkan laju aliran darah yang cukup ke arteri. \r\n\r\nTerkadang, endapan lemak kolesterol dapat pecah tiba-tiba dan membentuk gumpalan yang menyebabkan serangan jantung atau stroke. Kolesterol bisa disebabkan oleh berbagai hal seperti keturunan. Namun, kolesterol tinggi juga banyak disebabkan oleh gaya hidup yang tidak sehat.\r\n\r\nIni membuat kolesterol tinggi dapat dihindari. Makan makanan sehat dan olahraga teratur dapat membantu mengurangi kolesterol tinggi. Salah satu makanan sehat yang mudah ditemukan adalah buah-buahan. Beberapa jenis buah-buahan diketahui dapat membantu menurunkan kolesterol.\r\n\r\nBerikut beberapa buah-buahan yang dapat membantu menurunkan kolesterol \r\n\r\n1. Alpukat \r\n2. Anggur\r\n3. Apel\r\n4. Stroberi\r\n5. Jeruk\r\n6. Pir'),
(18, 'Berita', 'Kolestrol', 'https://dummyimage.com/300x200/aaa/fff', 'Kolesterol merupakan salah satu komponen penting dalam tubuh. Namun, jika jumlahnya terlalu banyak, tentu akan membahayakan kesehatan. Gejala kolesterol tinggi dan cara mengatasinya perlu Anda ketahui untuk menghindari hal-hal yang tidak diinginkan. Kolesterol yang tinggi menyebabkan tumpukan lemak di pembuluh darah. Jika dibiarkan, tumpukan itu akan menghambat aliran darah. Saat tumpukan lemak pecah, penggumpalan darah bisa terjadi sehingga menyebabkan serangan jantung atau stroke.\r\n\r\nGejala kolesterol tinggi bisa disebabkan oleh keturunan, dan juga bisa karena pola hidup yang kurang sehat. Mengutip dari Mayo Clinic (mayoclinic.org), kolesterol tinggi tidak memunculkan gejala apa pun. Satu-satunya cara untuk mendeteksi penyakit itu adalah dengan melakukan tes darah.\r\n\r\nJika terus dibiarkan, gejala kolesterol tinggi bisa mengakibatkan komplikasi dalam tubuh. Selain serangan jantung dan stroke, gejala kolesterol tinggi juga menyebabkan dada sebelah kiri terasa nyeri. Hal itu disebabkan karena ada masalah di arteri jantung. Cara mengatasi gejala kolesterol tinggi adalah dengan mengubah kebiasaan sehari-hari. Mayo Clinic menyebutkan ada beberapa hal yang bisa Anda lakukan. Anda bisa membatasi konsumsi garam dalam makanan dan menggantinya dengan buah serta sayur. Atur berat badan agar tidak berlebihan dan batasi konsumsi lemak hewani. Rajin olahraga minimal selama 30 menit dan berhenti merokok serta mengatur stres dengan baik juga bisa Anda lakukan agar gejala kolesterol tinggi tidak datang.\r\n\r\n\r\n\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel_api`
--
ALTER TABLE `artikel_api`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel_api`
--
ALTER TABLE `artikel_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;