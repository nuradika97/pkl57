-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2018 at 03:29 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pkl57_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `agregat_cacah`
--

CREATE TABLE IF NOT EXISTS `agregat_cacah` (
  `kode_kabupaten` varchar(2) NOT NULL,
  `nama_kabupaten` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `beban_cacah` int(11) NOT NULL,
  `progress` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agregat_cacah`
--

INSERT INTO `agregat_cacah` (`kode_kabupaten`, `nama_kabupaten`, `jumlah`, `beban_cacah`, `progress`) VALUES
('01', 'BENGKULU SELATAN', 1632, 1630, 1.00123),
('02', 'REJANG LEBONG', 993, 990, 1.00303),
('03', 'BENGKULU UTARA', 958, 960, 0.997917),
('04', 'KAUR', 855, 854, 1.00117),
('05', 'SELUMA', 901, 950, 0.948421),
('06', 'MUKOMUKO', 658, 660, 0.99697),
('71', 'BENGKULU', 1026, 1022, 1.00391);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
