-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2016 at 03:48 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdp2015`
--
CREATE DATABASE IF NOT EXISTS `sdp2015` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sdp2015`;

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id` varchar(15) NOT NULL,
  `informasi_beasiswa_nama_beasiswa` varchar(30) NOT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL,
  `tanggal_create` date NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `biodata_verifikasi`
--

CREATE TABLE `biodata_verifikasi` (
  `id` varchar(20) NOT NULL,
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `calon_mahasiswa` varchar(1) NOT NULL DEFAULT '1',
  `nama` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `status_sosial` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `nomor_hp` varchar(12) NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `alamat_wali` varchar(50) NOT NULL,
  `provinsi_wali` varchar(30) NOT NULL,
  `kota_wali` varchar(30) NOT NULL,
  `nomor_telp_wali` varchar(12) NOT NULL,
  `pekerjaan_wali` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata_verifikasi`
--

INSERT INTO `biodata_verifikasi` (`id`, `nomor_registrasi_id`, `calon_mahasiswa`, `nama`, `kewarganegaraan`, `status_sosial`, `agama`, `alamat`, `provinsi`, `kota`, `kodepos`, `nomor_hp`, `nama_wali`, `alamat_wali`, `provinsi_wali`, `kota_wali`, `nomor_telp_wali`, `pekerjaan_wali`) VALUES
('60NFZajeG07IESWBfr6H', '1f11vf', '1', 'Nugroho Limantara Sudrajat', 'WNI', 'single', 'kristen', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '65888', '08123522626', 'Setiawan Limantara', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '08722526535', 'Swasta'),
('c2Rmkh8UOcWHGW5Blrhw', 'v3G2NU', '0', 'Julie Gardner', 'WNA', 'single', 'kristen', '28 Westend Park', 'banten', 'cilegon', '75251', '1-(469)297-3', 'Marilyn Cook', '52175 Logan Circle', 'daerah istimewa yogyakarta', 'yogyakarta', '1-(405)342-3', 'pengusaha'),
('FnTJXC2Kkc26b9hjuCYW', 'v3G2NU', '0', 'Julie Gardner', 'WNA', 'single', 'kristen', '28 Westend Park', 'banten', 'cilegon', '75251', '1-(469)297-3', 'Marilyn Cook', '52175 Logan Circle', 'daerah istimewa yogyakarta', 'yogyakarta', '1-(405)342-3', 'pengusaha'),
('rswTdWt8qMO3XjuEz2jh', 'v3G2NU', '0', 'Julie Gardner', 'WNA', 'single', 'hindu', '28 Westend Park', 'banten', 'cilegon', '75251', '1-(469)297-3', 'Marilyn Cook', '52175 Logan Circle', 'jawa timur', 'batu', '1-(405)342-3', 'pengusaha'),
('sHmt0lydqbbHVXF05ZNo', 'v3G2NU', '0', 'Julie Gardner', 'WNA', 'single', 'katolik', '28 Westend Park', 'bengkulu', 'bengkulu', '75251', '1-(469)297-3', 'Marilyn Cook', '52175 Logan Circle', 'daerah istimewa yogyakarta', 'yogyakarta', '1-(405)342-3', 'pengusaha'),
('v05cBoRcCDGEYsrjFbfk', '1f11vf', '1', 'Nugroho Limantara Sudrajat', 'WNI', 'single', 'kristen', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '65888', '08123522626', 'Setiawan Limantara', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '08722526535', 'Swasta');

-- --------------------------------------------------------

--
-- Table structure for table `calon_mahasiswa`
--

CREATE TABLE `calon_mahasiswa` (
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `status_sosial` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kodepos` varchar(5) DEFAULT NULL,
  `nomor_hp` varchar(12) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `rapor` varchar(100) DEFAULT NULL,
  `nilai_mat` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nilai_inggris` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nilai_rata_rata` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `akte_kelahiran` varchar(100) DEFAULT NULL,
  `kartu_keluarga` varchar(100) DEFAULT NULL,
  `nama_sekolah` varchar(30) DEFAULT NULL,
  `alamat_sekolah` varchar(50) DEFAULT NULL,
  `provinsi_sekolah` varchar(30) DEFAULT NULL,
  `kota_sekolah` varchar(30) DEFAULT NULL,
  `kodepos_sekolah` varchar(6) DEFAULT NULL,
  `nomor_telp_sekolah` varchar(12) DEFAULT NULL,
  `relasi` varchar(1) DEFAULT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `alamat_wali` varchar(50) DEFAULT NULL,
  `provinsi_wali` varchar(30) DEFAULT NULL,
  `kota_wali` varchar(30) DEFAULT NULL,
  `kodepos_wali` varchar(6) DEFAULT NULL,
  `nomor_telp_wali` varchar(12) DEFAULT NULL,
  `pekerjaan_wali` varchar(30) DEFAULT NULL,
  `skhun` varchar(100) DEFAULT NULL,
  `ijazah` varchar(100) DEFAULT NULL,
  `informasi_kurikulum_id` varchar(8) DEFAULT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calon_mahasiswa`
--

INSERT INTO `calon_mahasiswa` (`nomor_registrasi_id`, `email`, `password`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `kewarganegaraan`, `status_sosial`, `agama`, `alamat`, `provinsi`, `kota`, `kodepos`, `nomor_hp`, `foto`, `rapor`, `nilai_mat`, `nilai_inggris`, `nilai_rata_rata`, `akte_kelahiran`, `kartu_keluarga`, `nama_sekolah`, `alamat_sekolah`, `provinsi_sekolah`, `kota_sekolah`, `kodepos_sekolah`, `nomor_telp_sekolah`, `relasi`, `nama_wali`, `alamat_wali`, `provinsi_wali`, `kota_wali`, `kodepos_wali`, `nomor_telp_wali`, `pekerjaan_wali`, `skhun`, `ijazah`, `informasi_kurikulum_id`, `tanggal_create`, `status`) VALUES
('13g31g', 'bagas@yhz.biz', '123456', 'Bagas Dirgantara', 'L', 'bekasi', '1995-09-03', 'WNI', 'single', 'islam', 'Jl. MH. Thamrin Kav. 105, Lippo Cikarang', 'jawa barat', 'bekasi', '61421', '08125235232', '13g31g-Foto', '13g31g-Rapor', 78, 70, 74, '13g31g-akteKelahiran', '13g31g-kartuKeluarga', 'SMA 105', 'Jl. MH. Thamrin Kav. 105, Lippo Cikarang', 'jawa barat', 'bekasi', '65121', '0215635365', 'O', 'Mohammad Fajar', 'Jl. MH. Thamrin Kav. 105, Lippo Cikarang', 'jawa barat', 'bekasi', '65111', '08785124353', 'Swasta', NULL, NULL, 'D3INF153', '2015-12-18 22:14:12', 0),
('1f11vf', 'nugroho@yhg.biz', '123456', 'Nugroho Limantara Sudrajat', 'L', 'surabaya', '1995-11-10', 'WNI', 'single', 'kristen', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '65888', '08123522626', '1f11vf-Foto', '1f11vf-Rapor', 81, 89, 85, '1f11vf-akteKelahiran', '1f11vf-kartuKeluarga', 'SMA 121', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '65888', '031526466', 'O', 'Setiawan Limantara', 'Jl. Dharmahusada 121, Surabaya', 'jawa timur', 'surabaya', '65888', '08722526535', 'Swasta', '1f11vf-skhun.jpg', '1f11vf-ijazah.jpg', 'S1IND152', '2015-12-18 23:01:59', 1),
('1f1gg7', 'fajar@yhz.biz', '123456', 'Fajar Bagaskara', 'L', 'ambon', '1995-09-14', 'WNI', 'single', 'islam', 'Jl. Bubutan No. 49, Surabaya', 'jawa timur', 'surabaya', '65777', '082532353231', '1f1gg7-Foto', '1f1gg7-Rapor', 78, 90, 84, '1f1gg7-akteKelahiran', '1f1gg7-kartuKeluarga', 'SMA 49', 'Jl. Bubutan No. 49, Surabaya', 'jawa timur', 'surabaya', '65777', '0315672356', 'O', 'Bambang Triatmojo', 'Jl. Bubutan No. 49, Surabaya', 'jawa timur', 'surabaya', '65777', '087135351513', 'Swasta', NULL, NULL, 'S1DES152', '2015-12-18 23:05:20', 1),
('315135', 'khofifah@yhz.biz', '123456', 'Khofifah', 'P', 'balikpapan', '1994-10-12', 'WNI', 'single', 'islam', 'Jl. MT. Haryono No. 9, Ring Road Balikpapan', 'kalimantan timur', 'balikpapan', '65655', '08771235533', '315135-Foto', '315135-Rapor', 96, 85, 91, '315135-akteKelahiran', '315135-kartuKeluarga', 'SMA 9', 'Jl. MT. Haryono No. 9, Ring Road Balikpapan', 'kalimantan timur', 'balikpapan', '65511', '0216246444', 'O', 'Arum Sekar', 'Jl. MT. Haryono No. 9, Ring Road Balikpapan', 'kalimantan timur', 'balikpapan', '65512', '08165433222', 'Swasta', NULL, NULL, 'S1DES151', '2015-12-18 22:18:38', 1),
('3n3b3b', 'eka@yhz.biz', '123456', 'Eka Panca', 'L', 'surabaya', '1995-02-15', 'WNI', 'single', 'katolik', 'Jl. Jemursari No. 1, Surabaya', 'jawa timur', 'surabaya', '65432', '0878235236', '3n3b3b-Foto', '3n3b3b-Rapor', 95, 78, 87, '3n3b3b-akteKelahiran', '3n3b3b-kartuKeluarga', 'SMA 1', 'Jl. Jemursari No. 1, Surabaya', 'jawa timur', 'surabaya', '65342', '0317325262', 'O', 'Sri Rahayu', 'Jl. Jemursari No. 1, Surabaya', 'jawa timur', 'surabaya', '65143', '08782352626', 'Swasta', NULL, NULL, 'S1INF152', '2015-12-18 23:12:39', 1),
('514f13', 'ayu@yhz.biz', '123456', 'Ayu Diah Sari', 'P', 'surabaya', '1995-08-17', 'WNI', 'single', 'islam', 'Jl. Kapas Krampung 220/1, Surabaya', 'jawa timur', 'surabaya', '65611', '0812342322', '514f13-Foto', '514f13-Rapor', 95, 90, 93, '514f13-akteKelahiran', '514f13-kartuKeluarga', 'SMA 220', 'Jl. Kapas Krampung 220/1, Surabaya', 'jawa timur', 'surabaya', '65113', '0317533566', 'O', 'Saraswati', 'Jl. Kapas Krampung 220/1, Surabaya', 'jawa timur', 'surabaya', '65113', '0813132353', 'Swasta', NULL, NULL, 'S1INF151', '2015-12-18 22:22:41', 1),
('adf312', 'andre@yhg.biz', '123456', 'Aditya Warman', 'L', 'bandung', '1995-02-17', 'WNI', 'single', 'kristen', 'Jl. Marga Asih No. 162 Bandung', 'jawa barat', 'bandung', '65563', '08155290322', 'adf312-Foto', 'adf312-Rapor', 77, 75, 76, 'adf312-akteKelahiran', 'adf312-kartuKeluarga', 'SMA John De Britto', 'Jl. Marga Asih No. 162 Bandung', 'jawa barat', 'bandung', '65525', '0227775544', 'O', 'Agung Baskoro', 'Jl. Marga Asih No. 162 Bandung', 'jawa barat', 'bandung', '65563', '08193844423', 'Swasta', NULL, NULL, 'D3INF153', '2015-12-18 20:30:46', 0),
('asd125', 'budi@yhz.biz', '123456', 'Budi Sentosa', 'L', 'surabaya', '1995-10-25', 'WNI', 'single', 'kristen', 'Jl. Raya Mulyosari No. 99B, Surabaya', 'jawa timur', 'surabaya', '65111', '08153252623', 'asd125-Foto', 'asd125-Rapor', 90, 92, 91, 'asd125-akteKelahiran', 'asd125-kartuKeluarga', 'SMA 99', 'Jl. Raya Mulyosari No. 99B, Surabaya', 'jawa timur', 'surabaya', '65111', '0317535313', 'O', 'Eka Kristian', 'Jl. Raya Mulyosari No. 99B, Surabaya', 'jawa timur', 'surabaya', '65111', '08781523534', 'Swasta', NULL, NULL, 'S1INF151', '2015-12-18 22:28:18', 1),
('asdqwe', 'aji@yhz.biz', '123456', 'Aji Mumpung', 'L', 'bandung', '1995-10-17', 'WNI', 'single', 'kristen', 'Jl. Sarimanah No. 23, Sarijadi, Bandung', 'jawa barat', 'bandung', '61434', '08785552312', 'asdqwe-Foto', 'asdqwe-Rapor', 78, 88, 83, 'asdqwe-akteKelahiran', 'asdqwe-kartuKeluarga', 'SMA 23', 'Jl. Sarimanah No. 23, Sarijadi, Bandung', 'jawa barat', 'bandung', '65555', '0225452345', 'O', 'Budi Sentosa', 'Jl. Sarimanah No. 23, Sarijadi, Bandung', 'jawa barat', 'bandung', '61434', '08134544324', 'Swasta', NULL, NULL, 'S1DKV152', '2015-12-18 21:51:16', 0),
('b2222f', 'rey@yhz.biz', '123456', 'Reynalno Wijaya', 'L', 'surabaya', '1994-12-28', 'WNI', 'single', 'budha', 'Jl. Nyamplungan No. 133, Surabaya', 'jawa timur', 'surabaya', '65236', '0878235626', 'b2222f-Foto', 'b2222f-Rapor', 85, 80, 83, 'b2222f-akteKelahiran', 'b2222f-kartuKeluarga', 'SMA St. Louis', 'Jl. Nyamplungan No. 133, Surabaya', 'jawa timur', 'surabaya', '67677', '0317531356', 'O', 'Bernard Santoso', 'Jl. Nyamplungan No. 133, Surabaya', 'jawa timur', 'surabaya', '67777', '0815325325', 'Swasta', NULL, NULL, 'S1INF152', '2015-12-18 23:15:48', 1),
('bxvtr7', 'sari@yhz.biz', '123456', 'Sari Ayu', 'P', 'bekasi', '1995-09-08', 'WNI', 'single', 'islam', 'Jl. Jenderal Ahmad Yani Bekasi', 'jawa barat', 'bekasi', '68888', '0815262626', 'bxvtr7-Foto', 'bxvtr7-Rapor', 75, 79, 77, 'bxvtr7-akteKelahiran', 'bxvtr7-kartuKeluarga', 'SMA 101', 'Jl. Jenderal Ahmad Yani Bekasi', 'jawa barat', 'bekasi', '68888', '0215623662', 'O', 'Susi Astuti', 'Jl. Jenderal Ahmad Yani Bekasi', 'jawa barat', 'bekasi', '68888', '08113525323', 'Swasta', NULL, NULL, 'S1DKV151', '2015-12-18 23:19:53', 1),
('f311g3', 'bayu@yhz.biz', '123456', 'Bayu Shodiq', 'L', 'bekasi', '1995-09-25', 'WNI', 'single', 'islam', 'Jalan Mekar Sari No.1 Bekasi', 'jawa barat', 'bekasi', '64122', '08783523566', 'f311g3-Foto', 'f311g3-Rapor', 78, 80, 79, 'f311g3-akteKelahiran', 'f311g3-kartuKeluarga', 'SMA 11', 'Jalan Mekar Sari No.1 Bekasi', 'jawa barat', 'bekasi', '64124', '0215363412', 'O', 'Adi Firmansyah', 'Jalan Mekar Sari No.1 Bekasi', 'jawa barat', 'bekasi', '61412', '0877143532', 'Swasta', NULL, NULL, 'D3INF151', '2015-12-18 23:24:46', 1),
('f322y4', 'david@yhz.biz', '123456', 'David Dharma', 'L', 'malang', '1995-02-22', 'WNI', 'single', 'budha', 'Jl. Raya Tidar 100 Malang', 'jawa timur', 'malang', '67890', '0871523526', 'f322y4-Foto', 'f322y4-Rapor', 85, 78, 82, 'f322y4-akteKelahiran', 'f322y4-kartuKeluarga', 'SMA 100', 'Jl. Raya Tidar 100 Malang', 'jawa timur', 'malang', '61432', '0315325265', 'O', 'Viktor', 'Jl. Raya Tidar 100 Malang', 'jawa timur', 'malang', '61432', '08982352626', 'Swasta', NULL, NULL, 'S1INF150', '2015-12-18 23:28:02', 1),
('gg3rfd', 'novi@yhz.biz', '123456', 'Novi Mutiara', 'P', 'bandung', '1994-07-27', 'WNI', 'single', 'islam', 'Jl. Ters Jakarta No. 37, Bandung', 'jawa barat', 'bandung', '65123', '087878787555', 'gg3rfd-Foto', 'gg3rfd-Rapor', 95, 89, 92, 'gg3rfd-akteKelahiran', 'gg3rfd-kartuKeluarga', 'SMA 37', 'Jl. Ters Jakarta No. 37, Bandung', 'jawa barat', 'bandung', '65525', '0227775245', 'O', 'Abdul Rahman', 'Jl. Ters Jakarta No. 37, Bandung', 'jawa barat', 'bandung', '65525', '0813352356', 'Swasta', NULL, NULL, 'S1SIB151', '2015-12-18 21:55:57', 0),
('j45j44', 'diah@yhz.biz', '123456', 'Diah Pitaloka', 'P', 'ambon', '1994-03-23', 'WNI', 'single', 'islam', 'Jl. Terusan Wiriaga Blok G No. 5-6 Bunulrejo Malan', 'jawa timur', 'malang', '65551', '0899235266', 'j45j44-Foto', 'j45j44-Rapor', 98, 95, 97, 'j45j44-akteKelahiran', 'j45j44-kartuKeluarga', 'SMA 56', 'Jl. Terusan Wiriaga Blok G No. 5-6 Perum Ngujil Pe', 'jawa timur', 'malang', '65141', '0316252623', 'O', 'Eni Setiowati', 'Jl. Terusan Wiriaga Blok G No. 5-6 Bunulrejo Malan', 'jawa timur', 'malang', '61432', '0898452633', 'Swasta', NULL, NULL, 'S1DKV153', '2015-12-18 23:34:20', 1),
('k6464f', 'indah@yhz.biz', '123456', 'Indah Permata Intan', 'P', 'malang', '1994-08-26', 'WNI', 'single', 'kristen', 'Jl. Aries Munandar No. 41-45, Malang', 'jawa timur', 'malang', '67883', '08781535236', 'k6464f-Foto', 'k6464f-Rapor', 90, 75, 83, 'k6464f-akteKelahiran', 'k6464f-kartuKeluarga', 'SMA 41', 'Jl. Aries Munandar No. 41-45, Malang', 'jawa timur', 'malang', '65134', '0316426423', 'O', 'Abraham Andika', 'Jl. Aries Munandar No. 41-45, Malang', 'jawa timur', 'malang', '61432', '0899262462', 'Swasta', NULL, NULL, 'D3INF152', '2015-12-18 23:38:49', 1),
('n4h3ff', 'ika@yhz.biz', '123456', 'Ika Asih', 'P', 'malang', '1995-11-29', 'WNI', 'single', 'islam', ' Master Malang, Jl. Trunojoyo No.23, Malang', 'jawa timur', 'malang', '61231', '08776543212', 'n4h3ff-Foto', 'n4h3ff-Rapor', 85, 80, 83, 'n4h3ff-akteKelahiran', 'n4h3ff-kartuKeluarga', 'SMA Santo Joseph', ' Master Malang, Jl. Trunojoyo No.23, Malang', 'jawa timur', 'malang', '65123', '0227532424', 'O', 'Heni', ' Master Malang, Jl. Trunojoyo No.23, Malang', 'jawa timur', 'malang', '61234', '087877886543', 'Swasta', NULL, NULL, 'S1INF152', '2015-12-18 22:00:03', 0),
('nert34', 'wilson@yhg.biz', '123456', 'Wilson Putra', 'L', 'ambon', '1995-07-12', 'WNI', 'single', 'kristen', 'Jalan Taman Asri 23 Jambi', 'sulawesi barat', 'mamuju', '67733', '08773243253', 'nert34-Foto', 'nert34-Rapor', 77, 89, 83, 'nert34-akteKelahiran', 'nert34-kartuKeluarga', 'SMA Rajawali Makassar', 'Jalan Wangsit 23 Makassar', 'kalimantan utara', 'tarakan', '65529', '0317553422', 'O', 'Alexander Putra', 'Jalan Taman Asri 23 Jambi', 'jambi', 'jambi', '65889', '08985253356', 'Swasta', 'nert34-skhun.jpg', 'nert34-ijazah.jpg', 'S1DES152', '2016-01-07 23:25:26', 1),
('qwe321', 'evan@yhz.biz', '123456', 'Evan Sugiarto', 'L', 'jakarta barat', '1995-03-15', 'WNI', 'single', 'katolik', 'Jl. Siloam No. 6, Lippo Karawaci 1600', 'banten', 'tangerang', '67777', '08781253252', 'qwe321-Foto', 'qwe321-Rapor', 89, 90, 90, 'qwe321-akteKelahiran', 'qwe321-kartuKeluarga', 'SMA Kompas', 'Jl. Siloam No. 6, Lippo Karawaci 1600', 'banten', 'tangerang', '65143', '0215564234', 'O', 'Ali Surya', 'Jl. Siloam No. 6, Lippo Karawaci 1600', 'banten', 'tangerang', '65133', '08155235244', 'Swasta', NULL, NULL, 'S1INF151', '2015-12-18 22:06:11', 1),
('v3G2NU', 'mcook2n@foxnews.com', '123456', 'Julie Gardner', 'F', 'Dallas', '1994-10-30', 'WNA', 'single', 'islam', '28 Westend Park', 'Texas', 'Oklahoma City', '75251', '1-(469)297-3', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'O', 'Marilyn Cook', '52175 Logan Circle', 'Oklahoma', 'Temple', NULL, '1-(405)342-3', 'pengusaha', 'v3G2NU-skhun.jpg', 'v3G2NU-ijazah.jpg', 'S1DKV153', '2016-01-05 11:33:53', 0),
('wdf31', 'sarahmita@yhz.biz', '123456', 'Sarahmita Dewi', 'P', 'surabaya', '1995-08-30', 'WNI', 'single', 'islam', 'Jl. Bukit Darmo Boulevard No. 8F, Sby', 'jawa timur', 'surabaya', '65999', '08715532626', 'wdf31-Foto', 'wdf31-Rapor', 91, 89, 90, 'wdf31-akteKelahiran', 'wdf31-kartuKeluarga', 'SMA 8', 'Jl. Bukit Darmo Boulevard No. 8F, Sby', 'jawa timur', 'surabaya', '65999', '0315266443', 'O', 'Dewi Sinta', 'Jl. Bukit Darmo Boulevard No. 8F, Sby', 'jawa timur', 'surabaya', '65999', '08153252664', 'Swasta', NULL, NULL, 'S1DKV151', '2015-12-18 22:31:44', 1),
('zxc241', 'sugiarto@yhz.biz', '123456', 'Sugiarto Budiman', 'L', 'surabaya', '1995-10-24', 'WNI', 'single', 'kristen', 'Jl. Jemursari 205/A-05, Surabaya', 'jawa timur', 'surabaya', '65112', '0815235226', 'zxc241-Foto', 'zxc241-Rapor', 78, 88, 83, 'zxc241-akteKelahiran', 'zxc241-kartuKeluarga', 'SMA 205', 'Jl. Jemursari 205/A-05, Surabaya', 'jawa timur', 'surabaya', '65112', '0317512633', 'O', 'Heru Cahya', 'Jl. Jemursari 205/A-05, Surabaya', 'jawa timur', 'surabaya', '65112', '08152352624', 'Swasta', NULL, NULL, 'S1DES152', '2015-12-18 22:41:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_umum`
--

CREATE TABLE `data_umum` (
  `index` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_umum`
--

INSERT INTO `data_umum` (`index`, `value`) VALUES
('lama_sks', '3000'),
('tahun_ajaran_sekarang', 'GASAL 2015/2016'),
('valnilai_A_to_IPK', '4.00'),
('valnilai_B+_to_IPK', '3.75'),
('valnilai_B_to_IPK', '3.50'),
('valnilai_C+_to_IPK', '3.25'),
('valnilai_C_to_IPK', '3.00'),
('valnilai_D_to_IPK', '2.00'),
('valnilai_E_to_IPK', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `dispensasi`
--

CREATE TABLE `dispensasi` (
  `id` varchar(15) NOT NULL,
  `nama_dispensasi` varchar(30) NOT NULL,
  `periode_cicilan` tinyint(3) UNSIGNED NOT NULL,
  `tanggal_batas` date NOT NULL,
  `calon_mahasiswa_nomor_registrasi` varchar(6) DEFAULT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dkeuangan`
--

CREATE TABLE `dkeuangan` (
  `id` varchar(17) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_batas` date NOT NULL,
  `tanggal_created` date NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dkeuangan`
--

INSERT INTO `dkeuangan` (`id`, `jumlah`, `tanggal_batas`, `tanggal_created`, `status`) VALUES
('USP2015122000000', 7000000, '2016-01-20', '2015-12-20', '0'),
('USP2015122000010', 8500000, '2016-01-20', '2015-12-20', '0'),
('USP2015122000020', 10000000, '2016-01-20', '2015-12-20', '0'),
('USP2015122000030', 10000000, '2016-01-20', '2015-12-20', '0'),
('USP2015122000040', 8500000, '2016-01-20', '2015-12-20', '0'),
('USP2015122000050', 10500000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000060', 10500000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000070', 9000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000080', 9000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000090', 10500000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000100', 12000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000110', 9000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000120', 11000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000130', 11000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000140', 11000000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000150', 13500000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000160', 13500000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000170', 13500000, '2016-01-20', '2015-12-20', '1'),
('USP2015122000180', 10500000, '2016-01-20', '2015-12-20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `nomor_telepon` varchar(12) DEFAULT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kepala_jurusan_id` varchar(8) DEFAULT NULL COMMENT 'mereference pada informasi_kurikulum_id ke 0 (belakangnya)',
  `jumlah_sks_mengajar` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status_dosen` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `kota`, `provinsi`, `nomor_telepon`, `jenis_kelamin`, `email`, `kepala_jurusan_id`, `jumlah_sks_mengajar`, `status_dosen`) VALUES
('DO001', 'Ferdinandus F.X.', 'Surabaya', '1965-12-29', 'Kristen', 'Jalan.Ngagel Jaya 23', 'Surabaya', 'Jawa timur', '08155332423', 'L', 'ferdi@stt.edu', NULL, 0, '1'),
('DO002', 'Jaya Pranata,S.Kom', 'Jakarta', '1985-12-02', 'Budha', 'Jalan.Perak 344', 'surabaya', 'jawa timur', '087859038021', 'L', 'jaya@gmail.com', NULL, 0, '1'),
('DO003', 'Jenny Ngo.Dr., M.Sc.Ed', 'Munchen', '1988-12-01', 'Kristen', 'Jalan.T.Hos', 'Surabaya', 'Jawa Timur', '081131877878', 'P', 'jennyngo@gmail.com', NULL, 0, '1'),
('DO004', 'Edwin Pramana,Ir., M.AppSc.', 'Surabay', '1962-12-01', 'Kristen', 'Jalan Darmo Besar', 'Surabaya', 'Jawa Timur', '0384752132', '', 'edwin@stts.edu', 'S1INF150', 0, '1'),
('DO005', 'Eka Rahayu Setyaningsih ,S.Kom., M.Kom.', '', '0000-00-00', '', '', '', '', '0317673023', '', 'eka@gmail.com', NULL, 0, '1'),
('DO006', 'Arya Tandy Hermawan,Ir., M.T.', '', '0000-00-00', '', '', '', '', '038539283', '', 'arya@stts.edu', NULL, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `drevisi_penilaian`
--

CREATE TABLE `drevisi_penilaian` (
  `id` varchar(10) NOT NULL,
  `hrevisi_penilaian_id` varchar(9) NOT NULL,
  `mahasiswa_nrp` varchar(9) NOT NULL,
  `nilai_akhir_sebelum` tinyint(3) UNSIGNED NOT NULL,
  `nilai_akhir_sesudah` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drevisi_penilaian`
--

INSERT INTO `drevisi_penilaian` (`id`, `hrevisi_penilaian_id`, `mahasiswa_nrp`, `nilai_akhir_sebelum`, `nilai_akhir_sesudah`) VALUES
('DNR1312001', 'NR1312001', '213116004', 92, 85),
('DNR1312002', 'NR1312002', '213116155', 101, 95),
('DNR1312003', 'NR1312003', '213116158', 59, 65),
('DNR1312004', 'NR1312004', '213116185', 72, 75),
('DNR1312005', 'NR1312005', '213116200', 67, 78),
('DNR1312006', 'NR1312006', '213116201', 85, 81),
('DNR1312007', 'NR1312007', '213116202', 85, 83),
('DNR1312008', 'NR1312008', '213116203', 61, 67),
('DNR1312009', 'NR1312009', '213116204', 73, 85),
('DNR1312010', 'NR1312010', '213116205', 87, 95),
('DNR1312011', 'NR1312001', '213116206', 92, 65),
('DNR1312012', 'NR1312002', '213116207', 101, 75),
('DNR1312013', 'NR1312003', '213116208', 59, 78),
('DNR1312014', 'NR1312004', '213116209', 72, 81),
('DNR1312015', 'NR1312005', '213116210', 67, 83),
('DNR1312016', 'NR1312006', '213116211', 85, 67),
('DNR1312017', 'NR1312007', '213116212', 85, 85),
('DNR1312018', 'NR1312008', '213116004', 61, 95),
('DNR1312019', 'NR1312009', '213116155', 73, 65),
('DNR1312020', 'NR1312010', '213116158', 87, 75),
('DNR1312021', 'NR1312001', '213116185', 92, 78),
('DNR1312022', 'NR1312002', '213116200', 101, 81),
('DNR1312023', 'NR1312003', '213116201', 59, 83),
('DNR1312024', 'NR1312004', '213116202', 72, 67),
('DNR1312025', 'NR1312005', '213116203', 67, 75);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getgrade`
--
CREATE TABLE `getgrade` (
`mahasiswa_nrp` varchar(9)
,`nama` varchar(50)
,`nilai_grade` varchar(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `hkeuangan`
--

CREATE TABLE `hkeuangan` (
  `id` varchar(15) NOT NULL,
  `user_id` varchar(9) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_created` date NOT NULL,
  `tanggal_batas` date NOT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `semester` varchar(1) NOT NULL,
  `periode` varchar(1) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hkeuangan`
--

INSERT INTO `hkeuangan` (`id`, `user_id`, `jumlah`, `tanggal_created`, `tanggal_batas`, `tanggal_bayar`, `semester`, `periode`, `status`) VALUES
('SPP0001', '215116001', 3398000, '2013-06-01', '2013-08-10', '2013-08-07', '1', '1', '1'),
('SPP0002', '215116001', 3398000, '2013-06-01', '2013-10-10', '2013-10-03', '1', '2', '1'),
('SPP0003', '215116001', 3398000, '2013-06-01', '2013-12-10', '2013-12-07', '1', '3', '1'),
('SPP0004', '215116001', 3398000, '2014-01-01', '2014-02-10', '2014-02-08', '2', '1', '1'),
('SPP0005', '215116001', 3398000, '2014-01-01', '2014-04-10', '2014-04-02', '2', '2', '1'),
('SPP0006', '215116001', 4268000, '2014-01-01', '2014-06-10', '2014-06-04', '2', '3', '1'),
('SPP0007', '215116001', 3398000, '2014-06-01', '2014-08-10', '2014-08-03', '3', '1', '1'),
('SPP0008', '215116001', 3398000, '2014-06-01', '2014-10-10', '2014-10-09', '3', '2', '1'),
('SPP0009', '215116001', 4268000, '2014-06-01', '2014-12-10', '2014-12-04', '3', '3', '1'),
('SPP0010', '215116001', 3398000, '2015-01-01', '2015-02-10', '2015-02-06', '4', '1', '1'),
('SPP0011', '215116001', 3398000, '2015-01-01', '2015-04-10', '2015-04-09', '4', '2', '1'),
('SPP0012', '215116001', 3398000, '2015-01-01', '2015-06-10', '2015-06-08', '4', '3', '1'),
('SPP0013', '215116001', 3398000, '2015-06-01', '2015-08-10', '2015-08-05', '5', '1', '1'),
('SPP0014', '215116001', 3398000, '2015-06-01', '2015-10-10', '2015-10-07', '5', '2', '1'),
('SPP0015', '215116001', 5573000, '2015-06-01', '2015-12-10', NULL, '5', '3', '0'),
('SPP0016', '215116002', 3398000, '2015-06-01', '2015-08-10', '2015-08-09', '1', '1', '1'),
('SPP0017', '215116002', 3398000, '2015-06-01', '2015-10-10', '2015-10-02', '1', '2', '1'),
('SPP0018', '215116002', 3398000, '2015-06-01', '2015-12-10', NULL, '1', '3', '0'),
('USP0001', '215116001', 4000000, '2013-06-01', '2013-08-31', '2013-07-25', '1', '1', '1'),
('USP0002', '215116002', 10000000, '2015-06-01', '2015-08-31', '2015-07-14', '1', '1', '1'),
('USP201512200000', 'adf312', 7000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '0'),
('USP201512200001', 'asdqwe', 8500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '0'),
('USP201512200002', 'gg3rfd', 10000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '0'),
('USP201512200003', 'n4h3ff', 10000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '0'),
('USP201512200004', '13g31g', 8500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '0'),
('USP201512200005', '315135', 10500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200006', '514f13', 10500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200007', 'asd125', 9000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200008', 'qwe321', 9000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200009', '1f1gg7', 10500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200010', 'zxc241', 12000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200011', 'wdf31', 9000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200012', '1f11vf', 11000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200013', '3n3b3b', 11000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200014', 'f311g3', 11000000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200015', 'k6464f', 13500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200016', 'bxvtr7', 13500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200017', 'j45j44', 13500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1'),
('USP201512200018', 'b2222f', 10500000, '2015-12-20', '0000-00-00', '0000-00-00', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hrevisi_penilaian`
--

CREATE TABLE `hrevisi_penilaian` (
  `id` varchar(9) NOT NULL,
  `kelas_id` varchar(6) NOT NULL,
  `catatan` text,
  `status_revisi` tinyint(1) NOT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hrevisi_penilaian`
--

INSERT INTO `hrevisi_penilaian` (`id`, `kelas_id`, `catatan`, `status_revisi`, `tanggal_create`) VALUES
('NR1312001', '141MK0', 'coba 1 dong', 1, '2016-01-01 16:02:50'),
('NR1312002', '141MK0', 'coba 2 dong', 2, '2016-01-01 16:02:51'),
('NR1312003', '141MK0', 'coba 3 dong', 1, '2016-01-01 16:02:51'),
('NR1312004', '141MK0', 'coba 4 dong', 2, '2016-01-01 16:02:51'),
('NR1312005', '141MK0', 'coba 5 dong', 1, '2016-01-01 16:02:51'),
('NR1312006', '141MK0', 'coba 6 dong', 2, '2016-01-01 16:02:51'),
('NR1312007', '141MK0', 'coba 7 dong', 1, '2016-01-01 16:02:51'),
('NR1312008', '141MK0', 'coba 8 dong', 2, '2016-01-01 16:02:51'),
('NR1312009', '141MK0', 'coba 9 dong', 1, '2016-01-01 16:02:51'),
('NR1312010', '141MK0', 'coba 10 dong', 2, '2016-01-01 16:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `informasi_beasiswa`
--

CREATE TABLE `informasi_beasiswa` (
  `id` varchar(20) NOT NULL,
  `nama_beasiswa` varchar(30) NOT NULL,
  `aspek_dipotong` varchar(10) NOT NULL,
  `berapa_dipotong` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `informasi_kurikulum`
--

CREATE TABLE `informasi_kurikulum` (
  `id` varchar(8) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tahun_angkatan` varchar(9) NOT NULL,
  `kategori` tinyint(4) NOT NULL,
  `harga_usp` bigint(8) UNSIGNED NOT NULL,
  `harga_spp` mediumint(8) UNSIGNED NOT NULL,
  `harga_sks` mediumint(8) UNSIGNED NOT NULL,
  `sks` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informasi_kurikulum`
--

INSERT INTO `informasi_kurikulum` (`id`, `jurusan`, `tahun_angkatan`, `kategori`, `harga_usp`, `harga_spp`, `harga_sks`, `sks`) VALUES
('D3INF150', 'D3-Informatika', '2015/2016', 0, 0, 0, 0, 88),
('D3INF151', 'D3-Informatika', '2015/2016', 1, 7000000, 200000, 250000, 88),
('D3INF152', 'D3-Informatika', '2015/2016', 2, 8500000, 200000, 250000, 88),
('D3INF153', 'D3-Informatika', '2015/2016', 3, 10000000, 200000, 250000, 88),
('S1DES150', 'S1-Desain Produk', '2015/2016', 0, 0, 0, 0, 144),
('S1DES151', 'S1-Desain Produk', '2015/2016', 1, 8500000, 225000, 225000, 144),
('S1DES152', 'S1-Desain Produk', '2015/2016', 2, 10500000, 225000, 225000, 144),
('S1DES153', 'S1-Desain Produk', '2015/2016', 3, 12000000, 225000, 225000, 144),
('S1DKV150', 'S1-Desain Komunikasi Visual', '2015/2016', 0, 0, 0, 0, 144),
('S1DKV151', 'S1-Desain Komunikasi Visual', '2015/2016', 1, 9000000, 200000, 250000, 144),
('S1DKV152', 'S1-Desain Komunikasi Visual', '2015/2016', 2, 10500000, 200000, 250000, 144),
('S1DKV153', 'S1-Desain Komunikasi Visual', '2015/2016', 3, 12000000, 200000, 250000, 144),
('S1IND150', 'S1-Industri', '2015/2016', 0, 0, 0, 0, 144),
('S1IND151', 'S1-Industri', '2015/2016', 1, 7500000, 225000, 250000, 144),
('S1IND152', 'S1-Industri', '2015/2016', 2, 9000000, 225000, 250000, 144),
('S1IND153', 'S1-Industri', '2015/2016', 3, 10500000, 225000, 250000, 144),
('S1INF131', 'S1-Teknik Informatika', '2013/2014', 1, 3000, 2000, 1000, 144),
('S1INF150', 'S1-Informatika', '2015/2016', 0, 0, 0, 0, 144),
('S1INF151', 'S1-Informatika', '2015/2016', 1, 11000000, 300000, 325000, 144),
('S1INF152', 'S1-Informatika', '2015/2016', 2, 13500000, 300000, 325000, 144),
('S1INF153', 'S1-Informatika', '2015/2016', 3, 16000000, 300000, 325000, 144),
('S1SIB150', 'S1-Sistem Informasi Bisnis', '2015/2016', 0, 0, 0, 0, 144),
('S1SIB151', 'S1-Sistem Informasi Bisnis', '2015/2016', 1, 10500000, 250000, 275000, 144),
('S1SIB152', 'S1-Sistem Informasi Bisnis', '2015/2016', 2, 12500000, 250000, 275000, 144),
('S1SIB153', 'S1-Sistem Informasi Bisnis', '2015/2016', 3, 14500000, 250000, 275000, 144);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` varchar(9) NOT NULL,
  `nama` varchar(1) NOT NULL DEFAULT '-',
  `mata_kuliah_id` varchar(6) NOT NULL,
  `ruangan_id` varchar(5) DEFAULT NULL,
  `dosen_nip` varchar(11) DEFAULT NULL,
  `hari` varchar(1) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `persentase_uts` tinyint(3) UNSIGNED NOT NULL DEFAULT '30',
  `persentase_uas` tinyint(3) UNSIGNED NOT NULL DEFAULT '30',
  `persentase_tugas` tinyint(3) UNSIGNED NOT NULL DEFAULT '40',
  `tambahan_grade` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status_konfirmasi` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `komentar_kajur` text NOT NULL,
  `kelas_id` varchar(6) DEFAULT NULL COMMENT 'buat_gabung kelas',
  `jumlah_mahasiswa` int(3) UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `mata_kuliah_id`, `ruangan_id`, `dosen_nip`, `hari`, `jam_mulai`, `persentase_uts`, `persentase_uas`, `persentase_tugas`, `tambahan_grade`, `status_konfirmasi`, `komentar_kajur`, `kelas_id`, `jumlah_mahasiswa`, `tahun_ajaran`, `tanggal_create`, `tanggal_update`, `status`) VALUES
('141MK001A', 'A', 'MK001', 'R0003', 'DO001', '1', '08:00:00', 30, 30, 40, 10, 3, 'nilai cukup', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:56:10', '2015-12-08 20:40:59', 1),
('141MK001B', 'B', 'MK001', 'R0004', 'DO002', '1', '08:30:00', 30, 30, 40, 0, 3, 'nilai cukuup', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:56:58', '2015-11-12 21:56:58', 1),
('141MK002A', 'B', 'MK002', 'R0004', 'DO002', '1', '08:30:00', 30, 30, 40, 0, 3, 'nilai tdk rata', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:56:58', '2015-11-12 21:56:58', 1),
('141MK003A', 'A', 'MK003', 'R0008', 'DO003', '2', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:57:39', '2015-11-12 21:57:39', 1),
('141MK003B', 'B', 'MK003', 'R0006', 'DO001', '3', '13:00:00', 30, 30, 40, 20, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:57:39', '2015-11-29 23:22:36', 1),
('141MK004A', 'A', 'MK004', 'R0006', 'DO001', '3', '13:00:00', 30, 30, 40, 20, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:57:39', '2015-11-29 23:22:36', 1),
('141MK005A', 'A', 'MK005', 'R0004', 'DO001', '4', '15:30:00', 30, 30, 40, 0, 2, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-29 23:12:45', 1),
('141MK005B', 'B', 'MK005', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK006A', 'A', 'MK006', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK014A', 'A', 'MK014', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK015A', 'A', 'MK015', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK016A', 'A', 'MK016', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK017A', 'A', 'MK017', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK018A', 'A', 'MK018', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK019A', 'A', 'MK019', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK020A', 'A', 'MK020', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK021A', 'A', 'MK021', 'R0003', 'DO002', '4', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2014/2015', '2015-11-12 21:58:53', '2015-11-12 21:58:53', 1),
('141MK037A', 'A', 'MK037', 'R0009', 'DO003', '3', '15:30:00', 20, 30, 50, 10, 1, '', NULL, 0, 'GASAL 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('141MK038A', 'A', 'MK038', 'R0001', 'DO004', '4', '18:00:00', 30, 20, 50, 15, 2, '', NULL, 0, 'GASAL 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('141MK039A', 'A', 'MK039', 'R0002', 'DO001', '5', '08:00:00', 20, 30, 50, 0, 3, '', NULL, 0, 'GASAL 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('150MK007A', 'A', 'MK007', 'R0007', 'DO003', '2', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 21:59:24', '2015-11-12 21:59:24', 1),
('150MK007B', 'B', 'MK007', 'R0006', 'DO002', '2', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 21:59:24', '2015-11-12 21:59:24', 1),
('150MK009A', 'A', 'MK009', 'R0004', 'DO004', '2', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 21:59:56', '2015-11-12 21:59:56', 1),
('150MK009B', 'B', 'MK009', 'R0001', 'DO004', '3', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 21:59:56', '2015-11-12 21:59:56', 1),
('150MK011A', 'A', 'MK011', 'R0009', 'DO002', '4', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 22:00:53', '2015-11-12 22:00:53', 1),
('150MK012A', 'A', 'MK012', 'R0008', 'DO001', '5', '15:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 22:00:53', '2015-11-12 22:00:53', 1),
('150MK013A', 'A', 'MK013', 'R0005', 'DO002', '1', '15:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-11-12 22:01:10', '2015-11-12 22:01:10', 1),
('150MK013B', 'B', 'MK013', 'R0009', 'DO005', '1', '15:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-12-24 16:05:32', '2015-12-24 16:05:32', 1),
('150MK014A', 'A', 'MK014', 'R0009', 'DO005', '1', '15:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-12-24 16:05:32', '2015-12-24 16:05:32', 1),
('150MK015A', 'A', 'MK015', 'R0009', 'DO005', '1', '15:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-12-24 16:05:32', '2015-12-24 16:05:32', 1),
('150MK024A', 'A', 'MK024', 'R0007', 'DO002', '5', '10:30:00', 30, 20, 50, 5, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('150MK025A', 'A', 'MK025', 'R0008', 'DO003', '1', '13:00:00', 20, 30, 50, 10, 1, '', NULL, 0, 'GENAP 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('150MK025B', 'B', 'MK025', 'R0009', 'DO006', '1', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-12-24 16:00:12', '2015-12-24 16:00:12', 1),
('150MK040A', 'A', 'MK040', 'R0003', 'DO002', '1', '08:30:00', 30, 20, 50, 5, 0, '', NULL, 0, 'GENAP 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('150MK041A', 'A', 'MK041', 'R0004', 'DO003', '2', '08:00:00', 20, 30, 50, 10, 1, '', NULL, 0, 'GENAP 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('150MK042A', 'A', 'MK042', 'R0005', 'DO004', '3', '10:30:00', 30, 20, 50, 15, 2, '', NULL, 0, 'GENAP 2014/2015', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('151MK001A', 'A', 'MK001', 'R0004', 'DO001', '3', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK001B', 'B', 'MK001', 'R0006', 'DO003', '3', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-12-24 16:12:49', '2015-12-24 16:12:49', 1),
('151MK002A', 'A', 'MK002', 'R0004', 'DO001', '3', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK017A', 'A', 'MK017', 'R0003', 'DO002', '1', '18:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK017B', 'B', 'MK017', 'R0009', 'DO003', '1', '18:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-12-24 16:16:52', '2015-12-24 16:16:52', 1),
('151MK018A', 'A', 'MK018', 'R0004', 'DO002', '4', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK019A', 'A', 'MK019', 'R0004', 'DO001', '5', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK020A', 'A', 'MK020', 'R0008', 'DO002', '1', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK021A', 'A', 'MK021', 'R0006', 'DO001', '3', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK021B', 'B', 'MK021', 'R0003', 'DO003', '2', '15:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK026A', 'A', 'MK026', 'R0009', 'DO004', '2', '10:30:00', 30, 20, 50, 15, 2, '', NULL, 0, 'GASAL 2015/2016', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('151MK027A', 'A', 'MK027', 'R0004', 'DO003', '4', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK027B', 'B', 'MK027', 'R0003', 'DO002', '4', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-12-24 16:41:03', '2015-12-24 16:41:03', 1),
('151MK028A', 'A', 'MK028', 'R0008', 'DO003', '5', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1),
('151MK029A', 'A', 'MK029', 'R0003', 'DO003', '5', '13:00:00', 20, 30, 50, 10, 1, '', NULL, 0, 'GASAL 2015/2016', '2015-12-13 16:36:18', '2015-12-13 16:36:18', 1),
('151MK029B', 'B', 'MK029', 'R0002', 'DO004', '5', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-12-24 16:41:55', '2015-12-24 16:41:55', 1),
('151MK030A', 'A', 'MK030', 'R0003', 'DO001', '1', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-12 21:56:10', '2015-11-12 21:56:10', 1),
('151MK031A', 'A', 'MK031', 'R0003', 'DO002', '1', '10:30:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-12 21:56:58', '2015-11-12 21:56:58', 1),
('151MK032A', 'A', 'MK032', 'R008', 'DO002', '3', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-12-24 18:04:55', '2015-12-24 18:04:55', 1),
('151MK033A', 'A', 'MK033', 'R0008', 'DO003', '2', '13:00:00', 30, 30, 40, 0, 2, '', NULL, 0, 'GASAL 2015/2016', '2015-11-12 21:57:39', '2015-11-12 21:57:39', 1),
('151MK033B', 'B', 'MK033', 'R0004', 'DO005', '2', '13:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-12-24 16:40:16', '2015-12-24 16:40:16', 1),
('151MK034A', 'A', 'MK034', 'R0004', 'DO001', '3', '08:00:00', 30, 30, 40, 0, 0, '', NULL, 0, 'GASAL 2015/2016', '2015-11-27 15:09:56', '2015-11-27 15:09:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_mahasiswa`
--

CREATE TABLE `kelas_mahasiswa` (
  `mahasiswa_nrp` varchar(9) NOT NULL COMMENT 'NYY',
  `kelas_id` varchar(9) NOT NULL,
  `mata_kuliah_id` varchar(6) NOT NULL,
  `status_ambil` varchar(10) NOT NULL,
  `semester` tinyint(2) UNSIGNED NOT NULL,
  `nilai_id` varchar(9) DEFAULT NULL COMMENT 'nilai sebenarnya'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='mahasiswa mengambil kelas';

--
-- Dumping data for table `kelas_mahasiswa`
--

INSERT INTO `kelas_mahasiswa` (`mahasiswa_nrp`, `kelas_id`, `mata_kuliah_id`, `status_ambil`, `semester`, `nilai_id`) VALUES
('213116004', '141MK001A', 'MK001', 'A', 1, 'N6004001'),
('213116004', '141MK001B', 'MK001', 'A', 1, 'N6004002'),
('213116004', '141MK002A', 'MK002', 'A', 1, 'N6004003'),
('213116004', '141MK003A', 'MK003', 'A', 1, 'N6004004'),
('213116004', '141MK003B', 'MK003', 'A', 1, 'N6004005'),
('213116004', '141MK004A', 'MK004', 'A', 1, 'N6004006'),
('213116004', '141MK005A', 'MK005', 'A', 2, 'N6004007'),
('213116004', '141MK005B', 'MK005', 'A', 2, 'N6004008'),
('213116004', '141MK006A', 'MK006', 'A', 2, 'N6004009'),
('213116004', '141MK014A', 'MK014', 'A', 2, 'N6004010'),
('213116004', '141MK015A', 'MK015', 'A', 2, 'N6004011'),
('213116004', '141MK016A', 'MK016', 'A', 2, 'N6004012'),
('213116004', '141MK017A', 'MK017', 'A', 2, 'N6004013'),
('213116004', '141MK018A', 'MK018', 'A', 3, 'N6004014'),
('213116004', '141MK019A', 'MK019', 'A', 3, 'N6004015'),
('213116004', '141MK020A', 'MK020', 'A', 3, 'N6004016'),
('213116004', '141MK021A', 'MK021', 'A', 3, 'N6004017'),
('213116004', '141MK037A', 'MK037', 'A', 3, 'N6004018'),
('213116004', '141MK038A', 'MK038', 'A', 3, 'N6004019'),
('213116004', '141MK039A', 'MK039', 'A', 3, 'N6004020'),
('213116004', '150MK007A', 'MK007', 'A', 4, 'N6004021'),
('213116004', '150MK007B', 'MK007', 'A', 4, 'N6004022'),
('213116004', '150MK009A', 'MK009', 'A', 4, 'N6004023'),
('213116004', '150MK009B', 'MK009', 'A', 4, 'N6004024'),
('213116004', '150MK011A', 'MK011', 'A', 4, 'N6004025'),
('213116004', '150MK012A', 'MK012', 'A', 4, 'N6004026'),
('213116004', '150MK013A', 'MK013', 'A', 5, 'N6004027'),
('213116004', '150MK013B', 'MK013', 'A', 5, 'N6004028'),
('213116155', '141MK001A', 'MK001', 'A', 1, 'N6155001'),
('213116155', '141MK001B', 'MK001', 'A', 1, 'N6155002'),
('213116155', '141MK002A', 'MK002', 'A', 1, 'N6155003'),
('213116155', '141MK003A', 'MK003', 'A', 1, 'N6155004'),
('213116155', '141MK003B', 'MK003', 'A', 1, 'N6155005'),
('213116155', '141MK004A', 'MK004', 'A', 1, 'N6155006'),
('213116155', '141MK005A', 'MK005', 'A', 2, 'N6155007'),
('213116155', '141MK005B', 'MK005', 'A', 2, 'N6155008'),
('213116155', '141MK006A', 'MK006', 'A', 2, 'N6155009'),
('213116155', '141MK014A', 'MK014', 'A', 2, 'N6155010'),
('213116155', '141MK015A', 'MK015', 'A', 2, 'N6155011'),
('213116155', '141MK016A', 'MK016', 'A', 2, 'N6155012'),
('213116155', '141MK017A', 'MK017', 'A', 2, 'N6155013'),
('213116155', '141MK018A', 'MK018', 'A', 3, 'N6155014'),
('213116155', '141MK019A', 'MK019', 'A', 3, 'N6155015'),
('213116155', '141MK020A', 'MK020', 'A', 3, 'N6155016'),
('213116155', '141MK021A', 'MK021', 'A', 3, 'N6155017'),
('213116155', '141MK037A', 'MK037', 'A', 3, 'N6155018'),
('213116155', '141MK038A', 'MK038', 'A', 3, 'N6155019'),
('213116155', '141MK039A', 'MK039', 'A', 3, 'N6155020'),
('213116158', '141MK001A', 'MK001', 'A', 1, 'N6158001'),
('213116158', '141MK001B', 'MK001', 'A', 1, 'N6158002'),
('213116158', '141MK002A', 'MK002', 'A', 1, 'N6158003'),
('213116158', '141MK003A', 'MK003', 'A', 1, 'N6158004'),
('213116158', '141MK003B', 'MK003', 'A', 1, 'N6158005'),
('213116158', '141MK004A', 'MK004', 'A', 1, 'N6158006'),
('213116158', '141MK005A', 'MK005', 'A', 2, 'N6158007'),
('213116158', '141MK005B', 'MK005', 'A', 2, 'N6158008'),
('213116158', '141MK006A', 'MK006', 'A', 2, 'N6158009'),
('213116158', '141MK014A', 'MK014', 'A', 2, 'N6158010'),
('213116158', '141MK015A', 'MK015', 'A', 2, 'N6158011'),
('213116158', '141MK016A', 'MK016', 'A', 2, 'N6158012'),
('213116158', '141MK017A', 'MK017', 'A', 2, 'N6158013'),
('213116158', '141MK018A', 'MK018', 'A', 3, 'N6158014'),
('213116158', '141MK019A', 'MK019', 'A', 3, 'N6158015'),
('213116158', '141MK020A', 'MK020', 'A', 3, 'N6158016'),
('213116158', '141MK021A', 'MK021', 'A', 3, 'N6158017'),
('213116158', '141MK037A', 'MK037', 'A', 3, 'N6158018'),
('213116158', '141MK038A', 'MK038', 'A', 3, 'N6158019'),
('213116158', '141MK039A', 'MK039', 'A', 3, 'N6158020'),
('213116158', '150MK007A', 'MK007', 'A', 4, 'N6158021'),
('213116158', '150MK007B', 'MK007', 'A', 4, 'N6158022'),
('213116158', '150MK009A', 'MK009', 'A', 4, 'N6158023'),
('213116158', '150MK009B', 'MK009', 'A', 4, 'N6158024'),
('213116158', '150MK011A', 'MK011', 'A', 4, 'N6158025'),
('213116158', '150MK012A', 'MK012', 'A', 4, 'N6158026'),
('213116185', '141MK001A', 'MK001', 'A', 1, 'N6185001'),
('213116185', '141MK001B', 'MK001', 'A', 1, 'N6185002'),
('213116185', '141MK002A', 'MK002', 'A', 1, 'N6185003'),
('213116185', '141MK003A', 'MK003', 'A', 1, 'N6185004'),
('213116185', '141MK003B', 'MK003', 'A', 1, 'N6185005'),
('213116185', '141MK004A', 'MK004', 'A', 1, 'N6185006'),
('213116185', '141MK005A', 'MK005', 'A', 2, 'N6185007'),
('213116185', '141MK005B', 'MK005', 'A', 2, 'N6185008'),
('213116185', '141MK006A', 'MK006', 'A', 2, 'N6185009'),
('213116185', '141MK014A', 'MK014', 'A', 2, 'N6185010'),
('213116185', '141MK015A', 'MK015', 'A', 2, 'N6185011'),
('213116185', '141MK016A', 'MK016', 'A', 2, 'N6185012'),
('213116185', '141MK017A', 'MK017', 'A', 2, 'N6185013'),
('213116185', '141MK018A', 'MK018', 'A', 3, 'N6185014'),
('213116185', '141MK019A', 'MK019', 'A', 3, 'N6185015'),
('213116185', '141MK020A', 'MK020', 'A', 3, 'N6185016'),
('213116185', '141MK021A', 'MK021', 'A', 3, 'N6185017'),
('213116185', '141MK037A', 'MK037', 'A', 3, 'N6185018'),
('213116185', '141MK038A', 'MK038', 'A', 3, 'N6185019'),
('213116185', '141MK039A', 'MK039', 'A', 3, 'N6185020'),
('213116185', '150MK007A', 'MK007', 'A', 4, 'N6185021'),
('213116185', '150MK007B', 'MK007', 'A', 4, 'N6185022'),
('213116185', '150MK009A', 'MK009', 'A', 4, 'N6185023'),
('213116185', '150MK009B', 'MK009', 'A', 4, 'N6185024'),
('213116185', '150MK011A', 'MK011', 'A', 4, 'N6185025'),
('213116185', '150MK012A', 'MK012', 'A', 4, 'N6185026'),
('213116185', '150MK013A', 'MK013', 'A', 5, 'N6185027'),
('213116185', '150MK013B', 'MK013', 'A', 5, 'N6185028'),
('213116200', '141MK001A', 'MK001', 'A', 1, 'N6200001'),
('213116200', '141MK001B', 'MK001', 'A', 1, 'N6200002'),
('213116200', '141MK002A', 'MK002', 'A', 1, 'N6200003'),
('213116200', '141MK003A', 'MK003', 'A', 1, 'N6200004'),
('213116200', '141MK003B', 'MK003', 'A', 1, 'N6200005'),
('213116200', '141MK004A', 'MK004', 'A', 1, 'N6200006'),
('213116201', '141MK001A', 'MK001', 'A', 1, 'N6201001'),
('213116201', '141MK001B', 'MK001', 'A', 1, 'N6201002'),
('213116201', '141MK002A', 'MK002', 'A', 1, 'N6201003'),
('213116201', '141MK003A', 'MK003', 'A', 1, 'N6201004'),
('213116201', '141MK003B', 'MK003', 'A', 1, 'N6201005'),
('213116201', '141MK004A', 'MK004', 'A', 1, 'N6201006'),
('213116201', '141MK005A', 'MK005', 'A', 2, 'N6201007'),
('213116201', '141MK005B', 'MK005', 'A', 2, 'N6201008'),
('213116201', '141MK006A', 'MK006', 'A', 2, 'N6201009'),
('213116201', '141MK014A', 'MK014', 'A', 2, 'N6201010'),
('213116201', '141MK015A', 'MK015', 'A', 2, 'N6201011'),
('213116201', '141MK016A', 'MK016', 'A', 2, 'N6201012'),
('213116201', '141MK017A', 'MK017', 'A', 2, 'N6201013'),
('213116201', '141MK018A', 'MK018', 'A', 3, 'N6201014'),
('213116201', '141MK019A', 'MK019', 'A', 3, 'N6201015'),
('213116201', '141MK020A', 'MK020', 'A', 3, 'N6201016'),
('213116201', '141MK021A', 'MK021', 'A', 3, 'N6201017'),
('213116201', '141MK037A', 'MK037', 'A', 3, 'N6201018'),
('213116201', '141MK038A', 'MK038', 'A', 3, 'N6201019'),
('213116201', '141MK039A', 'MK039', 'A', 3, 'N6201020'),
('213116202', '141MK001A', 'MK001', 'A', 1, 'N6202001'),
('213116202', '141MK001B', 'MK001', 'A', 1, 'N6202002'),
('213116202', '141MK002A', 'MK002', 'A', 1, 'N6202003'),
('213116202', '141MK003A', 'MK003', 'A', 1, 'N6202004'),
('213116202', '141MK003B', 'MK003', 'A', 1, 'N6202005'),
('213116202', '141MK004A', 'MK004', 'A', 1, 'N6202006'),
('213116203', '141MK001A', 'MK001', 'A', 1, 'N6203001'),
('213116203', '141MK001B', 'MK001', 'A', 1, 'N6203002'),
('213116203', '141MK002A', 'MK002', 'A', 1, 'N6203003'),
('213116203', '141MK003A', 'MK003', 'A', 1, 'N6203004'),
('213116203', '141MK003B', 'MK003', 'A', 1, 'N6203005'),
('213116203', '141MK004A', 'MK004', 'A', 1, 'N6203006'),
('213116204', '141MK001A', 'MK001', 'A', 1, 'N6204001'),
('213116204', '141MK001B', 'MK001', 'A', 1, 'N6204002'),
('213116204', '141MK002A', 'MK002', 'A', 1, 'N6204003'),
('213116204', '141MK003A', 'MK003', 'A', 1, 'N6204004'),
('213116204', '141MK003B', 'MK003', 'A', 1, 'N6204005'),
('213116204', '141MK004A', 'MK004', 'A', 1, 'N6204006'),
('213116204', '141MK005A', 'MK005', 'A', 2, 'N6204007'),
('213116204', '141MK005B', 'MK005', 'A', 2, 'N6204008'),
('213116204', '141MK006A', 'MK006', 'A', 2, 'N6204009'),
('213116204', '141MK014A', 'MK014', 'A', 2, 'N6204010'),
('213116204', '141MK015A', 'MK015', 'A', 2, 'N6204011'),
('213116204', '141MK016A', 'MK016', 'A', 2, 'N6204012'),
('213116204', '141MK017A', 'MK017', 'A', 2, 'N6204013'),
('213116205', '141MK001A', 'MK001', 'A', 1, 'N6205001'),
('213116205', '141MK001B', 'MK001', 'A', 1, 'N6205002'),
('213116205', '141MK002A', 'MK002', 'A', 1, 'N6205003'),
('213116205', '141MK003A', 'MK003', 'A', 1, 'N6205004'),
('213116205', '141MK003B', 'MK003', 'A', 1, 'N6205005'),
('213116205', '141MK004A', 'MK004', 'A', 1, 'N6205006'),
('213116205', '141MK005A', 'MK005', 'A', 2, 'N6205007'),
('213116205', '141MK005B', 'MK005', 'A', 2, 'N6205008'),
('213116205', '141MK006A', 'MK006', 'A', 2, 'N6205009'),
('213116205', '141MK014A', 'MK014', 'A', 2, 'N6205010'),
('213116205', '141MK015A', 'MK015', 'A', 2, 'N6205011'),
('213116205', '141MK016A', 'MK016', 'A', 2, 'N6205012'),
('213116205', '141MK017A', 'MK017', 'A', 2, 'N6205013'),
('213116205', '141MK018A', 'MK018', 'A', 3, 'N6205014'),
('213116205', '141MK019A', 'MK019', 'A', 3, 'N6205015'),
('213116205', '141MK020A', 'MK020', 'A', 3, 'N6205016'),
('213116205', '141MK021A', 'MK021', 'A', 3, 'N6205017'),
('213116205', '141MK037A', 'MK037', 'A', 3, 'N6205018'),
('213116205', '141MK038A', 'MK038', 'A', 3, 'N6205019'),
('213116205', '141MK039A', 'MK039', 'A', 3, 'N6205020'),
('213116205', '150MK007A', 'MK007', 'A', 4, 'N6205021'),
('213116205', '150MK007B', 'MK007', 'A', 4, 'N6205022'),
('213116205', '150MK009A', 'MK009', 'A', 4, 'N6205023'),
('213116205', '150MK009B', 'MK009', 'A', 4, 'N6205024'),
('213116205', '150MK011A', 'MK011', 'A', 4, 'N6205025'),
('213116205', '150MK012A', 'MK012', 'A', 4, 'N6205026'),
('213116205', '150MK013A', 'MK013', 'A', 5, 'N6205027'),
('213116205', '150MK013B', 'MK013', 'A', 5, 'N6205028'),
('213116206', '141MK001A', 'MK001', 'A', 1, 'N6206001'),
('213116206', '141MK001B', 'MK001', 'A', 1, 'N6206002'),
('213116206', '141MK002A', 'MK002', 'A', 1, 'N6206003'),
('213116206', '141MK003A', 'MK003', 'A', 1, 'N6206004'),
('213116206', '141MK003B', 'MK003', 'A', 1, 'N6206005'),
('213116206', '141MK004A', 'MK004', 'A', 1, 'N6206006'),
('213116207', '141MK001A', 'MK001', 'A', 1, 'N6207001'),
('213116207', '141MK001B', 'MK001', 'A', 1, 'N6207002'),
('213116207', '141MK002A', 'MK002', 'A', 1, 'N6207003'),
('213116207', '141MK003A', 'MK003', 'A', 1, 'N6207004'),
('213116207', '141MK003B', 'MK003', 'A', 1, 'N6207005'),
('213116207', '141MK004A', 'MK004', 'A', 1, 'N6207006'),
('213116207', '141MK005A', 'MK005', 'A', 2, 'N6207007'),
('213116207', '141MK005B', 'MK005', 'A', 2, 'N6207008'),
('213116207', '141MK006A', 'MK006', 'A', 2, 'N6207009'),
('213116207', '141MK014A', 'MK014', 'A', 2, 'N6207010'),
('213116207', '141MK015A', 'MK015', 'A', 2, 'N6207011'),
('213116207', '141MK016A', 'MK016', 'A', 2, 'N6207012'),
('213116207', '141MK017A', 'MK017', 'A', 2, 'N6207013'),
('213116208', '141MK001A', 'MK001', 'A', 1, 'N6208001'),
('213116208', '141MK001B', 'MK001', 'A', 1, 'N6208002'),
('213116208', '141MK002A', 'MK002', 'A', 1, 'N6208003'),
('213116208', '141MK003A', 'MK003', 'A', 1, 'N6208004'),
('213116208', '141MK003B', 'MK003', 'A', 1, 'N6208005'),
('213116208', '141MK004A', 'MK004', 'A', 1, 'N6208006'),
('213116208', '141MK005A', 'MK005', 'A', 2, 'N6208007'),
('213116208', '141MK005B', 'MK005', 'A', 2, 'N6208008'),
('213116208', '141MK006A', 'MK006', 'A', 2, 'N6208009'),
('213116208', '141MK014A', 'MK014', 'A', 2, 'N6208010'),
('213116208', '141MK015A', 'MK015', 'A', 2, 'N6208011'),
('213116208', '141MK016A', 'MK016', 'A', 2, 'N6208012'),
('213116208', '141MK017A', 'MK017', 'A', 2, 'N6208013'),
('213116208', '141MK018A', 'MK018', 'A', 3, 'N6208014'),
('213116208', '141MK019A', 'MK019', 'A', 3, 'N6208015'),
('213116208', '141MK020A', 'MK020', 'A', 3, 'N6208016'),
('213116208', '141MK021A', 'MK021', 'A', 3, 'N6208017'),
('213116208', '141MK037A', 'MK037', 'A', 3, 'N6208018'),
('213116208', '141MK038A', 'MK038', 'A', 3, 'N6208019'),
('213116208', '141MK039A', 'MK039', 'A', 3, 'N6208020'),
('213116208', '150MK007A', 'MK007', 'A', 4, 'N6208021'),
('213116208', '150MK007B', 'MK007', 'A', 4, 'N6208022'),
('213116208', '150MK009A', 'MK009', 'A', 4, 'N6208023'),
('213116208', '150MK009B', 'MK009', 'A', 4, 'N6208024'),
('213116208', '150MK011A', 'MK011', 'A', 4, 'N6208025'),
('213116208', '150MK012A', 'MK012', 'A', 4, 'N6208026'),
('213116208', '150MK013A', 'MK013', 'A', 5, 'N6208027'),
('213116208', '150MK013B', 'MK013', 'A', 5, 'N6208028'),
('213116209', '141MK001A', 'MK001', 'A', 1, 'N6209001'),
('213116209', '141MK001B', 'MK001', 'A', 1, 'N6209002'),
('213116209', '141MK002A', 'MK002', 'A', 1, 'N6209003'),
('213116209', '141MK003A', 'MK003', 'A', 1, 'N6209004'),
('213116209', '141MK003B', 'MK003', 'A', 1, 'N6209005'),
('213116209', '141MK004A', 'MK004', 'A', 1, 'N6209006'),
('213116209', '141MK005A', 'MK005', 'A', 2, 'N6209007'),
('213116209', '141MK005B', 'MK005', 'A', 2, 'N6209008'),
('213116209', '141MK006A', 'MK006', 'A', 2, 'N6209009'),
('213116209', '141MK014A', 'MK014', 'A', 2, 'N6209010'),
('213116209', '141MK015A', 'MK015', 'A', 2, 'N6209011'),
('213116209', '141MK016A', 'MK016', 'A', 2, 'N6209012'),
('213116209', '141MK017A', 'MK017', 'A', 2, 'N6209013'),
('213116209', '141MK018A', 'MK018', 'A', 3, 'N6209014'),
('213116209', '141MK019A', 'MK019', 'A', 3, 'N6209015'),
('213116209', '141MK020A', 'MK020', 'A', 3, 'N6209016'),
('213116209', '141MK021A', 'MK021', 'A', 3, 'N6209017'),
('213116209', '141MK037A', 'MK037', 'A', 3, 'N6209018'),
('213116209', '141MK038A', 'MK038', 'A', 3, 'N6209019'),
('213116209', '141MK039A', 'MK039', 'A', 3, 'N6209020'),
('213116210', '141MK001A', 'MK001', 'A', 1, 'N6210001'),
('213116210', '141MK001B', 'MK001', 'A', 1, 'N6210002'),
('213116210', '141MK002A', 'MK002', 'A', 1, 'N6210003'),
('213116210', '141MK003A', 'MK003', 'A', 1, 'N6210004'),
('213116210', '141MK003B', 'MK003', 'A', 1, 'N6210005'),
('213116210', '141MK004A', 'MK004', 'A', 1, 'N6210006'),
('213116210', '141MK005A', 'MK005', 'A', 2, 'N6210007'),
('213116210', '141MK005B', 'MK005', 'A', 2, 'N6210008'),
('213116210', '141MK006A', 'MK006', 'A', 2, 'N6210009'),
('213116210', '141MK014A', 'MK014', 'A', 2, 'N6210010'),
('213116210', '141MK015A', 'MK015', 'A', 2, 'N6210011'),
('213116210', '141MK016A', 'MK016', 'A', 2, 'N6210012'),
('213116210', '141MK017A', 'MK017', 'A', 2, 'N6210013'),
('213116210', '141MK018A', 'MK018', 'A', 3, 'N6210014'),
('213116210', '141MK019A', 'MK019', 'A', 3, 'N6210015'),
('213116210', '141MK020A', 'MK020', 'A', 3, 'N6210016'),
('213116210', '141MK021A', 'MK021', 'A', 3, 'N6210017'),
('213116210', '141MK037A', 'MK037', 'A', 3, 'N6210018'),
('213116210', '141MK038A', 'MK038', 'A', 3, 'N6210019'),
('213116210', '141MK039A', 'MK039', 'A', 3, 'N6210020'),
('213116210', '150MK007A', 'MK007', 'A', 4, 'N6210021'),
('213116210', '150MK007B', 'MK007', 'A', 4, 'N6210022'),
('213116210', '150MK009A', 'MK009', 'A', 4, 'N6210023'),
('213116210', '150MK009B', 'MK009', 'A', 4, 'N6210024'),
('213116210', '150MK011A', 'MK011', 'A', 4, 'N6210025'),
('213116210', '150MK012A', 'MK012', 'A', 4, 'N6210026'),
('213116211', '141MK001A', 'MK001', 'A', 1, 'N6211001'),
('213116211', '141MK001B', 'MK001', 'A', 1, 'N6211002'),
('213116211', '141MK002A', 'MK002', 'A', 1, 'N6211003'),
('213116211', '141MK003A', 'MK003', 'A', 1, 'N6211004'),
('213116211', '141MK003B', 'MK003', 'A', 1, 'N6211005'),
('213116211', '141MK004A', 'MK004', 'A', 1, 'N6211006'),
('213116212', '141MK001A', 'MK001', 'A', 1, 'N6212001'),
('213116212', '141MK001B', 'MK001', 'A', 1, 'N6212002'),
('213116212', '141MK002A', 'MK002', 'A', 1, 'N6212003'),
('213116212', '141MK003A', 'MK003', 'A', 1, 'N6212004'),
('213116212', '141MK003B', 'MK003', 'A', 1, 'N6212005'),
('213116212', '141MK004A', 'MK004', 'A', 1, 'N6212006'),
('213116212', '141MK005A', 'MK005', 'A', 2, 'N6212007'),
('213116212', '141MK005B', 'MK005', 'A', 2, 'N6212008'),
('213116212', '141MK006A', 'MK006', 'A', 2, 'N6212009'),
('213116212', '141MK014A', 'MK014', 'A', 2, 'N6212010'),
('213116212', '141MK015A', 'MK015', 'A', 2, 'N6212011'),
('213116212', '141MK016A', 'MK016', 'A', 2, 'N6212012'),
('213116212', '141MK017A', 'MK017', 'A', 2, 'N6212013'),
('213116212', '141MK018A', 'MK018', 'A', 3, 'N6212014'),
('213116212', '141MK019A', 'MK019', 'A', 3, 'N6212015'),
('213116212', '141MK020A', 'MK020', 'A', 3, 'N6212016'),
('213116212', '141MK021A', 'MK021', 'A', 3, 'N6212017'),
('213116212', '141MK037A', 'MK037', 'A', 3, 'N6212018'),
('213116212', '141MK038A', 'MK038', 'A', 3, 'N6212019'),
('213116212', '141MK039A', 'MK039', 'A', 3, 'N6212020'),
('213116212', '150MK007A', 'MK007', 'A', 4, 'N6212021'),
('213116212', '150MK007B', 'MK007', 'A', 4, 'N6212022'),
('213116212', '150MK009A', 'MK009', 'A', 4, 'N6212023'),
('213116212', '150MK009B', 'MK009', 'A', 4, 'N6212024'),
('213116212', '150MK011A', 'MK011', 'A', 4, 'N6212025'),
('213116212', '150MK012A', 'MK012', 'A', 4, 'N6212026'),
('213116212', '150MK013A', 'MK013', 'A', 5, 'N6212027'),
('213116212', '150MK013B', 'MK013', 'A', 5, 'N6212028'),
('213116213', '150MK014A', 'MK014', 'A', 1, 'N6213001'),
('213116213', '150MK015A', 'MK015', 'A', 1, 'N6213002'),
('213116213', '150MK024A', 'MK024', 'A', 1, 'N6213003'),
('213116213', '150MK025A', 'MK025', 'A', 1, 'N6213004'),
('213116213', '150MK025B', 'MK025', 'A', 1, 'N6213005'),
('213116213', '150MK040A', 'MK040', 'A', 1, 'N6213006'),
('213116213', '150MK041A', 'MK041', 'A', 2, 'N6213007'),
('213116213', '150MK042A', 'MK042', 'A', 2, 'N6213008'),
('213116213', '151MK001A', 'MK001', 'A', 2, 'N6213009'),
('213116213', '151MK001B', 'MK001', 'A', 2, 'N6213010'),
('213116213', '151MK002A', 'MK002', 'A', 2, 'N6213011'),
('213116213', '151MK017A', 'MK017', 'A', 2, 'N6213012'),
('213116213', '151MK017B', 'MK017', 'A', 2, 'N6213013'),
('213116213', '151MK018A', 'MK018', 'A', 3, 'N6213014'),
('213116213', '151MK019A', 'MK019', 'A', 3, 'N6213015'),
('213116213', '151MK020A', 'MK020', 'A', 3, 'N6213016'),
('213116213', '151MK021A', 'MK021', 'A', 3, 'N6213017'),
('213116213', '151MK021B', 'MK021', 'A', 3, 'N6213018'),
('213116213', '151MK026A', 'MK026', 'A', 3, 'N6213019'),
('213116213', '151MK027A', 'MK027', 'A', 3, 'N6213020'),
('213116213', '151MK027B', 'MK027', 'A', 4, 'N6213021'),
('213116213', '151MK028A', 'MK028', 'A', 4, 'N6213022'),
('213116213', '151MK029A', 'MK029', 'A', 4, 'N6213023'),
('213116213', '151MK029B', 'MK029', 'A', 4, 'N6213024'),
('213116213', '151MK030A', 'MK030', 'A', 4, 'N6213025'),
('213116213', '151MK031A', 'MK031', 'A', 4, 'N6213026'),
('213116214', '150MK014A', 'MK014', 'A', 1, 'N6214001'),
('213116214', '150MK015A', 'MK015', 'A', 1, 'N6214002'),
('213116214', '150MK024A', 'MK024', 'A', 1, 'N6214003'),
('213116214', '150MK025A', 'MK025', 'A', 1, 'N6214004'),
('213116214', '150MK025B', 'MK025', 'A', 1, 'N6214005'),
('213116214', '150MK040A', 'MK040', 'A', 1, 'N6214006'),
('213116214', '150MK041A', 'MK041', 'A', 2, 'N6214007'),
('213116214', '150MK042A', 'MK042', 'A', 2, 'N6214008'),
('213116214', '151MK001A', 'MK001', 'A', 2, 'N6214009'),
('213116214', '151MK001B', 'MK001', 'A', 2, 'N6214010'),
('213116214', '151MK002A', 'MK002', 'A', 2, 'N6214011'),
('213116214', '151MK017A', 'MK017', 'A', 2, 'N6214012'),
('213116214', '151MK017B', 'MK017', 'A', 2, 'N6214013'),
('213116215', '150MK014A', 'MK014', 'A', 1, 'N6215001'),
('213116215', '150MK015A', 'MK015', 'A', 1, 'N6215002'),
('213116215', '150MK024A', 'MK024', 'A', 1, 'N6215003'),
('213116215', '150MK025A', 'MK025', 'A', 1, 'N6215004'),
('213116215', '150MK025B', 'MK025', 'A', 1, 'N6215005'),
('213116215', '150MK040A', 'MK040', 'A', 1, 'N6215006'),
('213116215', '150MK041A', 'MK041', 'A', 2, 'N6215007'),
('213116215', '150MK042A', 'MK042', 'A', 2, 'N6215008'),
('213116215', '151MK001A', 'MK001', 'A', 2, 'N6215009'),
('213116215', '151MK001B', 'MK001', 'A', 2, 'N6215010'),
('213116215', '151MK002A', 'MK002', 'A', 2, 'N6215011'),
('213116215', '151MK017A', 'MK017', 'A', 2, 'N6215012'),
('213116215', '151MK017B', 'MK017', 'A', 2, 'N6215013'),
('213116215', '151MK018A', 'MK018', 'A', 3, 'N6215014'),
('213116215', '151MK019A', 'MK019', 'A', 3, 'N6215015'),
('213116215', '151MK020A', 'MK020', 'A', 3, 'N6215016'),
('213116215', '151MK021A', 'MK021', 'A', 3, 'N6215017'),
('213116215', '151MK021B', 'MK021', 'A', 3, 'N6215018'),
('213116215', '151MK026A', 'MK026', 'A', 3, 'N6215019'),
('213116215', '151MK027A', 'MK027', 'A', 3, 'N6215020'),
('213116215', '151MK027B', 'MK027', 'A', 4, 'N6215021'),
('213116215', '151MK028A', 'MK028', 'A', 4, 'N6215022'),
('213116215', '151MK029A', 'MK029', 'A', 4, 'N6215023'),
('213116215', '151MK029B', 'MK029', 'A', 4, 'N6215024'),
('213116215', '151MK030A', 'MK030', 'A', 4, 'N6215025'),
('213116215', '151MK031A', 'MK031', 'A', 4, 'N6215026'),
('213116215', '151MK032A', 'MK032', 'A', 5, 'N6215027'),
('213116215', '151MK033A', 'MK033', 'A', 5, 'N6215028'),
('213116216', '150MK014A', 'MK014', 'A', 1, 'N6216001'),
('213116216', '150MK015A', 'MK015', 'A', 1, 'N6216002'),
('213116216', '150MK024A', 'MK024', 'A', 1, 'N6216003'),
('213116216', '150MK025A', 'MK025', 'A', 1, 'N6216004'),
('213116216', '150MK025B', 'MK025', 'A', 1, 'N6216005'),
('213116216', '150MK040A', 'MK040', 'A', 1, 'N6216006'),
('213116216', '150MK041A', 'MK041', 'A', 2, 'N6216007'),
('213116216', '150MK042A', 'MK042', 'A', 2, 'N6216008'),
('213116216', '151MK001A', 'MK001', 'A', 2, 'N6216009'),
('213116216', '151MK001B', 'MK001', 'A', 2, 'N6216010'),
('213116216', '151MK002A', 'MK002', 'A', 2, 'N6216011'),
('213116216', '151MK017A', 'MK017', 'A', 2, 'N6216012'),
('213116216', '151MK017B', 'MK017', 'A', 2, 'N6216013'),
('213116216', '151MK018A', 'MK018', 'A', 3, 'N6216014'),
('213116216', '151MK019A', 'MK019', 'A', 3, 'N6216015'),
('213116216', '151MK020A', 'MK020', 'A', 3, 'N6216016'),
('213116216', '151MK021A', 'MK021', 'A', 3, 'N6216017'),
('213116216', '151MK021B', 'MK021', 'A', 3, 'N6216018'),
('213116216', '151MK026A', 'MK026', 'A', 3, 'N6216019'),
('213116216', '151MK027A', 'MK027', 'A', 3, 'N6216020'),
('213116217', '150MK014A', 'MK014', 'A', 1, 'N6217001'),
('213116217', '150MK015A', 'MK015', 'A', 1, 'N6217002'),
('213116217', '150MK024A', 'MK024', 'A', 1, 'N6217003'),
('213116217', '150MK025A', 'MK025', 'A', 1, 'N6217004'),
('213116217', '150MK025B', 'MK025', 'A', 1, 'N6217005'),
('213116217', '150MK040A', 'MK040', 'A', 1, 'N6217006'),
('213116217', '150MK041A', 'MK041', 'A', 2, 'N6217007'),
('213116217', '150MK042A', 'MK042', 'A', 2, 'N6217008'),
('213116217', '151MK001A', 'MK001', 'A', 2, 'N6217009'),
('213116217', '151MK001B', 'MK001', 'A', 2, 'N6217010'),
('213116217', '151MK002A', 'MK002', 'A', 2, 'N6217011'),
('213116217', '151MK017A', 'MK017', 'A', 2, 'N6217012'),
('213116217', '151MK017B', 'MK017', 'A', 2, 'N6217013'),
('213116217', '151MK018A', 'MK018', 'A', 3, 'N6217014'),
('213116217', '151MK019A', 'MK019', 'A', 3, 'N6217015'),
('213116217', '151MK020A', 'MK020', 'A', 3, 'N6217016'),
('213116217', '151MK021A', 'MK021', 'A', 3, 'N6217017'),
('213116217', '151MK021B', 'MK021', 'A', 3, 'N6217018'),
('213116217', '151MK026A', 'MK026', 'A', 3, 'N6217019'),
('213116217', '151MK027A', 'MK027', 'A', 3, 'N6217020'),
('213116217', '151MK027B', 'MK027', 'A', 4, 'N6217021'),
('213116217', '151MK028A', 'MK028', 'A', 4, 'N6217022'),
('213116217', '151MK029A', 'MK029', 'A', 4, 'N6217023'),
('213116217', '151MK029B', 'MK029', 'A', 4, 'N6217024'),
('213116217', '151MK030A', 'MK030', 'A', 4, 'N6217025'),
('213116217', '151MK031A', 'MK031', 'A', 4, 'N6217026'),
('213116218', '150MK014A', 'MK014', 'A', 1, 'N6218001'),
('213116218', '150MK015A', 'MK015', 'A', 1, 'N6218002'),
('213116218', '150MK024A', 'MK024', 'A', 1, 'N6218003'),
('213116218', '150MK025A', 'MK025', 'A', 1, 'N6218004'),
('213116218', '150MK025B', 'MK025', 'A', 1, 'N6218005'),
('213116218', '150MK040A', 'MK040', 'A', 1, 'N6218006'),
('213116218', '150MK041A', 'MK041', 'A', 2, 'N6218007'),
('213116218', '150MK042A', 'MK042', 'A', 2, 'N6218008'),
('213116218', '151MK001A', 'MK001', 'A', 2, 'N6218009'),
('213116218', '151MK001B', 'MK001', 'A', 2, 'N6218010'),
('213116218', '151MK002A', 'MK002', 'A', 2, 'N6218011'),
('213116218', '151MK017A', 'MK017', 'A', 2, 'N6218012'),
('213116218', '151MK017B', 'MK017', 'A', 2, 'N6218013'),
('213116218', '151MK018A', 'MK018', 'A', 3, 'N6218014'),
('213116218', '151MK019A', 'MK019', 'A', 3, 'N6218015'),
('213116218', '151MK020A', 'MK020', 'A', 3, 'N6218016'),
('213116218', '151MK021A', 'MK021', 'A', 3, 'N6218017'),
('213116218', '151MK021B', 'MK021', 'A', 3, 'N6218018'),
('213116218', '151MK026A', 'MK026', 'A', 3, 'N6218019'),
('213116218', '151MK027A', 'MK027', 'A', 3, 'N6218020'),
('213116218', '151MK027B', 'MK027', 'A', 4, 'N6218021'),
('213116218', '151MK028A', 'MK028', 'A', 4, 'N6218022'),
('213116218', '151MK029A', 'MK029', 'A', 4, 'N6218023'),
('213116218', '151MK029B', 'MK029', 'A', 4, 'N6218024'),
('213116218', '151MK030A', 'MK030', 'A', 4, 'N6218025'),
('213116218', '151MK031A', 'MK031', 'A', 4, 'N6218026'),
('213116218', '151MK032A', 'MK032', 'A', 5, 'N6218027'),
('213116218', '151MK033A', 'MK033', 'A', 5, 'N6218028'),
('213116219', '150MK014A', 'MK014', 'A', 1, 'N6219001'),
('213116219', '150MK015A', 'MK015', 'A', 1, 'N6219002'),
('213116219', '150MK024A', 'MK024', 'A', 1, 'N6219003'),
('213116219', '150MK025A', 'MK025', 'A', 1, 'N6219004'),
('213116219', '150MK025B', 'MK025', 'A', 1, 'N6219005'),
('213116219', '150MK040A', 'MK040', 'A', 1, 'N6219006'),
('213116219', '150MK041A', 'MK041', 'A', 2, 'N6219007'),
('213116219', '150MK042A', 'MK042', 'A', 2, 'N6219008'),
('213116219', '151MK001A', 'MK001', 'A', 2, 'N6219009'),
('213116219', '151MK001B', 'MK001', 'A', 2, 'N6219010'),
('213116219', '151MK002A', 'MK002', 'A', 2, 'N6219011'),
('213116219', '151MK017A', 'MK017', 'A', 2, 'N6219012'),
('213116219', '151MK017B', 'MK017', 'A', 2, 'N6219013'),
('213116219', '151MK018A', 'MK018', 'A', 3, 'N6219014'),
('213116219', '151MK019A', 'MK019', 'A', 3, 'N6219015'),
('213116219', '151MK020A', 'MK020', 'A', 3, 'N6219016'),
('213116219', '151MK021A', 'MK021', 'A', 3, 'N6219017'),
('213116219', '151MK021B', 'MK021', 'A', 3, 'N6219018'),
('213116219', '151MK026A', 'MK026', 'A', 3, 'N6219019'),
('213116219', '151MK027A', 'MK027', 'A', 3, 'N6219020'),
('213116219', '151MK027B', 'MK027', 'A', 4, 'N6219021'),
('213116219', '151MK028A', 'MK028', 'A', 4, 'N6219022'),
('213116219', '151MK029A', 'MK029', 'A', 4, 'N6219023'),
('213116219', '151MK029B', 'MK029', 'A', 4, 'N6219024'),
('213116219', '151MK030A', 'MK030', 'A', 4, 'N6219025'),
('213116219', '151MK031A', 'MK031', 'A', 4, 'N6219026'),
('213116219', '151MK032A', 'MK032', 'A', 5, 'N6219027'),
('213116219', '151MK033A', 'MK033', 'A', 5, 'N6219028'),
('213116220', '150MK014A', 'MK014', 'A', 1, 'N6220001'),
('213116220', '150MK015A', 'MK015', 'A', 1, 'N6220002'),
('213116220', '150MK024A', 'MK024', 'A', 1, 'N6220003'),
('213116220', '150MK025A', 'MK025', 'A', 1, 'N6220004'),
('213116220', '150MK025B', 'MK025', 'A', 1, 'N6220005'),
('213116220', '150MK040A', 'MK040', 'A', 1, 'N6220006'),
('213116220', '150MK041A', 'MK041', 'A', 2, 'N6220007'),
('213116220', '150MK042A', 'MK042', 'A', 2, 'N6220008'),
('213116220', '151MK001A', 'MK001', 'A', 2, 'N6220009'),
('213116220', '151MK001B', 'MK001', 'A', 2, 'N6220010'),
('213116220', '151MK002A', 'MK002', 'A', 2, 'N6220011'),
('213116220', '151MK017A', 'MK017', 'A', 2, 'N6220012'),
('213116220', '151MK017B', 'MK017', 'A', 2, 'N6220013'),
('213116220', '151MK018A', 'MK018', 'A', 3, 'N6220014'),
('213116220', '151MK019A', 'MK019', 'A', 3, 'N6220015'),
('213116220', '151MK020A', 'MK020', 'A', 3, 'N6220016'),
('213116220', '151MK021A', 'MK021', 'A', 3, 'N6220017'),
('213116220', '151MK021B', 'MK021', 'A', 3, 'N6220018'),
('213116220', '151MK026A', 'MK026', 'A', 3, 'N6220019'),
('213116220', '151MK027A', 'MK027', 'A', 3, 'N6220020'),
('213116220', '151MK027B', 'MK027', 'A', 4, 'N6220021'),
('213116220', '151MK028A', 'MK028', 'A', 4, 'N6220022'),
('213116220', '151MK029A', 'MK029', 'A', 4, 'N6220023'),
('213116220', '151MK029B', 'MK029', 'A', 4, 'N6220024'),
('213116220', '151MK030A', 'MK030', 'A', 4, 'N6220025'),
('213116220', '151MK031A', 'MK031', 'A', 4, 'N6220026'),
('213116221', '150MK014A', 'MK014', 'A', 1, 'N6221001'),
('213116221', '150MK015A', 'MK015', 'A', 1, 'N6221002'),
('213116221', '150MK024A', 'MK024', 'A', 1, 'N6221003'),
('213116221', '150MK025A', 'MK025', 'A', 1, 'N6221004'),
('213116221', '150MK025B', 'MK025', 'A', 1, 'N6221005'),
('213116221', '150MK040A', 'MK040', 'A', 1, 'N6221006'),
('213116221', '150MK041A', 'MK041', 'A', 2, 'N6221007'),
('213116221', '150MK042A', 'MK042', 'A', 2, 'N6221008'),
('213116221', '151MK001A', 'MK001', 'A', 2, 'N6221009'),
('213116221', '151MK001B', 'MK001', 'A', 2, 'N6221010'),
('213116221', '151MK002A', 'MK002', 'A', 2, 'N6221011'),
('213116221', '151MK017A', 'MK017', 'A', 2, 'N6221012'),
('213116221', '151MK017B', 'MK017', 'A', 2, 'N6221013'),
('213116221', '151MK018A', 'MK018', 'A', 3, 'N6221014'),
('213116221', '151MK019A', 'MK019', 'A', 3, 'N6221015'),
('213116221', '151MK020A', 'MK020', 'A', 3, 'N6221016'),
('213116221', '151MK021A', 'MK021', 'A', 3, 'N6221017'),
('213116221', '151MK021B', 'MK021', 'A', 3, 'N6221018'),
('213116221', '151MK026A', 'MK026', 'A', 3, 'N6221019'),
('213116221', '151MK027A', 'MK027', 'A', 3, 'N6221020'),
('213116222', '150MK014A', 'MK014', 'A', 1, 'N6222001'),
('213116222', '150MK015A', 'MK015', 'A', 1, 'N6222002'),
('213116222', '150MK024A', 'MK024', 'A', 1, 'N6222003'),
('213116222', '150MK025A', 'MK025', 'A', 1, 'N6222004'),
('213116222', '150MK025B', 'MK025', 'A', 1, 'N6222005'),
('213116222', '150MK040A', 'MK040', 'A', 1, 'N6222006'),
('213116222', '150MK041A', 'MK041', 'A', 2, 'N6222007'),
('213116222', '150MK042A', 'MK042', 'A', 2, 'N6222008'),
('213116222', '151MK001A', 'MK001', 'A', 2, 'N6222009'),
('213116222', '151MK001B', 'MK001', 'A', 2, 'N6222010'),
('213116222', '151MK002A', 'MK002', 'A', 2, 'N6222011'),
('213116222', '151MK017A', 'MK017', 'A', 2, 'N6222012'),
('213116222', '151MK017B', 'MK017', 'A', 2, 'N6222013'),
('213116222', '151MK018A', 'MK018', 'A', 3, 'N6222014'),
('213116222', '151MK019A', 'MK019', 'A', 3, 'N6222015'),
('213116222', '151MK020A', 'MK020', 'A', 3, 'N6222016'),
('213116222', '151MK021A', 'MK021', 'A', 3, 'N6222017'),
('213116222', '151MK021B', 'MK021', 'A', 3, 'N6222018'),
('213116222', '151MK026A', 'MK026', 'A', 3, 'N6222019'),
('213116222', '151MK027A', 'MK027', 'A', 3, 'N6222020'),
('213116223', '150MK014A', 'MK014', 'A', 1, 'N6223001'),
('213116223', '150MK015A', 'MK015', 'A', 1, 'N6223002'),
('213116223', '150MK024A', 'MK024', 'A', 1, 'N6223003'),
('213116223', '150MK025A', 'MK025', 'A', 1, 'N6223004'),
('213116223', '150MK025B', 'MK025', 'A', 1, 'N6223005'),
('213116223', '150MK040A', 'MK040', 'A', 1, 'N6223006'),
('213116224', '150MK014A', 'MK014', 'A', 1, 'N6224001'),
('213116224', '150MK015A', 'MK015', 'A', 1, 'N6224002'),
('213116224', '150MK024A', 'MK024', 'A', 1, 'N6224003'),
('213116224', '150MK025A', 'MK025', 'A', 1, 'N6224004'),
('213116224', '150MK025B', 'MK025', 'A', 1, 'N6224005'),
('213116224', '150MK040A', 'MK040', 'A', 1, 'N6224006'),
('213116225', '150MK014A', 'MK014', 'A', 1, 'N6225001'),
('213116225', '150MK015A', 'MK015', 'A', 1, 'N6225002'),
('213116225', '150MK024A', 'MK024', 'A', 1, 'N6225003'),
('213116225', '150MK025A', 'MK025', 'A', 1, 'N6225004'),
('213116225', '150MK025B', 'MK025', 'A', 1, 'N6225005'),
('213116225', '150MK040A', 'MK040', 'A', 1, 'N6225006'),
('213116225', '150MK041A', 'MK041', 'A', 2, 'N6225007'),
('213116225', '150MK042A', 'MK042', 'A', 2, 'N6225008'),
('213116225', '151MK001A', 'MK001', 'A', 2, 'N6225009'),
('213116225', '151MK001B', 'MK001', 'A', 2, 'N6225010'),
('213116225', '151MK002A', 'MK002', 'A', 2, 'N6225011'),
('213116225', '151MK017A', 'MK017', 'A', 2, 'N6225012'),
('213116225', '151MK017B', 'MK017', 'A', 2, 'N6225013'),
('213116225', '151MK018A', 'MK018', 'A', 3, 'N6225014'),
('213116225', '151MK019A', 'MK019', 'A', 3, 'N6225015'),
('213116225', '151MK020A', 'MK020', 'A', 3, 'N6225016'),
('213116225', '151MK021A', 'MK021', 'A', 3, 'N6225017'),
('213116225', '151MK021B', 'MK021', 'A', 3, 'N6225018'),
('213116225', '151MK026A', 'MK026', 'A', 3, 'N6225019'),
('213116225', '151MK027A', 'MK027', 'A', 3, 'N6225020'),
('213116226', '150MK014A', 'MK014', 'A', 1, 'N6226001'),
('213116226', '150MK015A', 'MK015', 'A', 1, 'N6226002'),
('213116226', '150MK024A', 'MK024', 'A', 1, 'N6226003'),
('213116226', '150MK025A', 'MK025', 'A', 1, 'N6226004'),
('213116226', '150MK025B', 'MK025', 'A', 1, 'N6226005'),
('213116226', '150MK040A', 'MK040', 'A', 1, 'N6226006'),
('213116226', '150MK041A', 'MK041', 'A', 2, 'N6226007'),
('213116226', '150MK042A', 'MK042', 'A', 2, 'N6226008'),
('213116226', '151MK001A', 'MK001', 'A', 2, 'N6226009'),
('213116226', '151MK001B', 'MK001', 'A', 2, 'N6226010'),
('213116226', '151MK002A', 'MK002', 'A', 2, 'N6226011'),
('213116226', '151MK017A', 'MK017', 'A', 2, 'N6226012'),
('213116226', '151MK017B', 'MK017', 'A', 2, 'N6226013'),
('213116226', '151MK018A', 'MK018', 'A', 3, 'N6226014'),
('213116226', '151MK019A', 'MK019', 'A', 3, 'N6226015'),
('213116226', '151MK020A', 'MK020', 'A', 3, 'N6226016'),
('213116226', '151MK021A', 'MK021', 'A', 3, 'N6226017'),
('213116226', '151MK021B', 'MK021', 'A', 3, 'N6226018'),
('213116226', '151MK026A', 'MK026', 'A', 3, 'N6226019'),
('213116226', '151MK027A', 'MK027', 'A', 3, 'N6226020'),
('213116226', '151MK027B', 'MK027', 'A', 4, 'N6226021'),
('213116226', '151MK028A', 'MK028', 'A', 4, 'N6226022'),
('213116226', '151MK029A', 'MK029', 'A', 4, 'N6226023'),
('213116226', '151MK029B', 'MK029', 'A', 4, 'N6226024'),
('213116226', '151MK030A', 'MK030', 'A', 4, 'N6226025'),
('213116226', '151MK031A', 'MK031', 'A', 4, 'N6226026'),
('213116226', '151MK032A', 'MK032', 'A', 5, 'N6226027'),
('213116226', '151MK033A', 'MK033', 'A', 5, 'N6226028'),
('213116227', '150MK014A', 'MK014', 'A', 1, 'N6227001'),
('213116227', '150MK015A', 'MK015', 'A', 1, 'N6227002'),
('213116227', '150MK024A', 'MK024', 'A', 1, 'N6227003'),
('213116227', '150MK025A', 'MK025', 'A', 1, 'N6227004'),
('213116227', '150MK025B', 'MK025', 'A', 1, 'N6227005'),
('213116227', '150MK040A', 'MK040', 'A', 1, 'N6227006'),
('213116227', '150MK041A', 'MK041', 'A', 2, 'N6227007'),
('213116227', '150MK042A', 'MK042', 'A', 2, 'N6227008'),
('213116227', '151MK001A', 'MK001', 'A', 2, 'N6227009'),
('213116227', '151MK001B', 'MK001', 'A', 2, 'N6227010'),
('213116227', '151MK002A', 'MK002', 'A', 2, 'N6227011'),
('213116227', '151MK017A', 'MK017', 'A', 2, 'N6227012'),
('213116227', '151MK017B', 'MK017', 'A', 2, 'N6227013'),
('213116227', '151MK018A', 'MK018', 'A', 3, 'N6227014'),
('213116227', '151MK019A', 'MK019', 'A', 3, 'N6227015'),
('213116227', '151MK020A', 'MK020', 'A', 3, 'N6227016'),
('213116227', '151MK021A', 'MK021', 'A', 3, 'N6227017'),
('213116227', '151MK021B', 'MK021', 'A', 3, 'N6227018'),
('213116227', '151MK026A', 'MK026', 'A', 3, 'N6227019'),
('213116227', '151MK027A', 'MK027', 'A', 3, 'N6227020'),
('213116227', '151MK027B', 'MK027', 'A', 4, 'N6227021'),
('213116227', '151MK028A', 'MK028', 'A', 4, 'N6227022'),
('213116227', '151MK029A', 'MK029', 'A', 4, 'N6227023'),
('213116227', '151MK029B', 'MK029', 'A', 4, 'N6227024'),
('213116227', '151MK030A', 'MK030', 'A', 4, 'N6227025'),
('213116227', '151MK031A', 'MK031', 'A', 4, 'N6227026'),
('213116227', '151MK032A', 'MK032', 'A', 5, 'N6227027'),
('213116227', '151MK033A', 'MK033', 'A', 5, 'N6227028'),
('213116228', '150MK014A', 'MK014', 'A', 1, 'N6228001'),
('213116228', '150MK015A', 'MK015', 'A', 1, 'N6228002'),
('213116228', '150MK024A', 'MK024', 'A', 1, 'N6228003'),
('213116228', '150MK025A', 'MK025', 'A', 1, 'N6228004'),
('213116228', '150MK025B', 'MK025', 'A', 1, 'N6228005'),
('213116228', '150MK040A', 'MK040', 'A', 1, 'N6228006');

-- --------------------------------------------------------

--
-- Table structure for table `kode_verifikasi`
--

CREATE TABLE `kode_verifikasi` (
  `id` varchar(6) NOT NULL COMMENT '6 digit angka kode verifikasi',
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` varchar(6) NOT NULL,
  `provinsi_id` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `provinsi_id`, `nama`) VALUES
('KO001', 'PRO01', 'banda aceh'),
('KO002', 'PRO01', 'langsa'),
('KO003', 'PRO01', 'lhokseumawe'),
('KO004', 'PRO01', 'sabang'),
('KO005', 'PRO01', 'sabulussalam'),
('KO006', 'PRO02', 'denpasar'),
('KO007', 'PRO03', 'cilegon'),
('KO008', 'PRO03', 'serang'),
('KO009', 'PRO03', 'tangerang'),
('KO010', 'PRO03', 'tangerang selatan'),
('KO011', 'PRO04', 'bengkulu'),
('KO012', 'PRO05', 'gorontalo'),
('KO013', 'PRO06', 'jakarta barat'),
('KO014', 'PRO06', 'jakarta pusat'),
('KO015', 'PRO06', 'jakarta selatan'),
('KO016', 'PRO06', 'jakarta timur'),
('KO017', 'PRO06', 'jakarta utara'),
('KO018', 'PRO07', 'jambi'),
('KO019', 'PRO07', 'sungai penuh'),
('KO020', 'PRO08', 'bandung'),
('KO021', 'PRO08', 'banjar'),
('KO022', 'PRO08', 'bekasi'),
('KO023', 'PRO08', 'bogor'),
('KO024', 'PRO08', 'cimahi'),
('KO025', 'PRO08', 'cirebon'),
('KO026', 'PRO08', 'depok'),
('KO027', 'PRO08', 'sukabumi'),
('KO028', 'PRO08', 'tasikmalaya'),
('KO029', 'PRO09', 'magelang'),
('KO030', 'PRO09', 'pekalongan'),
('KO031', 'PRO09', 'salatiga'),
('KO032', 'PRO09', 'semarang'),
('KO033', 'PRO09', 'surakarta'),
('KO034', 'PRO09', 'tegal'),
('KO035', 'PRO10', 'batu'),
('KO036', 'PRO10', 'blitar'),
('KO037', 'PRO10', 'kediri'),
('KO038', 'PRO10', 'madiun'),
('KO039', 'PRO10', 'malang'),
('KO040', 'PRO10', 'mojokerto'),
('KO041', 'PRO10', 'pasuruan'),
('KO042', 'PRO10', 'probolinggo'),
('KO043', 'PRO11', 'ketapang'),
('KO044', 'PRO11', 'mempawah'),
('KO045', 'PRO11', 'pontianak'),
('KO046', 'PRO11', 'sambas'),
('KO047', 'PRO11', 'sintang'),
('KO048', 'PRO11', 'singkawang'),
('KO049', 'PRO12', 'banjarbaru'),
('KO050', 'PRO12', 'banjarmasin'),
('KO051', 'PRO13', 'muara teweh'),
('KO052', 'PRO13', 'palangka raya'),
('KO053', 'PRO13', 'sampit'),
('KO054', 'PRO14', 'balikpapan'),
('KO055', 'PRO14', 'bontang'),
('KO056', 'PRO14', 'samarinda'),
('KO057', 'PRO15', 'tarakan'),
('KO058', 'PRO16', 'pangkal pinang'),
('KO059', 'PRO17', 'batam'),
('KO060', 'PRO17', 'tanjung pinang'),
('KO061', 'PRO18', 'bandar lampung'),
('KO062', 'PRO18', 'metro'),
('KO063', 'PRO19', 'ambon'),
('KO064', 'PRO19', 'tual'),
('KO065', 'PRO20', 'sofifi'),
('KO066', 'PRO20', 'ternate'),
('KO067', 'PRO20', 'tidore kepulauan'),
('KO068', 'PRO21', 'bima'),
('KO069', 'PRO21', 'mataram'),
('KO070', 'PRO22', 'kupang'),
('KO071', 'PRO23', 'jayapura'),
('KO072', 'PRO24', 'sorong'),
('KO073', 'PRO25', 'dumai'),
('KO074', 'PRO25', 'pekanbaru'),
('KO075', 'PRO26', 'mamuju'),
('KO076', 'PRO27', 'makassar'),
('KO077', 'PRO27', 'palopo'),
('KO078', 'PRO27', 'parepare'),
('KO079', 'PRO28', 'luwuk'),
('KO080', 'PRO28', 'palu'),
('KO081', 'PRO28', 'poso'),
('KO082', 'PRO28', 'yango'),
('KO083', 'PRO29', 'bau-bau'),
('KO084', 'PRO29', 'kendari'),
('KO085', 'PRO30', 'bitung'),
('KO086', 'PRO30', 'kotamobagu'),
('KO087', 'PRO30', 'manado'),
('KO088', 'PRO30', 'tomohon'),
('KO089', 'PRO34', 'yogyakarta'),
('KO090', 'PRO10', 'surabaya'),
('KOT91', 'PRO31', 'kabupaten asahan'),
('KOT92', 'PRO31', 'kabupaten batubara'),
('KOT93', 'PRO31', 'kabupaten dairi'),
('KOT94', 'PRO32', 'kabupaten banyuasin'),
('KOT95', 'PRO32', 'kabupaten empat lawang'),
('KOT96', 'PRO32', 'kabupaten lahat'),
('KOT97', 'PRO33', 'kabupaten agam'),
('KOT98', 'PRO33', 'kabupaten dharmasraya'),
('KOT99', 'PRO33', 'kabupaten kepulauan mentawai');

-- --------------------------------------------------------

--
-- Table structure for table `log_penilaian`
--

CREATE TABLE `log_penilaian` (
  `id` varchar(11) NOT NULL,
  `keterangan` text,
  `tanggal_create` datetime NOT NULL,
  `kelas_id` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_penilaian_nilai`
--

CREATE TABLE `log_penilaian_nilai` (
  `nilai_id` varchar(9) NOT NULL,
  `log_penilaian_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nrp` varchar(9) NOT NULL,
  `nomor_registrasi_id` varchar(6) NOT NULL,
  `nip_dosen` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `status_sosial` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `nomor_hp` varchar(12) NOT NULL,
  `relasi` varchar(1) NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `alamat_wali` varchar(50) NOT NULL,
  `provinsi_wali` varchar(30) NOT NULL,
  `kota_wali` varchar(30) NOT NULL,
  `nomor_telp_wali` varchar(12) NOT NULL,
  `pekerjaan_wali` varchar(30) NOT NULL,
  `status_perwalian` varchar(1) NOT NULL DEFAULT '0',
  `sks` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ipk` varchar(5) NOT NULL DEFAULT '0',
  `semester` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `informasi_kurikulum_id` varchar(8) DEFAULT NULL,
  `dosen_nip` varchar(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nrp`, `nomor_registrasi_id`, `nip_dosen`, `email`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `kewarganegaraan`, `status_sosial`, `agama`, `alamat`, `provinsi`, `kota`, `kodepos`, `nomor_hp`, `relasi`, `nama_wali`, `alamat_wali`, `provinsi_wali`, `kota_wali`, `nomor_telp_wali`, `pekerjaan_wali`, `status_perwalian`, `sks`, `ipk`, `semester`, `informasi_kurikulum_id`, `dosen_nip`, `status`) VALUES
('213116155', 'v3G2NU', 'DO001', 'julie@yhg.biz', 'Julie Gardner', 'F', 'Dallas', '1994-10-30', 'WNA', 'single', 'katolik', '28 Westend Park', 'bali', 'denpasar', '75251', '1-(469)297-3', 'O', 'Marilyn Cook', '52175 Logan Circle', 'bengkulu', 'bengkulu', '1-(405)342-3', 'pengusaha', '0', 84, '0.152', 3, 'S1DKV153', 'DO006', 1),
('213116158', 'RuTvXb', 'DO002', 'bmarshall2o@cbsnews.com', 'Margaret Shaw', 'F', 'Anchorage', '1994-08-02', 'WNI', 'menikah', 'kristen', '4 Mariners Cove Court', 'Alaska', 'Memphis', '99522', '1-(907)355-2', 'O', 'Brenda Marshall', '81 Ridge Oak Center', 'Tennessee', 'Naperville', '1-(901)390-1', 'pengusaha', '0', 116, '0.24', 4, 'S1IND153', 'DO002', 0),
('213116185', 'qb0ict', 'DO004', 'kfoster2d@twitpic.com', 'Ruth Jenkins', 'F', 'Fort Wayne', '1994-09-08', 'WNA', 'belum meni', 'konghucu', '8466 Straubel Point', 'Indiana', 'Cincinnati', '46862', '1-(260)982-6', 'O', 'Kathleen Foster', '9855 Lyons Junction', 'Ohio', 'Cincinnati', '1-(513)555-9', 'karyawan', '1', 140, '0.341', 5, 'S1SIB153', 'DO001', 0),
('213116200', 'T3f0qz', 'DO002', 'gmason2l@sciencedaily.com', 'Matthew Adams', 'M', 'Denver', '1996-01-27', 'WNI', 'belum meni', 'kristen', '813 Charing Cross Park', 'Colorado', 'Washington', '80217', '1-(303)542-3', 'O', 'George Mason', '60053 Bowman Circle', 'District of Columbia', 'Peoria', '1-(202)416-1', 'karyawan', '0', 21, '1', 1, 'S1IND153', 'DO002', 0),
('213116201', 'FRfhSC', 'DO003', 'jolsonn@nifty.com', 'Evelyn Weaver', 'F', 'Wichita', '1996-08-17', 'WNA', 'belum meni', 'katolik', '819 Oxford Street', 'Kansas', 'Waco', '67260', '1-(316)945-6', 'O', 'Jean Olson', '3 Carey Way', 'Texas', 'Stockton', '1-(254)130-6', 'wiraswasta', '1', 77, '0.457', 3, 'S1INF153', 'DO002', 1),
('213116202', 'NdQP9S', 'DO006', 'aschmidts@tripod.com', 'Elizabeth Bennett', 'F', 'Irving', '1996-06-20', 'WNA', 'belum meni', 'konghucu', '83044 High Crossing Drive', 'Texas', 'Fresno', '75037', '1-(214)823-4', 'O', 'Amy Schmidt', '02527 Scofield Alley', 'California', 'Tampa', '1-(559)735-2', 'karyawan', '0', 76, '0.5', 1, 'S1INF153', 'DO004', 1),
('213116203', 'a1K1Vj', 'DO002', 'mcoopert@nsw.gov.au', 'Susan Stevens', 'F', 'New York City', '1994-08-11', 'WNA', 'belum meni', 'budha', '80105 Warner Crossing', 'New York', 'Sacramento', '10115', '1-(212)994-9', 'O', 'Maria Cooper', '7871 Harbort Hill', 'California', 'Silver Spring', '1-(916)701-8', 'wiraswasta', '0', 134, '1.5', 1, 'S1IND153', 'DO001', 1),
('213116204', 'zDP6yU', 'DO005', 'jmoreno4@wikia.com', 'Kelly Lewis', 'F', 'San Diego', '1994-09-04', 'WNA', 'menikah', 'islam', '242 Bellgrove Alley', 'California', 'Fort Wayne', '92137', '1-(619)220-4', 'O', 'Jean Moreno', '306 Eliot Junction', 'Indiana', 'Columbus', '1-(260)711-9', 'pengusaha', '1', 55, '0.461', 2, 'S1INF153', 'DO001', 0),
('213116205', 'Dd6aOQ', 'DO001', 'nscott9@php.net', 'Margaret Holmes', 'F', 'Seattle', '1996-05-22', 'WNI', 'menikah', 'hindu', '2718 Northport Drive', 'Washington', 'Clearwater', '98148', '1-(253)395-4', 'O', 'Nancy Scott', '626 Lien Avenue', 'Florida', 'Minneapolis', '1-(727)513-6', 'pengusaha', '1', 10, '0.341', 5, 'S1SIB153', 'DO005', 0),
('213116206', 'cpMvOq', 'DO004', 'jduncan22@jimdo.com', 'Frances Garcia', 'F', 'Arlington', '1994-12-18', 'WNI', 'menikah', 'katolik', '1 Jay Circle', 'Virginia', 'New Haven', '22217', '1-(571)703-5', 'O', 'Joan Duncan', '19 Golf Court', 'Connecticut', 'Omaha', '1-(203)454-5', 'pengusaha', '1', 79, '1.5', 1, 'S1SIB153', 'DO001', 0),
('213116207', 'JXCGKW', 'DO004', 'awatkins13@sciencedaily.com', 'Samuel Oliver', 'M', 'Colorado Springs', '1995-05-14', 'WNA', 'menikah', 'hindu', '56925 Lunder Hill', 'Colorado', 'Nashville', '80935', '1-(719)235-2', 'O', 'Antonio Watkins', '726 Grasskamp Center', 'Tennessee', 'Tucson', '1-(615)607-3', 'karyawan', '1', 58, '0.230', 2, 'S1IND153', 'DO006', 0),
('213116208', 'swFffN', 'DO004', 'hschmidt10@pen.io', 'Fred Williamson', 'M', 'Memphis', '1996-05-18', 'WNI', 'belum meni', 'budha', '7 Hintze Park', 'Tennessee', 'New Haven', '38143', '1-(901)576-8', 'O', 'Harry Schmidt', '45 Warner Alley', 'Connecticut', 'Washington', '1-(203)295-1', 'wiraswasta', '1', 70, '0.341', 5, 'S1INF153', 'DO003', 0),
('213116209', 'wqcg5w', 'DO004', 'jcoleman20@telegraph.co.uk', 'Craig Palmer', 'M', 'Pittsburgh', '1995-08-11', 'WNA', 'menikah', 'katolik', '36660 Hintze Avenue', 'Pennsylvania', 'Austin', '15279', '1-(412)245-3', 'O', 'Jason Coleman', '1216 Vidon Way', 'Texas', 'Omaha', '1-(512)450-6', 'wiraswasta', '1', 22, '0.152', 3, 'S1INF153', 'DO006', 1),
('213116210', 'YdlvUL', 'DO006', 'wbrown2k@purevolume.com', 'Juan Cook', 'M', 'Lubbock', '1995-07-02', 'WNI', 'menikah', 'islam', '09393 Mayfield Avenue', 'Texas', 'New York City', '79452', '1-(806)878-2', 'O', 'William Brown', '426 Kipling Circle', 'New York', 'Albuquerque', '1-(917)489-3', 'wiraswasta', '1', 118, '0.24', 4, 'S1INF153', 'DO005', 0),
('213116211', 'IVgkbK', 'DO005', 'ebishopr@vistaprint.com', 'Bruce Lopez', 'M', 'Las Vegas', '1995-09-17', 'WNA', 'menikah', 'hindu', '53162 Doe Crossing Parkway', 'Nevada', 'Baton Rouge', '89125', '1-(702)497-3', 'O', 'Eugene Bishop', '07759 Maple Drive', 'Louisiana', 'Springfield', '1-(225)791-9', 'karyawan', '1', 134, '1.5', 1, 'S1DKV153', 'DO004', 0),
('213116212', '9tLsYF', 'DO006', 'sbrown1b@creativecommons.org', 'Jack Medina', 'M', 'Birmingham', '1995-08-22', 'WNI', 'menikah', 'konghucu', '0892 Declaration Point', 'Alabama', 'Miami', '35285', '1-(205)208-7', 'O', 'Scott Brown', '512 Sommers Court', 'Florida', 'Washington', '1-(305)702-6', 'wiraswasta', '0', 49, '0.341', 5, 'D3INF153', 'DO006', 0),
('213116213', 'KRuqUz', 'DO002', 'awright1q@addthis.com', 'Carl Watson', 'M', 'Lincoln', '1996-05-11', 'WNA', 'belum meni', 'konghucu', '49486 Tomscot Drive', 'Nebraska', 'Boston', '68524', '1-(402)471-1', 'O', 'Antonio Wright', '31 5th Plaza', 'Massachusetts', 'Sarasota', '1-(617)696-2', 'karyawan', '0', 50, '3.87', 4, 'S1SIB153', 'DO006', 1),
('213116214', 'kbZsLF', 'DO006', 'scarterb@pbs.org', 'Earl Richardson', 'M', 'Seattle', '1995-01-06', 'WNI', 'menikah', 'kristen', '29909 Buena Vista Street', 'Washington', 'Bethlehem', '98109', '1-(360)370-6', 'O', 'Steve Carter', '1 Elmside Point', 'Pennsylvania', 'Toledo', '1-(484)750-4', 'karyawan', '0', 14, '2.62', 2, 'S1SIB153', 'DO005', 1),
('213116215', 'cTBeYh', 'DO004', 'kfoster2e@loc.gov', 'Frank Bennett', 'M', 'Harrisburg', '1996-10-10', 'WNI', 'menikah', 'budha', '65 Granby Plaza', 'Pennsylvania', 'Charleston', '17121', '1-(717)522-2', 'O', 'Kenneth Foster', '7969 Myrtle Plaza', 'South Carolina', 'Modesto', '1-(843)307-2', 'pengusaha', '1', 63, '3.84', 5, 'S1DKV153', 'DO003', 1),
('213116216', 'igJqLg', 'DO001', 'wperezf@nifty.com', 'Walter Berry', 'M', 'Atlanta', '1994-08-30', 'WNI', 'menikah', 'budha', '706 Bay Terrace', 'Georgia', 'Milwaukee', '31132', '1-(404)254-1', 'O', 'Willie Perez', '201 Fulton Place', 'Wisconsin', 'Hampton', '1-(414)869-0', 'pengusaha', '0', 64, '2.15', 3, 'S1DKV153', 'DO002', 0),
('213116217', '04vtCL', 'DO006', 'wford1d@cornell.edu', 'Jonathan Peters', 'M', 'Madison', '1995-02-07', 'WNI', 'menikah', 'islam', '88 Dayton Lane', 'Wisconsin', 'Naperville', '53716', '1-(608)904-0', 'O', 'William Ford', '84 Bellgrove Hill', 'Illinois', 'Cleveland', '1-(630)193-3', 'wiraswasta', '0', 144, '1.93', 4, 'S1SIB153', 'DO003', 1),
('213116218', 'S6GK74', 'DO002', 'wcampbellg@icio.us', 'Janice Hunter', 'F', 'West Palm Beach', '1995-10-19', 'WNI', 'menikah', 'kristen', '4331 Sugar Center', 'Florida', 'Houston', '33421', '1-(561)555-0', 'O', 'Wanda Campbell', '935 Fulton Alley', 'Texas', 'Rochester', '1-(713)505-5', 'pengusaha', '1', 62, '2.08', 5, 'D3INF153', 'DO003', 0),
('213116219', 'sQsheC', 'DO001', 'irosea@printfriendly.com', 'Lillian Hall', 'F', 'Sacramento', '1995-12-15', 'WNA', 'menikah', 'islam', '1857 Pawling Road', 'California', 'Cincinnati', '95852', '1-(916)592-6', 'O', 'Irene Rose', '0 Lien Junction', 'Ohio', 'San Francisco', '1-(513)983-8', 'wiraswasta', '0', 121, '1.64', 5, 'S1INF153', 'DO003', 1),
('213116220', 'x7VVtJ', 'DO006', 'gwhitev@phpbb.com', 'Matthew Allen', 'M', 'Athens', '1994-03-19', 'WNA', 'menikah', 'islam', '988 Northridge Plaza', 'Georgia', 'Santa Rosa', '30610', '1-(706)948-9', 'O', 'Gerald White', '485 Sloan Pass', 'California', 'Lexington', '1-(707)632-4', 'pengusaha', '1', 47, '3.33', 4, 'S1IND153', 'DO002', 0),
('213116221', 'uN13Tt', 'DO004', 'tcampbell18@sakura.ne.jp', 'Anne Hicks', 'F', 'Huntsville', '1995-07-12', 'WNI', 'belum meni', 'katolik', '0 Tennyson Junction', 'Alabama', 'Pompano Beach', '35895', '1-(256)755-9', 'O', 'Tammy Campbell', '3 Corry Alley', 'Florida', 'Fresno', '1-(561)542-2', 'pengusaha', '1', 6, '1.5', 3, 'D3INF153', 'DO005', 1),
('213116222', '6MDIfz', 'DO005', 'thudsonq@examiner.com', 'Kevin Rice', 'M', 'Carlsbad', '1994-11-28', 'WNI', 'belum meni', 'islam', '8461 Toban Terrace', 'California', 'San Francisco', '92013', '1-(760)199-6', 'O', 'Terry Hudson', '69 Chinook Way', 'California', 'Lubbock', '1-(415)218-1', 'karyawan', '0', 23, '1.39', 3, 'S1DKV153', 'DO006', 1),
('213116223', 'XnUyIs', 'DO006', 'lturneru@google.com.au', 'Denise Snyder', 'F', 'Houston', '1994-04-29', 'WNA', 'belum meni', 'islam', '82034 Vera Parkway', 'Texas', 'Lexington', '77299', '1-(713)397-2', 'O', 'Lillian Turner', '70 Oxford Road', 'Kentucky', 'San Antonio', '1-(859)232-1', 'wiraswasta', '1', 45, '2.33', 1, 'S1IND153', 'DO004', 1),
('213116224', 'xc1B0N', 'DO003', 'hmoorei@arstechnica.com', 'Michael Daniels', 'M', 'Orlando', '1995-10-01', 'WNA', 'menikah', 'konghucu', '73 Atwood Drive', 'Florida', 'Buffalo', '32813', '1-(321)615-0', 'O', 'Henry Moore', '3 South Terrace', 'New York', 'Winter Haven', '1-(716)544-7', 'karyawan', '0', 124, '1.9', 1, 'S1INF153', 'DO004', 0),
('213116225', 'hj5fEc', 'DO003', 'jreyes26@miibeian.gov.cn', 'Wayne Day', 'M', 'Texarkana', '1995-06-27', 'WNA', 'menikah', 'katolik', '5870 Twin Pines Road', 'Texas', 'Philadelphia', '75507', '1-(903)758-9', 'O', 'Jonathan Reyes', '3901 Center Alley', 'Pennsylvania', 'Asheville', '1-(215)222-7', 'karyawan', '0', 94, '1.78', 3, 'S1SIB153', 'DO006', 0),
('213116226', '1V35Dl', 'DO001', 'emedina1z@paypal.com', 'Howard Franklin', 'M', 'Mesa', '1996-07-10', 'WNI', 'menikah', 'islam', '359 Leroy Junction', 'Arizona', 'Birmingham', '85215', '1-(480)761-7', 'O', 'Edward Medina', '8 Warner Crossing', 'Alabama', 'Austin', '1-(205)896-5', 'pengusaha', '1', 99, '2.83', 5, 'S1INF153', 'DO003', 0),
('213116227', 'Vv1cw0', 'DO006', 'pmeyer1g@free.fr', 'Jeremy Carr', 'M', 'Cumming', '1995-07-25', 'WNI', 'menikah', 'islam', '22 Clove Street', 'Georgia', 'Washington', '30130', '1-(706)811-4', 'O', 'Patrick Meyer', '9620 Bobwhite Drive', 'District of Columbia', 'Scottsdale', '1-(202)477-2', 'wiraswasta', '0', 117, '1.97', 5, 'S1IND153', 'DO005', 1),
('213116228', 'IKZObM', 'DO004', 'jflores2q@google.nl', 'Phillip Spencer', 'M', 'Jamaica', '1994-06-23', 'WNI', 'belum meni', 'budha', '07449 Kingsford Trail', 'New York', 'Tampa', '11480', '1-(917)431-1', 'O', 'Juan Flores', '56160 Westridge Trail', 'Florida', 'Birmingham', '1-(813)329-7', 'karyawan', '1', 98, '2.33', 1, 'S1IND153', 'DO004', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text,
  `semester` tinyint(2) UNSIGNED NOT NULL,
  `jumlah_sks` tinyint(2) UNSIGNED NOT NULL,
  `informasi_kurikulum_id` varchar(8) DEFAULT NULL,
  `lulus_minimal` varchar(2) NOT NULL,
  `berpraktikum` tinyint(1) NOT NULL,
  `major` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `nama`, `deskripsi`, `semester`, `jumlah_sks`, `informasi_kurikulum_id`, `lulus_minimal`, `berpraktikum`, `major`, `status`) VALUES
('MK001', 'Algoritma dan Programming', 'Alpro 1', 1, 3, 'S1INF131', 'C', 0, '', 1),
('MK002', 'Intro to Programming', 'ITP', 1, 3, 'S1INF131', 'C', 1, '', 1),
('MK003', 'Internet dan World Wide Web', 'IWWW', 1, 3, 'S1INF131', 'C', 0, '', 1),
('MK004', 'Intro to Information Technology', 'IIT', 1, 3, 'S1INF131', 'C', 0, '', 1),
('MK005', 'Religion', 'Agama', 1, 3, 'S1INF131', 'C', 0, '', 1),
('MK006', 'Indonesian Language', 'BI', 1, 3, 'S1INF131', 'D', 0, '', 1),
('MK007', 'Algoritma dan Programming 2', 'Alpro 2', 2, 3, 'S1INF131', 'C', 0, '', 1),
('MK008', 'Pemrograman Visual', 'PV', 2, 3, 'S1INF131', 'C', 1, '', 1),
('MK009', 'Database', 'db', 2, 3, 'S1INF131', 'C', 1, '', 1),
('MK010', 'Computer Network', 'Jarkom', 2, 3, 'S1INF131', 'D', 0, '', 1),
('MK011', 'English', 'English', 2, 2, 'S1INF131', 'D', 0, '', 1),
('MK012', 'Logic Mathematics', 'LogMat', 2, 2, 'S1INF131', 'D', 0, '', 1),
('MK013', 'Mathematics', 'Mat', 2, 2, 'S1INF131', 'D', 0, '', 1),
('MK014', 'Data Structures', 'Strukdat', 3, 3, 'S1INF131', 'C', 0, '', 1),
('MK015', 'Internet Application Development', 'Aplin', 3, 3, 'S1INF131', 'C', 1, '', 1),
('MK016', 'System Analysis and Design', 'ADS', 3, 3, 'S1INF131', 'C', 0, '', 1),
('MK017', 'Object-Oriented Programming', 'OOP', 3, 3, 'S1INF131', 'C', 1, '', 1),
('MK018', 'Graph Theory', 'Teori Graph', 3, 2, 'S1INF131', 'C', 0, '', 1),
('MK019', 'Mathematics 2', 'Mat 2', 3, 2, 'S1INF131', 'C', 0, '', 1),
('MK020', 'Client Server Programming', 'ADS', 3, 4, 'S1INF131', 'C', 1, '', 1),
('MK021', 'Object-Oriented Analysis and Design', 'adbo', 4, 3, 'S1INF131', 'C', 0, '', 1),
('MK022', 'National Ideology', 'PKN', 4, 2, 'S1INF131', 'C', 0, '', 1),
('MK023', 'Digital Circuits', 'RDIG', 4, 3, 'S1INF131', 'C', 1, '', 1),
('MK024', 'Advanced Data Structures', 'Struktur Data Lanjut', 4, 3, 'S1INF131', 'C', 0, '', 1),
('MK025', 'Digital Image Processing', 'PCD', 4, 3, 'S1INF131', 'C', 0, '', 1),
('MK026', 'Human Computer Interaction', 'HCI', 5, 3, 'S1INF131', 'C', 0, '', 1),
('MK027', 'Internet Application Framework', 'FAI', 5, 3, 'S1INF131', 'C', 1, '', 1),
('MK028', 'Operating System', 'Sisop', 5, 3, 'S1INF131', 'C', 0, '', 1),
('MK029', 'Artificial Intelligence', 'AI', 5, 3, 'S1INF131', 'C', 0, '', 1),
('MK030', 'Computer Graphics', 'Grafkom', 5, 3, 'S1INF131', 'C', 0, '', 1),
('MK031', 'Computer Organization', 'Orkom', 5, 3, 'S1INF131', 'C', 0, '', 1),
('MK032', 'Software Engineering', 'SE', 6, 3, 'S1INF131', 'C', 0, '', 1),
('MK033', 'Multimedia', 'MMI', 6, 3, 'S1INF131', 'C', 1, '', 1),
('MK034', 'Technopreneurship', 'KWU', 6, 2, 'S1INF131', 'C', 0, '', 1),
('MK035', 'Ethics and Profession', 'Etika', 6, 2, 'S1INF131', 'D', 0, '', 1),
('MK036', 'Intership', '', 6, 2, 'S1INF131', 'C', 0, '', 1),
('MK037', 'Soft Computing', 'SC', 6, 3, 'S1INF131', 'C', 0, '', 1),
('MK038', 'Select Topics in IT', '', 6, 3, 'S1INF131', 'C', 0, '', 1),
('MK039', 'Software Development Project', 'SDP', 7, 3, 'S1INF131', 'C', 0, '', 1),
('MK040', 'Embedded Systems', 'ES', 7, 3, 'S1INF131', 'C', 0, '', 1),
('MK041', 'Electives', '', 7, 12, 'S1INF131', 'C', 0, '', 1),
('MK042', 'Undergraduate Thesis', 'TA', 7, 3, 'S1INF131', 'C', 0, '', 1),
('MK043', 'Electives', 'HCI', 7, 3, 'S1INF131', 'C', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` varchar(9) NOT NULL,
  `uts` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `uas` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `tugas` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nilai_akhir` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nilai_akhir_grade` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `nilai_grade` varchar(2) NOT NULL DEFAULT 'E',
  `value_nilai_grade` tinyint(2) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `uts`, `uas`, `tugas`, `nilai_akhir`, `nilai_akhir_grade`, `nilai_grade`, `value_nilai_grade`) VALUES
('N6004001', 43, 70, 76, 15, 15, 'E', 3),
('N6004002', 9, 69, 13, 82, 87, 'A', 12),
('N6004003', 63, 42, 84, 93, 103, 'A', 12),
('N6004004', 39, 86, 57, 83, 98, 'A', 0),
('N6004005', 97, 93, 64, 76, 96, 'A', 0),
('N6004006', 4, 77, 80, 10, 10, 'E', 0),
('N6004007', 76, 19, 76, 54, 59, 'C', 0),
('N6004008', 50, 20, 9, 89, 99, 'A', 0),
('N6004009', 100, 19, 64, 34, 49, 'B', 0),
('N6004010', 67, 5, 44, 60, 80, 'C', 0),
('N6004011', 47, 15, 76, 53, 53, 'C', 0),
('N6004012', 51, 74, 57, 71, 76, 'A', 0),
('N6004013', 41, 87, 45, 99, 109, 'A', 0),
('N6004014', 37, 20, 8, 24, 39, 'E', 0),
('N6004015', 45, 25, 70, 56, 76, 'C', 0),
('N6004016', 61, 94, 86, 53, 53, 'C', 0),
('N6004017', 68, 7, 45, 55, 60, 'C', 0),
('N6004018', 28, 31, 17, 19, 29, 'E', 0),
('N6004019', 98, 60, 52, 62, 77, 'B', 0),
('N6004020', 38, 50, 42, 42, 62, 'B', 0),
('N6004021', 15, 50, 43, 25, 25, 'E', 0),
('N6004022', 56, 89, 93, 54, 59, 'C', 0),
('N6004023', 41, 51, 60, 86, 96, 'A', 0),
('N6004024', 91, 77, 44, 65, 80, 'B', 0),
('N6004025', 29, 89, 9, 69, 89, 'B', 0),
('N6004026', 85, 99, 39, 39, 39, 'B', 0),
('N6004027', 81, 18, 74, 43, 48, 'B', 0),
('N6004028', 44, 87, 93, 5, 15, 'E', 0),
('N6155001', 99, 66, 13, 7, 10, 'E', 3),
('N6155002', 80, 96, 8, 9, 10, 'E', 3),
('N6155003', 33, 67, 1, 7, 21, 'E', 3),
('N6155004', 42, 45, 61, 35, 42, 'B', 0),
('N6155005', 5, 83, 23, 71, 91, 'A', 0),
('N6155006', 76, 85, 90, 39, 50, 'B', 0),
('N6155007', 65, 64, 77, 45, 52, 'B', 0),
('N6155008', 89, 32, 94, 79, 80, 'A', 0),
('N6155009', 46, 80, 87, 20, 32, 'E', 0),
('N6155010', 62, 60, 53, 14, 14, 'E', 0),
('N6155011', 62, 16, 23, 54, 66, 'C', 0),
('N6155012', 8, 18, 35, 29, 43, 'E', 0),
('N6155013', 5, 11, 27, 55, 55, 'C', 0),
('N6155014', 5, 73, 46, 24, 30, 'E', 0),
('N6155015', 20, 75, 75, 13, 32, 'E', 0),
('N6155016', 21, 27, 47, 91, 106, 'A', 0),
('N6155017', 9, 20, 98, 1, 13, 'E', 0),
('N6155018', 46, 15, 63, 73, 81, 'A', 0),
('N6155019', 48, 4, 91, 8, 18, 'E', 0),
('N6155020', 55, 26, 48, 30, 44, 'E', 0),
('N6155021', 72, 59, 9, 92, 109, 'A', 0),
('N6155022', 95, 25, 30, 19, 34, 'E', 0),
('N6155023', 70, 71, 11, 12, 15, 'E', 0),
('N6155024', 13, 5, 18, 34, 44, 'B', 0),
('N6155025', 82, 40, 48, 42, 48, 'B', 0),
('N6155026', 33, 53, 50, 98, 112, 'A', 0),
('N6155027', 69, 85, 32, 16, 18, 'E', 0),
('N6155028', 57, 78, 91, 30, 50, 'E', 0),
('N6158001', 5, 89, 57, 100, 113, 'A', 12),
('N6158002', 44, 46, 81, 29, 37, 'E', 3),
('N6158003', 7, 91, 72, 2, 11, 'E', 3),
('N6158004', 60, 8, 73, 69, 79, 'B', 0),
('N6158005', 82, 79, 84, 81, 90, 'A', 0),
('N6158006', 50, 46, 48, 22, 24, 'E', 0),
('N6158007', 25, 24, 97, 7, 18, 'E', 0),
('N6158008', 88, 75, 92, 64, 64, 'B', 0),
('N6158009', 46, 57, 31, 100, 103, 'A', 0),
('N6158010', 84, 28, 86, 31, 39, 'B', 0),
('N6158011', 16, 25, 24, 35, 45, 'B', 0),
('N6158012', 97, 41, 79, 2, 16, 'E', 0),
('N6158013', 62, 92, 24, 91, 96, 'A', 0),
('N6158014', 3, 70, 25, 72, 73, 'A', 0),
('N6158015', 2, 39, 25, 89, 107, 'A', 0),
('N6158016', 98, 50, 85, 32, 52, 'B', 0),
('N6158017', 90, 23, 91, 62, 64, 'B', 0),
('N6158018', 70, 97, 14, 85, 99, 'A', 0),
('N6158019', 68, 16, 95, 93, 100, 'A', 0),
('N6158020', 37, 25, 6, 56, 65, 'C', 0),
('N6158021', 7, 19, 55, 43, 62, 'B', 0),
('N6158022', 96, 93, 8, 64, 70, 'B', 0),
('N6158023', 28, 78, 8, 7, 21, 'E', 0),
('N6158024', 63, 79, 75, 4, 4, 'E', 0),
('N6158025', 12, 61, 18, 0, 7, 'E', 0),
('N6158026', 61, 87, 95, 17, 29, 'E', 0),
('N6158027', 67, 92, 0, 52, 54, 'C', 0),
('N6158028', 59, 16, 63, 100, 102, 'A', 0),
('N6185001', 89, 13, 59, 14, 32, 'E', 3),
('N6185002', 30, 36, 88, 98, 111, 'A', 12),
('N6185003', 17, 73, 46, 98, 114, 'A', 12),
('N6185004', 54, 98, 38, 46, 61, 'B', 0),
('N6185005', 83, 9, 89, 83, 102, 'A', 0),
('N6185006', 52, 39, 17, 94, 100, 'A', 0),
('N6185007', 33, 20, 63, 49, 53, 'C', 0),
('N6185008', 38, 8, 59, 77, 97, 'A', 0),
('N6185009', 82, 53, 86, 60, 65, 'C', 0),
('N6185010', 38, 39, 100, 46, 61, 'B', 0),
('N6185011', 66, 25, 96, 0, 11, 'E', 0),
('N6185012', 11, 7, 88, 97, 116, 'A', 0),
('N6185013', 52, 72, 63, 41, 53, 'B', 0),
('N6185014', 61, 21, 75, 22, 42, 'E', 0),
('N6185015', 73, 4, 4, 36, 49, 'B', 0),
('N6185016', 72, 93, 39, 71, 88, 'A', 0),
('N6185017', 89, 13, 59, 14, 32, 'E', 0),
('N6185018', 30, 36, 88, 98, 111, 'A', 0),
('N6185019', 17, 73, 46, 98, 114, 'A', 0),
('N6185020', 54, 98, 38, 46, 61, 'B', 0),
('N6185021', 83, 9, 89, 83, 102, 'A', 0),
('N6185022', 52, 39, 17, 94, 100, 'A', 0),
('N6185023', 33, 20, 63, 49, 53, 'C', 0),
('N6185024', 38, 8, 59, 77, 97, 'A', 0),
('N6185025', 82, 53, 86, 60, 65, 'C', 0),
('N6185026', 38, 39, 100, 46, 61, 'B', 0),
('N6185027', 66, 25, 96, 0, 11, 'E', 0),
('N6185028', 11, 7, 88, 97, 116, 'A', 0),
('N6200001', 5, 89, 57, 100, 113, 'A', 12),
('N6200002', 44, 46, 81, 29, 37, 'E', 3),
('N6200003', 7, 91, 72, 2, 11, 'E', 3),
('N6200004', 60, 8, 73, 69, 79, 'B', 0),
('N6200005', 82, 79, 84, 81, 90, 'A', 0),
('N6200006', 50, 46, 48, 22, 24, 'E', 0),
('N6200007', 25, 24, 97, 7, 18, 'E', 0),
('N6200008', 88, 75, 92, 64, 64, 'B', 0),
('N6200009', 46, 57, 31, 100, 103, 'A', 0),
('N6200010', 84, 28, 86, 31, 39, 'B', 0),
('N6200011', 16, 25, 24, 35, 45, 'B', 0),
('N6200012', 97, 41, 79, 2, 16, 'E', 0),
('N6200013', 62, 92, 24, 91, 96, 'A', 0),
('N6200014', 3, 70, 25, 72, 73, 'A', 0),
('N6200015', 2, 39, 25, 89, 107, 'A', 0),
('N6200016', 98, 50, 85, 32, 52, 'B', 0),
('N6200017', 90, 23, 91, 62, 64, 'B', 0),
('N6200018', 70, 97, 14, 85, 99, 'A', 0),
('N6200019', 68, 16, 95, 93, 100, 'A', 0),
('N6200020', 37, 25, 6, 56, 65, 'C', 0),
('N6200021', 7, 19, 55, 43, 62, 'B', 0),
('N6200022', 96, 93, 8, 64, 70, 'B', 0),
('N6200023', 28, 78, 8, 7, 21, 'E', 0),
('N6200024', 63, 79, 75, 4, 4, 'E', 0),
('N6200025', 12, 61, 18, 0, 7, 'E', 0),
('N6200026', 61, 87, 95, 17, 29, 'E', 0),
('N6200027', 67, 92, 0, 52, 54, 'C', 0),
('N6200028', 59, 16, 63, 100, 102, 'A', 0),
('N6201001', 89, 13, 59, 14, 32, 'E', 3),
('N6201002', 30, 36, 88, 98, 111, 'A', 12),
('N6201003', 17, 73, 46, 98, 114, 'A', 12),
('N6201004', 54, 98, 38, 46, 61, 'B', 0),
('N6201005', 83, 9, 89, 83, 102, 'A', 0),
('N6201006', 52, 39, 17, 94, 100, 'A', 0),
('N6201007', 33, 20, 63, 49, 53, 'C', 0),
('N6201008', 38, 8, 59, 77, 97, 'A', 0),
('N6201009', 82, 53, 86, 60, 65, 'C', 0),
('N6201010', 38, 39, 100, 46, 61, 'B', 0),
('N6201011', 66, 25, 96, 0, 11, 'E', 0),
('N6201012', 11, 7, 88, 97, 116, 'A', 0),
('N6201013', 52, 72, 63, 41, 53, 'B', 0),
('N6201014', 61, 21, 75, 22, 42, 'E', 0),
('N6201015', 73, 4, 4, 36, 49, 'B', 0),
('N6201016', 72, 93, 39, 71, 88, 'A', 0),
('N6201017', 89, 13, 59, 14, 32, 'E', 0),
('N6201018', 30, 36, 88, 98, 111, 'A', 0),
('N6201019', 17, 73, 46, 98, 114, 'A', 0),
('N6201020', 54, 98, 38, 46, 61, 'B', 0),
('N6201021', 83, 9, 89, 83, 102, 'A', 0),
('N6201022', 52, 39, 17, 94, 100, 'A', 0),
('N6201023', 33, 20, 63, 49, 53, 'C', 0),
('N6201024', 38, 8, 59, 77, 97, 'A', 0),
('N6201025', 82, 53, 86, 60, 65, 'C', 0),
('N6201026', 38, 39, 100, 46, 61, 'B', 0),
('N6201027', 66, 25, 96, 0, 11, 'E', 0),
('N6201028', 11, 7, 88, 97, 116, 'A', 0),
('N6202001', 99, 66, 13, 7, 10, 'E', 3),
('N6202002', 80, 96, 8, 9, 10, 'E', 3),
('N6202003', 33, 67, 1, 7, 21, 'E', 3),
('N6202004', 42, 45, 61, 35, 42, 'B', 0),
('N6202005', 5, 83, 23, 71, 91, 'A', 0),
('N6202006', 76, 85, 90, 39, 50, 'B', 0),
('N6202007', 65, 64, 77, 45, 52, 'B', 0),
('N6202008', 89, 32, 94, 79, 80, 'A', 0),
('N6202009', 46, 80, 87, 20, 32, 'E', 0),
('N6202010', 62, 60, 53, 14, 14, 'E', 0),
('N6202011', 62, 16, 23, 54, 66, 'C', 0),
('N6202012', 8, 18, 35, 29, 43, 'E', 0),
('N6202013', 5, 11, 27, 55, 55, 'C', 0),
('N6202014', 5, 73, 46, 24, 30, 'E', 0),
('N6202015', 20, 75, 75, 13, 32, 'E', 0),
('N6202016', 21, 27, 47, 91, 106, 'A', 0),
('N6202017', 9, 20, 98, 1, 13, 'E', 0),
('N6202018', 46, 15, 63, 73, 81, 'A', 0),
('N6202019', 48, 4, 91, 8, 18, 'E', 0),
('N6202020', 55, 26, 48, 30, 44, 'E', 0),
('N6202021', 72, 59, 9, 92, 109, 'A', 0),
('N6202022', 95, 25, 30, 19, 34, 'E', 0),
('N6202023', 70, 71, 11, 12, 15, 'E', 0),
('N6202024', 13, 5, 18, 34, 44, 'B', 0),
('N6202025', 82, 40, 48, 42, 48, 'B', 0),
('N6202026', 33, 53, 50, 98, 112, 'A', 0),
('N6202027', 69, 85, 32, 16, 18, 'E', 0),
('N6202028', 57, 78, 91, 30, 50, 'E', 0),
('N6203001', 43, 70, 76, 15, 15, 'E', 3),
('N6203002', 9, 69, 13, 82, 87, 'A', 12),
('N6203003', 63, 42, 84, 93, 103, 'A', 12),
('N6203004', 39, 86, 57, 83, 98, 'A', 0),
('N6203005', 97, 93, 64, 76, 96, 'A', 0),
('N6203006', 4, 77, 80, 10, 10, 'E', 0),
('N6203007', 76, 19, 76, 54, 59, 'C', 0),
('N6203008', 50, 20, 9, 89, 99, 'A', 0),
('N6203009', 100, 19, 64, 34, 49, 'B', 0),
('N6203010', 67, 5, 44, 60, 80, 'C', 0),
('N6203011', 47, 15, 76, 53, 53, 'C', 0),
('N6203012', 51, 74, 57, 71, 76, 'A', 0),
('N6203013', 41, 87, 45, 99, 109, 'A', 0),
('N6203014', 37, 20, 8, 24, 39, 'E', 0),
('N6203015', 45, 25, 70, 56, 76, 'C', 0),
('N6203016', 61, 94, 86, 53, 53, 'C', 0),
('N6203017', 68, 7, 45, 55, 60, 'C', 0),
('N6203018', 28, 31, 17, 19, 29, 'E', 0),
('N6203019', 98, 60, 52, 62, 77, 'B', 0),
('N6203020', 38, 50, 42, 42, 62, 'B', 0),
('N6203021', 15, 50, 43, 25, 25, 'E', 0),
('N6203022', 56, 89, 93, 54, 59, 'C', 0),
('N6203023', 41, 51, 60, 86, 96, 'A', 0),
('N6203024', 91, 77, 44, 65, 80, 'B', 0),
('N6203025', 29, 89, 9, 69, 89, 'B', 0),
('N6203026', 85, 99, 39, 39, 39, 'B', 0),
('N6203027', 81, 18, 74, 43, 48, 'B', 0),
('N6203028', 44, 87, 93, 5, 15, 'E', 0),
('N6204001', 5, 89, 57, 100, 113, 'A', 12),
('N6204002', 44, 46, 81, 29, 37, 'E', 3),
('N6204003', 7, 91, 72, 2, 11, 'E', 3),
('N6204004', 60, 8, 73, 69, 79, 'B', 0),
('N6204005', 82, 79, 84, 81, 90, 'A', 0),
('N6204006', 50, 46, 48, 22, 24, 'E', 0),
('N6204007', 25, 24, 97, 7, 18, 'E', 0),
('N6204008', 88, 75, 92, 64, 64, 'B', 0),
('N6204009', 46, 57, 31, 100, 103, 'A', 0),
('N6204010', 84, 28, 86, 31, 39, 'B', 0),
('N6204011', 16, 25, 24, 35, 45, 'B', 0),
('N6204012', 97, 41, 79, 2, 16, 'E', 0),
('N6204013', 62, 92, 24, 91, 96, 'A', 0),
('N6204014', 3, 70, 25, 72, 73, 'A', 0),
('N6204015', 2, 39, 25, 89, 107, 'A', 0),
('N6204016', 98, 50, 85, 32, 52, 'B', 0),
('N6204017', 90, 23, 91, 62, 64, 'B', 0),
('N6204018', 70, 97, 14, 85, 99, 'A', 0),
('N6204019', 68, 16, 95, 93, 100, 'A', 0),
('N6204020', 37, 25, 6, 56, 65, 'C', 0),
('N6204021', 7, 19, 55, 43, 62, 'B', 0),
('N6204022', 96, 93, 8, 64, 70, 'B', 0),
('N6204023', 28, 78, 8, 7, 21, 'E', 0),
('N6204024', 63, 79, 75, 4, 4, 'E', 0),
('N6204025', 12, 61, 18, 0, 7, 'E', 0),
('N6204026', 61, 87, 95, 17, 29, 'E', 0),
('N6204027', 67, 92, 0, 52, 54, 'C', 0),
('N6204028', 59, 16, 63, 100, 102, 'A', 0),
('N6205001', 89, 13, 59, 14, 32, 'E', 3),
('N6205002', 30, 36, 88, 98, 111, 'A', 12),
('N6205003', 17, 73, 46, 98, 114, 'A', 12),
('N6205004', 54, 98, 38, 46, 61, 'B', 0),
('N6205005', 83, 9, 89, 83, 102, 'A', 0),
('N6205006', 52, 39, 17, 94, 100, 'A', 0),
('N6205007', 33, 20, 63, 49, 53, 'C', 0),
('N6205008', 38, 8, 59, 77, 97, 'A', 0),
('N6205009', 82, 53, 86, 60, 65, 'C', 0),
('N6205010', 38, 39, 100, 46, 61, 'B', 0),
('N6205011', 66, 25, 96, 0, 11, 'E', 0),
('N6205012', 11, 7, 88, 97, 116, 'A', 0),
('N6205013', 52, 72, 63, 41, 53, 'B', 0),
('N6205014', 61, 21, 75, 22, 42, 'E', 0),
('N6205015', 73, 4, 4, 36, 49, 'B', 0),
('N6205016', 72, 93, 39, 71, 88, 'A', 0),
('N6205017', 89, 13, 59, 14, 32, 'E', 0),
('N6205018', 30, 36, 88, 98, 111, 'A', 0),
('N6205019', 17, 73, 46, 98, 114, 'A', 0),
('N6205020', 54, 98, 38, 46, 61, 'B', 0),
('N6205021', 83, 9, 89, 83, 102, 'A', 0),
('N6205022', 52, 39, 17, 94, 100, 'A', 0),
('N6205023', 33, 20, 63, 49, 53, 'C', 0),
('N6205024', 38, 8, 59, 77, 97, 'A', 0),
('N6205025', 82, 53, 86, 60, 65, 'C', 0),
('N6205026', 38, 39, 100, 46, 61, 'B', 0),
('N6205027', 66, 25, 96, 0, 11, 'E', 0),
('N6205028', 11, 7, 88, 97, 116, 'A', 0),
('N6206001', 43, 70, 76, 15, 15, 'E', 3),
('N6206002', 9, 69, 13, 82, 87, 'A', 12),
('N6206003', 63, 42, 84, 93, 103, 'A', 12),
('N6206004', 39, 86, 57, 83, 98, 'A', 0),
('N6206005', 97, 93, 64, 76, 96, 'A', 0),
('N6206006', 4, 77, 80, 10, 10, 'E', 0),
('N6206007', 76, 19, 76, 54, 59, 'C', 0),
('N6206008', 50, 20, 9, 89, 99, 'A', 0),
('N6206009', 100, 19, 64, 34, 49, 'B', 0),
('N6206010', 67, 5, 44, 60, 80, 'C', 0),
('N6206011', 47, 15, 76, 53, 53, 'C', 0),
('N6206012', 51, 74, 57, 71, 76, 'A', 0),
('N6206013', 41, 87, 45, 99, 109, 'A', 0),
('N6206014', 37, 20, 8, 24, 39, 'E', 0),
('N6206015', 45, 25, 70, 56, 76, 'C', 0),
('N6206016', 61, 94, 86, 53, 53, 'C', 0),
('N6206017', 68, 7, 45, 55, 60, 'C', 0),
('N6206018', 28, 31, 17, 19, 29, 'E', 0),
('N6206019', 98, 60, 52, 62, 77, 'B', 0),
('N6206020', 38, 50, 42, 42, 62, 'B', 0),
('N6206021', 15, 50, 43, 25, 25, 'E', 0),
('N6206022', 56, 89, 93, 54, 59, 'C', 0),
('N6206023', 41, 51, 60, 86, 96, 'A', 0),
('N6206024', 91, 77, 44, 65, 80, 'B', 0),
('N6206025', 29, 89, 9, 69, 89, 'B', 0),
('N6206026', 85, 99, 39, 39, 39, 'B', 0),
('N6206027', 81, 18, 74, 43, 48, 'B', 0),
('N6206028', 44, 87, 93, 5, 15, 'E', 0),
('N6207001', 99, 66, 13, 7, 10, 'E', 3),
('N6207002', 80, 96, 8, 9, 10, 'E', 3),
('N6207003', 33, 67, 1, 7, 21, 'E', 3),
('N6207004', 42, 45, 61, 35, 42, 'B', 0),
('N6207005', 5, 83, 23, 71, 91, 'A', 0),
('N6207006', 76, 85, 90, 39, 50, 'B', 0),
('N6207007', 65, 64, 77, 45, 52, 'B', 0),
('N6207008', 89, 32, 94, 79, 80, 'A', 0),
('N6207009', 46, 80, 87, 20, 32, 'E', 0),
('N6207010', 62, 60, 53, 14, 14, 'E', 0),
('N6207011', 62, 16, 23, 54, 66, 'C', 0),
('N6207012', 8, 18, 35, 29, 43, 'E', 0),
('N6207013', 5, 11, 27, 55, 55, 'C', 0),
('N6207014', 5, 73, 46, 24, 30, 'E', 0),
('N6207015', 20, 75, 75, 13, 32, 'E', 0),
('N6207016', 21, 27, 47, 91, 106, 'A', 0),
('N6207017', 9, 20, 98, 1, 13, 'E', 0),
('N6207018', 46, 15, 63, 73, 81, 'A', 0),
('N6207019', 48, 4, 91, 8, 18, 'E', 0),
('N6207020', 55, 26, 48, 30, 44, 'E', 0),
('N6207021', 72, 59, 9, 92, 109, 'A', 0),
('N6207022', 95, 25, 30, 19, 34, 'E', 0),
('N6207023', 70, 71, 11, 12, 15, 'E', 0),
('N6207024', 13, 5, 18, 34, 44, 'B', 0),
('N6207025', 82, 40, 48, 42, 48, 'B', 0),
('N6207026', 33, 53, 50, 98, 112, 'A', 0),
('N6207027', 69, 85, 32, 16, 18, 'E', 0),
('N6207028', 57, 78, 91, 30, 50, 'E', 0),
('N6208001', 43, 70, 76, 15, 15, 'E', 3),
('N6208002', 9, 69, 13, 82, 87, 'A', 12),
('N6208003', 63, 42, 84, 93, 103, 'A', 12),
('N6208004', 39, 86, 57, 83, 98, 'A', 0),
('N6208005', 97, 93, 64, 76, 96, 'A', 0),
('N6208006', 4, 77, 80, 10, 10, 'E', 0),
('N6208007', 76, 19, 76, 54, 59, 'C', 0),
('N6208008', 50, 20, 9, 89, 99, 'A', 0),
('N6208009', 100, 19, 64, 34, 49, 'B', 0),
('N6208010', 67, 5, 44, 60, 80, 'C', 0),
('N6208011', 47, 15, 76, 53, 53, 'C', 0),
('N6208012', 51, 74, 57, 71, 76, 'A', 0),
('N6208013', 41, 87, 45, 99, 109, 'A', 0),
('N6208014', 37, 20, 8, 24, 39, 'E', 0),
('N6208015', 45, 25, 70, 56, 76, 'C', 0),
('N6208016', 61, 94, 86, 53, 53, 'C', 0),
('N6208017', 68, 7, 45, 55, 60, 'C', 0),
('N6208018', 28, 31, 17, 19, 29, 'E', 0),
('N6208019', 98, 60, 52, 62, 77, 'B', 0),
('N6208020', 38, 50, 42, 42, 62, 'B', 0),
('N6208021', 15, 50, 43, 25, 25, 'E', 0),
('N6208022', 56, 89, 93, 54, 59, 'C', 0),
('N6208023', 41, 51, 60, 86, 96, 'A', 0),
('N6208024', 91, 77, 44, 65, 80, 'B', 0),
('N6208025', 29, 89, 9, 69, 89, 'B', 0),
('N6208026', 85, 99, 39, 39, 39, 'B', 0),
('N6208027', 81, 18, 74, 43, 48, 'B', 0),
('N6208028', 44, 87, 93, 5, 15, 'E', 0),
('N6209001', 99, 66, 13, 7, 10, 'E', 3),
('N6209002', 80, 96, 8, 9, 10, 'E', 3),
('N6209003', 33, 67, 1, 7, 21, 'E', 3),
('N6209004', 42, 45, 61, 35, 42, 'B', 0),
('N6209005', 5, 83, 23, 71, 91, 'A', 0),
('N6209006', 76, 85, 90, 39, 50, 'B', 0),
('N6209007', 65, 64, 77, 45, 52, 'B', 0),
('N6209008', 89, 32, 94, 79, 80, 'A', 0),
('N6209009', 46, 80, 87, 20, 32, 'E', 0),
('N6209010', 62, 60, 53, 14, 14, 'E', 0),
('N6209011', 62, 16, 23, 54, 66, 'C', 0),
('N6209012', 8, 18, 35, 29, 43, 'E', 0),
('N6209013', 5, 11, 27, 55, 55, 'C', 0),
('N6209014', 5, 73, 46, 24, 30, 'E', 0),
('N6209015', 20, 75, 75, 13, 32, 'E', 0),
('N6209016', 21, 27, 47, 91, 106, 'A', 0),
('N6209017', 9, 20, 98, 1, 13, 'E', 0),
('N6209018', 46, 15, 63, 73, 81, 'A', 0),
('N6209019', 48, 4, 91, 8, 18, 'E', 0),
('N6209020', 55, 26, 48, 30, 44, 'E', 0),
('N6209021', 72, 59, 9, 92, 109, 'A', 0),
('N6209022', 95, 25, 30, 19, 34, 'E', 0),
('N6209023', 70, 71, 11, 12, 15, 'E', 0),
('N6209024', 13, 5, 18, 34, 44, 'B', 0),
('N6209025', 82, 40, 48, 42, 48, 'B', 0),
('N6209026', 33, 53, 50, 98, 112, 'A', 0),
('N6209027', 69, 85, 32, 16, 18, 'E', 0),
('N6209028', 57, 78, 91, 30, 50, 'E', 0),
('N6210001', 5, 89, 57, 100, 113, 'A', 12),
('N6210002', 44, 46, 81, 29, 37, 'E', 3),
('N6210003', 7, 91, 72, 2, 11, 'E', 3),
('N6210004', 60, 8, 73, 69, 79, 'B', 0),
('N6210005', 82, 79, 84, 81, 90, 'A', 0),
('N6210006', 50, 46, 48, 22, 24, 'E', 0),
('N6210007', 25, 24, 97, 7, 18, 'E', 0),
('N6210008', 88, 75, 92, 64, 64, 'B', 0),
('N6210009', 46, 57, 31, 100, 103, 'A', 0),
('N6210010', 84, 28, 86, 31, 39, 'B', 0),
('N6210011', 16, 25, 24, 35, 45, 'B', 0),
('N6210012', 97, 41, 79, 2, 16, 'E', 0),
('N6210013', 62, 92, 24, 91, 96, 'A', 0),
('N6210014', 3, 70, 25, 72, 73, 'A', 0),
('N6210015', 2, 39, 25, 89, 107, 'A', 0),
('N6210016', 98, 50, 85, 32, 52, 'B', 0),
('N6210017', 90, 23, 91, 62, 64, 'B', 0),
('N6210018', 70, 97, 14, 85, 99, 'A', 0),
('N6210019', 68, 16, 95, 93, 100, 'A', 0),
('N6210020', 37, 25, 6, 56, 65, 'C', 0),
('N6210021', 7, 19, 55, 43, 62, 'B', 0),
('N6210022', 96, 93, 8, 64, 70, 'B', 0),
('N6210023', 28, 78, 8, 7, 21, 'E', 0),
('N6210024', 63, 79, 75, 4, 4, 'E', 0),
('N6210025', 12, 61, 18, 0, 7, 'E', 0),
('N6210026', 61, 87, 95, 17, 29, 'E', 0),
('N6210027', 67, 92, 0, 52, 54, 'C', 0),
('N6210028', 59, 16, 63, 100, 102, 'A', 0),
('N6211001', 89, 13, 59, 14, 32, 'E', 3),
('N6211002', 30, 36, 88, 98, 111, 'A', 12),
('N6211003', 17, 73, 46, 98, 114, 'A', 12),
('N6211004', 54, 98, 38, 46, 61, 'B', 0),
('N6211005', 83, 9, 89, 83, 102, 'A', 0),
('N6211006', 52, 39, 17, 94, 100, 'A', 0),
('N6211007', 33, 20, 63, 49, 53, 'C', 0),
('N6211008', 38, 8, 59, 77, 97, 'A', 0),
('N6211009', 82, 53, 86, 60, 65, 'C', 0),
('N6211010', 38, 39, 100, 46, 61, 'B', 15),
('N6211011', 66, 25, 96, 0, 11, 'E', 0),
('N6211012', 11, 7, 88, 97, 116, 'A', 0),
('N6211013', 52, 72, 63, 41, 53, 'B', 0),
('N6211014', 61, 21, 75, 22, 42, 'E', 0),
('N6211015', 73, 4, 4, 36, 49, 'B', 0),
('N6211016', 72, 93, 39, 71, 88, 'A', 0),
('N6211017', 89, 13, 59, 14, 32, 'E', 0),
('N6211018', 30, 36, 88, 98, 111, 'A', 0),
('N6211019', 17, 73, 46, 98, 114, 'A', 0),
('N6211020', 54, 98, 38, 46, 61, 'B', 0),
('N6211021', 83, 9, 89, 83, 102, 'A', 0),
('N6211022', 52, 39, 17, 94, 100, 'A', 0),
('N6211023', 33, 20, 63, 49, 53, 'C', 0),
('N6211024', 38, 8, 59, 77, 97, 'A', 0),
('N6211025', 82, 53, 86, 60, 65, 'C', 0),
('N6211026', 38, 39, 100, 46, 61, 'B', 0),
('N6211027', 66, 25, 96, 0, 11, 'E', 0),
('N6211028', 11, 7, 88, 97, 116, 'A', 0),
('N6212001', 43, 70, 76, 15, 15, 'E', 3),
('N6212002', 9, 69, 13, 82, 87, 'A', 12),
('N6212003', 63, 42, 84, 93, 103, 'A', 12),
('N6212004', 39, 86, 57, 83, 98, 'A', 0),
('N6212005', 97, 93, 64, 76, 96, 'A', 0),
('N6212006', 4, 77, 80, 10, 10, 'E', 0),
('N6212007', 76, 19, 76, 54, 59, 'C', 0),
('N6212008', 50, 20, 9, 89, 99, 'A', 0),
('N6212009', 100, 19, 64, 34, 49, 'B', 0),
('N6212010', 67, 5, 44, 60, 80, 'C', 0),
('N6212011', 47, 15, 76, 53, 53, 'C', 0),
('N6212012', 51, 74, 57, 71, 76, 'A', 0),
('N6212013', 41, 87, 45, 99, 109, 'A', 0),
('N6212014', 37, 20, 8, 24, 39, 'E', 0),
('N6212015', 45, 25, 70, 56, 76, 'C', 0),
('N6212016', 61, 94, 86, 53, 53, 'C', 0),
('N6212017', 68, 7, 45, 55, 60, 'C', 0),
('N6212018', 28, 31, 17, 19, 29, 'E', 0),
('N6212019', 98, 60, 52, 62, 77, 'B', 0),
('N6212020', 38, 50, 42, 42, 62, 'B', 0),
('N6212021', 15, 50, 43, 25, 25, 'E', 0),
('N6212022', 56, 89, 93, 54, 59, 'C', 0),
('N6212023', 41, 51, 60, 86, 96, 'A', 0),
('N6212024', 91, 77, 44, 65, 80, 'B', 0),
('N6212025', 29, 89, 9, 69, 89, 'B', 0),
('N6212026', 85, 99, 39, 39, 39, 'B', 0),
('N6212027', 81, 18, 74, 43, 48, 'B', 0),
('N6212028', 44, 87, 93, 5, 15, 'E', 0),
('N6213001', 99, 66, 13, 7, 10, 'E', 0),
('N6213002', 80, 96, 8, 9, 10, 'E', 0),
('N6213003', 33, 67, 1, 7, 21, 'E', 0),
('N6213004', 42, 45, 61, 35, 42, 'B', 0),
('N6213005', 5, 83, 23, 71, 91, 'A', 0),
('N6213006', 76, 85, 90, 39, 50, 'B', 0),
('N6213007', 65, 64, 77, 45, 52, 'B', 0),
('N6213008', 89, 32, 94, 79, 80, 'A', 0),
('N6213009', 46, 80, 87, 20, 32, 'E', 0),
('N6213010', 62, 60, 53, 14, 14, 'E', 0),
('N6213011', 62, 16, 23, 54, 66, 'C', 0),
('N6213012', 8, 18, 35, 29, 43, 'E', 0),
('N6213013', 5, 11, 27, 55, 55, 'C', 0),
('N6213014', 5, 73, 46, 24, 30, 'E', 0),
('N6213015', 20, 75, 75, 13, 32, 'E', 0),
('N6213016', 21, 27, 47, 91, 106, 'A', 0),
('N6213017', 9, 20, 98, 1, 13, 'E', 0),
('N6213018', 46, 15, 63, 73, 81, 'A', 0),
('N6213019', 48, 4, 91, 8, 18, 'E', 0),
('N6213020', 55, 26, 48, 30, 44, 'E', 0),
('N6213021', 72, 59, 9, 92, 109, 'A', 0),
('N6213022', 95, 25, 30, 19, 34, 'E', 0),
('N6213023', 70, 71, 11, 12, 15, 'E', 0),
('N6213024', 13, 5, 18, 34, 44, 'B', 0),
('N6213025', 82, 40, 48, 42, 48, 'B', 0),
('N6213026', 33, 53, 50, 98, 112, 'A', 0),
('N6213027', 69, 85, 32, 16, 18, 'E', 0),
('N6213028', 57, 78, 91, 30, 50, 'E', 0),
('N6213029', 99, 66, 13, 7, 10, 'E', 0),
('N6213030', 80, 96, 8, 9, 10, 'E', 0),
('N6214001', 5, 89, 57, 100, 113, 'A', 0),
('N6214002', 44, 46, 81, 29, 37, 'E', 0),
('N6214003', 7, 91, 72, 2, 11, 'E', 0),
('N6214004', 60, 8, 73, 69, 79, 'B', 0),
('N6214005', 82, 79, 84, 81, 90, 'A', 0),
('N6214006', 50, 46, 48, 22, 24, 'E', 0),
('N6214007', 25, 24, 97, 7, 18, 'E', 0),
('N6214008', 88, 75, 92, 64, 64, 'B', 0),
('N6214009', 46, 57, 31, 100, 103, 'A', 0),
('N6214010', 84, 28, 86, 31, 39, 'B', 0),
('N6214011', 16, 25, 24, 35, 45, 'B', 0),
('N6214012', 97, 41, 79, 2, 16, 'E', 0),
('N6214013', 62, 92, 24, 91, 96, 'A', 0),
('N6214014', 3, 70, 25, 72, 73, 'A', 0),
('N6214015', 2, 39, 25, 89, 107, 'A', 0),
('N6214016', 98, 50, 85, 32, 52, 'B', 0),
('N6214017', 90, 23, 91, 62, 64, 'B', 0),
('N6214018', 70, 97, 14, 85, 99, 'A', 0),
('N6214019', 68, 16, 95, 93, 100, 'A', 0),
('N6214020', 37, 25, 6, 56, 65, 'C', 0),
('N6214021', 7, 19, 55, 43, 62, 'B', 0),
('N6214022', 96, 93, 8, 64, 70, 'B', 0),
('N6214023', 28, 78, 8, 7, 21, 'E', 0),
('N6214024', 63, 79, 75, 4, 4, 'E', 0),
('N6214025', 12, 61, 18, 0, 7, 'E', 0),
('N6214026', 61, 87, 95, 17, 29, 'E', 0),
('N6214027', 67, 92, 0, 52, 54, 'C', 0),
('N6214028', 59, 16, 63, 100, 102, 'A', 0),
('N6214029', 96, 93, 8, 64, 70, 'B', 0),
('N6214030', 28, 78, 8, 7, 21, 'E', 0),
('N6215001', 89, 13, 59, 14, 32, 'E', 0),
('N6215002', 30, 36, 88, 98, 111, 'A', 0),
('N6215003', 17, 73, 46, 98, 114, 'A', 0),
('N6215004', 54, 98, 38, 46, 61, 'B', 0),
('N6215005', 83, 9, 89, 83, 102, 'A', 0),
('N6215006', 52, 39, 17, 94, 100, 'A', 0),
('N6215007', 33, 20, 63, 49, 53, 'C', 0),
('N6215008', 38, 8, 59, 77, 97, 'A', 0),
('N6215009', 82, 53, 86, 60, 65, 'C', 0),
('N6215010', 38, 39, 100, 46, 61, 'B', 0),
('N6215011', 66, 25, 96, 0, 11, 'E', 0),
('N6215012', 11, 7, 88, 97, 116, 'A', 0),
('N6215013', 52, 72, 63, 41, 53, 'B', 0),
('N6215014', 61, 21, 75, 22, 42, 'E', 0),
('N6215015', 73, 4, 4, 36, 49, 'B', 0),
('N6215016', 72, 93, 39, 71, 88, 'A', 0),
('N6215017', 89, 13, 59, 14, 32, 'E', 0),
('N6215018', 30, 36, 88, 98, 111, 'A', 0),
('N6215019', 17, 73, 46, 98, 114, 'A', 0),
('N6215020', 54, 98, 38, 46, 61, 'B', 0),
('N6215021', 83, 9, 89, 83, 102, 'A', 0),
('N6215022', 52, 39, 17, 94, 100, 'A', 0),
('N6215023', 33, 20, 63, 49, 53, 'C', 0),
('N6215024', 38, 8, 59, 77, 97, 'A', 0),
('N6215025', 82, 53, 86, 60, 65, 'C', 0),
('N6215026', 38, 39, 100, 46, 61, 'B', 0),
('N6215027', 66, 25, 96, 0, 11, 'E', 0),
('N6215028', 11, 7, 88, 97, 116, 'A', 0),
('N6215029', 11, 7, 88, 97, 116, 'A', 0),
('N6215030', 52, 72, 63, 41, 53, 'B', 0),
('N6216001', 43, 70, 76, 15, 15, 'E', 0),
('N6216002', 9, 69, 13, 82, 87, 'A', 0),
('N6216003', 63, 42, 84, 93, 103, 'A', 0),
('N6216004', 39, 86, 57, 83, 98, 'A', 0),
('N6216005', 97, 93, 64, 76, 96, 'A', 0),
('N6216006', 4, 77, 80, 10, 10, 'E', 0),
('N6216007', 76, 19, 76, 54, 59, 'C', 0),
('N6216008', 50, 20, 9, 89, 99, 'A', 0),
('N6216009', 100, 19, 64, 34, 49, 'B', 0),
('N6216010', 67, 5, 44, 60, 80, 'C', 0),
('N6216011', 47, 15, 76, 53, 53, 'C', 0),
('N6216012', 51, 74, 57, 71, 76, 'A', 0),
('N6216013', 41, 87, 45, 99, 109, 'A', 0),
('N6216014', 37, 20, 8, 24, 39, 'E', 0),
('N6216015', 45, 25, 70, 56, 76, 'C', 0),
('N6216016', 61, 94, 86, 53, 53, 'C', 0),
('N6216017', 68, 7, 45, 55, 60, 'C', 0),
('N6216018', 28, 31, 17, 19, 29, 'E', 0),
('N6216019', 98, 60, 52, 62, 77, 'B', 0),
('N6216020', 38, 50, 42, 42, 62, 'B', 0),
('N6216021', 15, 50, 43, 25, 25, 'E', 0),
('N6216022', 56, 89, 93, 54, 59, 'C', 0),
('N6216023', 41, 51, 60, 86, 96, 'A', 0),
('N6216024', 91, 77, 44, 65, 80, 'B', 0),
('N6216025', 29, 89, 9, 69, 89, 'B', 0),
('N6216026', 85, 99, 39, 39, 39, 'B', 0),
('N6216027', 81, 18, 74, 43, 48, 'B', 0),
('N6216028', 44, 87, 93, 5, 15, 'E', 0),
('N6216029', 81, 18, 74, 43, 48, 'B', 0),
('N6216030', 44, 87, 93, 5, 15, 'E', 0),
('N6217001', 99, 66, 13, 7, 10, 'E', 0),
('N6217002', 80, 96, 8, 9, 10, 'E', 0),
('N6217003', 33, 67, 1, 7, 21, 'E', 0),
('N6217004', 42, 45, 61, 35, 42, 'B', 0),
('N6217005', 5, 83, 23, 71, 91, 'A', 0),
('N6217006', 76, 85, 90, 39, 50, 'B', 0),
('N6217007', 65, 64, 77, 45, 52, 'B', 0),
('N6217008', 89, 32, 94, 79, 80, 'A', 0),
('N6217009', 46, 80, 87, 20, 32, 'E', 0),
('N6217010', 62, 60, 53, 14, 14, 'E', 0),
('N6217011', 62, 16, 23, 54, 66, 'C', 0),
('N6217012', 8, 18, 35, 29, 43, 'E', 0),
('N6217013', 5, 11, 27, 55, 55, 'C', 0),
('N6217014', 5, 73, 46, 24, 30, 'E', 0),
('N6217015', 20, 75, 75, 13, 32, 'E', 0),
('N6217016', 21, 27, 47, 91, 106, 'A', 0),
('N6217017', 9, 20, 98, 1, 13, 'E', 0),
('N6217018', 46, 15, 63, 73, 81, 'A', 0),
('N6217019', 48, 4, 91, 8, 18, 'E', 0),
('N6217020', 55, 26, 48, 30, 44, 'E', 0),
('N6217021', 72, 59, 9, 92, 109, 'A', 0),
('N6217022', 95, 25, 30, 19, 34, 'E', 0),
('N6217023', 70, 71, 11, 12, 15, 'E', 0),
('N6217024', 13, 5, 18, 34, 44, 'B', 0),
('N6217025', 82, 40, 48, 42, 48, 'B', 0),
('N6217026', 33, 53, 50, 98, 112, 'A', 0),
('N6217027', 69, 85, 32, 16, 18, 'E', 0),
('N6217028', 57, 78, 91, 30, 50, 'E', 0),
('N6217029', 95, 25, 30, 19, 34, 'E', 0),
('N6217030', 70, 71, 11, 12, 15, 'E', 0),
('N6218001', 5, 89, 57, 100, 113, 'A', 0),
('N6218002', 44, 46, 81, 29, 37, 'E', 0),
('N6218003', 7, 91, 72, 2, 11, 'E', 0),
('N6218004', 60, 8, 73, 69, 79, 'B', 0),
('N6218005', 82, 79, 84, 81, 90, 'A', 0),
('N6218006', 50, 46, 48, 22, 24, 'E', 0),
('N6218007', 25, 24, 97, 7, 18, 'E', 0),
('N6218008', 88, 75, 92, 64, 64, 'B', 0),
('N6218009', 46, 57, 31, 100, 103, 'A', 0),
('N6218010', 84, 28, 86, 31, 39, 'B', 0),
('N6218011', 16, 25, 24, 35, 45, 'B', 0),
('N6218012', 97, 41, 79, 2, 16, 'E', 0),
('N6218013', 62, 92, 24, 91, 96, 'A', 0),
('N6218014', 3, 70, 25, 72, 73, 'A', 0),
('N6218015', 2, 39, 25, 89, 107, 'A', 0),
('N6218016', 98, 50, 85, 32, 52, 'B', 0),
('N6218017', 90, 23, 91, 62, 64, 'B', 0),
('N6218018', 70, 97, 14, 85, 99, 'A', 0),
('N6218019', 68, 16, 95, 93, 100, 'A', 0),
('N6218020', 37, 25, 6, 56, 65, 'C', 0),
('N6218021', 7, 19, 55, 43, 62, 'B', 0),
('N6218022', 96, 93, 8, 64, 70, 'B', 0),
('N6218023', 28, 78, 8, 7, 21, 'E', 0),
('N6218024', 63, 79, 75, 4, 4, 'E', 0),
('N6218025', 12, 61, 18, 0, 7, 'E', 0),
('N6218026', 61, 87, 95, 17, 29, 'E', 0),
('N6218027', 67, 92, 0, 52, 54, 'C', 0),
('N6218028', 59, 16, 63, 100, 102, 'A', 0),
('N6218029', 96, 93, 8, 64, 70, 'B', 0),
('N6218030', 28, 78, 8, 7, 21, 'E', 0),
('N6219001', 89, 13, 59, 14, 32, 'E', 0),
('N6219002', 30, 36, 88, 98, 111, 'A', 0),
('N6219003', 17, 73, 46, 98, 114, 'A', 0),
('N6219004', 54, 98, 38, 46, 61, 'B', 0),
('N6219005', 83, 9, 89, 83, 102, 'A', 0),
('N6219006', 52, 39, 17, 94, 100, 'A', 0),
('N6219007', 33, 20, 63, 49, 53, 'C', 0),
('N6219008', 38, 8, 59, 77, 97, 'A', 0),
('N6219009', 82, 53, 86, 60, 65, 'C', 0),
('N6219010', 38, 39, 100, 46, 61, 'B', 0),
('N6219011', 66, 25, 96, 0, 11, 'E', 0),
('N6219012', 11, 7, 88, 97, 116, 'A', 0),
('N6219013', 52, 72, 63, 41, 53, 'B', 0),
('N6219014', 61, 21, 75, 22, 42, 'E', 0),
('N6219015', 73, 4, 4, 36, 49, 'B', 0),
('N6219016', 72, 93, 39, 71, 88, 'A', 0),
('N6219017', 89, 13, 59, 14, 32, 'E', 0),
('N6219018', 30, 36, 88, 98, 111, 'A', 0),
('N6219019', 17, 73, 46, 98, 114, 'A', 0),
('N6219020', 54, 98, 38, 46, 61, 'B', 0),
('N6219021', 83, 9, 89, 83, 102, 'A', 0),
('N6219022', 52, 39, 17, 94, 100, 'A', 0),
('N6219023', 33, 20, 63, 49, 53, 'C', 0),
('N6219024', 38, 8, 59, 77, 97, 'A', 0),
('N6219025', 82, 53, 86, 60, 65, 'C', 0),
('N6219026', 38, 39, 100, 46, 61, 'B', 0),
('N6219027', 66, 25, 96, 0, 11, 'E', 0),
('N6219028', 11, 7, 88, 97, 116, 'A', 0),
('N6219029', 11, 7, 88, 97, 116, 'A', 0),
('N6219030', 52, 72, 63, 41, 53, 'B', 0),
('N6220001', 43, 70, 76, 15, 15, 'E', 0),
('N6220002', 9, 69, 13, 82, 87, 'A', 0),
('N6220003', 63, 42, 84, 93, 103, 'A', 0),
('N6220004', 39, 86, 57, 83, 98, 'A', 0),
('N6220005', 97, 93, 64, 76, 96, 'A', 0),
('N6220006', 4, 77, 80, 10, 10, 'E', 0),
('N6220007', 76, 19, 76, 54, 59, 'C', 0),
('N6220008', 50, 20, 9, 89, 99, 'A', 0),
('N6220009', 100, 19, 64, 34, 49, 'B', 0),
('N6220010', 67, 5, 44, 60, 80, 'C', 0),
('N6220011', 47, 15, 76, 53, 53, 'C', 0),
('N6220012', 51, 74, 57, 71, 76, 'A', 0),
('N6220013', 41, 87, 45, 99, 109, 'A', 0),
('N6220014', 37, 20, 8, 24, 39, 'E', 0),
('N6220015', 45, 25, 70, 56, 76, 'C', 0),
('N6220016', 61, 94, 86, 53, 53, 'C', 0),
('N6220017', 68, 7, 45, 55, 60, 'C', 5),
('N6220018', 28, 31, 17, 19, 29, 'E', 0),
('N6220019', 98, 60, 52, 62, 77, 'B', 0),
('N6220020', 38, 50, 42, 42, 62, 'B', 0),
('N6220021', 15, 50, 43, 25, 25, 'E', 0),
('N6220022', 56, 89, 93, 54, 59, 'C', 5),
('N6220023', 41, 51, 60, 86, 96, 'A', 0),
('N6220024', 91, 77, 44, 65, 80, 'B', 0),
('N6220025', 29, 89, 9, 69, 89, 'B', 0),
('N6220026', 85, 99, 39, 39, 39, 'B', 0),
('N6220027', 81, 18, 74, 43, 48, 'B', 0),
('N6220028', 44, 87, 93, 5, 15, 'E', 0),
('N6220029', 81, 18, 74, 43, 48, 'B', 0),
('N6220030', 44, 87, 93, 5, 15, 'E', 0),
('N6221001', 99, 66, 13, 7, 10, 'E', 0),
('N6221002', 80, 96, 8, 9, 10, 'E', 0),
('N6221003', 33, 67, 1, 7, 21, 'E', 0),
('N6221004', 42, 45, 61, 35, 42, 'B', 0),
('N6221005', 5, 83, 23, 71, 91, 'A', 0),
('N6221006', 76, 85, 90, 39, 50, 'B', 0),
('N6221007', 65, 64, 77, 45, 52, 'B', 0),
('N6221008', 89, 32, 94, 79, 80, 'A', 0),
('N6221009', 46, 80, 87, 20, 32, 'E', 0),
('N6221010', 62, 60, 53, 14, 14, 'E', 0),
('N6221011', 62, 16, 23, 54, 66, 'C', 0),
('N6221012', 8, 18, 35, 29, 43, 'E', 0),
('N6221013', 5, 11, 27, 55, 55, 'C', 0),
('N6221014', 5, 73, 46, 24, 30, 'E', 0),
('N6221015', 20, 75, 75, 13, 32, 'E', 0),
('N6221016', 21, 27, 47, 91, 106, 'A', 0),
('N6221017', 9, 20, 98, 1, 13, 'E', 0),
('N6221018', 46, 15, 63, 73, 81, 'A', 0),
('N6221019', 48, 4, 91, 8, 18, 'E', 0),
('N6221020', 55, 26, 48, 30, 44, 'E', 0),
('N6221021', 72, 59, 9, 92, 109, 'A', 0),
('N6221022', 95, 25, 30, 19, 34, 'E', 0),
('N6221023', 70, 71, 11, 12, 15, 'E', 0),
('N6221024', 13, 5, 18, 34, 44, 'B', 0),
('N6221025', 82, 40, 48, 42, 48, 'B', 0),
('N6221026', 33, 53, 50, 98, 112, 'A', 0),
('N6221027', 69, 85, 32, 16, 18, 'E', 0),
('N6221028', 57, 78, 91, 30, 50, 'E', 0),
('N6221029', 95, 25, 30, 19, 34, 'E', 0),
('N6221030', 70, 71, 11, 12, 15, 'E', 0),
('N6222001', 5, 89, 57, 100, 113, 'A', 0),
('N6222002', 44, 46, 81, 29, 37, 'E', 0),
('N6222003', 7, 91, 72, 2, 11, 'E', 0),
('N6222004', 60, 8, 73, 69, 79, 'B', 0),
('N6222005', 82, 79, 84, 81, 90, 'A', 0),
('N6222006', 50, 46, 48, 22, 24, 'E', 0),
('N6222007', 25, 24, 97, 7, 18, 'E', 0),
('N6222008', 88, 75, 92, 64, 64, 'B', 0),
('N6222009', 46, 57, 31, 100, 103, 'A', 0),
('N6222010', 84, 28, 86, 31, 39, 'B', 0),
('N6222011', 16, 25, 24, 35, 45, 'B', 0),
('N6222012', 97, 41, 79, 2, 16, 'E', 0),
('N6222013', 62, 92, 24, 91, 96, 'A', 0),
('N6222014', 3, 70, 25, 72, 73, 'A', 0),
('N6222015', 2, 39, 25, 89, 107, 'A', 0),
('N6222016', 98, 50, 85, 32, 52, 'B', 0),
('N6222017', 90, 23, 91, 62, 64, 'B', 0),
('N6222018', 70, 97, 14, 85, 99, 'A', 0),
('N6222019', 68, 16, 95, 93, 100, 'A', 0),
('N6222020', 37, 25, 6, 56, 65, 'C', 0),
('N6222021', 7, 19, 55, 43, 62, 'B', 0),
('N6222022', 96, 93, 8, 64, 70, 'B', 0),
('N6222023', 28, 78, 8, 7, 21, 'E', 0),
('N6222024', 63, 79, 75, 4, 4, 'E', 0),
('N6222025', 12, 61, 18, 0, 7, 'E', 0),
('N6222026', 61, 87, 95, 17, 29, 'E', 0),
('N6222027', 67, 92, 0, 52, 54, 'C', 0),
('N6222028', 59, 16, 63, 100, 102, 'A', 0),
('N6222029', 96, 93, 8, 64, 70, 'B', 0),
('N6222030', 28, 78, 8, 7, 21, 'E', 0),
('N6223001', 89, 13, 59, 14, 32, 'E', 0),
('N6223002', 30, 36, 88, 98, 111, 'A', 0),
('N6223003', 17, 73, 46, 98, 114, 'A', 0),
('N6223004', 54, 98, 38, 46, 61, 'B', 0),
('N6223005', 83, 9, 89, 83, 102, 'A', 0),
('N6223006', 52, 39, 17, 94, 100, 'A', 0),
('N6223007', 33, 20, 63, 49, 53, 'C', 0),
('N6223008', 38, 8, 59, 77, 97, 'A', 0),
('N6223009', 82, 53, 86, 60, 65, 'C', 0),
('N6223010', 38, 39, 100, 46, 61, 'B', 0),
('N6223011', 66, 25, 96, 0, 11, 'E', 0),
('N6223012', 11, 7, 88, 97, 116, 'A', 0),
('N6223013', 52, 72, 63, 41, 53, 'B', 0),
('N6223014', 61, 21, 75, 22, 42, 'E', 0),
('N6223015', 73, 4, 4, 36, 49, 'B', 0),
('N6223016', 72, 93, 39, 71, 88, 'A', 0),
('N6223017', 89, 13, 59, 14, 32, 'E', 0),
('N6223018', 30, 36, 88, 98, 111, 'A', 0),
('N6223019', 17, 73, 46, 98, 114, 'A', 0),
('N6223020', 54, 98, 38, 46, 61, 'B', 0),
('N6223021', 83, 9, 89, 83, 102, 'A', 0),
('N6223022', 52, 39, 17, 94, 100, 'A', 0),
('N6223023', 33, 20, 63, 49, 53, 'C', 0),
('N6223024', 38, 8, 59, 77, 97, 'A', 0),
('N6223025', 82, 53, 86, 60, 65, 'C', 0),
('N6223026', 38, 39, 100, 46, 61, 'B', 0),
('N6223027', 66, 25, 96, 0, 11, 'E', 0),
('N6223028', 11, 7, 88, 97, 116, 'A', 0),
('N6223029', 11, 7, 88, 97, 116, 'A', 0),
('N6223030', 52, 72, 63, 41, 53, 'B', 0),
('N6224001', 43, 70, 76, 15, 15, 'E', 0),
('N6224002', 9, 69, 13, 82, 87, 'A', 0),
('N6224003', 63, 42, 84, 93, 103, 'A', 0),
('N6224004', 39, 86, 57, 83, 98, 'A', 0),
('N6224005', 97, 93, 64, 76, 96, 'A', 0),
('N6224006', 4, 77, 80, 10, 10, 'E', 0),
('N6224007', 76, 19, 76, 54, 59, 'C', 0),
('N6224008', 50, 20, 9, 89, 99, 'A', 0),
('N6224009', 100, 19, 64, 34, 49, 'B', 0),
('N6224010', 67, 5, 44, 60, 80, 'C', 0),
('N6224011', 47, 15, 76, 53, 53, 'C', 0),
('N6224012', 51, 74, 57, 71, 76, 'A', 0),
('N6224013', 41, 87, 45, 99, 109, 'A', 0),
('N6224014', 37, 20, 8, 24, 39, 'E', 0),
('N6224015', 45, 25, 70, 56, 76, 'C', 0),
('N6224016', 61, 94, 86, 53, 53, 'C', 0),
('N6224017', 68, 7, 45, 55, 60, 'C', 0),
('N6224018', 28, 31, 17, 19, 29, 'E', 0),
('N6224019', 98, 60, 52, 62, 77, 'B', 0),
('N6224020', 38, 50, 42, 42, 62, 'B', 0),
('N6224021', 15, 50, 43, 25, 25, 'E', 0),
('N6224022', 56, 89, 93, 54, 59, 'C', 5),
('N6224023', 41, 51, 60, 86, 96, 'A', 0),
('N6224024', 91, 77, 44, 65, 80, 'B', 0),
('N6224025', 29, 89, 9, 69, 89, 'B', 0),
('N6224026', 85, 99, 39, 39, 39, 'B', 0),
('N6224027', 81, 18, 74, 43, 48, 'B', 0),
('N6224028', 44, 87, 93, 5, 15, 'E', 0),
('N6224029', 81, 18, 74, 43, 48, 'B', 0),
('N6224030', 44, 87, 93, 5, 15, 'E', 0),
('N6225001', 99, 66, 13, 7, 10, 'E', 0),
('N6225002', 80, 96, 8, 9, 10, 'E', 0),
('N6225003', 33, 67, 1, 7, 21, 'E', 0),
('N6225004', 42, 45, 61, 35, 42, 'B', 0),
('N6225005', 5, 83, 23, 71, 91, 'A', 0),
('N6225006', 76, 85, 90, 39, 50, 'B', 0),
('N6225007', 65, 64, 77, 45, 52, 'B', 0),
('N6225008', 89, 32, 94, 79, 80, 'A', 0),
('N6225009', 46, 80, 87, 20, 32, 'E', 0),
('N6225010', 62, 60, 53, 14, 14, 'E', 0),
('N6225011', 62, 16, 23, 54, 66, 'C', 0),
('N6225012', 8, 18, 35, 29, 43, 'E', 0),
('N6225013', 5, 11, 27, 55, 55, 'C', 0),
('N6225014', 5, 73, 46, 24, 30, 'E', 0),
('N6225015', 20, 75, 75, 13, 32, 'E', 0),
('N6225016', 21, 27, 47, 91, 106, 'A', 0),
('N6225017', 9, 20, 98, 1, 13, 'E', 0),
('N6225018', 46, 15, 63, 73, 81, 'A', 0),
('N6225019', 48, 4, 91, 8, 18, 'E', 0),
('N6225020', 55, 26, 48, 30, 44, 'E', 0),
('N6225021', 72, 59, 9, 92, 109, 'A', 0),
('N6225022', 95, 25, 30, 19, 34, 'E', 0),
('N6225023', 70, 71, 11, 12, 15, 'E', 0),
('N6225024', 13, 5, 18, 34, 44, 'B', 0),
('N6225025', 82, 40, 48, 42, 48, 'B', 0),
('N6225026', 33, 53, 50, 98, 112, 'A', 0),
('N6225027', 69, 85, 32, 16, 18, 'E', 0),
('N6225028', 57, 78, 91, 30, 50, 'E', 0),
('N6225029', 95, 25, 30, 19, 34, 'E', 0),
('N6225030', 70, 71, 11, 12, 15, 'E', 0),
('N6226001', 5, 89, 57, 100, 113, 'A', 0),
('N6226002', 44, 46, 81, 29, 37, 'E', 0),
('N6226003', 7, 91, 72, 2, 11, 'E', 0),
('N6226004', 60, 8, 73, 69, 79, 'B', 0),
('N6226005', 82, 79, 84, 81, 90, 'A', 0),
('N6226006', 50, 46, 48, 22, 24, 'E', 0),
('N6226007', 25, 24, 97, 7, 18, 'E', 0),
('N6226008', 88, 75, 92, 64, 64, 'B', 0),
('N6226009', 46, 57, 31, 100, 103, 'A', 0),
('N6226010', 84, 28, 86, 31, 39, 'B', 0),
('N6226011', 16, 25, 24, 35, 45, 'B', 0),
('N6226012', 97, 41, 79, 2, 16, 'E', 0),
('N6226013', 62, 92, 24, 91, 96, 'A', 0),
('N6226014', 3, 70, 25, 72, 73, 'A', 0),
('N6226015', 2, 39, 25, 89, 107, 'A', 0),
('N6226016', 98, 50, 85, 32, 52, 'B', 0),
('N6226017', 90, 23, 91, 62, 64, 'B', 0),
('N6226018', 70, 97, 14, 85, 99, 'A', 0),
('N6226019', 68, 16, 95, 93, 100, 'A', 0),
('N6226020', 37, 25, 6, 56, 65, 'C', 0),
('N6226021', 7, 19, 55, 43, 62, 'B', 0),
('N6226022', 96, 93, 8, 64, 70, 'B', 0),
('N6226023', 28, 78, 8, 7, 21, 'E', 0),
('N6226024', 63, 79, 75, 4, 4, 'E', 0),
('N6226025', 12, 61, 18, 0, 7, 'E', 0),
('N6226026', 61, 87, 95, 17, 29, 'E', 0),
('N6226027', 67, 92, 0, 52, 54, 'C', 0),
('N6226028', 59, 16, 63, 100, 102, 'A', 0),
('N6226029', 96, 93, 8, 64, 70, 'B', 0),
('N6226030', 28, 78, 8, 7, 21, 'E', 0),
('N6227001', 89, 13, 59, 14, 32, 'E', 0),
('N6227002', 30, 36, 88, 98, 111, 'A', 0),
('N6227003', 17, 73, 46, 98, 114, 'A', 0),
('N6227004', 54, 98, 38, 46, 61, 'B', 0),
('N6227005', 83, 9, 89, 83, 102, 'A', 0),
('N6227006', 52, 39, 17, 94, 100, 'A', 0),
('N6227007', 33, 20, 63, 49, 53, 'C', 0),
('N6227008', 38, 8, 59, 77, 97, 'A', 0),
('N6227009', 82, 53, 86, 60, 65, 'C', 0),
('N6227010', 38, 39, 100, 46, 61, 'B', 0),
('N6227011', 66, 25, 96, 0, 11, 'E', 0),
('N6227012', 11, 7, 88, 97, 116, 'A', 0),
('N6227013', 52, 72, 63, 41, 53, 'B', 0),
('N6227014', 61, 21, 75, 22, 42, 'E', 0),
('N6227015', 73, 4, 4, 36, 49, 'B', 0),
('N6227016', 72, 93, 39, 71, 88, 'A', 0),
('N6227017', 89, 13, 59, 14, 32, 'E', 0),
('N6227018', 30, 36, 88, 98, 111, 'A', 0),
('N6227019', 17, 73, 46, 98, 114, 'A', 0),
('N6227020', 54, 98, 38, 46, 61, 'B', 0),
('N6227021', 83, 9, 89, 83, 102, 'A', 0),
('N6227022', 52, 39, 17, 94, 100, 'A', 0),
('N6227023', 33, 20, 63, 49, 53, 'C', 0),
('N6227024', 38, 8, 59, 77, 97, 'A', 0),
('N6227025', 82, 53, 86, 60, 65, 'C', 0),
('N6227026', 38, 39, 100, 46, 61, 'B', 0),
('N6227027', 66, 25, 96, 0, 11, 'E', 0),
('N6227028', 11, 7, 88, 97, 116, 'A', 0),
('N6227029', 11, 7, 88, 97, 116, 'A', 0),
('N6227030', 52, 72, 63, 41, 53, 'B', 0),
('N6228001', 43, 70, 76, 15, 15, 'E', 0),
('N6228002', 9, 69, 13, 82, 87, 'A', 0),
('N6228003', 63, 42, 84, 93, 103, 'A', 0),
('N6228004', 39, 86, 57, 83, 98, 'A', 0),
('N6228005', 97, 93, 64, 76, 96, 'A', 0),
('N6228006', 4, 77, 80, 10, 10, 'E', 0),
('N6228007', 76, 19, 76, 54, 59, 'C', 0),
('N6228008', 50, 20, 9, 89, 99, 'A', 0),
('N6228009', 100, 19, 64, 34, 49, 'B', 0),
('N6228010', 67, 5, 44, 60, 80, 'C', 0),
('N6228011', 47, 15, 76, 53, 53, 'C', 0),
('N6228012', 51, 74, 57, 71, 76, 'A', 0),
('N6228013', 41, 87, 45, 99, 109, 'A', 0),
('N6228014', 37, 20, 8, 24, 39, 'E', 0),
('N6228015', 45, 25, 70, 56, 76, 'C', 0),
('N6228016', 61, 94, 86, 53, 53, 'C', 0),
('N6228017', 68, 7, 45, 55, 60, 'C', 0),
('N6228018', 28, 31, 17, 19, 29, 'E', 0),
('N6228019', 98, 60, 52, 62, 77, 'B', 0),
('N6228020', 38, 50, 42, 42, 62, 'B', 0),
('N6228021', 15, 50, 43, 25, 25, 'E', 0),
('N6228022', 56, 89, 93, 54, 59, 'C', 0),
('N6228023', 41, 51, 60, 86, 96, 'A', 0),
('N6228024', 91, 77, 44, 65, 80, 'B', 0),
('N6228025', 29, 89, 9, 69, 89, 'B', 0),
('N6228026', 85, 99, 39, 39, 39, 'B', 0),
('N6228027', 81, 18, 74, 43, 48, 'B', 0),
('N6228028', 44, 87, 93, 5, 15, 'E', 0),
('N6228029', 81, 18, 74, 43, 48, 'B', 0),
('N6228030', 44, 87, 93, 5, 15, 'E', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_semester`
--

CREATE TABLE `nilai_semester` (
  `mahasiswa_nrp` varchar(9) NOT NULL,
  `semester` tinyint(2) UNSIGNED NOT NULL,
  `ips` varchar(4) NOT NULL,
  `tahun_ajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_semester`
--

INSERT INTO `nilai_semester` (`mahasiswa_nrp`, `semester`, `ips`, `tahun_ajaran`) VALUES
('213116004', 1, '1.5', 'GASAL 2014/2015'),
('213116155', 1, '0.5', 'GASAL 2014/2015'),
('213116158', 1, '1', 'GASAL 2014/2015'),
('213116185', 1, '1.5', 'GASAL 2014/2015'),
('213116200', 1, '1', 'GASAL 2014/2015'),
('213116201', 1, '1.5', 'GASAL 2014/2015'),
('213116202', 1, '0.5', 'GASAL 2014/2015'),
('213116203', 1, '1.5', 'GASAL 2014/2015'),
('213116204', 1, '1', 'GASAL 2014/2015'),
('213116205', 1, '1.5', 'GASAL 2014/2015'),
('213116206', 1, '1.5', 'GASAL 2014/2015'),
('213116207', 1, '0.5', 'GASAL 2014/2015'),
('213116208', 1, '1.5', 'GASAL 2014/2015'),
('213116209', 1, '0.5', 'GASAL 2014/2015'),
('213116210', 1, '1', 'GASAL 2014/2015'),
('213116211', 1, '1.5', 'GASAL 2014/2015'),
('213116212', 1, '1.5', 'GASAL 2014/2015');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_registrasi`
--

CREATE TABLE `nomor_registrasi` (
  `id` varchar(6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = belum terpakai, 1 = sudah terpakai untuk registrasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nomor_registrasi`
--

INSERT INTO `nomor_registrasi` (`id`, `status`) VALUES
('13g31g', 1),
('1f11vf', 1),
('1f1gg7', 1),
('315135', 1),
('3n3b3b', 1),
('514f13', 1),
('adf312', 1),
('asd125', 1),
('asdqwe', 1),
('b2222f', 1),
('bxvtr7', 1),
('f311g3', 1),
('f322y4', 1),
('gg3rfd', 1),
('hahaha', 0),
('j45j44', 1),
('k6464f', 1),
('kkusgd', 0),
('n4h3ff', 1),
('nert34', 1),
('qwe321', 1),
('wdf31', 1),
('zxc241', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `dari` varchar(9) DEFAULT NULL,
  `tujuan` varchar(9) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text,
  `tanggal_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_baca` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `dari`, `tujuan`, `judul`, `isi`, `tanggal_create`, `status_baca`) VALUES
(6, 'PMB', 'BAU', 'adf312', NULL, '2015-12-18 22:11:38', 0),
(7, 'PMB', 'BAU', 'asdqwe', NULL, '2015-12-18 22:11:43', 0),
(8, 'PMB', 'BAU', 'gg3rfd', NULL, '2015-12-18 22:11:48', 0),
(9, 'PMB', 'BAU', 'n4h3ff', NULL, '2015-12-18 22:11:53', 0),
(15, 'PMB', 'BAU', '13g31g', NULL, '2015-12-18 22:34:58', 0),
(16, 'PMB', 'BAU', '315135', NULL, '2015-12-18 22:35:03', 1),
(17, 'PMB', 'BAU', '514f13', NULL, '2015-12-18 22:35:08', 1),
(18, 'PMB', 'BAU', 'asd125', NULL, '2015-12-18 22:35:14', 1),
(19, 'PMB', 'BAU', 'qwe321', NULL, '2015-12-18 22:35:19', 1),
(25, 'PMB', 'BAU', '1f1gg7', NULL, '2015-12-18 23:18:41', 1),
(26, 'PMB', 'BAU', 'zxc241', NULL, '2015-12-18 23:18:47', 1),
(27, 'PMB', 'BAU', 'wdf31', NULL, '2015-12-18 23:18:51', 1),
(28, 'PMB', 'BAU', '1f11vf', NULL, '2015-12-18 23:18:55', 1),
(29, 'PMB', 'BAU', '3n3b3b', NULL, '2015-12-18 23:19:00', 1),
(35, 'PMB', 'BAU', 'f311g3', NULL, '2015-12-18 23:44:57', 1),
(36, 'PMB', 'BAU', 'k6464f', NULL, '2015-12-18 23:45:04', 1),
(37, 'PMB', 'BAU', 'bxvtr7', NULL, '2015-12-18 23:45:25', 1),
(38, 'PMB', 'BAU', 'j45j44', NULL, '2015-12-18 23:45:50', 1),
(39, 'PMB', 'BAU', 'b2222f', NULL, '2015-12-18 23:46:05', 1),
(40, 'BAU', 'PMB', 'adf312', NULL, '2015-12-21 22:11:38', 1),
(41, 'BAU', 'PMB', 'asdqwe', NULL, '2015-12-21 22:11:43', 1),
(42, 'BAU', 'PMB', 'gg3rfd', NULL, '2015-12-21 22:11:48', 1),
(43, 'BAU', 'PMB', 'n4h3ff', NULL, '2015-12-21 22:11:53', 1),
(44, 'BAU', 'PMB', '13g31g', NULL, '2015-12-21 22:34:58', 1),
(45, 'DO004', 'DO001', 'Anda diminta untuk mengajar Artificial Intelligence Kelas B', NULL, '2015-12-24 15:44:33', 1),
(46, 'DO004', 'DO006', 'Anda diminta untuk mengajar Digital Image Processing Kelas B', NULL, '2015-12-24 16:00:12', 0),
(47, 'DO004', 'DO005', 'Anda diminta untuk mengajar Mathematics Kelas B', NULL, '2015-12-24 16:05:32', 0),
(48, 'DO004', 'DO001', 'Artificial Intelligence Kelas A ditutup.', NULL, '2015-12-24 16:09:35', 1),
(49, 'DO004', 'DO003', 'Anda diminta untuk mengajar Algoritma dan Programming Kelas C', NULL, '2015-12-24 16:12:49', 0),
(50, 'DO004', 'DO003', 'Anda diminta untuk mengajar Object-Oriented Programming Kelas B', NULL, '2015-12-24 16:16:52', 0),
(51, 'DO004', 'DO004', 'Anda diminta untuk mengajar Computer Graphics Kelas B', NULL, '2015-12-24 16:18:02', 1),
(52, 'DO004', 'DO005', 'Anda diminta untuk mengajar Multimedia Kelas B', NULL, '2015-12-24 16:40:16', 0),
(53, 'DO004', 'DO002', 'Anda diminta untuk mengajar Internet Application Framework Kelas B', NULL, '2015-12-24 16:41:03', 1),
(54, 'DO004', 'DO004', 'Anda diminta untuk mengajar Artificial Intelligence Kelas B', NULL, '2015-12-24 16:41:55', 1),
(55, 'DO004', 'DO001', 'Penilaian Algoritma dan Programming / A telah terkonfirmasi.', NULL, '2016-01-01 22:27:18', 1),
(56, 'DO004', 'DO002', 'Penilaian Algoritma dan Programming / B telah terkonfirmasi.', NULL, '2016-01-01 22:28:14', 0),
(57, 'DO004', 'DO002', 'Penilaian Intro to Programming / B telah terkonfirmasi.', NULL, '2016-01-01 22:30:27', 0),
(59, 'PMB', 'BAU', 'nert34', NULL, '2016-01-08 00:39:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nrp`
--

CREATE TABLE `nrp` (
  `id` varchar(9) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nrp`
--

INSERT INTO `nrp` (`id`, `status`) VALUES
('215116001', 1),
('215116002', 1),
('215116003', 1),
('215116004', 1),
('215116005', 1),
('215116006', 0),
('215116007', 0),
('215116008', 0),
('215116009', 0),
('215116010', 0);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`) VALUES
('PRO01', 'aceh'),
('PRO02', 'bali'),
('PRO03', 'banten'),
('PRO04', 'bengkulu'),
('PRO05', 'gorontalo'),
('PRO06', 'DKI jakarta'),
('PRO07', 'jambi'),
('PRO08', 'jawa barat'),
('PRO09', 'jawa tengah'),
('PRO10', 'jawa timur'),
('PRO11', 'kalimantan barat'),
('PRO12', 'kalimantan selatan'),
('PRO13', 'kalimantan tengah'),
('PRO14', 'kalimantan timur'),
('PRO15', 'kalimantan utara'),
('PRO16', 'kepulauan bangka belitung'),
('PRO17', 'kepulauan riau'),
('PRO18', 'lampung'),
('PRO19', 'maluku'),
('PRO20', 'maluku utara'),
('PRO21', 'nusa tenggara barat'),
('PRO22', 'nusa tenggara timur'),
('PRO23', 'papua'),
('PRO24', 'papua barat'),
('PRO25', 'riau'),
('PRO26', 'sulawesi barat'),
('PRO27', 'sulawesi selatan'),
('PRO28', 'sulawesi tengah'),
('PRO29', 'sulawesi tenggara'),
('PRO30', 'sulawesi utara'),
('PRO31', 'sumatera barat'),
('PRO32', 'sumatera selatan'),
('PRO33', 'sumatera utara'),
('PRO34', 'daerah istimewa yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kapasitas` int(3) DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama`, `kapasitas`, `status`) VALUES
('R0001', 'B100', 69, 1),
('R0002', 'B301', 40, 1),
('R0003', 'B302', 50, 1),
('R0004', 'B303', 60, 1),
('R0005', 'U101', 20, 1),
('R0006', 'U102', 20, 1),
('R0007', 'U301', 40, 1),
('R0008', 'U302', 40, 1),
('R0009', 'U303', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `syarat_matakuliah`
--

CREATE TABLE `syarat_matakuliah` (
  `id_matakuliah` varchar(5) NOT NULL,
  `id_syarat_matakuliah` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syarat_matakuliah`
--

INSERT INTO `syarat_matakuliah` (`id_matakuliah`, `id_syarat_matakuliah`) VALUES
('MK007', 'MK001'),
('MK008', 'MK001'),
('MK008', 'MK002'),
('MK017', 'MK002'),
('MK015', 'MK004'),
('MK014', 'MK007'),
('MK020', 'MK008'),
('MK016', 'MK009'),
('MK020', 'MK009'),
('MK019', 'MK013'),
('MK024', 'MK014'),
('MK029', 'MK014'),
('MK021', 'MK016'),
('MK032', 'MK021'),
('MK037', 'MK029'),
('MK029', 'MK031'),
('MK040', 'MK031'),
('MK039', 'MK032');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(9) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `peran` varchar(20) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `peran`, `last_login`) VALUES
('213116155', '123456', 'mahasiswa', '2016-01-05 07:32:00'),
('213116230', '123456', 'mahasiswa', '2016-01-01 03:25:17'),
('213116241', '123456', 'mahasiswa', '2016-01-01 03:25:17'),
('DO001', 'ferdinandus', 'dosen_pimpinanpmb', '2016-01-08 03:35:02'),
('DO002', 'budibudi', 'dosen', '2016-01-01 03:36:43'),
('DO003', 'jngojngo', 'dosen_chiefbau', '2016-01-01 03:25:17'),
('DO004', 'edwin', 'kajur', '2016-01-01 03:37:39'),
('DO005', 'steste', 'dosen', '2016-01-01 03:25:17');

-- --------------------------------------------------------

--
-- Structure for view `getgrade`
--
DROP TABLE IF EXISTS `getgrade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getgrade`  AS  select `kelas_mahasiswa`.`mahasiswa_nrp` AS `mahasiswa_nrp`,`mata_kuliah`.`nama` AS `nama`,`nilai`.`nilai_grade` AS `nilai_grade` from ((`nilai` join `kelas_mahasiswa`) join `mata_kuliah`) where ((`kelas_mahasiswa`.`nilai_id` = `nilai`.`id`) and (`kelas_mahasiswa`.`mata_kuliah_id` = `mata_kuliah`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_beasiswa_informasi_beasiswa` (`informasi_beasiswa_nama_beasiswa`);

--
-- Indexes for table `biodata_verifikasi`
--
ALTER TABLE `biodata_verifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon_mahasiswa`
--
ALTER TABLE `calon_mahasiswa`
  ADD PRIMARY KEY (`nomor_registrasi_id`),
  ADD KEY `informasi_kurikulum_id` (`informasi_kurikulum_id`),
  ADD KEY `nomor_registrasi_id` (`nomor_registrasi_id`) USING BTREE;

--
-- Indexes for table `data_umum`
--
ALTER TABLE `data_umum`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `dispensasi`
--
ALTER TABLE `dispensasi`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `dkeuangan`
--
ALTER TABLE `dkeuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `drevisi_penilaian`
--
ALTER TABLE `drevisi_penilaian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hrevisi_drevisi` (`hrevisi_penilaian_id`);

--
-- Indexes for table `hkeuangan`
--
ALTER TABLE `hkeuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrevisi_penilaian`
--
ALTER TABLE `hrevisi_penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi_beasiswa`
--
ALTER TABLE `informasi_beasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi_kurikulum`
--
ALTER TABLE `informasi_kurikulum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelas_mata_kuliah` (`mata_kuliah_id`),
  ADD KEY `fk_kelas_ruangan` (`ruangan_id`),
  ADD KEY `fk_dosen_kelas` (`dosen_nip`),
  ADD KEY `fk_kelas_kelas` (`kelas_id`);

--
-- Indexes for table `kelas_mahasiswa`
--
ALTER TABLE `kelas_mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_nrp`,`kelas_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `fk_kelas_mahasiswa_mata_kuliah` (`mata_kuliah_id`),
  ADD KEY `fk_kelas_mahasiswa_nilai` (`nilai_id`);

--
-- Indexes for table `kode_verifikasi`
--
ALTER TABLE `kode_verifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomor_registrasi_id` (`nomor_registrasi_id`) USING BTREE;

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinsi_id` (`provinsi_id`) USING BTREE;

--
-- Indexes for table `log_penilaian`
--
ALTER TABLE `log_penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_penilaian_nilai`
--
ALTER TABLE `log_penilaian_nilai`
  ADD PRIMARY KEY (`nilai_id`,`log_penilaian_id`),
  ADD KEY `log_penilaian_id` (`log_penilaian_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nrp`),
  ADD UNIQUE KEY `nomor_registrasi_id_2` (`nomor_registrasi_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `nomor_registrasi_id` (`nomor_registrasi_id`),
  ADD KEY `informasi_kurikulum_id` (`informasi_kurikulum_id`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_semester`
--
ALTER TABLE `nilai_semester`
  ADD PRIMARY KEY (`mahasiswa_nrp`,`semester`);

--
-- Indexes for table `nomor_registrasi`
--
ALTER TABLE `nomor_registrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nrp`
--
ALTER TABLE `nrp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
