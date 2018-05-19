-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2018 at 08:48 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pkl_odk_real`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy_kode_kabupaten`
--

CREATE TABLE IF NOT EXISTS `dummy_kode_kabupaten` (
  `id` varchar(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy_kode_kabupaten`
--

INSERT INTO `dummy_kode_kabupaten` (`id`, `nama`) VALUES
('01', 'BENGKULU SELATAN'),
('02', 'REJANG LEBONG'),
('03', 'BENGKULU UTARA'),
('04', 'KAUR'),
('05', 'SELUMA'),
('06', 'MUKOMUKO'),
('07', 'LEBONG'),
('08', 'KEPAHIANG'),
('09', 'BENGKULU TENGAH'),
('71', 'BENGKULU'),
('99', 'Bantul');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
