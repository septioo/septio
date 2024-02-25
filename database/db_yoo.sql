-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 06:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_yoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `AlbumID` int(11) NOT NULL,
  `NamaAlbum` varchar(225) NOT NULL,
  `Deskripsi` text NOT NULL,
  `TanggalDibuat` date NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `FotoID` int(11) NOT NULL,
  `Judulfoto` varchar(225) NOT NULL,
  `Deskripsifoto` text NOT NULL,
  `Tanggalunggah` date NOT NULL,
  `Lokasifile` varchar(225) NOT NULL,
  `AlbumiD` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `KomentarID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `LikeID` int(11) NOT NULL,
  `FotoID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TanggalLike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Septio', 'Yow', '123', '081316009581', 'septio@gmail.com', 'Jl. Raya Batujajar'),
(2, 'Raufli', 'Pong', '123', '085788992910', 'apong@gmail.com', 'Jl. Raya Batujajar'),
(3, 'Radit', 'Dit', '123', '085787778813', 'radit@gmail.com', 'Jl. Raya Batujajar'),
(4, 'Rangga', 'Ga', '123', '081316009582', 'rangga@gmail.com', 'Jl. Raya Cangkorah'),
(5, 'Ikbal', 'Pur', '123', '081316009583', 'ikbal@gmail.com', 'Jl. Raya Cangkorah\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Alam'),
(2, 'Minuman'),
(3, 'Makanan'),
(4, 'Olahraga'),
(5, 'Karya seni');

-- --------------------------------------------------------

--
-- Table structure for table `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(43, 1, 'Alam', 1, 'Septio', 'Gunung Rinjani', '<p>Di kalangan pendaki dan pecinta alam, Rinjani terkenal sebagai salah satu gunung yang menyuguhkan keindahan alam luar biasa, menjadikannya sebagai destinasi dambaan.</p>\r\n', 'foto1708481620.jpg', 1, '2024-02-23 06:45:08'),
(45, 3, 'Makanan', 2, 'Raufli', 'sate padang', '<p>Sate padang adalah sate yang berasal dari daerah Sumatera Barat, khususnya dari tiga kota, yaitu Padang, Pariaman, dan Padang Panjang. Sate padang terbuat dari daging sapi atau kerbau yang dipotong kecil-kecil dan ditusuk dengan tusukan bambu. Yang membedakan sate padang dengan sate lainnya adalah bumbu dan sausnya yang kaya akan rempah-rempah.</p>\r\n', 'foto1708484707.jpeg', 1, '2024-02-23 06:45:57'),
(48, 4, 'Olahraga', 5, 'Ikbal', 'Basket', '<p>Bermain Bola Basket Dapat Meningkatkan Koordinasi dan Kestabilan Tubuh Manfaat bermain basket yang pertama adalah meningkatkan koordinasi dan kestabilan tubuh.</p>\r\n', 'foto1708485296.jpg', 1, '2024-02-23 06:45:33'),
(49, 2, 'Minuman', 3, 'Radit', 'Lemon tea', '<p>Lemon tea adalah perpaduan lemon dan teh yang tidak hanya segar, tetapi juga memiliki manfaat masing-masing dari lemon dan juga teh. Lemon dan teh saja sebenarnya juga memiliki manfaatnya sendiri untuk kesehatan, terlebih paduan keduanya, pastinya paduan lemon dan teh ini memiliki banyak manfaat untuk kesehatan.</p>\r\n', 'foto1708648922.jpg', 1, '2024-02-23 06:44:39'),
(50, 5, 'Karya seni', 4, 'Rangga', 'Lukisan', '<p>Seni lukis: karya seni rupa dua dimensi yang mengolah unsur-unsur seni rupa seperti garis, bidang, warna dan tekstur pada bidang dua dimensi.</p>\r\n', 'foto1708649172.jpg', 1, '2024-02-23 06:46:27'),
(51, 1, 'Alam', 1, 'Septio', 'Sunrise', '<p>Sunrise adalah fenomena matahari terbit. Ini adalah momen yang terjadi pada pagi hari saat bagian atas matahari terlihat di cakrawala. Matahari terbit juga dikenal dengan fenomena ketika piringan matahari melintasi cakrawala. Hal ini menyebabkan beberapa efek di atmosfer dalam prosesnya.</p>\r\n', 'foto1708649342.jpg', 1, '2024-02-23 06:45:14'),
(52, 3, 'Makanan', 2, 'Raufli', 'Rendang', '<p>Dalam nikmatnya rendang menyimpan vitamin dan mineral. Yakni kalsium, fosfor, zat besi, vitamin A, B1 dan zat besi. Gunanya dapat mengoptimalkan fungsi tubuh kalian.</p>\r\n', 'foto1708649705.jpg', 1, '2024-02-23 06:46:05'),
(53, 2, 'Minuman', 3, 'Radit', 'Sop buah', '<p>Sumber Nutrisi yang Kaya Sop buah memiliki kandungan beragam jenis gizi penting, termasuk vitamin C, vitamin A, serat, kalium, dan anti-oksidan.</p>\n', 'foto1708649940.jpg', 1, '2024-02-23 07:10:09'),
(55, 4, '', 5, 'Ikbal', 'Voly', '<p>Gerakan voli membuat jantung bekerja lebih baik dalam memompa darah. Manfaat ini pada gilirannya memperlancar aliran darah ke seluruh tubuh. Ketika kesehatan jantung meningkat, risiko penyakit kronis, seperti hipertensi, penyakit jantung, dan diabetes pun diduga bisa ikut berkurang.</p>\r\n', 'foto1708650143.jpg', 1, '2024-02-23 06:45:39'),
(56, 5, 'Karya seni', 4, 'Rangga', 'Lukisan ikan', '<p>Menurut legenda, lukisan ikan koi memiliki filosofi yang bermula dari penggambaran koi sebagai jenis ikan yang berenang melawan arus, mendaki air terjun, dan bisa melewati rintangan mencapai puncak gunung.</p>\r\n', 'foto1708650468.jpg', 1, '2024-02-23 06:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `NamaLengkap` varchar(225) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`AlbumID`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`FotoID`),
  ADD KEY `AlbumiD` (`AlbumiD`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`KomentarID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `FotoID` (`FotoID`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`LikeID`),
  ADD KEY `FotoID` (`FotoID`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `AlbumID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `FotoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `KomentarID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`AlbumID`) REFERENCES `foto` (`AlbumiD`);

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`AlbumiD`) REFERENCES `album` (`AlbumID`),
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`FotoID`) REFERENCES `foto` (`FotoID`);

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`FotoID`) REFERENCES `foto` (`FotoID`);

--
-- Constraints for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
