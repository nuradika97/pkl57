-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2018 at 12:01 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkl57_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy_kode_kecamatan`
--

CREATE TABLE `dummy_kode_kecamatan` (
  `id` varchar(10) NOT NULL,
  `kabupaten` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy_kode_kecamatan`
--

INSERT INTO `dummy_kode_kecamatan` (`id`, `kabupaten`, `nama`) VALUES
('010', '71', 'Selebar'),
('011', '71', 'Kampung Melayu'),
('020', '71', 'Gading Cempaka'),
('021', '71', 'Ratu Agung'),
('022', '71', 'Ratu Samban'),
('023', '71', 'Singaran Pati'),
('030', '71', 'Teluk Segara'),
('031', '71', 'Sungai Serut'),
('040', '71', 'Muara Bangka Hulu'),
('040', '01', 'Manna'),
('041', '01', 'Kota Manna'),
('042', '01', 'Kedurang'),
('043', '01', 'Bunga Mas'),
('044', '01', 'Pasar Manna'),
('045', '01', 'Kedurang Ilir'),
('050', '01', 'Seginim'),
('051', '01', 'Air Nipis'),
('060', '01', 'Pino'),
('061', '01', 'Pinoraya'),
('062', '01', 'Ulu Manna'),
('010', '09', 'Talang Empat'),
('020', '09', 'Karang Tinggi'),
('030', '09', 'Taba Penanjung'),
('031', '09', 'Merigi Kelindang'),
('040', '09', 'Pagar Jati'),
('041', '09', 'Merigi Sakti'),
('050', '09', 'Pondok Kelapa'),
('051', '09', 'Pondok Kubang'),
('060', '09', 'Pematang Tiga'),
('061', '09', 'Bang Haji'),
('555', '09', 'Wilayah Kosong'),
('050', '03', 'Kerkap'),
('051', '03', 'Air Napal'),
('052', '03', 'Air Besi'),
('053', '03', 'Hulu Palik'),
('054', '03', 'Tanjung Agung Palik'),
('060', '03', 'Arga Makmur'),
('061', '03', 'Arma Jaya'),
('070', '03', 'Lais'),
('071', '03', 'Batik Nau'),
('072', '03', 'Giri Mulya'),
('073', '03', 'Air Padang'),
('080', '03', 'Padang Jaya'),
('090', '03', 'Katahun'),
('091', '03', 'Napal Putih'),
('092', '03', 'Ulok Kupai'),
('093', '03', 'Pinang Raya'),
('100', '03', 'Putri Hijau'),
('101', '03', 'Marga Sakti Sebelat'),
('110', '03', 'Padang Bano'),
('999', '03', 'Hutan'),
('010', '04', 'Nasal'),
('020', '04', 'Maje'),
('030', '04', 'Kaur Selatan'),
('031', '04', 'Tetap'),
('040', '04', 'Kaur Tengah'),
('041', '04', 'Luas'),
('042', '04', 'Muara Sahung'),
('050', '04', 'Kinal'),
('051', '04', 'Semidang Gumay'),
('060', '04', 'Tanjung Kemuning'),
('061', '04', 'Kelam Tengah'),
('070', '04', 'Kaur Utara'),
('071', '04', 'Padang Guci Hilir'),
('072', '04', 'Lungkang Kule'),
('073', '04', 'Padang Guci Hulu'),
('010', '08', 'Muara Kemumu'),
('020', '08', 'Bermani Ilir'),
('030', '08', 'Seberang Musi'),
('040', '08', 'Tebat Karai'),
('050', '08', 'Kepahiang'),
('060', '08', 'Kaba Wetan'),
('070', '08', 'Ujan Mas'),
('080', '08', 'Merigi'),
('010', '07', 'Rimbo Pengadang'),
('011', '07', 'Topos'),
('020', '07', 'Lebong Selatan'),
('021', '07', 'Bingin Kuning'),
('030', '07', 'Lebong Tengah'),
('031', '07', 'Lebong Sakti'),
('040', '07', 'Lebong Atas'),
('042', '07', 'Pelabai'),
('050', '07', 'Lebong Utara'),
('051', '07', 'Amen'),
('052', '07', 'Uram Jaya'),
('053', '07', 'Pinang Belapis'),
('010', '06', 'Ipuh'),
('011', '06', 'Air Rami'),
('012', '06', 'Malin Deman'),
('020', '06', 'Pondok Suguh'),
('021', '06', 'Sungai Rumbai'),
('022', '06', 'Teramang Jaya'),
('030', '06', 'Teras Terunjam'),
('031', '06', 'Penarik'),
('032', '06', 'Selagan Raya'),
('040', '06', 'Kota Muko-Muko'),
('041', '06', 'Air Dikit'),
('042', '06', 'XIV Koto'),
('050', '06', 'Lubuk Pinang'),
('051', '06', 'Air Manjunto'),
('052', '06', 'V Koto'),
('999', '06', 'Hutan'),
('020', '02', 'Kota Padang'),
('021', '02', 'Sindang Beliti Ilir'),
('030', '02', 'Padang Ulak Tanding'),
('031', '02', 'Sindang Kelingi'),
('032', '02', 'Bindu Riang'),
('033', '02', 'Sindang Beliti Ulu'),
('034', '02', 'Sindang Dataran'),
('040', '02', 'Curup'),
('041', '02', 'Bermani Ulu'),
('042', '02', 'Selupu Rejang'),
('043', '02', 'Curup Selatan'),
('044', '02', 'Curup Tengah'),
('045', '02', 'Bermani Ulu Raya'),
('046', '02', 'Curup Utara'),
('047', '02', 'Curup Timur'),
('010', '05', 'Semidang Alas Maras'),
('020', '05', 'Semidang Alas'),
('030', '05', 'Talo'),
('031', '05', 'Ilir Talo'),
('032', '05', 'Talo Kecil'),
('033', '05', 'Ulu Talo'),
('040', '05', 'Seluma'),
('041', '05', 'Seluma Selatan'),
('042', '05', 'Seluma Barat'),
('043', '05', 'Seluma Timur'),
('044', '05', 'Seluma Utara'),
('050', '05', 'Sukaraja'),
('051', '05', 'Air Periukan'),
('052', '05', 'Lubuk Sandi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
