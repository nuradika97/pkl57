-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 12, 2018 at 08:49 PM
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
-- Table structure for table `log_kuesioner`
--

CREATE TABLE IF NOT EXISTS `log_kuesioner` (
  `unique_id_instance` varchar(50) NOT NULL,
  `_id` int(11) NOT NULL,
  `UploadName` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_pcl` varchar(50) NOT NULL,
  `nama_kortim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_kuesioner`
--

INSERT INTO `log_kuesioner` (`unique_id_instance`, `_id`, `UploadName`, `status`, `time`, `nama_pcl`, `nama_kortim`) VALUES
('uuid:b00ea00e-8b27-496c-b811-b529f903a9b7', 24489, '19-01-090-020-013B-26', 'Final', '2017-03-21 03:25:06', 'Isvan Anggeriraja Jupiono', 'Fatimah Azzahro'''),
('uuid:bb2f0dcf-f7bc-475c-a8b9-15ee1dd16abb', 24488, '19-06-020-009-011B-58', 'Final', '2017-03-21 01:44:34', 'Puput Astutik', 'Puput Astutik'),
('uuid:25e00611-0d44-4a37-a237-30bf290220c4', 24487, '19-06-020-009-011B-16', 'Final', '2017-03-21 01:44:33', 'Puput Astutik', 'Puput Astutik'),
('uuid:c5c9dbb9-9051-4df8-a949-39bf0e58015a', 24486, '19-01-090-020-013B-26', 'Terkirim', '2017-03-20 16:25:24', 'Isvan Anggeriraja Jupiono', 'Fatimah Azzahro'''),
('uuid:dbde0d60-2892-4e88-b694-c5cb5ca9d3db', 24485, '19-01-130-011-002B-28', 'Final', '2017-03-20 12:38:42', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:dbde0d60-2892-4e88-b694-c5cb5ca9d3db', 24484, '19-01-130-011-002B-28', 'Final', '2017-03-20 12:38:39', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:903fbf7d-5027-4d66-bf77-5bcfeb212673', 24483, '19-01-130-011-002B-71', 'Final', '2017-03-20 00:50:38', 'Syerftaztika-I-Mellati Shofiyatulistiwa', 'Rizkita Kusumaningtyas'),
('uuid:e4e735e9-6856-47ed-b19a-3db6ad88b4b6', 24482, '19-01-130-011-002B-27', 'Final', '2017-03-20 00:50:26', 'Syerftaztika-I-Mellati Shofiyatulistiwa', 'Rizkita Kusumaningtyas'),
('uuid:85dc293f-6090-4367-bde6-91c70e294f6f', 24481, '19-01-130-011-002B-27', 'Terkirim', '2017-03-18 23:43:28', 'Syerftaztika-I-Mellati Shofiyatulistiwa', 'Rizkita Kusumaningtyas'),
('uuid:b9bd4297-a4a9-415c-8f45-a5c97ad2e26e', 24480, '19-01-130-011-002B-71', 'Terkirim', '2017-03-18 23:43:21', 'Syerftaztika-I-Mellati Shofiyatulistiwa', 'Rizkita Kusumaningtyas'),
('uuid:d5e3f2f9-6b2e-4942-b6f2-af9a43a3831b', 24479, '19-01-130-011-002B-28', 'Terkirim', '2017-03-18 23:35:42', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:49fb0582-084e-405e-80e4-eb358b8e4f2f', 24478, '19-01-130-011-006B-10', 'Final', '2017-03-17 23:39:04', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:4e73c3b0-2db6-4362-a401-6cdc9455732e', 24477, '19-01-130-011-002B-28', 'Periksa Kembali', '2017-03-17 22:50:44', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:2ae48a29-16a0-401d-a44e-37bb232471c7', 24476, '19-01-130-011-002B-28', 'Terkirim', '2017-03-17 20:40:17', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:06cd6d17-04d7-40c1-acaa-01277ee6c231', 24475, '19-06-030-006-024B-17', 'Terkirim', '2017-03-08 23:07:38', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:0a7248ae-ac4d-4970-ac40-623616984645', 24474, '19-06-030-006-003B-94', 'Terkirim', '2017-03-02 14:56:09', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:6efcc327-cc4a-4e22-b1ee-90ce0eb54c5c', 24473, '19-06-020-004-003B-68', 'Terkirim', '2017-03-04 06:57:29', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:ec51adf5-1a88-4ccb-9bf3-30225e5d676d', 24472, '19-05-040-005-007B-42', 'Terkirim', '2017-03-07 16:07:19', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:df7da25d-8814-4c92-ade8-2a44adf2c9ed', 24471, '19-04-011-006-008B-6', 'Terkirim', '2017-03-01 01:28:21', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:88c28551-efa1-460e-9902-d92be9775501', 24470, '19-03-030-005-012B-49', 'Terkirim', '2017-03-02 16:33:34', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:1df41d6a-a32d-4d38-a615-4af1edc24880', 24469, '19-03-010-018-005B-7', 'Terkirim', '2017-03-04 04:25:42', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:7d406f8e-8120-430d-8360-50bbc121b9d6', 24468, '19-02-060-012-007B-50', 'Terkirim', '2017-03-03 14:29:50', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:9234b0f1-4664-4733-af11-9ace0a1a0015', 24467, '19-01-090-018-063B-113', 'Terkirim', '2017-03-03 07:09:48', 'Rahadi Jalu_', 'Muhammad Luqman_'),
('uuid:1e6699d7-2b34-4ca7-af33-a078c0034113', 24466, '19-01-130-011-006B-10', 'Terkirim', '2017-03-17 15:47:45', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:1e6699d7-2b34-4ca7-af33-a078c0034113', 24465, '19-01-130-011-006B-10', 'Terkirim', '2017-03-17 15:47:43', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:3fa00397-2ab4-4a84-9bfb-16f9e0b0eb08', 24464, '19-06-020-009-006B-39', 'Final', '2017-03-17 15:25:57', 'Weny Fitrah Anwari', 'Puput Astutik'),
('uuid:88588014-2df5-4c13-adb6-1cae07edab32', 24463, '19-06-020-009-006B-39', 'Terkirim', '2017-03-17 15:22:09', 'Weny Fitrah Anwari', 'Puput Astutik'),
('uuid:737de5df-237d-4572-98bd-c2785bf784c1', 24462, '19-01-130-013-008B-7', 'Final', '2017-03-17 12:53:49', 'Diah Mekita Sari', 'Diah Mekita Sari'),
('uuid:42aedfd8-4dd1-438f-9d25-e2e63bce6980', 24461, '19-01-090-019-019B-28', 'Final', '2017-03-17 09:13:16', 'Dian P Pakpahan                        ', 'Muhammad Basorudin'),
('uuid:0fa81a10-245d-4b13-9b75-980a4371d8d3', 24460, '19-01-090-019-003B-99', 'Final', '2017-03-17 09:12:16', 'Stevanus Ronaldo', 'Muhammad Basorudin'),
('uuid:958a1e9a-72ee-448c-b656-9fad8428f254', 24459, '19-01-090-018-042B-15', 'Final', '2017-03-17 08:51:05', 'Novi Fahdilla', 'Dwi Rizky Syaifullah'),
('uuid:cf94e6d8-9469-4f27-89d3-d9818dbb2a5e', 24458, '19-04-030-012-003B-112', 'Final', '2017-03-17 08:44:53', 'Adenil Zakaria', 'Muhammad Abdul Majid'),
('uuid:b73b858d-716b-4b76-bb3e-735312501ad5', 24457, '19-03-050-013-009B-47', 'Final', '2017-03-17 02:14:04', 'Yekti Nur Anggityasto', 'Muhammad Bahrul Latif'),
('uuid:d6bbd45d-fd04-43ad-8342-7a1f82a12558', 24456, '19-03-050-013-009B-47', 'Terkirim', '2017-03-17 02:11:33', 'Yekti Nur Anggityasto', 'Muhammad Bahrul Latif'),
('uuid:87ccd740-622a-44bf-9d57-9e2bfa5ce53c', 24453, '19-06-030-006-015B-74', 'Final', '2017-03-16 19:12:23', 'Arya Dwi Anjasmara Purbaningrum', 'Pradiva Nur Abditya'),
('uuid:8fa20b64-fd75-433b-bd2b-52bb226f46fc', 24452, '19-06-030-006-011B-8', 'Final', '2017-03-16 19:06:42', 'Deardo Ari Persada Damanik', 'Pradiva Nur Abditya'),
('uuid:ad14fd3b-fce8-415c-b253-459f1c5d7014', 24451, '19-03-050-013-002B-30', 'Final', '2017-03-16 17:39:22', 'Rila', 'Muhammad Bahrul Latif'),
('uuid:b19df3a3-9d52-45f3-ade8-d079c5e27d68', 24450, '19-04-030-009-005B-47', 'Final', '2017-03-16 16:18:17', 'Antik Tintriani', 'Antik Tintriani'),
('uuid:b19df3a3-9d52-45f3-ade8-d079c5e27d68', 24449, '19-04-030-009-005B-47', 'Final', '2017-03-16 16:18:14', 'Antik Tintriani', 'Antik Tintriani'),
('uuid:b9f405ed-ad39-41fd-8854-3eabe2faaa38', 24448, '19-03-040-012-002B-10', 'Final', '2017-03-16 14:43:30', 'Malik Faisal Aziz', 'Malik Faisal Aziz'),
('uuid:d4911d04-07f5-48ea-b57d-b8e146d97fd4', 24447, '19-03-040-012-004B-12', 'Final', '2017-03-16 14:41:52', 'Malik Faisal Aziz', 'Malik Faisal Aziz'),
('uuid:9bebe811-ac22-4b6f-ab8b-81bb700c5303', 24446, '19-03-040-012-004B-10', 'Final', '2017-03-16 14:38:00', 'Malik Faisal Aziz', 'Malik Faisal Aziz'),
('uuid:f944dced-1f6b-4fc0-8ded-0a1511597031', 24445, '19-03-040-012-004B-7', 'Final', '2017-03-16 14:36:08', 'Malik Faisal Aziz', 'Malik Faisal Aziz'),
('uuid:e42a4482-c844-4995-a908-a72737d2eb97', 24444, '19-03-040-012-004B-3', 'Final', '2017-03-16 14:32:38', 'Malik Faisal Aziz', 'Malik Faisal Aziz'),
('uuid:6ecf548c-c345-4520-86ed-4af66fd9476f', 24443, '19-03-040-012-004B-2', 'Final', '2017-03-16 14:26:50', 'Malik Faisal Aziz', 'Malik Faisal Aziz'),
('uuid:fc54d9ff-f193-47e6-8cea-b9aa973cab1f', 24442, '19-06-020-009-013B-103', 'Final', '2017-03-16 12:45:51', 'Hanif Wulandari R. I.', 'Puput Astutik'),
('uuid:6187af50-d2b1-4dd6-985a-59e27cd4b615', 24441, '19-06-020-009-013B-10', 'Final', '2017-03-16 12:32:28', 'Hanif Wulandari R. I.', 'Puput Astutik'),
('uuid:5789479a-86bd-44c7-8e28-f04bcb1aea86', 24440, '19-06-020-009-013B-107', 'Final', '2017-03-16 12:17:36', 'Hanif Wulandari R. I.', 'Puput Astutik'),
('uuid:28a72319-faa6-4dfb-8f8f-e6cd5a237799', 24439, '19-05-030-009-001B-9', 'Final', '2017-03-16 06:54:25', 'Adelia Alifiany Basory', 'Komang Tri Wulandari'),
('uuid:8051f0a0-59cd-400c-b497-72e643db5a9b', 24438, '19-06-020-004-016B-3', 'Final', '2017-03-16 06:22:13', 'Dita Christina Simorangkir', 'Puput Astutik'),
('uuid:7cce336e-b80c-4ab4-9419-50678d84f3d0', 24437, '19-06-020-009-006B-91', 'Final', '2017-03-16 06:22:12', 'Weny Fitrah Anwari', 'Puput Astutik'),
('uuid:08b34443-0cba-4561-acb6-7709844b501e', 24436, '19-06-020-004-016B-16', 'Final', '2017-03-16 06:22:12', 'Dita Christina Simorangkir', 'Puput Astutik'),
('uuid:431dce01-1b21-46b5-aa46-8d9e4662fd81', 24435, '19-06-020-009-011B-82', 'Final', '2017-03-16 06:22:11', 'Weny Fitrah Anwari', 'Puput Astutik'),
('uuid:bb606364-288c-49d1-ae4b-0707614d1776', 24434, '19-06-020-004-017B-154', 'Final', '2017-03-16 06:22:11', 'Dita Christina Simorangkir', 'Puput Astutik'),
('uuid:8051f0a0-59cd-400c-b497-72e643db5a9b', 24433, '19-06-020-004-016B-3', 'Final', '2017-03-16 06:22:10', 'Dita Christina Simorangkir', 'Puput Astutik'),
('uuid:7cce336e-b80c-4ab4-9419-50678d84f3d0', 24432, '19-06-020-009-006B-91', 'Final', '2017-03-16 06:22:09', 'Weny Fitrah Anwari', 'Puput Astutik'),
('uuid:08b34443-0cba-4561-acb6-7709844b501e', 24431, '19-06-020-004-016B-16', 'Final', '2017-03-16 06:22:09', 'Dita Christina Simorangkir', 'Puput Astutik'),
('uuid:431dce01-1b21-46b5-aa46-8d9e4662fd81', 24430, '19-06-020-009-011B-82', 'Final', '2017-03-16 06:22:08', 'Weny Fitrah Anwari', 'Puput Astutik'),
('uuid:bb606364-288c-49d1-ae4b-0707614d1776', 24429, '19-06-020-004-017B-154', 'Final', '2017-03-16 06:22:07', 'Dita Christina Simorangkir', 'Puput Astutik'),
('uuid:43ca4d6c-3b33-4a71-9eda-266d10b5ff61', 24428, '19-03-030-001-005B-31', 'Final', '2017-03-15 12:21:58', 'Rahma Ardani ', 'Siti Zuliana Fedi'),
('uuid:43ca4d6c-3b33-4a71-9eda-266d10b5ff61', 24427, '19-03-030-001-005B-31', 'Final', '2017-03-15 12:21:54', 'Rahma Ardani ', 'Siti Zuliana Fedi'),
('uuid:c8f1bd6f-4ef5-4ef6-b6f5-b0189bb4726c', 24426, '19-71-041-002-017B-86', 'Final', '2017-03-14 15:22:55', 'Hari Adityawan', 'Dwi Inayah'),
('uuid:c1a13685-db96-40dd-abf6-d95d5245287a', 24425, '19-03-050-011-002B-64', 'Final', '2017-03-14 14:52:24', 'Billy Krey', 'Muhammad Bahrul Latif'),
('uuid:2c30516a-ae00-481e-aebb-2bca2f615de1', 24424, '19-03-020-008-009B-29', 'Final', '2017-03-14 12:29:07', 'Janter Simorangkir', 'Maya Novita Sari'),
('uuid:2de7c149-dc40-400c-af9b-715d270c3009', 24423, '19-03-030-001-009B-888', 'Final', '2017-03-14 12:21:09', 'Ahmad Kosasih', 'Erwin Saputra'),
('uuid:8032a8a1-1921-4b97-a6f6-e95689753e9f', 24422, '19-71-010-010-007B-14', 'Final', '2017-03-14 11:43:32', 'Anita Dwi Permathasari', 'Ahmad Fajar Novianto'),
('uuid:552b2630-af9a-4529-b4a5-52cffa45cd52', 24421, '19-71-010-010-007B-7', 'Final', '2017-03-14 11:43:28', 'Anita Dwi Permathasari', 'Ahmad Fajar Novianto'),
('uuid:fd3b7e5e-d580-4dda-8599-c69b40c4eacf', 24420, '19-71-010-010-007B-14', 'Terkirim', '2017-03-14 11:07:09', 'Anita Dwi Permathasari', 'Ahmad Fajar Novianto'),
('uuid:e0fb2156-ae09-48ef-9392-2f6eafbddfc7', 24419, '19-71-010-010-007B-7', 'Terkirim', '2017-03-14 11:07:08', 'Anita Dwi Permathasari', 'Ahmad Fajar Novianto'),
('uuid:341996e3-5f1a-4e24-9795-00e3bffc5fec', 24416, '19-71-010-010-001B-8', 'Final', '2017-03-14 10:21:51', 'Frida Novyana Putri', 'Ahmad Fajar Novianto'),
('uuid:0ea4179b-43f0-4645-b692-b152ffed83cf', 24415, '19-01-081-002-006B-32', 'Final', '2017-03-14 09:39:52', 'Juniarita Ratnasari', 'Else Huslijah'),
('uuid:a1d0645c-df35-480a-9e45-1caa6a6b39cc', 24414, '19-03-040-009-003B-47', 'Final', '2017-03-14 09:29:00', 'Alfada Maghfiri Firdani', 'Malik Faisal Aziz'),
('uuid:677e09d5-deee-465c-a28f-135141f6fd85', 24413, '19-03-050-011-002B-64', 'Terkirim', '2017-03-14 08:12:51', 'Billy Krey', 'Muhammad Bahrul Latif'),
('uuid:7060e6bc-8d7c-40fc-944f-0641debc5255', 24412, '19-05-030-009-005B-62', 'Final', '2017-03-14 07:05:31', 'Adelia Alifiany Basory', 'Komang Tri Wulandari'),
('uuid:4c31ecf1-1556-48f9-b4c5-867ea929c2d3', 24411, '19-71-041-002-017B-86', 'Terkirim', '2017-03-14 06:56:51', 'Hari Adityawan', 'Dwi Inayah'),
('uuid:5e292853-b944-4ea3-ad68-91dc9f104dea', 24410, '19-05-030-009-005B-62', 'Terkirim', '2017-03-14 06:24:13', 'Adelia Alifiany Basory', 'Komang Tri Wulandari'),
('uuid:76d80b4d-ea0b-416a-9e39-eea3b5d8ddde', 24409, '19-03-050-021-003B-3', 'Final', '2017-03-14 03:59:23', 'Eka Apriliyana', 'Andre Ridho Perdana Hutapea'),
('uuid:55db6569-344c-46a7-badc-146ba5401c36', 24407, '19-01-081-004-005B-41', 'Terkirim', '2017-03-14 03:05:26', 'Fauziah Zen', 'Else Huslijah'),
('uuid:486fbb6a-11a3-41b4-a587-c8d92512b9f3', 24406, '19-01-081-004-005B-41', 'Final', '2017-03-14 03:05:26', 'Fauziah Zen', 'Else Huslijah'),
('uuid:b48d58ff-a437-45a4-b33e-d470e7920f14', 24405, '19-01-081-002-006B-32', 'Terkirim', '2017-03-14 03:02:29', 'Juniarita Ratnasari', 'Else Huslijah'),
('uuid:488d249a-4972-449b-b924-dc658859f687', 24404, '19-03-050-015-001B-7', 'Final', '2017-03-14 02:30:37', 'Putu Yogi W', 'Andre Ridho Perdana Hutapea'),
('uuid:030f0d2b-a0eb-4aac-a371-fd41a44a488a', 24403, '19-02-062-002-001B-18', 'Final', '2017-03-14 01:03:47', 'Fadlilah Rahmawati', 'Fadlilah Rahmawati'),
('uuid:de99d81b-20cc-4762-8d9e-ab285e2094a4', 24402, '19-03-030-001-009B-888', 'Terkirim', '2017-03-13 23:57:51', 'Ahmad Kosasih', 'Erwin Saputra'),
('uuid:9f517c5a-1996-48e8-ae22-16b76d67d6f4', 24401, '19-01-070-012-002B-85', 'Final', '2017-03-13 22:58:43', 'Karisma R. Muthmainnah', 'Wirda Avie Nurizza'),
('uuid:9f517c5a-1996-48e8-ae22-16b76d67d6f4', 24400, '19-01-070-012-002B-85', 'Final', '2017-03-13 22:58:39', 'Karisma R. Muthmainnah', 'Wirda Avie Nurizza'),
('uuid:1db9c312-2e51-43be-b083-0b473a2af6c0', 24399, '19-03-030-001-025B-15', 'Final', '2017-03-13 22:42:24', 'Tania Viona Sirait', 'Siti Zuliana Fedi'),
('uuid:d81db7a9-6eb2-44ed-bc75-0063140c9cbf', 24398, '19-06-030-006-007B-57', 'Final', '2017-03-13 22:01:10', 'Ahmat Amini Efendi', 'Faris Lahudin'),
('uuid:90714116-08ae-4b41-82cf-738ba6a60e75', 24397, '19-01-070-012-002B-85', 'Terkirim', '2017-03-13 21:49:17', 'Karisma R. Muthmainnah', 'Wirda Avie Nurizza'),
('uuid:e88e6a5d-3dbb-42b0-9fcc-168777fad848', 24396, '19-01-130-011-004B-58', 'Final', '2017-03-13 18:31:06', 'Siska Oktarianti', 'Rizkita Kusumaningtyas'),
('uuid:75ee7de0-62d6-448d-9d79-f4e5c9ab5d83', 24395, '19-05-030-004-022B-7', 'Final', '2017-03-13 18:18:31', 'Grace Yuliana Silitonga', 'Daniel Julfraldo Butar-Butar'),
('uuid:2e1cfa33-eebd-4801-81e3-064b51942dd9', 24394, '19-03-030-001-025B-15', 'Terkirim', '2017-03-13 18:18:20', 'Tania Viona Sirait', 'Siti Zuliana Fedi'),
('uuid:95d54f23-c088-4d29-88bf-02a6652552bf', 24393, '19-05-030-004-022B-7', 'Terkirim', '2017-03-13 18:13:21', 'Grace Yuliana Silitonga', 'Daniel Julfraldo Butar-Butar'),
('uuid:dc745c9a-3623-4515-a023-5d0b7c3309ad', 24392, '19-02-060-013-016B-12', 'Final', '2017-03-13 18:11:44', 'Muhammad Yusuf', 'Muhammad Yusuf'),
('uuid:dba25cbc-5555-4f22-ad4f-212a51d04d08', 24383, '19-71-041-002-010B-16', 'Final', '2017-03-13 17:51:47', 'Antonio', 'Dwi Inayah'),
('uuid:afa2a62d-eb02-46cf-bab3-8fd616a1af76', 24382, '19-01-070-012-002B-1', 'Final', '2017-03-13 17:46:41', 'Wirda Avie Nurizza', 'Wirda Avie Nurizza'),
('uuid:0f859ac5-1f36-42f8-94d4-de0b30ef0b52', 24381, '19-71-041-002-016B-1', 'Terkirim', '2017-03-13 17:32:26', 'Hari Adityawan', 'Dwi Inayah'),
('uuid:132f0704-438a-45bb-bf98-e5eb3a6048e7', 24380, '19-71-041-002-010B-16', 'Terkirim', '2017-03-13 17:20:41', 'Antonio', 'Dwi Inayah'),
('uuid:4567d499-9866-424a-af6e-af42812a3c64', 24379, '19-01-130-011-014B-47', 'Final', '2017-03-13 17:00:30', 'Fitria Wulandari', 'Rizkita Kusumaningtyas'),
('uuid:64ed3695-5431-42ed-8a63-dee608f38504', 24378, '19-71-010-010-001B-8', 'Terkirim', '2017-03-13 16:55:48', 'Frida Novyana Putri', 'Ahmad Fajar Novianto'),
('uuid:20160b0b-2fa8-45c9-99bb-8a37fd36a52d', 24377, '19-03-020-008-009B-29', 'Terkirim', '2017-03-13 16:43:43', 'Janter Simorangkir', 'Maya Novita Sari');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
