
-- Table structure for table pegawai
CREATE TABLE `pegawai` (
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `jenis_kelamin` int(10) NOT NULL DEFAULT '1',
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `mulai_bekerja` date NOT NULL DEFAULT '2005-03-10',
  `alamat` text NOT NULL,
  `kota` varchar(30) NOT NULL,
  `propinsi` varchar(30) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `no_telepon` varchar(15) NOT NULL DEFAULT '021',
  `no_handphone` varchar(15) NOT NULL DEFAULT '08',
  `email` varchar(30) NOT NULL,
  `pegawai_note` text NOT NULL,
  `foto_id` blob NOT NULL,
  `add_by` varchar(20) NOT NULL,
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_by` varchar(20) NOT NULL,
  `edit_date` datetime NOT NULL ,PRIMARY KEY (`pegawai_id`));

-- Insert data for table pegawai
INSERT INTO `pegawai` (`pegawai_id`, `nip`, `nama_pegawai`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `mulai_bekerja`, `alamat`, `kota`, `propinsi`, `kodepos`, `status`, `no_telepon`, `no_handphone`, `email`, `pegawai_note`, `foto_id`, `add_by`, `add_date`, `edit_by`, `edit_date`) VALUES
(1, '200500020', 'Ade Kartono', 1, 'Jakarta', '1978-04-21', '2005-03-13', 'Jl. H. Azra\'i RT.007/01\r\nMenteng Dalam', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Riana', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(2, '200500008', 'Amalia', 2, 'Jakarta', '1978-03-25', '2005-03-10', 'Jl. Ciak RT.004/01 No.18\r\nBukit Duri', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(3, '200500009', 'Arief Budiman', 1, 'Jakarta', '1978-02-11', '2005-03-10', 'Gg. Subur Ujung No.12 RT.012/015\r\nMenteng Atas', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(4, '200500007', 'Balqis', 2, 'Jakarta', '1978-03-13', '2005-03-10', 'Jl. Kampung Melayu Kecil III/14 RT.001/09', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(5, '200500006', 'Endah Suci Rahayu', 2, 'Jakarta', '1978-08-13', '2005-03-10', 'Harapan Indah\r\nJl. Melon VI Blok SM No.2', 'Bekasi', 'Jawa Barat', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(6, '200500004', 'Era Hapsari', 2, 'Jakarta', '1978-07-24', '2005-03-10', 'Jl. Puspa II/2 RT.002/01\r\nSenayan', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(7, '200500005', 'Erny Yulianty', 2, 'Jakarta', '1978-07-08', '2005-03-10', 'Jl. Kampung Melayu Kecil I/31 RT.004/011', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(8, '200500003', 'Euis Herawati', 2, 'Jakarta', '1978-04-01', '2005-03-10', 'Jl. Kalibata Utara III/32 RT.005/02', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(9, '200500002', 'Fitri Rizkiyanti', 2, 'Jakarta', '1976-09-15', '2005-03-10', 'Jl. Kebon Baru V RT.006/09 No.27\r\nTebet', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(10, '200500010', 'Untung Sugianto', 1, 'Semarang', '1967-10-20', '2005-03-10', 'Cinere No.187 Kelapa Sawit Blok E', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:00', '', '0000-00-00 00:00:00'),
(11, '200500012', 'Hasanah', 2, 'Jakarta', '1978-04-29', '2005-03-10', 'Jl. X No.10 RT.004/100\r\nKebon Baru', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:14', '', '0000-00-00 00:00:00'),
(12, '200500014', 'Ira Ekawati', 2, 'Jakarta', '1977-09-07', '2005-03-10', 'Jl. Jatinegara Barat No.13 RT.011/03', 'Jakarta Timur', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:14', '', '0000-00-00 00:00:00'),
(13, '200500013', 'Jerry Manggreno', 1, 'Jakarta', '1978-01-20', '2005-03-10', 'Jl. Minangkabau RT.01/08 No. 1A\r\nManggarai', 'Jakarta Selatan', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:14', '', '0000-00-00 00:00:00'),
(14, '200500011', 'Roskawati', 2, 'Jakarta', '1977-07-04', '2005-03-10', 'Perum Depok Indah I/A No.64 RT.002/09\r\n', 'Depok', 'Jawa Barat', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:14', '', '0000-00-00 00:00:00'),
(15, '200500001', 'Mery Theresia', 2, 'Jakarta', '1976-08-10', '2005-03-10', 'Jl. H. Mochtar Raya No.23\r\nGg. Belimbing RT.002/01\r\nKreo-Lembang', 'Tangerang', 'Banten', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:14', '', '0000-00-00 00:00:00'),
(16, '200500016', 'Aldiles', 0, 'Jakarta', '1978-01-26', '2005-03-10', 'Jl. Turi II RT.03/010\r\nDepok I, Kemiri Muka', 'Depok', 'Jawa Barat', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:27', '', '0000-00-00 00:00:00'),
(17, '200500019', 'Hendi Ekopanto', 1, 'Jakarta', '1978-07-28', '2005-03-10', 'Jl. Tambak II/24 Komp. POLRI Inkopol', 'Jakarta Pusat', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:27', '', '0000-00-00 00:00:00'),
(18, '200500017', 'Arif Fadilah', 1, 'Jakarta', '1977-05-12', '2005-03-10', 'Jl. Penegak No.15 RT.03/02', 'Jakarta Timur', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:27', '', '0000-00-00 00:00:00'),
(19, '200500018', 'Lelly Kusumawati', 2, 'Jakarta', '1977-09-10', '2005-03-10', 'Jl. Jatinegara Barat No.24 RT.05/02', 'Jakarta Timur', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:27', '', '0000-00-00 00:00:00'),
(20, '200500015', 'Abdul Gafar', 1, 'Jakarta', '1978-09-23', '2005-03-10', 'Jl. Lapan III/72 RT.010/01\r\nPekayon, Pasar Rebo', 'Jakarta Timur', 'DKI Jakarta', '', 1, '021', '08', '', '', '', 'Rianto', '2017-07-05 15:05:27', '', '0000-00-00 00:00:00');

