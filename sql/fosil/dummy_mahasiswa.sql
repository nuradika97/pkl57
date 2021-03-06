-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2016 at 06:17 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `odk_aggregate_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `dummy_mahasiswa` (
  `nim` varchar(7) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy_mahasiswa`
--

INSERT INTO `dummy_mahasiswa` (`nim`, `nama`) VALUES
('14.7934', 'Abdul Aziz Makhrus'),
('14.7943', 'Adenil Zakaria'),
('14.7957', 'Ahmad Fajar Novianto'),
('14.7966', 'Al Birra Syaiful Abidin'),
('14.7972', 'Algar Reza Gibran Akbar'),
('14.7986', 'Anggun Mutiara Isnein'),
('14.8015', 'Arya Aji Kusuma'),
('14.8029', 'Ayu Faridah'),
('14.8041', 'Binda Amanti'),
('14.8054', 'Cinantya Dwi Winasis'),
('14.8067', 'Denno Agsola Ananza'),
('14.8078', 'Diah Mekita Sari'),
('14.8096', 'Easbi Ikhsan'),
('14.8113', 'Fachmi Puspita Saputri'),
('14.8132', 'Fazra Handika'),
('14.8144', 'Frida Novyana Putri'),
('14.8168', 'Hudan Dhardiri'),
('14.8181', 'Imam Nurohman'),
('14.8197', 'Julianto Silalahi'),
('14.8207', 'Komang Tri Wulandari'),
('14.8221', 'Maftukhatul Qomariyah Virati'),
('14.8237', 'Miftakhul Jannah'),
('14.8246', 'Muhamad Iqbal Arsa'),
('14.8253', 'Muhammad Auzian Noor'),
('14.8260', 'Muhammad Irsad Arief'),
('14.8278', 'Nadra Yudelsa Ratu'),
('14.8287', 'Ni Putu Beliana Puspita Sari'),
('14.8304', 'Oktavanyta Ariani'),
('14.8320', 'Rachmad Rizki Riyadi'),
('14.8344', 'Rifky Yudha Ardhana'),
('14.8354', 'Rizki Nur Eka Praptiwi'),
('14.8370', 'Sandhi Yoga Wiratama'),
('14.8387', 'Siti Sholikah'),
('14.8402', 'Syaiful Hadi'),
('14.8415', 'Tonny Arief Juniarta'),
('14.8431', 'Windi Maharani'),
('14.8438', 'Yulintin Riana Dewi'),
('14.7935', 'Abdurrohman Fachrurrozy'),
('14.7948', 'Aditya Abdulmunaf Rosnah'),
('14.7958', 'Ahmad Kosasih'),
('14.7967', 'Aldi Firdaus'),
('14.7973', 'Alifa Putri Wijaya'),
('14.7997', 'Annisa Fadlia Hanani'),
('14.8017', 'Arza Habibul Asdid'),
('14.8032', 'Bagas Febry Gunawan'),
('14.8043', 'Bontor Ian Fleming Siahaan'),
('14.8058', 'Damara Utama'),
('14.8070', 'Destiana Fitri'),
('14.8081', 'Diar Hazkila'),
('14.8102', 'Elsa Maudina Avianti'),
('14.8115', 'Fadhila Ajeng Damaris'),
('14.8133', 'Febriana Dwi Jayanti'),
('14.8150', 'Geri Yesa Ermawan'),
('14.8170', 'I Ketut Gede Ari Utama Putra'),
('14.8182', 'Imam Satya Wedhatama'),
('14.8201', 'Kasifatul Asriyati'),
('14.8212', 'Laila Marwinda Siami Nugraheni'),
('14.8223', 'Marcopolo Gultom'),
('14.8236', 'Miftakhul Huda Alamsyah'),
('14.8248', 'Muhammad Abdul Majid'),
('14.8254', 'Muhammad Bagastama Pane'),
('14.8263', 'Muhammad Rifki'),
('14.8279', 'Nadya Chaerunissa Budiman'),
('14.8288', 'Nida Fauziyyah'),
('14.8305', 'Oktaviani '),
('14.8324', 'Rafika Muhdar'),
('14.8345', 'Rifqi Aulan Nisa'),
('14.8356', 'Rizky Hadifianto'),
('14.8371', 'Sandra Logaritma'),
('14.8388', 'Siti Zuliana Fedi'),
('14.8404', 'Syifa Nurhidayah'),
('14.8416', 'Untari Rahmawati'),
('14.8432', 'Wirda Avie Nurizza'),
('14.8442', 'Yunita Wulandari'),
('14.7936', 'Abednego Delta Pradana'),
('14.7949', 'Aditya Dwi Yulianto'),
('14.7960', 'Ahmad Risal'),
('14.7968', 'Alfada Maghfiri Firdani'),
('14.7974', 'Alinca Wedear Renutama'),
('14.7998', 'Annisa Ully Octavira'),
('14.8019', 'Asha Jyoti Alfiyah'),
('14.8034', 'Bahrul Ilmi Nasution'),
('14.8045', 'Candra Arif Bomantara'),
('14.8060', 'Daniel Julfraldo Butar-Butar'),
('14.8073', 'Dewi Intansari'),
('14.8084', 'Dinda Yafiatul Yumna'),
('14.8103', 'Else Huslijah'),
('14.8118', 'Fahmi Arif Habibullah'),
('14.8136', 'Fikry Alkatiri'),
('14.8154', 'Gunadi Subagia'),
('14.8171', 'I Komang Yudi Hardiyanta'),
('14.8189', 'Isfan Nur Fauzi'),
('14.8203', 'Khalilur Rahman'),
('14.8215', 'Lissa Lara Sapti'),
('14.8230', 'Maya Novita Sari'),
('14.8238', 'Mira Choirunnisa'),
('14.8249', 'Muhammad Agung Wibowo'),
('14.8258', 'Muhammad Hasbi'),
('14.8265', 'Muhammad Shafaryantoro'),
('14.8280', 'Nadyatul Febriana'),
('14.8295', 'Nur Oktami'),
('14.8311', 'Prahasta Rizki Waikabakti'),
('14.8326', 'Rahadita Nur Haida'),
('14.8347', 'Rila Adhya Putri'),
('14.8359', 'Rodi Satriawan'),
('14.8372', 'Sanjayaabdillahkarim '),
('14.8391', 'Sri Murdaningrum'),
('14.8406', 'Tania Viona Sirait'),
('14.8419', 'Vita Fauzia Rahmawati'),
('14.8433', 'Yekti Nur Anggityasto'),
('14.8444', 'Yusuf Arief Pratama'),
('14.8447', 'Zulfa Nurfajri Ramadani'),
('14.7940', 'Ade Widiantara'),
('14.7952', 'Afry Rabel'),
('14.7963', 'Ajeng Larasati'),
('14.7970', 'Alfian Syamsurizal'),
('14.7977', 'Alwin Gilang Permana'),
('14.8005', 'Aprilia Elisabet Resti'),
('14.8020', 'Asita Sekar Asri'),
('14.8035', 'Banna Izzatul Hasanah'),
('14.8046', 'Carolina Danti Cahyaningrum'),
('14.8061', 'Dannar Kurniawan Ajie Prasetya'),
('14.8074', 'Dewi Puspitasari'),
('14.8093', 'Dwi Rizky Syaifullah'),
('14.8107', 'Epsilonia Diana Putri'),
('14.8124', 'Farhan Yahya Hidayat'),
('14.8137', 'Finny Maritha'),
('14.8161', 'Harista Dwi Kusumawardani'),
('14.8174', 'I Wayan Budi Okta Kusuma'),
('14.8190', 'Isvan Anggeriraja Jupiono'),
('14.8204', 'Khumaidi Subkhi'),
('14.8216', 'Listio Jati Nandhiko'),
('14.8233', 'Megita Ritha'),
('14.8239', 'Moch Fatkurrozi Fadlullah'),
('14.8250', 'Muhammad Agus Mauliza'),
('14.8257', 'Muhammad Fadli'),
('14.8266', 'Muhammad Syadrie'),
('14.8285', 'Nauval Tama Pratikto'),
('14.8296', 'Nur Salmanah'),
('14.8312', 'Puji Nisrokhah'),
('14.8329', 'Rahma Ardani'),
('14.8349', 'Rio Triwahyu Saputra'),
('14.8364', 'Ruth Vica Gustina'),
('14.8373', 'Saputri Kusumaningrum'),
('14.8394', 'Stevan Cahya Adi Kusuma'),
('14.8409', 'Thomi Hartono'),
('14.8423', 'Wahyu Rahmaditama Putera'),
('14.8434', 'Yessie Mathahardy Palupi'),
('14.8446', 'Zulfa Mufakkir Habibi'),
('14.7941', 'Adelia Alifiany Basory'),
('14.7953', 'Afwin Fauzy Akhsan'),
('14.7965', 'Akram Akramur Rasyid'),
('14.7971', 'Alfinanda Nindya Kusuma'),
('14.7981', 'Andre Ridho Perdana Hutapea'),
('14.8008', 'Ardian Saputra Hasibuan'),
('14.8023', 'Atika Kautsar Ilafi'),
('14.8038', 'Berliana Dyah Ambarsari'),
('14.8048', 'Catur Putra Prakoso Pamungkas'),
('14.8065', 'Defi Putri Utami'),
('14.8077', 'Dhira Fajri Atika'),
('14.8094', 'Dwiki Raynaldo.E'),
('14.8111', 'Eska Venasari Lubis'),
('14.8126', 'Faris Lahudin'),
('14.8139', 'Fitri Yulianti'),
('14.8165', 'Hilman Hanivan'),
('14.8176', 'Ibnu Abas'),
('14.8195', 'Jihan Rofidu Rokhim'),
('14.8206', 'Kiky Amci Ilzania'),
('14.8220', 'M Faiq Syafiqi Awwali Manshur'),
('14.8235', 'Miftah Muthia Kanza'),
('14.8240', 'Mochammad Alwan'),
('14.8251', 'Muhammad Al Fatih'),
('14.8259', 'Muhammad Imam Syafi''i'),
('14.8272', 'Mutia Sayyidah'),
('14.8286', 'Ni Lessari Prihadiani'),
('14.8302', 'Nyimas Camara Amalia'),
('14.8317', 'Qhory Kusuma Satiti'),
('14.8343', 'Rifky Afrizal Mukti'),
('14.8352', 'Rizka Heryanti'),
('14.8366', 'Sahda Ratnasari Sutikno'),
('14.8380', 'Sevrilya Rumance Veronika'),
('14.8399', 'Surya Kamala'),
('14.8413', 'Tirta Aprilian Taher'),
('14.8426', 'Weny Fitrah Anwari'),
('14.8437', 'Yovita Insan Perwita Utami'),
('14.8448', 'Zulfandri Dwi Putra'),
('14.7951', 'Aditya Wisnu Anggara'),
('14.7962', 'Aisyah Puteri Utama'),
('14.7982', 'Andre Zakaria'),
('14.7989', 'Anis Khoirun Nisaa'),
('14.8004', 'Anugrah Alief Pratama'),
('14.8016', 'Arya Dwi Anjasmara Purbaningrum'),
('14.8030', 'Ayu Fithri Maharani'),
('14.8050', 'Chandra Rinaldy Mbura'),
('14.8063', 'Deardo Ari Persada Damanik'),
('14.8079', 'Dian Purnama Pakpahan'),
('14.8088', 'Dite Taufiq Musthafa'),
('14.8097', 'Egi Renaldi'),
('14.8105', 'Ema Fadlilah'),
('14.8120', 'Fajar Khairiah Shafa'),
('14.8129', 'Fauzan Jodie Aldrian'),
('14.8138', 'Firman Ardhiana Putra'),
('14.8153', 'Grace Yuliana Silitonga'),
('14.8163', 'Hidayati Aulia Fitri'),
('14.8173', 'I Putu Surya Natha Redatama'),
('14.8183', 'Imelda Chintia'),
('14.8187', 'Intan Yusniasary'),
('14.8209', 'Kwinta Rahmidatul Nanda'),
('14.8222', 'Malik Faisal Aziz'),
('14.8229', 'Masito Erlando Situmorang'),
('14.8252', 'Muhammad Andriawan Setiawan'),
('14.8275', 'Nabila Masyiana Tisa Putri'),
('14.8298', 'Nurul Abidah'),
('14.8308', 'Panca Dwi Prabawa'),
('14.8323', 'Rafi Hakiim Syah'),
('14.8332', 'Rara Batara Putri Kesuma'),
('14.8340', 'Ridha Amaliah'),
('14.8357', 'Rizky Wahyuningsih'),
('14.8379', 'Setrya Lutfitasari'),
('14.8393', 'Stanislaus Christo Willy Samudra Adriana'),
('14.8405', 'Tadzkirotul Ilmiyati'),
('14.8417', 'Vanny Septiana Larasanti'),
('14.8436', 'Yosephine Murwanisiwi Riantoby'),
('14.7954', 'Agung Yudianto'),
('14.7969', 'Alfi Lailatur Rohmah'),
('14.7983', 'Anggia Firmanti Hermadita'),
('14.7991', 'Anisah Rahmaningsih'),
('14.8006', 'Apriliani Gustiana'),
('14.8021', 'Asti Sundariningsih'),
('14.8031', 'Azzahra Luthfi Hutami'),
('14.8052', 'Chintia Arisandi Hidayat'),
('14.8064', 'Debby Amalia Pratiwi'),
('14.8080', 'Dian Teguh Prasetyo'),
('14.8090', 'Diyana Indah Sari'),
('14.8098', 'Eka Amalia'),
('14.8108', 'Erika Asta Dewi'),
('14.8123', 'Fanny Nuzhida Febriana'),
('14.8131', 'Fauziah Zen'),
('14.8141', 'Fitria Wulandari'),
('14.8158', 'Hanis Maghfirani'),
('14.8166', 'Hilmi Sifa'' Iftitah'),
('14.8175', 'Ianah El Sholikhah'),
('14.8184', 'Indo Egy Maulina'),
('14.8192', 'Janter Simorangkir'),
('14.8213', 'Laksmi Titis Astryta Dewi'),
('14.8224', 'Maria Dara Metasari'),
('14.8232', 'Mega Fitria Trisnasari'),
('14.8256', 'Muhammad Basorudin'),
('14.8282', 'Naning Tri Suhesti'),
('14.8300', 'Nurul Hidayah'),
('14.8314', 'Putri Anggarini'),
('14.8325', 'Rahadi Jalu Yoga Utama'),
('14.8335', 'Reka Sri Wigati'),
('14.8346', 'Rihan Yosral'),
('14.8358', 'Rizqi Nafi Syariati'),
('14.8382', 'Siska Oktarianti'),
('14.8396', 'Sunggul Atalia'),
('14.8407', 'Tetty Florentina Br Bukit'),
('14.8421', 'Wafiqah Ummuzahra'),
('14.8439', 'Yunanda Angelia Sinurat'),
('14.7956', 'Ahmad Fadli Octavian'),
('14.7975', 'Alvin Hidayati Mashita'),
('14.7987', 'Aniisa Rizqi'),
('14.7993', 'Anna Kurniasih'),
('14.8007', 'Ardaneswari Damayanti'),
('14.8022', 'Astika Putri Nur Fadhila'),
('14.8033', 'Bagas Indra Sakti'),
('14.8055', 'Cindy Artha Yunita Hutabarat'),
('14.8072', 'Devigiesty Thyana'),
('14.8085', 'Dini Hanifa'),
('14.8092', 'Dwi Inayah'),
('14.8100', 'Eka Nanda Trisnawan'),
('14.8112', 'Etik Cahyani'),
('14.8127', 'Fatimah Azzahro'''),
('14.8134', 'Febry Utami'),
('14.8143', 'Fredy Law Purba'),
('14.8160', 'Hari Adityawan'),
('14.8169', 'Hudi Javariawan'),
('14.8177', 'Ibnu Hasim Pradipta'),
('14.8185', 'Indria Hartati'),
('14.8205', 'Khusnul Khoiriyah Anisa'),
('14.8218', 'Luthfi Fajar Arifah'),
('14.8226', 'Maria Sintauli Hutauruk'),
('14.8244', 'Muh Taufiqurrahman'),
('14.8267', 'Muhammad Yusuf'),
('14.8284', 'Naura Nadifa'),
('14.8301', 'Nurul Husna Khairunnisa'),
('14.8315', 'Putri Lydia Eltheofany S'),
('14.8328', 'Rahayu Tri Furwani'),
('14.8336', 'Retna Ernasari'),
('14.8348', 'Rimassatya Pawestri'),
('14.8365', 'S. Abdurrahman'),
('14.8386', 'Siti Rafika Fiandasari'),
('14.8398', 'Surya Himawan Saputra'),
('14.8411', 'Tiara Maureen'),
('14.8422', 'Wahyu Nuraini'),
('14.8441', 'Yuniar Selviyana'),
('14.7959', 'Ahmad Naufal Suprayogi'),
('14.7979', 'Amru Fahru Ridho'),
('14.7988', 'Anis Karimah'),
('14.8000', 'Antik Tintriani'),
('14.8011', 'Arifin '),
('14.8026', 'Aurum Nur Anisa'),
('14.8037', 'Bayu Kristiawan'),
('14.8062', 'Darul Difo Utama'),
('14.8075', 'Dewi Rizky Rosafiana Putri'),
('14.8087', 'Dita Rizky Pratama'),
('14.8095', 'Dwinda Astuti Puspaningrum'),
('14.8101', 'Eldorado Alfu Ilmy'),
('14.8116', 'Fadlilah Nur Hidayah'),
('14.8128', 'Fatma Nur Aini'),
('14.8135', 'Feby Aulia'),
('14.8152', 'Githa Nia Br Ginting'),
('14.8162', 'Hasna Fahria Yasmin'),
('14.8172', 'I Made Ardi Kusuma Putra'),
('14.8179', 'Ikhsan Ramadhan'),
('14.8186', 'Indriane Analisa'),
('14.8208', 'Kurnia Salsabila'),
('14.8219', 'Lydia Putri'),
('14.8228', 'Maryam Rasyid'),
('14.8245', 'Muhamad Andriansyah'),
('14.8269', 'Munayati Salam'),
('14.8289', 'Nigel Roy Tantan'),
('14.8307', 'Paksi Dewa Bagus'),
('14.8316', 'Putu Yogi Wigunanca'),
('14.8330', 'Rakhma Nurhidayati'),
('14.8339', 'Ridea Anggraini'),
('14.8353', 'Rizki Nagari'),
('14.8369', 'Sakinah Ramadhani Sudarso'),
('14.8389', 'Sofian Kardoso'),
('14.8401', 'Syafina Beta Putranti'),
('14.8412', 'Tiffany Rizkika'),
('14.8427', 'Wida Siddhikara Perwitasari'),
('14.8443', 'Yusriza Fahmi'),
('14.7939', 'Achmad Tasylichul Adib'),
('14.7950', 'Aditya Kuspratomo'),
('14.7980', 'Anditia Pratiwi'),
('14.7990', 'Anisa Ramadhani'),
('14.7999', 'Annisya Rizki Utami'),
('14.8018', 'Asfika Rizkyana'),
('14.8027', 'Avi Nugrahaeni'),
('14.8039', 'Beta Gunarti Brilliana'),
('14.8049', 'Chairina Linggarsari'),
('14.8069', 'Desta Febriana Indriyantika'),
('14.8086', 'Dita Christina Simorangkir'),
('14.8104', 'Elvana Riska Pratiwi'),
('14.8117', 'Fadlilah Rahmawati'),
('14.8130', 'Fauziah Caesar Rani'),
('14.8147', 'Galuh Permata Sari'),
('14.8159', 'Hardianshar '),
('14.8180', 'Ilma Ainun Fitriana'),
('14.8198', 'Juniarita Ratnasari'),
('14.8210', 'Laelatul Alfi Amelia'),
('14.8227', 'Martha Maranatha Panjaitan'),
('14.8242', 'Mohammad Rifqi Khikmawan'),
('14.8261', 'Muhammad Luqman'),
('14.8270', 'Muthmainnah '),
('14.8276', 'Nabilla Hadisty'),
('14.8283', 'Naufal Rasyid'),
('14.8303', 'Octarina Nuria Salsabila'),
('14.8321', 'Radina Yasinta Karolina'),
('14.8334', 'Reiham Sahara'),
('14.8342', 'Ridwan Setiawan'),
('14.8361', 'Rohmatul Jannah Kusumaningrum'),
('14.8368', 'Saidinur '),
('14.8381', 'Siratul Firdaus'),
('14.8392', 'Sri Wandari'),
('14.8403', 'Syerftaztika-I-Mellati Shofiyatulistiwa'),
('14.8414', 'Tommy Setiawan'),
('14.8425', 'Wahyudi Syahputra'),
('14.7938', 'Achmad Nur Huda'),
('14.7942', 'Adelia Christine Br Tarigan'),
('14.7955', 'Agustina Puspitasari Adiningtyas'),
('14.7984', 'Anggita Eka Putri Febrianes'),
('14.7992', 'Anita Dwi Permathasari'),
('14.8010', 'Arif Rahman'),
('14.8024', 'Atina Khoirunnisa'''),
('14.8028', 'Ayu Dystia Pitaloka Nainggolan'),
('14.8042', 'Bintang Desmonth Silitonga'),
('14.8053', 'Choirunisak Mauludiah'),
('14.8082', 'Dimas Tanzillul Firmansyah'),
('14.8089', 'Diva Arum Mustika'),
('14.8106', 'Emilia Fitri Siregar'),
('14.8119', 'Faiq Fajar Pujiadhi'),
('14.8140', 'Fitria Ramadhan'),
('14.8156', 'Handika Ramadhan'),
('14.8167', 'Hotmauli Nababan'),
('14.8188', 'Irma Risti Aryani'),
('14.8199', 'Karisma R. Muthmainnah'),
('14.8211', 'Laila Kurnia Fitri'),
('14.8234', 'Meiena Panti Susanti'),
('14.8247', 'Muhamad Saka Sotyasaksi'),
('14.8264', 'Muhammad Rizky Perdana'),
('14.8273', 'Nabella Intan Karasta'),
('14.8277', 'Nadia Humairo'),
('14.8291', 'Novi Fahdilla'),
('14.8310', 'Pradiva Nur Abditya'),
('14.8322', 'Radita Nareswari Mumpuni Putri'),
('14.8337', 'Retno Fitriandari'),
('14.8355', 'Rizkita Kusumaningtyas'),
('14.8362', 'Rommel Yonatan Sianipar'),
('14.8374', 'Sarah Pratiwi'),
('14.8383', 'Sithadewi Islami'),
('14.8397', 'Sunu Fakhriadi'),
('14.8408', 'Thandio Andrew Dewandoko'),
('14.8418', 'Vina Ainun Ni''mah'),
('14.8429', 'Wihelmus Wedo'),
('14.7946', 'Adilla Zikra'),
('14.7964', 'Akbar Sergio Abdul Gawang'),
('14.7985', 'Anggoro Widyapuji Putro'),
('14.7994', 'Anne Indiarti Banjar Nahor'),
('14.8012', 'Arini Faurizah'),
('14.8025', 'Aulia Niky Pinandhita'),
('14.8036', 'Barry Lamhot Sihite'),
('14.8047', 'Catur Ayu Ardania'),
('14.8068', 'Denny Rizky Firmansyah'),
('14.8083', 'Dina Purnamasari'),
('14.8099', 'Eka Apriliyana'),
('14.8114', 'Fadel Muhammad'),
('14.8125', 'Farid Mustofa'),
('14.8142', 'Fizza Anindhita'),
('14.8157', 'Hanif Wulandari Romadhonia Ibrahim'),
('14.8178', 'Ikhsan Margo Pangestu'),
('14.8191', 'Izzaturrohmah Syahputri'),
('14.8200', 'Karya Listyanti Pertiwi'),
('14.8214', 'Lely Mariani Rosenta Rajagukguk'),
('14.8241', 'Moh Muflich Armunanto'),
('14.8255', 'Muhammad Bahrul Latif'),
('14.8268', 'Muhammad Yusuf'),
('14.8274', 'Nabila Daisy Prima'),
('14.8281', 'Nafiah Rafiqah Rahayu'),
('14.8299', 'Nurul Afifah'),
('14.8318', 'Qorina Alluayi'),
('14.8327', 'Rahayu Lestari'),
('14.8341', 'Ridwan Prayogi'),
('14.8360', 'Rohmah Afifah'),
('14.8363', 'Ruth Juniar Herista'),
('14.8378', 'Setianing Margi Lestari'),
('14.8384', 'Siti Badriyah'),
('14.8400', 'Susi Yulianti'),
('14.8410', 'Tia Tri Damayanti'),
('14.8424', 'Wahyu Setyo Budi'),
('14.8450', 'Zuraida Rizki Rachmah'),
('14.7937', 'Abthal Umar'),
('14.7944', 'Adhitya Kurnia Fitra'),
('14.7961', 'Ahmat Amini Efendi Nst'),
('14.7978', 'Amelia Inamorita Mealanne Raraawi'),
('14.7996', 'Anni Syahdia Nasution'),
('14.8002', 'Antonito W. Hornay Cabral'),
('14.8003', 'Antonius Riadi'),
('14.8009', 'Arfan Fahmi Rumbara'),
('14.8044', 'Brumencio Pedro Amaral'),
('14.8051', 'Charles Michael Wasanggai'),
('14.8056', 'Clara Aulia Kusumaningtyas'),
('14.8066', 'Delita Arianti'),
('14.8091', 'Domingos Antonio Da Costa Freitas'),
('14.8109', 'Erisya Desi Deria'),
('14.8145', 'Friska Adventila Hawine'),
('14.8146', 'Galih Pramono'),
('14.8148', 'Georginia Martins'),
('14.8155', 'Hairunnisa '),
('14.8193', 'Jefrianto Fankari'),
('14.8196', 'Jos? Armindo Martins Borges'),
('14.8202', 'Katherine Permata Rusung'),
('14.8225', 'Maria Kewa'),
('14.8243', 'Muchammad Cholid Al Farisi'),
('14.8292', 'Novi Nur Azizah'),
('14.8294', 'Nur Imron Suyuti'),
('14.8297', 'Nurhalimah Lubis'),
('14.8306', 'Olga Madeira'),
('14.8319', 'Rachel Lyberti Maysiah Rumadas'),
('14.8331', 'Ramadhany Hafiz Akhmady Muliawan'),
('14.8338', 'Rezki Melany Sabil'),
('14.8350', 'Risdan Ripai'),
('14.8351', 'Rissa Afrianti Afhan'),
('14.8376', 'Sayudin '),
('14.8385', 'Siti Maryam'),
('14.8395', 'Stevanus Ronaldo'),
('14.8435', 'Yohanes Benimus Armada Putra Ansanay'),
('14.8440', 'Yuni Trina'),
('14.7945', 'Adidarma Lamianto'),
('14.7947', 'Adisti Dama Allo Mongan'),
('14.7976', 'Alvintopan Kristian'),
('14.7995', 'Anneke Oliphina Tamariska Rumbekwan'),
('14.8001', 'Antonio Claudio Ximenes Belo'),
('14.8013', 'Arma Juwita'),
('14.8014', 'Armando Gaspar'),
('14.8040', 'Billy Krey'),
('14.8057', 'Claudio Ferreira Fernandes'),
('14.8059', 'Daniel Joseph Benedict Ngamelubun'),
('14.8071', 'Devi Nadia Limbong'),
('14.8076', 'Dewi Yarti'),
('14.8110', 'Erwin Saputra'),
('14.8121', 'Fakhitah Lubis'),
('14.8122', 'Famia Mize Bhaquita Freitas'),
('14.8149', 'Geovania Maria Da Cruz Vieira'),
('14.8151', 'Giordanio Paulo Barbosa Da Rosa'),
('14.8164', 'Hikmashanty Suci Larasati'),
('14.8194', 'Jezenia Jaqualine Rolian Kareth'),
('14.8217', 'Lukmi Hidayat'),
('14.8231', 'Mazaya Alifah Syadzwina'),
('14.8262', 'Muhammad Novansyah Wahyudi'),
('14.8271', 'Mutia Elyani'),
('14.8290', 'Nizar Zulmi Abimayu'),
('14.8293', 'Novia Triputri. T'),
('14.8309', 'Pandu Elkana Setyawan'),
('14.8313', 'Puput Astutik'),
('14.8333', 'Ravisa Noor'),
('14.8367', 'Saidan Nurhidayat'),
('14.8375', 'Sari Wahyuni'),
('14.8377', 'Septian Karangan Kambubuy'),
('14.8390', 'Sonia Smith Neto Fernandes'),
('14.8420', 'Vitalis Talenta Intan Nada Sastra'),
('14.8428', 'Widya Ardianti'),
('14.8430', 'Willy Onesimus Siagian'),
('14.8445', 'Zainudin Manur'),
('14.8449', 'Zulpanida ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
