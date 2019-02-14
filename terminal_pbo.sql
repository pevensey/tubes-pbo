-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 02:32 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminal_pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id_bus` varchar(5) NOT NULL,
  `plat` varchar(12) NOT NULL,
  `kapasitas` int(3) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tahun_produksi` int(4) NOT NULL,
  `id_rute` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id_bus`, `plat`, `kapasitas`, `kelas`, `tahun_produksi`, `id_rute`) VALUES
('B0011', 'BE 2090 GI', 60, 'EKONOMI', 2012, 'R0001'),
('B0012', 'BE 9210 YI', 60, 'EKONOMI', 2012, 'R0002'),
('B0013', 'BE 5002 ZQ', 60, 'EKONOMI', 2013, 'R0003'),
('B0014', 'BE 2902 QI', 60, 'EKONOMI', 2014, 'R0004'),
('B0015', 'BE 2087 AG', 60, 'EKONOMI', 2015, 'R0005'),
('B0016', 'BE 5085 ZE', 60, 'EKSEKUTIF', 2015, 'R0007'),
('B0017', 'BE 7604 AE', 60, 'EKSEKUTIF', 2016, 'R0007'),
('B0018', 'BE 5608 GY', 60, 'EKSEKUTIF', 2016, 'R0008'),
('B0019', 'BE 4221 CG', 60, 'EKSEKUTIF', 2016, 'R0006'),
('B0020', 'BE 3487 KG', 60, 'EKSEKUTIF', 2017, 'R0003');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` varchar(5) NOT NULL,
  `hari_tgl` varchar(30) NOT NULL,
  `jam` time NOT NULL,
  `id_supir` varchar(4) NOT NULL,
  `id_bus` varchar(5) NOT NULL,
  `id_rute` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari_tgl`, `jam`, `id_supir`, `id_bus`, `id_rute`) VALUES
('J1001', 'Senin, 16 April 2018', '08:36:00', 'S001', 'B0011', 'R0002'),
('J1002', 'Senin, 23 April 2018', '08:36:00', 'S009', 'B0018', 'R0002'),
('J1003', 'Senin, 30 April 2018', '08:36:00', 'S003', 'B0020', 'R0006'),
('J2004', 'Selasa, 17 April 2018', '07:45:00', 'S004', 'B0017', 'R0004'),
('J2005', 'Selasa, 24 April 2018', '07:45:00', 'S009', 'B0015', 'R0005'),
('J2006', 'Selasa, 01 Mei 2018', '07:45:00', 'S006', 'B0013', 'R0001'),
('J3007', 'Rabu, 18 April 2018', '09:00:00', 'S002', 'B0016', 'R0007'),
('J3008', 'Rabu, 02 April 2018', '09:00:00', 'S008', 'B0020', 'R0008'),
('J3009', 'Kamis, 19 April 2018', '08:00:00', 'S003', 'B0012', 'R0005'),
('J3010', 'Kamis, 26 April 2018', '08:30:00', 'S010', 'B0011', 'R0004'),
('J3011', 'Jumat, 20 April 2018', '08:00:00', 'S005', 'B0019', 'R0003'),
('J3012', 'Sabtu, 21 April 2018', '09:00:00', 'S007', 'B0014', 'R0001');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `nomor_kursi` varchar(3) NOT NULL,
  `kapasitas` varchar(10) NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `id_bus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`nomor_kursi`, `kapasitas`, `kondisi`, `id_bus`) VALUES
('01', '60 bangku', 'baik', 'B0012'),
('02', '61 bangku', 'baik', 'B0018'),
('03', '62 bangku', 'baik', 'B0015'),
('04', '63 bangku', 'baik', 'B0012'),
('05', '64 bangku', 'baik', 'B0016'),
('06', '65 bangku', 'baik', 'B0017'),
('07', '66 bangku', 'baik', 'B0014'),
('08', '67 bangku', 'baik', 'B0019'),
('09', '68 bangku', 'baik', 'B0013'),
('10', '69 bangku', 'baik', 'B0011'),
('11', '60 bangku', 'baik', 'B0018'),
('12', '60 bangku', 'baik', 'B0020'),
('13', '60 bangku', 'baik', 'B0017'),
('14', '60 bangku', 'baik', 'B0015'),
('15', '60 bangku', 'baik', 'B0019'),
('16', '60 bangku', 'baik', 'B0016'),
('17', '60 bangku', 'baik', 'B0020'),
('18', '60 bangku', 'baik', 'B0012'),
('19', '60 bangku', 'baik', 'B0011'),
('20', '60 bangku', 'baik', 'B0019');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `kode_user` varchar(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(18) NOT NULL,
  `e-mail` varchar(40) NOT NULL,
  `no_telp` int(13) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`kode_user`, `nama`, `password`, `e-mail`, `no_telp`, `alamat`, `jenis_kelamin`) VALUES
('U001', 'META YULIA', 'PUmetaa1_', 'PUmetaa1_@gmail.com', 2147483647, 'Jl. Pahlawan No 31 Bandar Lampung', 'P'),
('U002', 'NIKEN RAMA', 'PUNikk_6_', 'PUNikk_6@gmail.com', 2147483647, 'Jl. Teuku Umar No 198 Bandar Lampung', 'P'),
('U003', 'Mery Anggun', 'PUMery-2', 'PUMery-2@gmail.com', 2147483647, 'Jl. Pulau Seram No 190 Bandar Lampung', 'P'),
('U004', 'Bayu Saputra', 'PUBayu.4', 'PUBayu.4@gmail.com', 2147483647, 'Jl. Dr. Sam Ratulangi No 509 Bandar Lampung', 'L'),
('U005', 'Reza Anugerah', 'PUReza_8', 'PUReza_8@gmail.com', 2147483647, 'Jl. Pahlawan No 189 Bandar Lampung', 'L'),
('U006', 'David Mulyadi', 'PUDedi-21', 'PUDedi-21@gmail.com', 2147483647, 'Jl. Adipura no 98 Bandar Lampung', 'L'),
('U007', 'Kristiawan', 'PUKris_7', 'PUKris_7@gmail.com', 2147483647, 'Jl.Urip Sumoharjo no 67 Bandar Lampung', 'L'),
('U008', 'Reva Febriani', 'PURee-8', 'PURee-8@gmail.com', 2147483647, 'Jl. Danau Toba No 49 Bandar Lampung', 'P'),
('U009', 'Wahyu Saputra', 'PUWahyu_0', 'PUWahyu_0@gmail.com', 2147483647, 'Jl. Sultan Agung No 197 Bandar Lampung', 'L'),
('U010', 'Geri Pamungkas', 'PU_78q', 'PU_78q@gmail.com', 2147483647, 'Jl. Sultan Agung No 1107 Bandar Lampung', 'L'),
('U011', 'Seli Fitriani', 'PU-sel2', 'PU-sel2@gmail.com', 2147483647, 'Jl. Teuku Umar No 286 Bandar Lampung', 'P'),
('U012', 'Ahmad Zainudin', 'PU2232_', 'PU2232_@gmail.com', 2147483647, 'Jl. Gatot Subroto No.134 Bandar Lampung', 'L'),
('U013', 'Rani Maharani', 'PU2817_', 'PU2817_@gmail.com', 2147483647, 'Jl. Kusuma Bangsa No.89 Bandar Lampung', 'P'),
('U014', 'Rena Melia', 'PUrena-1', 'PUrena-1@gmail.com', 2147483647, 'Jl. Arif Rahman Hakin Sukarame Bandar Lampung', 'P'),
('U015', 'Berta Mahendra', 'PUberta.5', 'PUberta.5@gmail.com', 2147483647, 'Perum Korpri No.99 Sukarame Bandar Lampung', 'L'),
('U016', 'Fika Mareta', 'PUfikk_1', 'PUfikk_1@gmail.com', 2147483647, 'Jl. Perumahan Damai No.76 WayKandis Bandar Lampung', 'P'),
('U017', 'Deva Aprilio', 'PU0601-_', 'PU0601-_@gmail.com', 2147483647, 'Jl. Raya Kecapi Kalianda Lampung Selatan', 'L'),
('U018', 'Anisa', 'PUnisa_', 'PUnisa_@gmail.com', 2147483647, 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', 'P'),
('U019', 'Andika Martin', 'PU2009_', 'PU2009_@gmail.com', 2147483647, 'Jl. Kusuma Bangsa No.111 Bandar Lampung', 'L'),
('U020', 'Adi Firdaus', 'PUdaus-8', 'PUdaus-8@gmail.com', 2147483647, 'Jl. Putri Dibalau Antasari Bandar Lampung', 'L'),
('U021', 'Dika Ramadani', 'PUadik.8', 'PUadik.8@gmail.com', 2147483647, 'Jl. Gajah Mada No. 49 Bandar Lampung', 'L'),
('U022', 'Yuli Anisa', 'PUyuli_1', 'PUyuli_1@gmail.com', 2147483647, 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `id_rute` varchar(5) NOT NULL,
  `asal` varchar(20) NOT NULL,
  `tujuan` varchar(20) NOT NULL,
  `jarak` varchar(10) NOT NULL,
  `waktu_tempuh` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--

INSERT INTO `rute` (`id_rute`, `asal`, `tujuan`, `jarak`, `waktu_tempuh`) VALUES
('R0001', 'BANDAR LAMPUNG', 'LAMPUNG SELATAN', '51 KM', '1 JAM 45 MENIT'),
('R0002', 'BANDAR LAMPUNG', 'METRO', '33 KM', '1 JAM 14 MENIT'),
('R0003', 'BANDAR LAMPUNG', 'LAMPUNG BARAT', '220 KM', '5 JAM 18 MENIT'),
('R0004', 'BANDAR LAMPUNG', 'LAMPUNG TENGAH', '82 KM', '2 JAM 40 MENIT'),
('R0005', 'BANDAR LAMPUNG', 'LAMPUNG TIMUR', '92 KM', '2 JAM 32 MENIT'),
('R0006', 'BANDAR LAMPUNG', 'PRABUMULIH', '371 KM', '8 JAM 21 MENIT'),
('R0007', 'BANDAR LAMPUNG', 'PADANG', '1091 KM', '22 JAM 9 MENIT'),
('R0008', 'BANDAR LAMPUNG', 'PALEMBANG', '1091 KM', '11 JAM');

-- --------------------------------------------------------

--
-- Table structure for table `supir`
--

CREATE TABLE `supir` (
  `id_supir` varchar(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` int(13) NOT NULL,
  `id_bus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supir`
--

INSERT INTO `supir` (`id_supir`, `nama`, `alamat`, `no_telp`, `id_bus`) VALUES
('S001', 'Doni Cahyo', 'Jl. Gatot Subroto No.14 Sumatera Selatan', 2147483647, 'B0018'),
('S002', 'Alfin Ramadhan', 'Jl. Imam Bonjol No. 234 Bandar Lampung', 2147483647, 'B0015'),
('S003', 'Dio Pambudi', 'Jl. Nusantara No.01 Sumatera Barat', 2147483647, 'B0012'),
('S004', 'Adi Sulastra', 'Jl. Airan Raya No. 32 Lampung Barat', 2147483647, 'B0016'),
('S005', 'Mahesa Pamungkas', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', 2147483647, 'B0017'),
('S006', 'Aziz Juliansyah', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', 2147483647, 'B0014'),
('S007', 'Dika Wibowo', 'Jl. Putri Dibalau Antasari Bandar Lampung', 2147483647, 'B0019'),
('S008', 'Komang Haryadi', 'Jl. Gajah Mada No. 49 Sumatera Barat', 2147483647, 'B0013'),
('S009', 'Reza Adila', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', 2147483647, 'B0011'),
('S010', 'Jore Ardiansyah', 'Jl. Airan Raya No. 78 Lampung Selatan', 2147483647, 'B0020');

-- --------------------------------------------------------

--
-- Table structure for table `table 8`
--

CREATE TABLE `table 8` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(16) DEFAULT NULL,
  `COL 4` varchar(52) DEFAULT NULL,
  `COL 5` varchar(19) DEFAULT NULL,
  `COL 6` varchar(14) DEFAULT NULL,
  `COL 7` varchar(52) DEFAULT NULL,
  `COL 8` varchar(13) DEFAULT NULL,
  `COL 9` varchar(6) DEFAULT NULL,
  `COL 10` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 8`
--

INSERT INTO `table 8` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`) VALUES
('Bus', '', '', '', '', '', '', '', '', NULL),
('No', 'Id bus', 'Plat', 'Kapasitas', 'Kelas', 'Tgl Produksi', 'Id Rute', '', '', NULL),
('1', 'B0011', 'BE 2090 GI', '60', 'EKONOMI', '2012', 'R0001', '', '', NULL),
('2', 'B0012', 'BE 9210 YI', '60', 'EKONOMI', '2012', 'R0002', '', '', NULL),
('3', 'B0013', 'BE 5002 ZQ', '60', 'EKONOMI', '2013', 'R0002', '', '', NULL),
('4', 'B0014', 'BG 2902 QI', '60', 'EKONOMI', '2014', 'R0004', '', '', NULL),
('5', 'B0015', 'BG 2087 AG', '60', 'EKONOMI', '2015', 'R0005', '', '', NULL),
('6', 'B0016', 'BA 5085 ZE', '60', 'EKSEKUTIF', '2015', 'R0007', '', '', NULL),
('7', 'B0017', 'BA 7604 AE', '60', 'EKSEKUTIF', '2016', 'R0007', '', '', NULL),
('8', 'B0018', 'BD 5608 GY', '60', 'EKSEKUTIF', '2016', 'R0008', '', '', NULL),
('9', 'B0019', 'BD 4221 CG', '60', 'EKSEKUTIF', '2016', 'R0006', '', '', NULL),
('10', 'B0020', 'BD 3487 KG', '60', 'EKSEKUTIF', '2017', 'R0003', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('PENUMPANG', '', '', '', '', '', '', '', '', NULL),
('No', 'Kode User', 'Nama', 'Password', 'E-Mail', 'No Telp', 'Alamat', 'Jenis Kelamin', 'Id Bus', NULL),
('1', 'U001', 'Meta Yulia', 'PUmetaa1_', 'PUmetaa1_@gmail.com', '082317372821', 'Jl. Pahlawan No 31 Bandar Lampung', 'P', 'B0011', NULL),
('2', 'U002', 'Niken Rama', 'PUNikk_6', 'PUNikk_6@gmail.com', '085717372821', 'Jl. Teuku Umar No 198 Bandar Lampung', 'P', 'B0012', NULL),
('3', 'U003', 'Mery Anggun', 'PUMery-2', 'PUMery-2@gmail.com', '082217372829', 'Jl. Pulau Seram No 190 Bandar Lampung', 'P', 'B0018', NULL),
('4', 'U004', 'Bayu Saputra', 'PUBayu.4', 'PUBayu.4@gmail.com', '082317372889', 'Jl. Dr. Sam Ratulangi No 509 Bandar Lampung', 'L', 'B0015', NULL),
('5', 'U005', 'Reza Anugerah', 'PUReza_8', 'PUReza_8@gmail.com', '089917372861', 'Jl. Pahlawan No 189 Bandar Lampung', 'L', 'B0012', NULL),
('6', 'U006', 'David Mulyadi', 'PUDedi-21', 'PUDedi-21@gmail.com', '087717672828', 'Jl. Adipura no 98 Bandar Lampung', 'L', 'B0016', NULL),
('7', 'U007', 'Kristiawan', 'PUKris_7', 'PUKris_7@gmail.com', '085647372832', 'Jl.Urip Sumoharjo no 67 Bandar Lampung', 'L', 'B0017', NULL),
('8', 'U008', 'Reva Febriani', 'PURee-8', 'PURee-8@gmail.com', '082217372821', 'Jl. Danau Toba No 49 Bandar Lampung', 'P', 'B0014', NULL),
('9', 'U009', 'Wahyu Saputra', 'PUWahyu_0', 'PUWahyu_0@gmail.com', '089617372829', 'Jl. Sultan Agung No 197 Bandar Lampung', 'L', 'B0019', NULL),
('10', 'U010', 'Geri Pamungkas', 'PU_78q', 'PU_78q@gmail.com', '082117372890', 'Jl. Sultan Agung No 1107 Bandar Lampung', 'L', 'B0013', NULL),
('11', 'U011', 'Seli Fitriani', 'PU-sel2', 'PU-sel2@gmail.com', '082317372866', 'Jl. Teuku Umar No 286 Bandar Lampung', 'P', 'B0011', NULL),
('12', 'U012', 'Ahmad Zainudin', 'PU2232_', 'PU2232_@gmail.com', '082317372821', 'Jl. Gatot Subroto No.134 Bandar Lampung', 'L', 'B0018', NULL),
('13', 'U013', 'Rani Maharani', 'PU2817_', 'PU2817_@gmail.com', '082327372887', 'Jl. Kusuma Bangsa No.89 Bandar Lampung', 'P', 'B0020', NULL),
('14', 'U014', 'Rena Melia', 'PUrena-1', 'PUrena-1@gmail.com', '082237372567', 'Jl. Arif Rahman Hakin Sukarame Bandar Lampung', 'P', 'B0017', NULL),
('15', 'U015', 'Berta Mahendra', 'PUberta.5', 'PUberta.5@gmail.com', '082147375454', 'Perum Korpri No.99 Sukarame Bandar Lampung', 'L', 'B0015', NULL),
('16', 'U016', 'Fika Mareta', 'PUfikk_1', 'PUfikk_1@gmail.com', '085657372824', 'Jl. Perumahan Damai No.76 WayKandis Bandar Lampung', 'P', 'B0019', NULL),
('17', 'U017', 'Deva Aprilio', 'PU0601-_', 'PU0601-_@gmail.com', '082167372826', 'Jl. Raya Kecapi Kalianda Lampung Selatan', 'L', 'B0016', NULL),
('18', 'U018', 'Anisa ', 'PUnisa_', 'PUnisa_@gmail.com', '087777372889', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', 'P', 'B0020', NULL),
('19', 'U019', 'Andika Martin', 'PU2009_', 'PU2009_@gmail.com', '081287372812', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', 'L', 'B0012', NULL),
('20', 'U020', 'Adi Firdaus', 'PUdaus-8', 'PUdaus-8@gmail.com', '082239737282', 'Jl. Putri Dibalau Antasari Bandar Lampung', 'L', 'B0011', NULL),
('21', 'U021', 'Dika Ramadani', 'PUadik.8', 'PUadik.8@gmail.com', '0856 73728210', 'Jl. Gajah Mada No. 49 Bandar Lampung', 'L', 'B0019', NULL),
('22', 'U022', 'Yuli Anisa', 'PUyuli_1', 'PUyuli_1@gmail.com', '08231173728211', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', 'P', 'B0014', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('SUPIR', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Supir', 'Nama', 'Alamat', 'No Telp', 'Id Bus', '', '', '', NULL),
('1', 'S001', 'Doni Cahyo', 'Jl. Gatot Subroto No.14 Sumatera Selatan', '082278764347', 'B0018', '', '', '', NULL),
('2', 'S002', 'Alfin Ramadhan', 'Jl. Imam Bonjol No. 234 Bandar Lampung', '085734245434', 'B0015', '', '', '', NULL),
('3', 'S003', 'Dio Pambudi', 'Jl. Nusantara No.01 Sumatera Barat', '089634676789', 'B0012', '', '', '', NULL),
('4', 'S004', 'Adi Sulastra', 'Jl. Airan Raya No. 32 Lampung Barat', '082198983208', 'B0016', '', '', '', NULL),
('5', 'S005', 'Mahesa Pamungkas', 'Jl. Ratu Dibalau No.12 Tanjung Senang Bandar Lampung', '085689890321', 'B0017', '', '', '', NULL),
('6', 'S006', 'Aziz Juliansyah', 'Jl. Kusuma Bangsa No.111 Bandar Lampung', '082334354356', 'B0014', '', '', '', NULL),
('7', 'S007', 'Dika Wibowo', 'Jl. Putri Dibalau Antasari Bandar Lampung', '089978780956', 'B0019', '', '', '', NULL),
('8', 'S008', 'Komang Haryadi', 'Jl. Gajah Mada No. 49 Sumatera Barat', '085657879700', 'B0013', '', '', '', NULL),
('9', 'S009', 'Reza Adila', 'Jl. Bulau Bacan No.99 Pasar Tugu Bandar Lampung', '089853230322', 'B0011', '', '', '', NULL),
('10', 'S010', 'Jore Ardiansyah', 'Jl. Airan Raya No. 78 Lampung Selatan', '089634254524', 'B0020', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('JADWAL', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Jadwal', '"Hari', ' tgl"', 'Jam', 'Id Supir', 'Id Bus', 'Id Rute', '', ''),
('1', 'J1001', '"Senin', ' 16 April 2018"', '08:36:00', 'S001', 'B0011', 'R0002', '', ''),
('2', 'J1002', '"Senin', ' 23 April 2018"', '08:36:00', 'S009', 'B0018', 'R0002', '', ''),
('3', 'J1003', '"Senin', ' 30 April 2018"', '08:36:00', 'S003', 'B0020', 'R0006', '', ''),
('4', 'J2004', '"Selasa', ' 17 April 2018"', '07:45:00', 'S004', 'B0017', 'R0004', '', ''),
('5', 'J2005', '"Selasa', ' 24 April 2018"', '07:45:00', 'S009', 'B0015', 'R0005', '', ''),
('6', 'J2006', '"Selasa', ' 01 Mei 2018"', '07:45:00', 'S006', 'B0013', 'R0001', '', ''),
('7', 'J3007', '"Rabu', ' 18 April 2018"', '09:00:00', 'S002', 'B0016', 'R0007', '', ''),
('8', 'J3008', '"Rabu', ' 02 April 2018"', '09:00:00', 'S008', 'B0020', 'R0008', '', ''),
('9', 'J3009', '"Kamis', ' 19 April 2018"', '08:00:00', 'S003', 'B0012', 'R0005', '', ''),
('10', 'J3010', '"Kamis', ' 26 April 2018"', '08:30:00', 'S010', 'B0011', 'R0004', '', ''),
('11', 'J3011', '"Jumat', ' 20 April 2018"', '08:00:00', 'S005', 'B0019', 'R0003', '', ''),
('12', 'J3012', '"Sabtu', ' 21 April 2018"', '09:00:00', 'S007', 'B0014', 'R0001', '', ''),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('RUTE', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Rute', 'Asal', 'Tujuan', 'Jarak', 'Waktu Tempuh', '', '', '', NULL),
('1', 'R0001', 'Bandar Lampung', 'Lampung Selatan', '51 KM', '1 jam 45 menit', '', '', '', NULL),
('2', 'R0002', 'Bandar Lampung', 'Palembang', '375 KM', '9 jam 43 menit', '', '', '', NULL),
('3', 'R0003', 'Bandar Lampung', 'Lampung Barat', '220 KM', '5 jam 18 menit', '', '', '', NULL),
('4', 'R0004', 'Bandar Lampung', 'Lampung Tengah', '82 KM', '2 jam 40 menit', '', '', '', NULL),
('5', 'R0005', 'Bandar Lampung', 'Lampung Timur', '92 KM', '2 jam 32 menit', '', '', '', NULL),
('6', 'R0006', 'Bandar Lampung', 'Prabumulih', '371 KM', '8 jam 21 menit', '', '', '', NULL),
('7', 'R0007', 'Bandar Lampung', 'Padang', '1091 KM', '22 jam 9 menit', '', '', '', NULL),
('8', 'R0008', 'Bandar Lampung', 'Lampung Barat', '220 KM', '5 jam 18 menit', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('Kursi', '', '', '', '', '', '', '', '', NULL),
('No', 'Nomor Kursi', 'Kapasitas', 'Kondisi', 'Id Bus', '', '', '', '', NULL),
('1', '001', '60 bangku', 'baik', 'B0012', '', '', '', '', NULL),
('2', '002', '61 bangku', 'baik', 'B0018', '', '', '', '', NULL),
('3', '003', '62 bangku', 'baik', 'B0015', '', '', '', '', NULL),
('4', '004', '63 bangku', 'baik', 'B0012', '', '', '', '', NULL),
('5', '005', '64 bangku', 'baik', 'B0016', '', '', '', '', NULL),
('6', '006', '65 bangku', 'baik', 'B0017', '', '', '', '', NULL),
('7', '007', '66 bangku', 'baik', 'B0014', '', '', '', '', NULL),
('8', '008', '67 bangku', 'baik', 'B0019', '', '', '', '', NULL),
('9', '009', '68 bangku', 'baik', 'B0013', '', '', '', '', NULL),
('10', '010', '69 bangku', 'baik', 'B0011', '', '', '', '', NULL),
('11', '011', '60 bangku', 'baik', 'B0018', '', '', '', '', NULL),
('12', '012', '60 bangku', 'baik', 'B0020', '', '', '', '', NULL),
('13', '013', '60 bangku', 'baik', 'B0017', '', '', '', '', NULL),
('14', '014', '60 bangku', 'baik', 'B0015', '', '', '', '', NULL),
('15', '015', '60 bangku', 'baik', 'B0019', '', '', '', '', NULL),
('16', '016', '60 bangku', 'baik', 'B0016', '', '', '', '', NULL),
('17', '017', '60 bangku', 'baik', 'B0020', '', '', '', '', NULL),
('18', '018', '60 bangku', 'baik', 'B0012', '', '', '', '', NULL),
('19', '019', '60 bangku', 'baik', 'B0011', '', '', '', '', NULL),
('20', '020', '60 bangku', 'baik', 'B0019', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('', '', '', '', '', '', '', '', '', NULL),
('TIKET', '', '', '', '', '', '', '', '', NULL),
('No', 'Id Tiket', 'Id Jadwal', 'Id Rute', 'Id Bus', 'Id Kursi', 'Id User', '', '', NULL),
('1', 'T0001', 'J1001', 'R0001', 'B0014', '001', 'U001', '', '', NULL),
('2', 'T0002', 'J1002', 'R0002', 'B0018', '002', 'U002', '', '', NULL),
('3', 'T0003', 'J3008', 'R0002', 'B0015', '003', 'U003', '', '', NULL),
('4', 'T0004', 'J2004', 'R0004', 'B0012', '020', 'U004', '', '', NULL),
('5', 'T0005', 'J3009', 'R0005', 'B0016', '005', 'U005', '', '', NULL),
('6', 'T0006', 'J2006', 'R0007', 'B0017', '006', 'U006', '', '', NULL),
('7', 'T0007', 'J1003', 'R0007', 'B0014', '007', 'U007', '', '', NULL),
('8', 'T0008', 'J1001', 'R0008', 'B0019', '008', 'U008', '', '', NULL),
('9', 'T0009', 'J3009', 'R0006', 'B0013', '009', 'U009', '', '', NULL),
('10', 'T0010', 'J3010', 'R0003', 'B0011', '010', 'U010', '', '', NULL),
('11', 'T0011', 'J2005', 'R0006', 'B0018', '001', 'U011', '', '', NULL),
('12', 'T0012', 'J3012', 'R0004', 'B0020', '012', 'U012', '', '', NULL),
('13', 'T0013', 'J3011', 'R0005', 'B0017', '013', 'U013', '', '', NULL),
('14', 'T0014', 'J3008', 'R0001', 'B0015', '014', 'U014', '', '', NULL),
('15', 'T0015', 'J2004', 'R0007', 'B0019', '008', 'U015', '', '', NULL),
('16', 'T0016', 'J3007', 'R0008', 'B0016', '015', 'U016', '', '', NULL),
('17', 'T0017', 'J2005', 'R0005', 'B0014', '011', 'U017', '', '', NULL),
('18', 'T0018', 'J3012', 'R0004', 'B0012', '018', 'U018', '', '', NULL),
('19', 'T0019', 'J3011', 'R0003', 'B0011', '019', 'U019', '', '', NULL),
('20', 'T0020', 'J3010', 'R0001', 'B0018', '004', 'U020', '', '', NULL),
('21', 'T0021', 'J2006', 'R0008', 'B0015', '005', 'U021', '', '', NULL),
('22', 'T0022', 'J1003', 'R0003', 'B0014', '016', 'U022', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` varchar(5) NOT NULL,
  `id_jadwal` varchar(5) NOT NULL,
  `id_rute` varchar(5) NOT NULL,
  `id_bus` varchar(5) NOT NULL,
  `nomor_kursi` varchar(3) NOT NULL,
  `kode_user` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_jadwal`, `id_rute`, `id_bus`, `nomor_kursi`, `kode_user`) VALUES
('T0001', 'J1001', 'R0001', 'B0014', '01', 'U001'),
('T0002', 'J1002', 'R0002', 'B0018', '02', 'U002'),
('T0003', 'J3008', 'R0002', 'B0015', '03', 'U003'),
('T0004', 'J2004', 'R0004', 'B0012', '20', 'U004'),
('T0005', 'J3009', 'R0005', 'B0016', '05', 'U005'),
('T0006', 'J2006', 'R0007', 'B0017', '06', 'U006'),
('T0007', 'J1003', 'R0007', 'B0014', '07', 'U007'),
('T0008', 'J1001', 'R0008', 'B0019', '08', 'U008'),
('T0009', 'J3009', 'R0006', 'B0013', '09', 'U009'),
('T0010', 'J3010', 'R0003', 'B0011', '10', 'U010'),
('T0011', 'J2005', 'R0006', 'B0018', '01', 'U011'),
('T0012', 'J3012', 'R0004', 'B0020', '12', 'U012'),
('T0013', 'J3011', 'R0005', 'B0017', '13', 'U013'),
('T0014', 'J3008', 'R0001', 'B0015', '14', 'U014'),
('T0015', 'J2004', 'R0007', 'B0019', '08', 'U015'),
('T0016', 'J3007', 'R0008', 'B0016', '15', 'U016'),
('T0017', 'J2005', 'R0005', 'B0014', '11', 'U017'),
('T0018', 'J3012', 'R0004', 'B0012', '08', 'U018'),
('T0019', 'J3011', 'R0003', 'B0011', '19', 'U019'),
('T0020', 'J3010', 'R0001', 'B0018', '04', 'U020'),
('T0021', 'J2006', 'R0008', 'B0015', '05', 'U021'),
('T0022', 'J1003', 'R0003', 'B0014', '16', 'U022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`),
  ADD KEY `id_rute` (`id_rute`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_rute` (`id_rute`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_supir` (`id_supir`);

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`nomor_kursi`),
  ADD KEY `id_bus` (`id_bus`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id_rute`);

--
-- Indexes for table `supir`
--
ALTER TABLE `supir`
  ADD UNIQUE KEY `id supir` (`id_supir`),
  ADD KEY `id_bus` (`id_bus`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `nomor_kursi` (`nomor_kursi`),
  ADD KEY `kode_user` (`kode_user`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_rute` (`id_rute`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id_rute`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id_rute`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`);

--
-- Constraints for table `kursi`
--
ALTER TABLE `kursi`
  ADD CONSTRAINT `kursi_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`),
  ADD CONSTRAINT `kursi_ibfk_2` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`);

--
-- Constraints for table `supir`
--
ALTER TABLE `supir`
  ADD CONSTRAINT `supir_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`);

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`nomor_kursi`) REFERENCES `kursi` (`nomor_kursi`),
  ADD CONSTRAINT `tiket_ibfk_2` FOREIGN KEY (`kode_user`) REFERENCES `penumpang` (`kode_user`),
  ADD CONSTRAINT `tiket_ibfk_3` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`),
  ADD CONSTRAINT `tiket_ibfk_4` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`),
  ADD CONSTRAINT `tiket_ibfk_5` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id_rute`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
