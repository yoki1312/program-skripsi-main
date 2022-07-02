-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 01:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'admin@admin', '2021-01-24 10:30:49', '$2y$10$wrndHL9.fer.5b1wI/QaQ.BXPUrNgR9egyjKitnhGuyqrtmhUgMTG', NULL, NULL, NULL, NULL, NULL, '2021-01-24 10:30:53', '2021-01-24 10:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_toko` varchar(225) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `foto_artikel` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `hastag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_toko`, `judul`, `isi`, `foto_artikel`, `created_at`, `updated_at`, `deleted_at`, `id_kategori`, `hastag`) VALUES
(217, 'mekar_sari212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(218, 'mekar_sari212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(219, 'mekar_sari212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(220, 'mekar_sari212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(221, 'plantshop212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(222, 'plantshop212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(223, 'plantshop212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(224, 'plantshop212', 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id'),
(225, 'bunga_desa219', 'Pemilihan Bunga yang bagus buat dekorasi', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Kaku Gothic ProN&quot;, &quot;ヒラギノ角ゴ ProN W3&quot;, Meiryo, メイリオ, Osaka, &quot;MS PGothic&quot;, arial, helvetica, sans-serif; font-size: 16px;\">Poin lainnya yang perlu diperhatikan adalah memilih bunga yang warna atau jenisnya pas dengan tema desain dalam ruangan. Anda bisa memilih&nbsp;<b style=\"background: linear-gradient(transparent 60%, rgb(254, 222, 231) 60%); color: rgb(17, 17, 17); padding: 0px 1px 2px;\">bunga berwarna sama&nbsp;</b>dengan warna dominan dalam ruangan untuk&nbsp;<b style=\"background: linear-gradient(transparent 60%, rgb(254, 222, 231) 60%); color: rgb(17, 17, 17); padding: 0px 1px 2px;\">memperkuat kesan keseragaman</b>.&nbsp;</p><p><br style=\"color: rgb(51, 51, 51); font-family: &quot;Hiragino Kaku Gothic ProN&quot;, &quot;ヒラギノ角ゴ ProN W3&quot;, Meiryo, メイリオ, Osaka, &quot;MS PGothic&quot;, arial, helvetica, sans-serif; font-size: 16px;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Kaku Gothic ProN&quot;, &quot;ヒラギノ角ゴ ProN W3&quot;, Meiryo, メイリオ, Osaka, &quot;MS PGothic&quot;, arial, helvetica, sans-serif; font-size: 16px;\">Meski begitu, Anda juga bisa memilih&nbsp;<b style=\"background: linear-gradient(transparent 60%, rgb(254, 222, 231) 60%); color: rgb(17, 17, 17); padding: 0px 1px 2px;\">bunga berwarna kontras&nbsp;</b>dengan warna dalam ruangan. Hal tersebut bisa Anda lakukan bila ingin&nbsp;<b style=\"background: linear-gradient(transparent 60%, rgb(254, 222, 231) 60%); color: rgb(17, 17, 17); padding: 0px 1px 2px;\">bunganya terlihat lebih menonjol</b>.</p><p><br style=\"color: rgb(51, 51, 51); font-family: &quot;Hiragino Kaku Gothic ProN&quot;, &quot;ヒラギノ角ゴ ProN W3&quot;, Meiryo, メイリオ, Osaka, &quot;MS PGothic&quot;, arial, helvetica, sans-serif; font-size: 16px;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Kaku Gothic ProN&quot;, &quot;ヒラギノ角ゴ ProN W3&quot;, Meiryo, メイリオ, Osaka, &quot;MS PGothic&quot;, arial, helvetica, sans-serif; font-size: 16px;\">Saat Anda membeli banyak bunga sekaligus, warna bunganya tidak harus selalu seragam. Memang,&nbsp;<b style=\"background: linear-gradient(transparent 60%, rgb(254, 222, 231) 60%); color: rgb(17, 17, 17); padding: 0px 1px 2px;\"><i>bouquet&nbsp;</i>bunga yang memiliki warna sama akan sangat menyita perhatian</b>&nbsp;saat ditempatkan dalam ruangan. Akan tetapi, membeli bunga yang warnanya beragam juga bisa Anda pertimbangkan.&nbsp;<b style=\"background: linear-gradient(transparent 60%, rgb(254, 222, 231) 60%); color: rgb(17, 17, 17); padding: 0px 1px 2px;\">Bunga dengan warna berbeda-beda akan memperkuat kesan&nbsp;<i>colorful&nbsp;</i>dan dinamis</b>&nbsp;dalam ruangan.</p>', NULL, '2021-11-14 23:31:15', '2021-11-14 23:31:15', NULL, 523, '#plantshop.id');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bankdata`
--

CREATE TABLE `bankdata` (
  `id_bankdata` int(11) NOT NULL,
  `nama_tanaman` varchar(50) DEFAULT NULL,
  `nama_latin` varchar(50) DEFAULT NULL,
  `foto_sampul` text DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `id_jenisTanaman` int(11) DEFAULT NULL,
  `spesifikasi` text DEFAULT NULL,
  `hastag` text DEFAULT NULL,
  `caraPerawatan` varchar(50) DEFAULT NULL,
  `kebutuhanSinar` varchar(50) DEFAULT NULL,
  `kebutuhanAir` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hargaMax` int(11) DEFAULT NULL,
  `hargaMin` int(11) DEFAULT NULL,
  `idMediaTanam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bankdata`
--

INSERT INTO `bankdata` (`id_bankdata`, `nama_tanaman`, `nama_latin`, `foto_sampul`, `id_kategori`, `id_jenisTanaman`, `spesifikasi`, `hastag`, `caraPerawatan`, `kebutuhanSinar`, `kebutuhanAir`, `created_at`, `updated_at`, `deleted_at`, `hargaMax`, `hargaMin`, `idMediaTanam`) VALUES
(50, 'Topeng Monyet', 'Monstera Adansonii', '1622908794_borsigina3.webp', 523, 5, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', '#plantshop.id', 'outdoor', 'low', 'high', '2021-06-05 00:39:01', '2021-06-05 00:39:01', NULL, 15000, 14000, 18),
(51, 'Monstera King Brazilian', 'Monstera King Brazilian', '1622942791_WhatsApp Image 2021-06-06 at 08.21.36 (2).jpeg', 523, 1, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', '#plantshop.id', 'outdoor', 'low', 'low', '2021-06-06 01:26:31', '2021-06-06 01:26:31', NULL, 250000, 150000, 17),
(53, 'Monstera', 'Monstera Delicosa', '1622963789_123360300_3468164479970969_5201738945191770485_n.jpg', 523, 1, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', '#plantshop.id', 'outdoor', 'low', 'low', '2021-06-06 07:16:29', '2021-06-06 07:16:29', NULL, 400000, 120000, 17),
(64, 'Delicius Monstera', 'Monstera Delicius', '1630346658_Screen Shot 2021-08-31 at 12.37.44 AM.png', 523, 1, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', '#plantshop.id', 'indoor', 'high', NULL, '2021-08-30 18:04:18', '2021-08-30 18:04:18', NULL, 140000, 120000, 18),
(65, 'asfasf', 'raraw', '1630346980_pngtree-fat-boy-png-shopping-in-the-supermarket-image_1442213-removebg-preview.png', 523, 1, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', '#plantshop.id', 'outdoor', 'high', 'high', '2021-08-30 18:09:40', '2021-08-30 18:09:40', NULL, 123123, 11231, 17),
(66, 'Monstera King Brazilian Test', 'Monstera King Brazilian', NULL, 523, NULL, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', NULL, NULL, NULL, NULL, '2021-08-31 02:54:26', '2021-08-31 02:54:26', NULL, NULL, NULL, NULL),
(67, 'Monstera', 'Bunga Monstera', '1630379429_Screen Shot 2021-08-31 at 12.37.44 AM.png', 523, 3, 'Salah satu varietas tumbuhan paling unik adalah Monstera Adansonii atau biasa dikenal juga dengan sebutan monstera topeng monyet. Adansonii merupakan tanaman merambat yang dapat tumbuh mencapai 6 meter.', '#plantshop.id', 'indoor', 'low', 'low', '2021-08-31 03:10:29', '2021-08-31 03:10:29', NULL, 150000, 100000, 18);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_latin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `berat` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `Created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar_sampul` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hargaAwal` int(11) DEFAULT NULL,
  `hargaJual` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `panjang` int(11) DEFAULT NULL,
  `lebar` int(11) DEFAULT NULL,
  `tinggi` int(11) DEFAULT NULL,
  `id_subKategori` int(11) DEFAULT NULL,
  `id_induk` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `hargaReseler` int(11) DEFAULT NULL,
  `hargaPersonal` int(11) DEFAULT NULL,
  `id_bankdata` int(11) DEFAULT NULL,
  `kode_toko` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `deskripsi`, `kode`, `nama_barang`, `nama_latin`, `created_at`, `updated_at`, `id_kategori`, `berat`, `deleted_at`, `Created_by`, `gambar_sampul`, `hargaAwal`, `hargaJual`, `diskon`, `panjang`, `lebar`, `tinggi`, `id_subKategori`, `id_induk`, `status`, `hargaReseler`, `hargaPersonal`, `id_bankdata`, `kode_toko`) VALUES
(1, 'Barang Ini Untuk Dijual', 'K1', 'Monstera', 'Indonesia', '2022-04-17 08:33:41', '2022-06-17 04:35:34', 524, '12', NULL, NULL, '1650184421_7822694_aa5ded46-2c9d-4dfa-a2cc-54fe770397d1_554_554.jpeg', 122, 12231, 0, 0, 0, 0, 37, 1, 1, 123, 123, NULL, NULL),
(356, 'Monstera Deliacosa', '0', 'Monstera Deliacosa', NULL, '2021-08-28 18:46:00', '2021-08-29 04:21:11', NULL, '12', NULL, NULL, 'gambar-1.png', 5000, 5000, 0, NULL, NULL, NULL, NULL, 1, NULL, 5000, 5000, NULL, 'plantshop212'),
(357, 'Restock buanyak #kaktuskoboi, silahkan pilih tinggi brp, pot yg mana, harga bs diatur', 'Kak-01', 'Kaktus Koboi', NULL, '2021-08-28 18:46:00', '2021-08-28 14:16:03', 524, '12', NULL, NULL, 'gambar-2.png', 15000, 15000, 0, 0, 0, 0, 42, 1, NULL, 15000, 15000, NULL, 'plantshop212'),
(358, 'Always ready. Rayung ikat dan vas rotan 50 cm. Best seller, selalu restok', 'Vas-01', 'Rayung Ikat dan Vas rotan', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-3.png', 9000, 1000, 0, NULL, NULL, NULL, NULL, 4, NULL, 9000, 9000, NULL, 'plantshop212'),
(359, 'Ready Sanseviera golden. Daun super kuat kokoh.', 'San-01', 'Sensiviera', NULL, '2021-08-28 18:46:00', '2022-06-17 04:35:34', 521, '12', NULL, NULL, 'gambar-4.png', 5000, 5000, 0, 0, 0, 0, 39, 1, 1, 5000, 5000, NULL, 'plantshop212'),
(360, 'Ready', '0', 'KAKTUS', NULL, '2021-08-28 18:46:00', '2021-09-20 13:16:29', NULL, '12', NULL, NULL, 'gambar-5.png', 9000, 1000, 0, NULL, NULL, NULL, NULL, 1, NULL, 9000, 9000, NULL, 'plantshop212'),
(361, '#syngonium mini super cantik.Perawatan pun gampang..#tanaman25ribuan Very limited stok. Kamu suka #potkeramik nya atau #tanamanhias nya?Asli cakep pake buanget, siapa cepat dia dapat ya.Jangan nangis klo ga kebagian. . .Buruan order. Ada fasilitas free ongkir untuk pembelian tertentu, gresik kota, dan akses jalan lebar. #plantshop #plantforhappiness #plantmakepeoplehappy #tanamanhias #indoorplants #sukulen #monstera #homedecor #sanseviera #sansevieria #sirihlurikhias #sirihvariegata #kingmonstera #happymonsteramonday #happymonsteraday #tanamanbikinhepi', '0', 'syngonium mini', NULL, '2021-08-28 18:46:00', '2021-08-29 04:15:32', NULL, '12', NULL, NULL, 'gambar-6.png', 25000, 25000, 0, NULL, NULL, NULL, NULL, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(362, 'Ready. Pot bola super mini cute banget.', 'Vas-02', 'Pot bola super mini', NULL, '2021-08-28 18:46:00', '2022-04-17 10:09:43', NULL, '12', NULL, NULL, 'gambar-7.png', 5000, 1000, 0, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(363, 'Harga #monsteradeliciosa makin naik dan banyak stok kosong. Yg pengen punya monstera dan belajaran, ini cush stok yg murmer harga under 100 rb. Cek ketersediaan stok di @plantshop.id.catalog', 'Mon-01', 'monstera deliciosa', NULL, '2021-08-28 18:46:00', '2021-08-28 17:46:36', 523, '12', NULL, NULL, 'gambar-8.png', 90000, 90000, 0, 12, 12, 12, 41, 1, NULL, 90000, 90000, NULL, 'plantshop212'),
(364, 'Ini semua orderan dari petro ya. . . Pilihan yg tepat memang jenis #sanseviera untuk indoor. Mengapa harus sanseviera? 📌 menyerap polusi udara sekitar, jadili udara sekitarmu akan lebih bersih. 📌 menetralisir racun-racun di lingkunganmu, pas bngt ya untuk kondisi pandemi gini, paling tdk bs menjaga agar lingkungan lebih sehat 📌 menghasilkan oksigen kualitas bagus, nah lho itu penting bngt buat kita hirup setiap detik 📌 untuk spot green decor ruang kerja, supaya makin kece makin semangat, jd mood boster kan 📌 bukti cinta lingkungan, klo cinta dibuktikan kan ga hanya diomongkan hehe, mari tebwrkan racun-racun cinta tanaman. . . Mau pesen juga? Konsultasikan dulu aja kepada kami, apa yg lbh cocok untuk kebutuhanmu. . . Cek ketersediaan stok di @plantshop.id.catalog #sanseviera #peperomiawatermelon #begonia #indoorplant #tanamankantor #tanamanhiasgresik #plantmakepeoplehappy #plantforhappiness #plantshop #homedecor #officedecor #tanaman25ribuan', 'San-02', 'sanseviera', NULL, '2021-08-28 18:46:00', '2021-09-20 13:16:29', 521, '12', NULL, NULL, 'gambar-9.png', 25000, 25000, 0, 0, 0, 0, 38, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(365, 'Ready 3 ukuran. King sedang small', '0', 'King sedang small', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-10.png', 1000, 6000, 0, NULL, NULL, NULL, NULL, 1, NULL, 1000, 1000, NULL, 'plantshop212'),
(366, 'Semuanya ready di gresik. Silahkan di borong bu ibu. Karpet ryg 100 cm 250 rb Karpet rug 120 cm 290 rb', 'Kar-01', ' Karpet ryg', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-11.png', 9000, 7000, 0, NULL, NULL, NULL, NULL, 6, NULL, 9000, 9000, NULL, 'plantshop212'),
(367, 'Ready kaktus koboi endut acak 25 rb an #kaktuskoboigresik #kaktuskoboilamongan #kaktuscowboi #tanamanhiasmurahgresik #tanamanhiasmurahlamongan #indorplants', 'Kak-02', 'Kaktus Koboi', NULL, '2021-08-28 18:46:00', '2021-08-28 14:17:10', 524, '12', NULL, NULL, 'gambar-12.png', 25000, 25000, 0, 0, 0, 0, 42, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(368, 'Philo corong, daun tebel kuat seperti artificial. Tidak pasaran pasti. Wajib untuk tambahan koleksi. . . Plant 160 rb', 'Phi-01', 'Philo corong', NULL, '2021-08-28 18:46:00', NULL, 536, '12', NULL, NULL, 'gambar-13.png', 160000, 160000, 0, 14, 15, 12, NULL, 1, NULL, 160000, 160000, NULL, 'plantshop212'),
(369, 'Philo : 35 rb include pot tawon 18 cm', 'Phi-02', 'Philo', NULL, '2021-08-28 18:46:00', NULL, 536, '12', NULL, NULL, 'gambar-14.png', 35000, 35000, 0, NULL, NULL, NULL, NULL, 1, NULL, 35000, 35000, NULL, 'plantshop212'),
(370, '1 set 98 rb', 'Vas-03', 'Vas Ungu Cantik', NULL, '2021-08-28 18:46:00', '2022-04-17 10:23:14', NULL, '12', NULL, NULL, 'gambar-15.png', 98000, 98000, 0, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(371, '1set 70 rb', 'Vas-04', 'Vas Coklat Cantik', NULL, '2021-08-28 18:46:00', '2022-04-17 10:17:20', NULL, '12', NULL, NULL, 'gambar-16.png', 70000, 70000, 0, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(372, '1 set 140 rb', 'Vas-05', 'Vas Gantung', NULL, '2021-08-28 18:46:00', '2022-04-17 10:15:47', NULL, '12', NULL, NULL, 'gambar-17.png', 140000, 140000, 0, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(373, '#clasik # keren', 'Vas-06', 'Vas Gantung Coklat', NULL, '2021-08-28 18:46:00', '2022-04-17 10:10:36', NULL, '12', NULL, NULL, 'gambar-18.png', 8000, 5000, 0, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(374, 'Ready #sanseviera Bisa pake atau tanpa pot @plantshop.id', 'San-03', 'sanseviera', NULL, '2021-08-28 18:46:00', '2021-08-28 17:57:20', 521, '12', NULL, NULL, 'gambar-19.png', 9000, 8000, 0, NULL, NULL, NULL, NULL, 1, NULL, 9000, 9000, NULL, 'plantshop212'),
(375, 'Sanseviera golden honey mini. Cocok untuk meja kerja, selvers dinding dll. Sangat low maintenance. Plant 30k Pot keramik small 19k.', 'San-04', 'Sansevieria golden honey', NULL, '2021-08-28 18:46:00', NULL, 521, '12', NULL, NULL, 'gambar-20.png', 49000, 49000, 4000, NULL, NULL, NULL, NULL, 1, NULL, 49000, 49000, NULL, 'plantshop212'),
(376, '#Sansevieria kodok : 20k Pot : 25k', 'San-05', 'Sansevieria', NULL, '2021-08-28 18:46:00', NULL, 521, '12', NULL, NULL, 'gambar-21.png', 45000, 45000, 4000, NULL, NULL, NULL, NULL, 1, NULL, 45000, 45000, NULL, 'plantshop212'),
(378, 'Sansevieria : 35k Pot terakota : 45k', 'San-06', 'Sansevieria', NULL, '2021-08-28 18:46:00', NULL, 521, '12', NULL, NULL, 'gambar-23.png', 30000, 30000, 4000, NULL, NULL, NULL, NULL, 1, NULL, 30000, 30000, NULL, 'plantshop212'),
(379, '2 kaktus 50rb Pot 45 rb', 'Kak-03', 'Kaktus', NULL, '2021-08-28 18:46:00', NULL, 524, '12', NULL, NULL, 'gambar-24.png', 45000, 45000, 4000, NULL, NULL, NULL, NULL, 1, NULL, 45000, 45000, NULL, 'plantshop212'),
(380, 'Ready selalu Si pembersih udara. Rimbun', '0', 'Rimbun', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-25.png', 5000, 8000, 4000, NULL, NULL, NULL, NULL, 1, NULL, 5000, 5000, NULL, 'plantshop212'),
(382, 'Ready melimpah, pernah kosong lama, super best seller. Baik tanaman maupun potnya. Pot Ini size meja ya bukan yy super mini atau yg gede. Sanseviera pagoda kuning : 40rb Pot: 13 rb Spek pot: diameter luar: 10 cm diameter dalam: 8.5cm tinggi: 9.5cm Mat: plastik tebal Bisa bongkar pasang tatakan airnya', 'San-07', 'Sanseviera pagoda kuning ', NULL, '2021-08-28 18:46:00', NULL, 521, '12', NULL, NULL, 'gambar-27.png', 53000, 53000, 4000, NULL, NULL, NULL, NULL, 1, NULL, 53000, 53000, NULL, 'plantshop212'),
(385, 'Sansi hijau : 25 rb Sansi pagoda kuning : 35 rb . . Si pembersih udara wajib punya apalagi di era pandemi seperti ini, pastikan udaramu sehat bersih. . . #sansevieria #lidahmertua', '0', 'Sansi', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-30.png', 35000, 35000, 0, NULL, NULL, NULL, NULL, 1, NULL, 35000, 35000, NULL, 'plantshop212'),
(386, 'Monstera king delicosa 3 daun besar.', 'Mon-02', 'Monstera king delicosa ', NULL, '2021-08-28 18:46:00', NULL, 523, '12', NULL, NULL, 'gambar-31.png', 5000, 5000, 0, NULL, NULL, NULL, NULL, 1, NULL, 5000, 5000, NULL, 'plantshop212'),
(387, 'Syngonium. Tanaman murah tapi sukak bangt. Kasih terakota aja biar jd mewah. Plant: 25 rb.', '0', 'Syngonium', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-32.png', 25000, 25000, 0, NULL, NULL, NULL, NULL, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(391, 'Magnificum ori Batang kotak Bentuk daun unik spt mangkuk', '0', 'Magnificum', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-36.png', 7000, 6000, 0, NULL, NULL, NULL, NULL, 1, NULL, 7000, 7000, NULL, 'plantshop212'),
(392, 'Begonia murah Under 50 rb', '0', 'Begonia', NULL, '2021-08-28 18:46:00', NULL, 526, '12', NULL, NULL, 'gambar-37.png', 45000, 45000, 0, NULL, NULL, NULL, NULL, 1, NULL, 45000, 45000, NULL, 'plantshop212'),
(393, 'Begonia murah Under 50 rb', '0', 'Begonia', NULL, '2021-08-28 18:46:00', NULL, 526, '12', NULL, NULL, 'gambar-38.png', 45000, 45000, 0, NULL, NULL, NULL, NULL, 1, NULL, 45000, 45000, NULL, 'plantshop212'),
(394, '#Peacelily Harga : 25rb', '0', 'Peacelily', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-39.png', 25000, 25000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(395, '#suksomjaipong : 250rb #aglonemasuksomjaipong #glonemagresik #aglonemalamongan', '0', 'suksomjaipong', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-40.png', 250000, 250000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 250000, 250000, NULL, 'plantshop212'),
(396, 'Tarantula : 165 rb #anthuriumclarinervium #anthuriumtarantula #anthuriumgresik #tanamanhiasgresik #tanamanhiaslamongan #indoorplants', '0', 'Tarantula', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-41.png', 165000, 165000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 165000, 165000, NULL, 'plantshop212'),
(397, 'Philo birkin 160 rb', 'Phi-03', 'Philo birkin ', NULL, '2021-08-28 18:46:00', NULL, 536, '12', NULL, NULL, 'gambar-42.png', 160000, 160000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 160000, 160000, NULL, 'plantshop212'),
(398, '#philodendronlynette #lynette', '0', 'lynette', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-43.png', 6000, 8000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 6000, 6000, NULL, 'plantshop212'),
(399, '#philodendronburlemarx #philodendronbrekele #burlemarx', 'Phi-04', 'philodendronburlemarx', NULL, '2021-08-28 18:46:00', NULL, 536, '12', NULL, NULL, 'gambar-44.png', 9000, 9000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 9000, 9000, NULL, 'plantshop212'),
(400, '#zebrina #calatheazebrina Untuk size dan harga lbih ekonomis bs request pict', '0', 'zebrina', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-45.png', 9000, 6000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 9000, 9000, NULL, 'plantshop212'),
(401, '#peacelily #peacelilyvariegata #spatuphylum 55 rb', '0', 'peacelily', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-46.png', 55000, 55000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 55000, 55000, NULL, 'plantshop212'),
(402, 'reeking 65 rb #treeking #tanamanhias #indoorplants #indoorplantsdecor #lamonganmegilan #gresikhits #tanamanhiasmurah #tanamanhiasgresik #tanamanhiasgresikmurah #tanamanhiaslamongan #tanamanmurah #tanamanbikinhepi #plantsmakepeoplehappy #indoorplants #indoorplantsdecor', '0', 'treeking', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-47.png', 65000, 65000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 65000, 65000, NULL, 'plantshop212'),
(403, '25 rb #pileamutiara', '0', 'pileamutiara', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-48.png', 25000, 25000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(404, 'Syngonium pink 55 rb #syngonium', '0', 'Syngonium pink ', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-49.png', 55000, 55000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 55000, 55000, NULL, 'plantshop212'),
(405, 'Philo green emerald super king 235 rb #philodendron', 'Phi-05', 'Philo green emerald super king ', NULL, '2021-08-28 18:46:00', NULL, 536, '12', NULL, NULL, 'gambar-50.png', 235000, 235000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 235000, 235000, NULL, 'plantshop212'),
(406, 'Alocasia dragon silver 145 ribu #alocasia #dragonsilver', '0', 'Alocasia dragon', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-51.png', 145000, 145000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 145000, 145000, NULL, 'plantshop212'),
(407, 'Sente hitam super tinggi 3 daun Plant : 40rb #sente', '0', 'Sente hitam super ', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-52.png', 40000, 40000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 40000, 40000, NULL, 'plantshop212'),
(408, 'Espicia corak pink 55 rb #espicia #tanamanhias', '0', 'Espicia corak pink ', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-53.png', 55000, 55000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 55000, 55000, NULL, 'plantshop212'),
(409, 'Gloriosum 3 daun 155 rb #gloriosum #aroidaddicts', '0', 'Gloriosum', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-54.png', 155000, 155000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 155000, 155000, NULL, 'plantshop212'),
(410, 'Adam hawa 25 rb #adamhawa #tanamanhias', '0', 'Adam hawa', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-55.png', 25000, 25000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 25000, 25000, NULL, 'plantshop212'),
(411, 'Keladi baret Size remaja Harga : 145 rb #keladibaret #caladiumbaret', '0', 'Keladi baret', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-56.png', 145000, 145000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 145000, 145000, NULL, 'plantshop212'),
(412, 'Frydex : 50 rb #keladineon', '0', 'keladineon', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-57.png', 50000, 50000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 50000, 50000, NULL, 'plantshop212'),
(413, '#raphidophoratetrasperma 195 rb', '0', 'raphido phorate trasperma', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-58.png', 195000, 195000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 195000, 195000, NULL, 'plantshop212'),
(414, 'Aglo red majesty harga 175 rb #redmajesty', '0', 'Aglo red majesty', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-59.png', 175000, 175000, 12000, NULL, NULL, NULL, NULL, 1, NULL, 175000, 175000, NULL, 'plantshop212'),
(415, 'Tarantula : 165 rb #anthuriumclarinervium #anthuriumtarantula #anthuriumgresik #tanamanhiasgresik #tanamanhiaslamongan #indoorplants', '0', 'anthuriumtarantula', NULL, '2021-08-28 18:46:00', NULL, NULL, '12', NULL, NULL, 'gambar-60.png', 165000, 165000, 5000, NULL, NULL, NULL, NULL, 1, NULL, 165000, 165000, NULL, 'plantshop212'),
(416, 'Keterangan', 'Vas-07', 'POt', NULL, '2021-08-28 18:46:00', '2021-08-28 18:51:37', NULL, '12', '2021-08-28 00:00:00', NULL, '1630176360_ftpquota', NULL, 123123, 5000, 0, 0, 0, NULL, 4, NULL, NULL, NULL, NULL, 'plantshop212'),
(417, 'Bunga yang cocok untuk hiasan', 'Phi6', 'PhiloDrendonite V2', 'PhiloDrendonite', '2021-08-28 18:46:00', '2021-08-30 17:47:40', 536, '12', NULL, NULL, '1630345600_Screen Shot 2021-08-31 at 12.38.13 AM.png', 240000, 250000, 5000, 12, 12, 12, 41, 1, NULL, 245000, 245000, NULL, 'plantshop212'),
(418, 'Keterangan', 'V8', 'Pot Mini Kecil', NULL, '2021-08-28 18:46:00', '2021-08-30 17:51:13', NULL, '12', '2021-08-30 00:00:00', NULL, '1630345735_Screen Shot 2021-08-31 at 12.48.13 AM.png', 120000, 150000, 5000, 12, 12, 12, NULL, 4, NULL, NULL, NULL, NULL, 'plantshop212'),
(419, 'Keterangan', 'Vas9', 'Vas Mini', NULL, '2021-08-28 18:46:00', '2022-04-17 10:09:43', NULL, '12', NULL, NULL, '1630345914_Screen Shot 2021-08-31 at 12.48.13 AM.png', 240000, 250000, 5000, 12, 12, 12, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(420, 'Keterangan', 'Vas-10', 'QW', NULL, '2021-08-28 18:46:00', '2022-04-17 10:15:47', NULL, '12', NULL, NULL, '1630346524_Screen Shot 2021-08-31 at 12.48.13 AM.png', 12000, 140000, 5000, 12, 12, 12, NULL, 4, 1, NULL, NULL, NULL, 'plantshop212'),
(424, 'Tanaman Hias Lidah Buaya/Tanaman Herbal/Pohon Herbal', '[35', 'Lidah Buaya', 'Aloe Vera', '2021-11-12 12:08:39', '2021-11-12 12:08:39', NULL, '12 kg', NULL, NULL, '1636718919_WhatsApp Image 2021-11-11 at 12.48.04.jpeg', 15000, 20000, 0, 12, 12, 12, NULL, 1, NULL, 19000, 19000, NULL, 'Heaven\'s_Florist212'),
(425, 'Keterangan', 'M5', 'Monstera', 'Monstera Deliciosa', '2021-11-12 18:43:29', '2021-11-12 18:43:29', 523, '12', NULL, NULL, '1636742609_WhatsApp Image 2021-11-11 at 12.48.05.jpeg', 100000, 150000, 0, 12, 12, 12, 41, 1, NULL, 140000, 140000, NULL, 'Heaven\'s_Florist212'),
(426, 'Tanaman Hias Sansiviera no pot', 'S8', 'Sansiviera', NULL, '2021-11-13 00:07:09', '2021-11-13 00:07:09', 521, '12', NULL, NULL, '1636762029_WhatsApp Image 2021-11-11 at 12.48.07.jpeg', 15000, 20000, 0, 12, 12, 12, NULL, 1, NULL, 18000, 18000, NULL, 'Pick_Your_Own_Plants214'),
(427, 'Kaktus centong. Tanaman sehat dan segar pengiriman menggunakan plastik polibeg.', 'K4', 'Kaktus', 'Cactaceae', '2021-11-13 00:16:15', '2021-11-13 00:16:15', 524, '1', NULL, NULL, '1636762575_WhatsApp Image 2021-11-11 at 12.48.08.jpeg', 15000, 20000, 0, 30, 0, 0, 46, 1, NULL, 18000, 18000, NULL, 'Pick_Your_Own_Plants214'),
(428, 'Keterangan', '[36', 'Trigona Hijau', NULL, '2021-11-13 00:20:51', '2021-11-13 00:20:51', NULL, '1', NULL, NULL, '1636762851_WhatsApp Image 2021-11-11 at 12.48.08 (1).jpeg', 20000, 25000, 0, 12, 0, 0, NULL, 1, NULL, 25000, 25000, NULL, 'Pick_Your_Own_Plants214'),
(429, 'Daun tebal kuat seperti artificial. Tidak pasaran. Wajib untuk tambahan koleksi', 'P7', 'Philo Corong', NULL, '2021-11-13 00:25:39', '2021-11-13 00:25:39', 536, '1', NULL, NULL, '1636763139_WhatsApp Image 2021-11-13 at 07.23.29.jpeg', 160000, 170000, 0, 0, 0, 0, NULL, 1, NULL, 170000, 170000, NULL, 'Pick_Your_Own_Plants214'),
(430, 'Tanaman murah. Kasih terakota aja biar jadi murah', '[37', 'Syngonium', NULL, '2021-11-13 00:36:42', '2021-11-13 00:37:48', 537, NULL, NULL, NULL, '1636763802_WhatsApp Image 2021-11-13 at 07.36.11.jpeg', 20000, 25000, 0, 0, 0, 0, NULL, 1, NULL, 25000, 25000, NULL, 'Grow_and_Grow219');

-- --------------------------------------------------------

--
-- Table structure for table `dekor`
--

CREATE TABLE `dekor` (
  `id_dekor` int(11) NOT NULL,
  `identitas` int(11) DEFAULT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `id_jenisDekor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dekor`
--

INSERT INTO `dekor` (`id_dekor`, `identitas`, `judul`, `foto`, `id_jenisDekor`) VALUES
(33, 3, '#plantshop.id', '1621464152_blogpage3.jpg', 2),
(34, 3, '#plantshop.id', '1621464152_blogpage2.jpg', 2),
(35, 3, '#plantshop.id', '1621464152_blogpage1.jpg', 2),
(36, 2, 'Bank data asdasd', '1630347011_pngtree-fat-boy-png-shopping-in-the-supermarket-image_1442213-removebg-preview.png', 1),
(37, 3, '#plantshop.id', '1630347105_Screen Shot 2021-08-31 at 12.37.03 AM.png', 1),
(38, 3, '#plantshop.id', '1630347105_Screen Shot 2021-08-31 at 12.37.44 AM.png', 1),
(39, 3, '#plantshop.id', '1630347105_Screen Shot 2021-08-31 at 12.37.53 AM.png', 1),
(40, 3, '#plantshop.id', '1630347105_Screen Shot 2021-08-31 at 12.38.02 AM.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_bankdata`
--

CREATE TABLE `detail_bankdata` (
  `id_detail` int(11) NOT NULL,
  `id_bankdata` int(11) NOT NULL,
  `foto` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `detail_bankdata`
--

INSERT INTO `detail_bankdata` (`id_detail`, `id_bankdata`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, 50, '1622909402_borsigina2.jpeg', '2021-06-05 00:00:00', '2021-06-05 00:00:00', NULL),
(35, 50, '1622909408_1.-Monstera-Adansonii.jpg', '2021-06-05 00:00:00', '2021-06-05 00:00:00', NULL),
(36, 51, '1622942791_WhatsApp Image 2021-06-06 at 08.21.36 (1).jpeg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(37, 51, '1622942791_WhatsApp Image 2021-06-06 at 08.21.36 (2).jpeg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(38, 51, '1622942791_WhatsApp Image 2021-06-06 at 08.21.36 (3).jpeg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(39, 51, '1622942791_WhatsApp Image 2021-06-06 at 08.21.36.jpeg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(40, 53, '1622963789_123331328_360787208482726_824656907861314457_n.jpg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(41, 53, '1622963789_123360300_3468164479970969_5201738945191770485_n.jpg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(42, 53, '1622963789_123569962_365540654767288_3337539425457923842_n.jpg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(43, 53, '1622963789_123570361_1001665463578146_2830272833019070157_n.jpg', '2021-06-06 00:00:00', '2021-06-06 00:00:00', NULL),
(44, 57, '1625275909_123331328_360787208482726_824656907861314457_n.jpg', '2021-07-03 00:00:00', '2021-07-03 00:00:00', NULL),
(45, 57, '1625275909_123360300_3468164479970969_5201738945191770485_n.jpg', '2021-07-03 00:00:00', '2021-07-03 00:00:00', NULL),
(46, 57, '1625275909_123569962_365540654767288_3337539425457923842_n.jpg', '2021-07-03 00:00:00', '2021-07-03 00:00:00', NULL),
(47, 57, '1625275910_123570361_1001665463578146_2830272833019070157_n.jpg', '2021-07-03 00:00:00', '2021-07-03 00:00:00', NULL),
(48, 57, '1625275910_154462064_714146172606339_3476263410292942116_n.jpg', '2021-07-03 00:00:00', '2021-07-03 00:00:00', NULL),
(49, 57, '1625275910_Actifity Diagram Artikel.png', '2021-07-03 00:00:00', '2021-07-03 00:00:00', NULL),
(50, 64, '1630346658_Screen Shot 2021-08-31 at 12.37.03 AM.png', '2021-08-30 00:00:00', '2021-08-30 00:00:00', NULL),
(51, 64, '1630346658_Screen Shot 2021-08-31 at 12.37.44 AM.png', '2021-08-30 00:00:00', '2021-08-30 00:00:00', NULL),
(52, 64, '1630346658_Screen Shot 2021-08-31 at 12.37.53 AM.png', '2021-08-30 00:00:00', '2021-08-30 00:00:00', NULL),
(53, 64, '1630346658_Screen Shot 2021-08-31 at 12.38.02 AM.png', '2021-08-30 00:00:00', '2021-08-30 00:00:00', NULL),
(54, 64, '1630346658_Screen Shot 2021-08-31 at 12.38.13 AM.png', '2021-08-30 00:00:00', '2021-08-30 00:00:00', NULL),
(55, 65, '1630346980_pngtree-fat-boy-png-shopping-in-the-supermarket-image_1442213-removebg-preview.png', '2021-08-30 00:00:00', '2021-08-30 00:00:00', NULL),
(56, 67, '1630379429_Screen Shot 2021-08-31 at 2.12.17 AM.png', '2021-08-31 00:00:00', '2021-08-31 00:00:00', NULL),
(57, 67, '1630379429_Screen Shot 2021-08-31 at 12.37.03 AM.png', '2021-08-31 00:00:00', '2021-08-31 00:00:00', NULL),
(58, 67, '1630379429_Screen Shot 2021-08-31 at 12.37.44 AM.png', '2021-08-31 00:00:00', '2021-08-31 00:00:00', NULL),
(59, 67, '1630379429_Screen Shot 2021-08-31 at 12.37.53 AM.png', '2021-08-31 00:00:00', '2021-08-31 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` text NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`id`, `created_at`, `updated_at`, `foto`, `id_barang`, `deleted_at`, `created_by`) VALUES
(318, '2021-07-06 00:00:00', '2021-07-06 00:00:00', '1612261145_123363396_721320501832637_4738528543747095526_n.jpg', 368, NULL, NULL),
(319, '2021-07-06 00:00:00', '2021-07-06 00:00:00', '1612261145_129550008_2937493509829323_8661066100202004706_n.jpg', 368, NULL, NULL),
(320, '2021-07-06 00:00:00', '2021-07-06 00:00:00', '1612261145_130072607_194336605573909_2852214673840981442_n.jpg', 368, NULL, NULL),
(343, '2021-11-09 00:00:00', '2021-11-09 00:00:00', '1636467563_WhatsApp Image 2021-11-08 at 21.07.23.jpeg', 423, NULL, NULL),
(344, '2021-11-09 00:00:00', '2021-11-09 00:00:00', '1636467563_WhatsApp Image 2021-11-09 at 07.53.10.jpeg', 423, NULL, NULL),
(345, '2021-11-12 00:00:00', '2021-11-12 00:00:00', '1636718919_WhatsApp Image 2021-11-11 at 12.48.04.jpeg', 424, NULL, NULL),
(346, '2021-11-12 00:00:00', '2021-11-12 00:00:00', '1636742609_WhatsApp Image 2021-11-11 at 12.48.05.jpeg', 425, NULL, NULL),
(347, '2021-11-13 00:00:00', '2021-11-13 00:00:00', '1636762029_WhatsApp Image 2021-11-11 at 12.48.07.jpeg', 426, NULL, NULL),
(348, '2021-11-13 00:00:00', '2021-11-13 00:00:00', '1636762575_WhatsApp Image 2021-11-11 at 12.48.08.jpeg', 427, NULL, NULL),
(349, '2021-11-13 00:00:00', '2021-11-13 00:00:00', '1636762851_WhatsApp Image 2021-11-11 at 12.48.08 (1).jpeg', 428, NULL, NULL),
(350, '2021-11-13 00:00:00', '2021-11-13 00:00:00', '1636763139_WhatsApp Image 2021-11-13 at 07.23.29.jpeg', 429, NULL, NULL),
(351, '2021-11-13 00:00:00', '2021-11-13 00:00:00', '1636763802_WhatsApp Image 2021-11-13 at 07.36.11.jpeg', 430, NULL, NULL),
(352, '2022-04-17 00:00:00', '2022-04-17 00:00:00', '1650184421_70167-monstera-variegata.jpeg', 1, NULL, NULL),
(353, '2022-04-17 00:00:00', '2022-04-17 00:00:00', '1650184421_7822694_aa5ded46-2c9d-4dfa-a2cc-54fe770397d1_554_554.jpeg', 1, NULL, NULL),
(354, '2022-04-17 00:00:00', '2022-04-17 00:00:00', '1650184530_70167-monstera-variegata.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hargaPenjualan` int(11) DEFAULT NULL,
  `diskonpenjualan` int(11) DEFAULT NULL,
  `deskripsiDiskon` text DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_penjualan`, `id_barang`, `created_at`, `updated_at`, `hargaPenjualan`, `diskonpenjualan`, `deskripsiDiskon`, `admin_id`) VALUES
(609, 5, 370, '2022-04-17 10:23:14', '2022-04-17 10:23:14', 12000, 10000, 'Rupiah', NULL),
(610, 5, 370, '2022-04-17 10:23:14', '2022-04-17 10:23:14', 12000, 10000, 'Rupiah', NULL),
(611, 6, 374, '2022-04-17 10:41:27', '2022-04-17 10:41:27', 8000, NULL, NULL, NULL),
(612, 6, 1, '2022-04-17 10:41:27', '2022-04-17 10:41:27', 12231, NULL, NULL, NULL),
(613, 7, 374, '2022-04-17 10:41:38', '2022-04-17 10:41:38', 8000, NULL, NULL, NULL),
(614, 7, 1, '2022-04-17 10:41:38', '2022-04-17 10:41:38', 12231, NULL, NULL, NULL),
(615, 8, 374, '2022-04-17 10:41:41', '2022-04-17 10:41:41', 8000, NULL, NULL, NULL),
(616, 8, 1, '2022-04-17 10:41:41', '2022-04-17 10:41:41', 12231, NULL, NULL, NULL),
(617, 9, 374, '2022-04-17 11:11:56', '2022-04-17 11:11:56', 8000, NULL, NULL, NULL),
(618, 9, 1, '2022-04-17 11:11:56', '2022-04-17 11:11:56', 12231, NULL, NULL, NULL),
(619, 10, 374, '2022-04-17 12:15:44', '2022-04-17 12:15:44', 8000, NULL, NULL, NULL),
(620, 10, 1, '2022-04-17 12:15:44', '2022-04-17 12:15:44', 12231, NULL, NULL, NULL),
(621, 11, 374, '2022-04-17 12:20:19', '2022-04-17 12:20:19', 8000, NULL, NULL, NULL),
(622, 11, 1, '2022-04-17 12:20:19', '2022-04-17 12:20:19', 12231, NULL, NULL, NULL),
(623, 12, 374, '2022-04-17 12:20:25', '2022-04-17 12:20:25', 8000, NULL, NULL, NULL),
(624, 12, 1, '2022-04-17 12:20:25', '2022-04-17 12:20:25', 12231, NULL, NULL, NULL),
(625, 13, 374, '2022-04-17 12:20:52', '2022-04-17 12:20:52', 8000, NULL, NULL, NULL),
(626, 13, 1, '2022-04-17 12:20:52', '2022-04-17 12:20:52', 12231, NULL, NULL, NULL),
(627, 14, 374, '2022-04-17 12:21:26', '2022-04-17 12:21:26', 8000, NULL, NULL, NULL),
(628, 14, 1, '2022-04-17 12:21:26', '2022-04-17 12:21:26', 12231, NULL, NULL, NULL),
(629, 15, 374, '2022-04-17 12:24:26', '2022-04-17 12:24:26', 8000, NULL, NULL, NULL),
(630, 15, 1, '2022-04-17 12:24:26', '2022-04-17 12:24:26', 12231, NULL, NULL, NULL),
(631, 16, 374, '2022-04-17 12:25:47', '2022-04-17 12:25:47', 8000, NULL, NULL, NULL),
(632, 16, 1, '2022-04-17 12:25:47', '2022-04-17 12:25:47', 12231, NULL, NULL, NULL),
(633, 17, 374, '2022-04-17 12:26:14', '2022-04-17 12:26:14', 8000, NULL, NULL, NULL),
(634, 17, 1, '2022-04-17 12:26:14', '2022-04-17 12:26:14', 12231, NULL, NULL, NULL),
(635, 18, 374, '2022-04-17 12:26:53', '2022-04-17 12:26:53', 8000, NULL, NULL, NULL),
(636, 18, 1, '2022-04-17 12:26:53', '2022-04-17 12:26:53', 12231, NULL, NULL, NULL),
(637, 19, 374, '2022-04-17 12:28:40', '2022-04-17 12:28:40', 8000, NULL, NULL, NULL),
(638, 19, 1, '2022-04-17 12:28:40', '2022-04-17 12:28:40', 12231, NULL, NULL, NULL),
(639, 20, 374, '2022-04-17 12:29:54', '2022-04-17 12:29:54', 8000, NULL, NULL, NULL),
(640, 20, 1, '2022-04-17 12:29:54', '2022-04-17 12:29:54', 12231, NULL, NULL, NULL),
(641, 21, 374, '2022-04-17 12:30:30', '2022-04-17 12:30:30', 8000, NULL, NULL, NULL),
(642, 21, 1, '2022-04-17 12:30:30', '2022-04-17 12:30:30', 12231, NULL, NULL, NULL),
(643, 22, 374, '2022-04-17 12:32:56', '2022-04-17 12:32:56', 8000, NULL, NULL, NULL),
(644, 22, 1, '2022-04-17 12:32:56', '2022-04-17 12:32:56', 12231, NULL, NULL, NULL),
(645, 23, 374, '2022-04-17 12:35:54', '2022-04-17 12:35:54', 8000, NULL, NULL, NULL),
(646, 23, 1, '2022-04-17 12:35:54', '2022-04-17 12:35:54', 12231, NULL, NULL, NULL),
(647, 24, 374, '2022-04-17 12:37:22', '2022-04-17 12:37:22', 8000, NULL, NULL, NULL),
(648, 24, 1, '2022-04-17 12:37:22', '2022-04-17 12:37:22', 12231, NULL, NULL, NULL),
(649, 25, 368, '2022-06-14 14:03:30', '2022-06-14 14:03:30', 160000, NULL, NULL, NULL),
(650, 25, 392, '2022-06-14 14:03:30', '2022-06-14 14:03:30', 45000, NULL, NULL, NULL),
(651, 26, 359, '2022-06-17 04:35:34', '2022-06-17 04:35:34', 5000, 0, 'Rupiah', NULL),
(652, 26, 1, '2022-06-17 04:35:34', '2022-06-17 04:35:34', 123, 0, 'Rupiah', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE `homepage` (
  `id_homepage` bigint(20) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `uraian` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `id_induk` bigint(20) DEFAULT NULL,
  `warna_font` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`id_homepage`, `judul`, `uraian`, `gambar`, `created_at`, `updated_at`, `deleted_at`, `id_induk`, `warna_font`) VALUES
(22, 'Dapatkan Diskon LEbih menarik', '#plantshop.id', '1622820555_slider7.jpg', '2021-06-04', '2021-06-04', NULL, 2, NULL),
(26, 'Test3', '#plantshop.id', '1622821607_slider9.jpg', '2021-06-04', '2021-06-04', NULL, 2, NULL),
(27, 'Test4', '#plantshop.id', '1622821607_slider3.jpg', '2021-06-04', '2021-06-04', NULL, 2, NULL),
(46, 'Platfrom jual beli tanaman\r\n<br>kaktus<br>', 'Nikmati kemudahan transaksi jual beli kaktus disini.', '1636744502_design 1 new (1).png', '2021-11-12', '2021-11-12', NULL, 1, '#ffffff'),
(47, 'Dengan <u>Plantshop.id</u> nikmati&nbsp;<br>kemudahan dalam penjualan<br>tanaman<br>', 'Nikmati kemudahan transaksi jual beli kaktus disini.', '1636745230_design 2 new.png', '2021-11-12', '2021-11-12', NULL, 1, '#ff0000');

-- --------------------------------------------------------

--
-- Table structure for table `induk_kategori`
--

CREATE TABLE `induk_kategori` (
  `id_indukKategori` int(11) NOT NULL,
  `nama_indukKategori` varchar(50) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `induk_kategori`
--

INSERT INTO `induk_kategori` (`id_indukKategori`, `nama_indukKategori`, `updated_at`, `created_at`) VALUES
(1, 'Tanaman', NULL, NULL),
(3, 'Pupuk', '2021-02-07 18:29:39', '2021-02-07 18:29:39'),
(4, 'Vas', '2021-02-07 18:29:48', '2021-02-07 18:29:48'),
(5, 'Rotan', '2021-02-07 18:29:58', '2021-02-07 18:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `jenisdekor`
--

CREATE TABLE `jenisdekor` (
  `id_jenisDekor` int(11) NOT NULL,
  `nama_jenisDekor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenisdekor`
--

INSERT INTO `jenisdekor` (`id_jenisDekor`, `nama_jenisDekor`) VALUES
(1, 'green dekor'),
(2, 'home dekor');

-- --------------------------------------------------------

--
-- Table structure for table `jenistanaman`
--

CREATE TABLE `jenistanaman` (
  `id_jenisTanaman` int(11) NOT NULL,
  `nama_jenisTanaman` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenistanaman`
--

INSERT INTO `jenistanaman` (`id_jenisTanaman`, `nama_jenisTanaman`, `created_at`, `updated_at`) VALUES
(1, 'kering', '2021-01-23 18:38:59', '2021-01-23 11:54:52'),
(2, 'basah', '2021-01-23 11:46:47', '2021-01-23 11:46:47'),
(3, 'Lembab agak kering', '2021-01-23 12:25:54', '2021-08-31 03:09:05'),
(5, 'Merambat', '2021-06-05 00:26:55', '2021-06-05 00:26:55'),
(6, 'Basah', '2021-06-21 13:40:18', '2021-06-21 13:40:18'),
(7, 'Lembab', '2021-08-31 03:08:51', '2021-08-31 03:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link_gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`, `link_gambar`) VALUES
(521, 'Sansevieriaa', '2021-01-24 11:27:58', '2021-06-17 01:41:34', 'https://cdn-m2.fabelio.com/wysiwyg/Artikel_Images/Artikel_55/Sansevieria_Trifasciata.jpg'),
(523, 'Monstera', '2021-01-26 08:30:44', '2021-01-26 08:37:07', 'https://cdn-m2.fabelio.com/wysiwyg/Artikel_Images/Artikel_55/Sansevieria_Trifasciata.jpg'),
(524, 'Kaktus', '2021-01-26 08:39:32', '2021-01-26 08:39:32', 'https://cdn-m2.fabelio.com/wysiwyg/Artikel_Images/Artikel_55/Sansevieria_Trifasciata.jpg'),
(525, 'Ketapang', '2021-01-26 17:16:46', '2021-01-26 17:16:47', 'https://cdn-m2.fabelio.com/wysiwyg/Artikel_Images/Artikel_55/Sansevieria_Trifasciata.jpg'),
(526, 'Begoniaceae', '2021-06-06 07:10:23', '2021-06-06 07:10:23', 'https://cdn-m2.fabelio.com/wysiwyg/Artikel_Images/Artikel_55/Sansevieria_Trifasciata.jpg'),
(536, 'Philo', '2021-07-06 04:15:27', '2021-07-06 04:15:27', 'https://cdn-m2.fabelio.com/wysiwyg/Artikel_Images/Artikel_55/Sansevieria_Trifasciata.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `komentar_artikel`
--

CREATE TABLE `komentar_artikel` (
  `id_koment` bigint(20) NOT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `id_artikel` bigint(20) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `komentar_artikel`
--

INSERT INTO `komentar_artikel` (`id_koment`, `komentar`, `id_user`, `id_artikel`, `created_at`, `updated_at`, `deleted_at`, `rating`) VALUES
(221, 'iki komentar testinjaokjskdjaksjdkjaskdklasdklajsldalsdklajksd', 41, 222, '2021-10-25', '2021-10-25', NULL, NULL),
(222, 'test', 41, 222, '2021-10-25', '2021-10-25', NULL, NULL),
(223, 'test', 41, 222, '2021-10-25', '2021-10-25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `koment_produk`
--

CREATE TABLE `koment_produk` (
  `id_koment` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `koment` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `koment_produk`
--

INSERT INTO `koment_produk` (`id_koment`, `user_id`, `koment`, `name`, `email`, `created_at`, `deleted_at`, `updated_at`, `produk_id`, `rating`) VALUES
(23, 49, 'test', NULL, NULL, '2021-10-26 00:00:00', NULL, '2021-10-26 02:02:37', 363, NULL),
(24, 52, 'test', NULL, NULL, '2021-11-01 00:00:00', NULL, '2021-11-01 14:34:43', 368, NULL),
(27, 106, NULL, NULL, NULL, '2022-06-14 00:00:00', NULL, '2022-06-14 18:27:37', 392, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mediatanam`
--

CREATE TABLE `mediatanam` (
  `id_mediaTanam` int(11) NOT NULL,
  `nama_mediaTanam` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mediatanam`
--

INSERT INTO `mediatanam` (`id_mediaTanam`, `nama_mediaTanam`, `created_at`, `updated_at`) VALUES
(17, 'Tanah', '2021-01-24 15:04:47', '2021-01-24 15:04:48'),
(18, 'Kapas Basah', '2021-01-24 08:11:49', '2021-01-24 08:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_03_085310_create_sessions_table', 1),
(9, '2020_12_10_051852_modul_table', 2),
(10, '2020_12_10_052053_sub_modul_table', 2),
(11, '2020_12_11_052103_barang_table', 3),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(15, '2016_06_01_000004_create_oauth_clients_table', 4),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(17, '2020_12_13_064926_penjualan_table', 4),
(18, '2021_08_25_051837_create_orders_table', 5),
(19, '2019_10_10_015655_create_categories_table', 6),
(20, '2019_11_18_153406_create_products_table', 6),
(21, '2019_11_18_154523_create_attributes_table', 6),
(22, '2019_11_18_154719_create_product_attribute_values_table', 6),
(23, '2019_11_18_155326_create_product_inventories_table', 6),
(24, '2019_11_18_155543_create_product_categories_table', 6),
(25, '2019_11_18_155703_create_product_images_table', 6),
(26, '2019_11_28_153532_rename_column_in_products_table', 6),
(27, '2019_11_28_161330_alter_column_in_products_table', 6),
(28, '2019_12_17_135909_add_columns_to_attributes_table', 6),
(29, '2019_12_17_140249_create_attribute_options_table', 6),
(30, '2020_01_13_170436_remove_column_product_attribute_value_id_in_product_inventories_table', 6),
(31, '2020_01_13_171015_add_parent_id_and_type_to_products_table', 6),
(32, '2020_01_13_171423_alter_as_nullable_column_in_products_table', 6),
(33, '2020_01_13_171602_alter_attribute_relation_in_product_attribute_values_table', 6),
(34, '2020_01_23_151312_create_permission_tables', 6),
(35, '2020_04_24_133452_add_full_text_search_index_to_products_table', 6),
(36, '2020_04_24_142324_add_parent_product_id_to_product_attribute_values_table', 6),
(37, '2020_05_03_154113_rename_column_and_add_columns_in_users_table', 6),
(38, '2020_05_09_163433_create_orders_table', 7),
(39, '2020_05_09_163816_create_order_items_table', 7),
(40, '2020_05_09_164011_create_payments_table', 7),
(41, '2020_05_09_164155_create_shipments_table', 7),
(42, '2020_05_11_163514_create_jobs_table', 7),
(43, '2020_05_15_155845_add_payment_token_to_orders_table', 7),
(44, '2020_05_15_155956_add_status_to_payments_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(10) UNSIGNED NOT NULL,
  `modul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `modul`, `icon`, `created_at`, `updated_at`, `no_urut`) VALUES
(1, 'Mastering', 'fa-archive', '2020-12-10 12:38:50', '2021-05-18 16:25:45', 1),
(2, 'Transaksi Penjualan', 'fa-shopping-cart', '2020-12-20 08:52:29', '2021-05-18 16:26:02', 2),
(3, 'Artikel', 'fa-table', '2020-12-20 08:52:29', '2021-06-14 05:54:58', 3),
(91, 'Settings', 'fa fa-cog', NULL, '2021-06-30 13:15:26', 6),
(92, 'Bank Data', 'fa-table', NULL, '2021-01-23 14:36:37', 4),
(94, 'Manajemen Pengguna', 'fa fa-cog', NULL, '2021-06-30 13:15:00', 5),
(95, 'Laporan', 'fa fa-file', NULL, '2021-08-12 13:59:19', 7);

-- --------------------------------------------------------

--
-- Table structure for table `m_alamat_pengiriman_user`
--

CREATE TABLE `m_alamat_pengiriman_user` (
  `id_alamat` bigint(20) NOT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  `provinsi` varchar(20) DEFAULT NULL,
  `kota` varchar(20) DEFAULT NULL,
  `rt` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `m_alamat_pengiriman_user`
--

INSERT INTO `m_alamat_pengiriman_user` (`id_alamat`, `id_user`, `provinsi`, `kota`, `rt`, `desa`, `created_at`, `deleted_at`, `updated_at`) VALUES
(2, 72, 'Jawa Timur', 'Lamongan', '06/08', 'Keduyung', NULL, NULL, NULL),
(3, 75, 'Jalan Pulau Irian', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori_produk`
--

CREATE TABLE `m_kategori_produk` (
  `id_kategori_produk` bigint(20) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `m_kategori_produk`
--

INSERT INTO `m_kategori_produk` (`id_kategori_produk`, `nama_kategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tanaman Hias', NULL, NULL, NULL),
(2, 'Perlengkapan Tanaman', NULL, NULL, NULL),
(3, 'Dekorasi', NULL, NULL, NULL),
(4, 'Obat-obatan Tanaman', NULL, NULL, NULL),
(5, 'Tanaman Biasa', NULL, NULL, NULL),
(6, 'Tanaman Berbuah', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0280c1a767547b2c9dee6ce6e22cba44e27374f8eeb6ae2b002f3fe8b7cb3a818599542ebd672f8f', NULL, 1, 'user', '[]', 0, '2022-01-18 20:25:34', '2022-01-18 20:25:34', '2023-01-18 20:25:34'),
('0e9a8b1d51a9fef37f7bb4e9b4b1bd181663044c863ac85b293be008d36c06bb1a02fd3f455ea0a4', 3, 1, 'Token', '[]', 0, '2021-01-13 13:10:25', '2021-01-13 13:10:25', '2021-01-20 13:10:25'),
('200bb9f1f545355e98217e8bf8d073ebcd5fa86c245debc9f1c1f6f5adddb61f7c991c06d303ebf1', NULL, 1, 'user', '[]', 0, '2022-01-18 19:58:38', '2022-01-18 19:58:38', '2023-01-18 19:58:38'),
('223120b7daf1b11992ccb92a127e71122a9237198864c90ff336306d4f02b16da090f58439502b6f', NULL, 1, 'user', '[]', 0, '2022-01-18 20:39:40', '2022-01-18 20:39:40', '2023-01-18 20:39:40'),
('339ec264b89b457b6dfc7c1deefed9132d335ef62d6427a1fdd8db94cbac20fde4ed4cf099bff4c7', NULL, 1, 'user', '[]', 0, '2022-01-18 20:25:56', '2022-01-18 20:25:56', '2023-01-18 20:25:56'),
('4370800ab21466a85666d94a3cd639e10ae1b98d6316a1c1bb63c332c3a3b4653474d50d923ec3f1', NULL, 1, 'user', '[]', 0, '2022-01-18 19:48:26', '2022-01-18 19:48:26', '2023-01-18 19:48:26'),
('60ec288a23ff40e217f0ede125c994663497a6914b8b9290911c088206ab6c9d45e1f173cf1fc841', 2, 1, 'user', '[]', 0, '2022-01-18 18:44:35', '2022-01-18 18:44:35', '2023-01-18 18:44:35'),
('74b75bcf355b609c085bcb92fa336fe3a8f94de9e551301498a47944c611876130bc95918689e60a', 4, 1, 'user', '[]', 0, '2022-01-18 18:46:36', '2022-01-18 18:46:36', '2023-01-18 18:46:36'),
('755b756f92ff096b29859ffa13585175563462504a5771bf4e76df878ac010a188b3f399a8131122', 5, 1, 'user', '[]', 0, '2022-01-18 18:47:58', '2022-01-18 18:47:58', '2023-01-18 18:47:58'),
('7d8d4c70a8bc01c2f52596eac9fe9777fd651da0e494859ec0f53005c50a59db51484800be831fae', 7, 1, 'user', '[]', 0, '2022-01-18 20:02:26', '2022-01-18 20:02:26', '2023-01-18 20:02:26'),
('7e2160b1c9e9be67fb4d73c6aebd7abfc042c3d8c0f4aea1fd33fee566d5babfaa9f506bd49afc42', 6, 1, 'user', '[]', 0, '2022-01-18 20:01:53', '2022-01-18 20:01:53', '2023-01-18 20:01:53'),
('830dd51a13e95e02be5407c81b8f7051fe45c7479f9a3c8f0a62de6324553f13b72d4e76513fdee9', NULL, 1, 'user', '[]', 0, '2022-01-18 20:20:39', '2022-01-18 20:20:39', '2023-01-18 20:20:39'),
('8a78ce5d1c9411ef6c91d56621df3d6a740fdd58663d12e5108dbca13f9316a6ebd60e4aba1adb49', NULL, 1, 'user', '[]', 0, '2022-01-18 18:53:34', '2022-01-18 18:53:34', '2023-01-18 18:53:34'),
('b3527170f56ce596c4c7a637f820fcd23a4ad03b3af90d579be231dbdf7f5ac3f73c02724dba4b1c', 3, 1, 'user', '[]', 0, '2022-01-18 18:45:03', '2022-01-18 18:45:03', '2023-01-18 18:45:03'),
('bc3ed48f050fdb136bdf48c152440bee4ef132f17785d4fe08a9819c453e3a944f7a73e37de86e4c', 8, 1, 'user', '[]', 0, '2022-01-18 20:38:52', '2022-01-18 20:38:52', '2023-01-18 20:38:52'),
('c01c61c8eb42eb1af0a9236bb6e2cd33f17f16fda51346b9b05dd18ba9aa21f0fd59b4d29a340e3b', 3, 1, 'Token', '[]', 0, '2021-01-26 06:18:48', '2021-01-26 06:18:48', '2021-02-02 06:18:48'),
('d6dd96b8dbad3f004ed51ca8b0e707fed3f5c73d876bc3b8a6a19d6a271f575057b10b4ea9a95c8f', 3, 1, 'nApp', '[]', 0, '2021-01-13 12:31:26', '2021-01-13 12:31:26', '2021-01-20 12:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'plantshop.id Personal Access Client', 'O0VtuUwH9w1DudLs94Gq7SroqdFapSQktDl7NIR4', NULL, 'http://localhost', 1, 0, 0, '2021-01-13 11:08:44', '2021-01-13 11:08:44'),
(2, NULL, 'plantshop.id Password Grant Client', 'fMDS5ASGRrWPHPx8iZzLv9sE2AZvHJBmrXWMcojx', 'users', 'http://localhost', 0, 1, 0, '2021-01-13 11:08:44', '2021-01-13 11:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-13 11:08:44', '2021-01-13 11:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_status_penjualan` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `catatan` varchar(50) NOT NULL DEFAULT '0',
  `nama_users` varchar(50) DEFAULT NULL,
  `alamat_users` text DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `no_invoice` varchar(50) DEFAULT NULL,
  `tgl_penjualan` date DEFAULT NULL,
  `qr` text DEFAULT NULL,
  `jenis_customer` text DEFAULT NULL,
  `totalHarga` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_baca` int(11) DEFAULT NULL,
  `payment_token` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_status_penjualan`, `id_users`, `catatan`, `nama_users`, `alamat_users`, `jumlah`, `total`, `no_invoice`, `tgl_penjualan`, `qr`, `jenis_customer`, `totalHarga`, `updated_at`, `created_at`, `deleted_at`, `status_baca`, `payment_token`, `payment_url`) VALUES
(1, 1, NULL, '#plantshop.id', 'test', 'lamongan', NULL, 11000, 'PL1', '1970-01-01', 'PL1.svg', '1', NULL, '2022-04-17 10:09:43', '2022-04-17 10:09:43', NULL, NULL, NULL, NULL),
(2, 1, NULL, '#plantshop.id', 'testing', 'tawtaw', NULL, 12000, 'PL2', '1970-01-01', 'PL2.svg', '1', NULL, '2022-04-17 10:10:36', '2022-04-17 10:10:36', NULL, NULL, NULL, NULL),
(3, 1, NULL, '#plantshop.id', 'test', 'tset', NULL, 115000, 'PL3', '1970-01-01', 'PL3.svg', '1', NULL, '2022-04-17 10:15:47', '2022-04-17 10:15:47', NULL, NULL, NULL, NULL),
(4, 1, NULL, '#plantshop.id', 'testing', 'asdasd', NULL, 12000, 'PL4', '2022-04-17', 'PL4.svg', '0', NULL, '2022-04-17 10:17:20', '2022-04-17 10:17:20', NULL, NULL, NULL, NULL),
(5, 1, NULL, '#plantshop.id', 'test', 'tset', NULL, 4000, 'PL5', '2022-04-17', 'PL5.svg', '1', NULL, '2022-04-17 10:23:14', '2022-04-17 10:23:14', NULL, NULL, NULL, NULL),
(6, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL6332022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 10:41:27', '2022-04-17 10:41:27', NULL, NULL, NULL, NULL),
(7, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL7132022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 10:41:38', '2022-04-17 10:41:38', NULL, NULL, NULL, NULL),
(8, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL8412022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 10:41:41', '2022-04-17 10:41:41', NULL, NULL, NULL, NULL),
(9, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL972022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 11:11:56', '2022-04-17 11:11:56', NULL, NULL, NULL, NULL),
(10, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL10242022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:15:44', '2022-04-17 12:15:44', NULL, NULL, NULL, NULL),
(11, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL11332022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:20:19', '2022-04-17 12:20:19', NULL, NULL, NULL, NULL),
(12, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL12292022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:20:25', '2022-04-17 12:20:25', NULL, NULL, NULL, NULL),
(13, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL13342022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:20:52', '2022-04-17 12:20:52', NULL, NULL, NULL, NULL),
(14, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL1452022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:21:26', '2022-04-17 12:21:26', NULL, NULL, NULL, NULL),
(15, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL15432022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:24:26', '2022-04-17 12:24:26', NULL, NULL, NULL, NULL),
(16, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL16192022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:25:47', '2022-04-17 12:25:47', NULL, NULL, NULL, NULL),
(17, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL17402022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:26:14', '2022-04-17 12:26:14', NULL, NULL, NULL, NULL),
(18, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL18232022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:26:53', '2022-04-17 12:26:53', NULL, NULL, NULL, NULL),
(19, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL19122022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:28:40', '2022-04-17 12:28:40', NULL, NULL, NULL, NULL),
(20, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL20102022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:29:53', '2022-04-17 12:29:53', NULL, NULL, NULL, NULL),
(21, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL2152022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:30:30', '2022-04-17 12:30:30', NULL, NULL, NULL, NULL),
(22, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL22462022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:32:56', '2022-04-17 12:32:56', NULL, NULL, NULL, NULL),
(23, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL23372022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:35:54', '2022-04-17 12:35:54', NULL, NULL, NULL, NULL),
(24, 0, 105, '0', 'user', NULL, NULL, NULL, 'PL24262022/04/17', '2022-04-17', NULL, NULL, NULL, '2022-04-17 12:37:22', '2022-04-17 12:37:22', NULL, NULL, NULL, NULL),
(25, 0, 106, '0', 'ted', NULL, NULL, NULL, 'PL25382022/06/14', '2022-06-14', NULL, NULL, NULL, '2022-06-14 14:03:30', '2022-06-14 14:03:30', NULL, NULL, NULL, NULL),
(26, 1, NULL, '#plantshop.id', 'test', 'tset', NULL, 5123, 'PL26', '2022-06-17', 'PL26.svg', '0', NULL, '2022-06-17 04:35:34', '2022-06-17 04:35:34', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9nfhmbuQfxZoDRYrkaDS0Y2KEIMKmpkGL9uNZJF8', NULL, '20.213.239.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0llS3AwSWpaeUp6WUtaNFBGY3VjVFVxdXNjUkhQek9DS1lLTnFJMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vMjAuMjEzLjIzOS4xMzgvcGxhbnRzaG9wL2xvZ2luQWRtaW4iO319', 1655462890),
('Fu97W9Yhuz2pZhAYBXlXGxzUjoFu2d17NsLZG7Dv', 109, '180.253.164.9', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36 OPR/87.0.4390.45', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicFVKRzliWjE1NzA5WW10cjFablU2cmF4SkhtcG1NUEY4aGd0SWNLMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AvaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMDk7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRiMTZrUTRLeFI0NGlYWGdOQU41Lk8uUGNCZjY5aFp3MXpaV1Vjbi5tUGNicnFycjFTRUQwTyI7fQ==', 1656143961),
('gOkxMEVwiofzspxYn3fbUjLrR21PW2GNbQDdzzs9', NULL, '125.164.4.34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36 OPR/87.0.4390.45', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmRUQVhGNFgyUHVSNVVvSnFCTDhHMnlqYTlMN1VqajFqcWVQalpQOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1655873013),
('PA9mlEYRXpmd8F0Flx7VYDp9ERNbuwG26bYKSasB', NULL, '125.164.11.49', 'WhatsApp/2.22.12.78 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVlhOUppNGNiUGJMQ3Z3dXhHMERKQjVmQlZmc25mNjl5OGo5b0IySSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1656485491),
('qEBY1jX5ruj8Aula892Liu122EoPo8gruVaz5l0j', NULL, '125.164.11.49', 'WhatsApp/2.22.12.78 i', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUQzZFdmemZVSHp6SzNhSFlhUDRmVnRDQVBnWWxneTNEd3J4TXhwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1656485491),
('qO6wYS7u7bpxZWZtCN17hClLi7I7fvSvMJyAU5bH', NULL, '180.253.163.137', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36 OPR/87.0.4390.45', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2p0TW52cTFBZndIbXBTUnlGdmh4STZhMzRPWWNIY09YM0pGcHJHSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AvcHJvZHVrLXYyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1655459174),
('rsO5An3D3Z2mBpZIDniYrRR2W6MRed7D6EF8IWA7', NULL, '36.74.30.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUhKUXlFSHluOHFxSHVDOG1TT0Z5U0lCYjBieWxHeVd5UTJOOTVxbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AvbG9naW5BZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1655792625),
('zETZfQ0QPmyxUcpMlNmtXMtqabcxQccGAubI8Eta', NULL, '180.253.164.31', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW5TS0ttWE85OTRtYlZydEhkS3lFbnF0ZHF2RkdwRzZxVmJuSkpVSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8yMC4yMTMuMjM5LjEzOC9wbGFudHNob3AvaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1656513676);

-- --------------------------------------------------------

--
-- Table structure for table `status_penjualan`
--

CREATE TABLE `status_penjualan` (
  `id_status` int(11) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_penjualan`
--

INSERT INTO `status_penjualan` (`id_status`, `keterangan`) VALUES
(1, 'Dibayar'),
(2, 'Proses '),
(5, 'Approved'),
(6, 'Menunggu Pembayaran');

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subKategori` int(11) NOT NULL,
  `nama_subKategori` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subKategori`, `nama_subKategori`, `created_at`, `updated_at`) VALUES
(37, 'Val', '2021-01-24 14:23:42', '2021-08-30 18:29:06'),
(38, 'Hahnii', NULL, NULL),
(39, 'Biola', NULL, NULL),
(40, 'Borsigiana', NULL, NULL),
(41, 'Deliciosa', NULL, NULL),
(42, 'Koboi', NULL, NULL),
(45, 'Delicius', '2021-06-21 15:46:33', '2021-06-21 15:46:33'),
(46, 'Centong', '2021-11-13 00:10:08', '2021-11-13 00:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `submodul`
--

CREATE TABLE `submodul` (
  `id_subModul` int(10) UNSIGNED NOT NULL,
  `id_Modul` int(11) NOT NULL,
  `SubModul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `submodul`
--

INSERT INTO `submodul` (`id_subModul`, `id_Modul`, `SubModul`, `link`, `created_at`, `updated_at`) VALUES
(8, 91, 'Modul', '/modul', '2020-12-10 16:53:35', '2020-12-10 16:53:36'),
(10, 91, 'Restore', '/restore', NULL, NULL),
(12, 2, 'Penjualan', '/penjualan', NULL, '2021-01-13 15:59:46'),
(20, 1, 'Kategori Tanaman', '/kategori', NULL, '2021-05-18 16:26:43'),
(21, 91, 'Toko', '/toko', NULL, NULL),
(23, 12, 'Tanaman', '/trikTanaman', NULL, NULL),
(24, 1, 'Jenis Tanaman', '/dataJenisTanaman', NULL, NULL),
(26, 3, 'Tips', '/tipss', NULL, NULL),
(28, 92, 'Bank Data Tanaman', '/bankddata', NULL, '2021-01-23 14:36:50'),
(29, 92, 'Dekorasi', '/greendekor', NULL, '2021-05-19 18:20:00'),
(31, 1, 'Media Tanam', '/mediatanam', NULL, NULL),
(32, 1, 'Sub Kategori', '/subKategori', NULL, NULL),
(33, 1, 'Tanaman', '/barang', NULL, '2022-04-17 08:36:17'),
(34, 1, 'Non Tanaman', '/nonTanaman', NULL, '2022-04-17 08:36:29'),
(35, 1, 'Induk Kategori', '/indukkategories', NULL, NULL),
(36, 91, 'Homepage', '/homepage', NULL, NULL),
(37, 94, 'User', '/users', NULL, NULL),
(41, 95, 'Customer', '/laporan/customer', NULL, NULL),
(42, 95, 'Stok Tersedia', '/laporan/stok/tersedia', NULL, NULL),
(43, 95, 'Stok Terjual', '/laporan/stok/terjual', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ongkir`
--

CREATE TABLE `tbl_ongkir` (
  `id_ongkir` bigint(20) NOT NULL,
  `id_penjualan` bigint(20) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `layanan_expedisi` varchar(255) DEFAULT NULL,
  `harga` decimal(20,2) DEFAULT NULL,
  `berat_barang` varchar(255) DEFAULT NULL,
  `no_resi` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_ongkir`
--

INSERT INTO `tbl_ongkir` (`id_ongkir`, `id_penjualan`, `expedisi`, `estimasi`, `layanan_expedisi`, `harga`, `berat_barang`, `no_resi`, `created_at`, `deleted_at`, `updated_at`) VALUES
(5, 389, 'POS', '5 HARI', 'Paket Kilat Khusus', '32000.00', '36', '0', NULL, NULL, NULL),
(6, 390, 'POS', '6 HARI', 'Paket Kilat Khusus', '54500.00', '24', '0', NULL, NULL, NULL),
(7, 391, 'POS', '1 HARI', 'Express Next Day Barang', '14500.00', '12', '0', NULL, NULL, NULL),
(8, 392, 'JNE', '1-1', 'YES', '28000.00', '24', '0', NULL, NULL, NULL),
(9, 393, 'POS', '1 HARI', 'Express Next Day Barang', '14500.00', '24', '0', NULL, NULL, NULL),
(10, 394, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(11, 395, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(12, 396, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(13, 397, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(14, 398, 'POS', '1 HARI', 'Express Next Day Barang', '12500.00', '24', '0', NULL, NULL, NULL),
(15, 399, 'POS', '1 HARI', 'Express Next Day Barang', '12500.00', '24', '0', NULL, NULL, NULL),
(16, 400, 'POS', '6 HARI', 'Paket Kilat Khusus', '65000.00', '12', '0', NULL, NULL, NULL),
(17, 401, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(18, 402, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '36', '0', NULL, NULL, NULL),
(19, 403, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(20, 404, 'POS', '1 HARI', 'Express Next Day Barang', '14500.00', '36', '0', NULL, NULL, NULL),
(21, 405, 'POS', '5 HARI', 'Paket Kilat Khusus', '50500.00', '24', '0', NULL, NULL, NULL),
(22, 406, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(23, 407, 'POS', '1 HARI', 'Express Next Day Barang', '11500.00', '24', '0', NULL, NULL, NULL),
(24, 408, 'POS', '1 HARI', 'Express Next Day Barang', '11500.00', '12', '0', NULL, NULL, NULL),
(25, 409, 'POS', '1 HARI', 'Express Next Day Barang', '11500.00', '12', '0', NULL, NULL, NULL),
(26, 410, 'POS', '1 HARI', 'Express Next Day Barang', '11500.00', '24', '0', NULL, NULL, NULL),
(27, 411, 'POS', '1 HARI', 'Express Next Day Barang', '11500.00', '24', '0', NULL, NULL, NULL),
(28, 412, 'POS', '3 HARI', 'Paket Kilat Khusus', '8000.00', '24', '0', NULL, NULL, NULL),
(29, 413, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '12', '0', NULL, NULL, NULL),
(30, 414, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '12', '0', NULL, NULL, NULL),
(31, 415, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '12', '0', NULL, NULL, NULL),
(32, 416, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '12', '0', NULL, NULL, NULL),
(33, 417, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '12', '0', NULL, NULL, NULL),
(34, 418, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '12', '0', NULL, NULL, NULL),
(35, 419, 'POS', '5 HARI', 'Paket Kilat Khusus', '47500.00', '24', '0', NULL, NULL, NULL),
(36, 420, 'POS', '1 HARI', 'Express Next Day Barang', '11500.00', '36', '0', NULL, NULL, NULL),
(37, 421, 'POS', '1 HARI', 'Express Next Day Barang', '14500.00', '36', '0', NULL, NULL, NULL),
(38, 422, 'POS', '2 HARI', 'Paket Kilat Khusus', '8000.00', '36', '0', NULL, NULL, NULL),
(39, 423, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL),
(40, 424, NULL, NULL, NULL, '30000.00', '1', '0', NULL, NULL, NULL),
(41, 425, NULL, NULL, NULL, '8550.00', '1', '0', NULL, NULL, NULL),
(42, 426, NULL, NULL, NULL, '30000.00', '1', '0', NULL, NULL, NULL),
(43, 427, NULL, NULL, NULL, '8550.00', '1', '0', NULL, NULL, NULL),
(44, 6, 'JNE', '1-1', 'YES', '28000.00', '24', '0', NULL, NULL, NULL),
(45, 7, 'JNE', '1-1', 'YES', '28000.00', '24', '0', NULL, NULL, NULL),
(46, 8, 'JNE', '1-1', 'YES', '28000.00', '24', '0', NULL, NULL, NULL),
(47, 9, 'POS', '4 HARI', 'Paket Kilat Khusus', '35150.00', '24', '0', NULL, NULL, NULL),
(48, 10, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(49, 11, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(50, 12, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(51, 13, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(52, 14, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(53, 15, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(54, 16, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(55, 17, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(56, 18, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(57, 19, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(58, 20, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(59, 21, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(60, 22, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(61, 23, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(62, 24, 'POS', '6 HARI', 'Paket Kilat Khusus', '77900.00', '24', '0', NULL, NULL, NULL),
(63, 25, NULL, NULL, NULL, NULL, '24', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_order`
--

CREATE TABLE `temporary_order` (
  `id_pre_order` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `temporary_order`
--

INSERT INTO `temporary_order` (`id_pre_order`, `id_barang`, `id_user`, `qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(211, 368, 52, NULL, '2021-11-01 15:04:19', '2021-11-01 15:04:19', NULL),
(212, 372, 41, NULL, '2021-11-10 06:15:58', '2021-11-10 06:15:58', NULL),
(213, 427, 71, NULL, '2021-11-13 07:59:25', '2021-11-13 07:59:25', NULL),
(216, 430, 67, NULL, '2021-11-16 11:47:45', '2021-11-16 11:47:45', NULL),
(218, 429, 104, NULL, '2021-11-17 11:51:22', '2021-11-17 11:51:22', NULL),
(222, 368, 105, NULL, '2022-05-22 00:38:05', '2022-05-22 00:38:05', NULL),
(223, 429, 105, NULL, '2022-05-22 00:38:09', '2022-05-22 00:38:09', NULL),
(224, 368, 106, NULL, '2022-06-14 14:02:57', '2022-06-14 14:02:57', NULL),
(225, 392, 106, NULL, '2022-06-14 14:03:00', '2022-06-14 14:03:00', NULL),
(226, 368, 107, NULL, '2022-06-14 18:28:37', '2022-06-14 18:28:37', NULL),
(227, 357, 109, NULL, '2022-06-25 07:58:22', '2022-06-25 07:58:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id_tips` int(11) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `foto_tips` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `hastag` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id_tips`, `judul`, `isi`, `foto_tips`, `created_at`, `updated_at`, `deleted_at`, `id_kategori`, `hastag`, `id_user`) VALUES
(217, 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id', NULL),
(218, 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id', NULL),
(219, 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id', NULL),
(220, 'Tanaman Hias Monstera dan Manfaatnya', '<p><span style=\"color: rgb(44, 44, 44); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Tanaman monstera adalah salah satu bentuk tanaman hias yang cocok untuk ditanam pada pot ataupun pada ruangan yang terbatas sekalipun sehingga Anda bisa merawatnya meskipun tidak memiliki tempat pada rumah Anda. Tanaman monstera adalah salah satu bentuk tanaman hias yang sangat mudah untuk dirawat dan masih bisa tumbuh dengan baik meskipun Anda secara tidak sengaja lupa untuk merawatnya dengan baik.</span><br></p>', '1623886273_blogpage4.jpg', '2021-06-16 23:31:13', '2021-06-16 23:31:13', NULL, 523, '#plantshop.id', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` bigint(20) NOT NULL,
  `about` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `maps` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `about`, `gambar`, `judul`, `alamat`, `kontak`, `email`, `maps`) VALUES
(1, 'Shopee menyediakan sarana yang tepat untuk mendukung para penjual online kami dalam berjualan di Shopee. Daftarkan produk dan mulailah menjual produk hanya dalam 30 detik saja! Tingkatkan popularitas produk jualanmu dengan ikut serta dalam kampanye dan promosi kami. Gunakan Shopee Seller Centre untuk mengorganisir produk, melacak pengiriman, mengatur pesanan, dan mengukur performa toko online. Sebarkan informasi produkmu di media sosial, seperti Facebook, Twitter, dan Instagram. Bangun reputasi toko online dengan mengumpulkan rating dan review positif dari para pembelimu. Shopee sepenuhnya gratis tanpa komisi atau biaya pengunduhan. Bergabunglah sekarang dan mulailah berjualan!', '1635218494_plants.png', 'Plantshop.id', 'Jalan Perumahan Semen Indonesia', '085730982703', 'planthsop.id@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d630270.3016214464!2d112.04923656593344!3d-7.031204995717486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd801e43aadcf9f%3A0xe335b77e229ad297!2sPerumahan%20Dinas%20Semen%20Gresik!5e1!3m2!1sid!2sid!4v1635219754921!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `google_id` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_wa` varchar(50) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kode_toko` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone`, `email_verified_at`, `password`, `google_id`, `two_factor_recovery_codes`, `remember_token`, `company`, `address1`, `address2`, `province_id`, `city_id`, `postcode`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `alamat`, `no_wa`, `level`, `foto_profile`, `tanggal_lahir`, `kode_toko`) VALUES
(105, 'user', NULL, 'new@gmail.com', NULL, NULL, '$2y$10$bvBLacMF0BGBQNDomNEyNu46rkLRnRreMdMqWpKpFYhCOpttf9WcG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-17 08:26:37', '2022-04-17 08:26:37', NULL, NULL, '1', '1650184731_7822694_aa5ded46-2c9d-4dfa-a2cc-54fe770397d1_554_554.jpeg', '1970-01-01', NULL),
(106, 'ted', NULL, 'user@gmail.com', NULL, NULL, '$2y$10$bvBLacMF0BGBQNDomNEyNu46rkLRnRreMdMqWpKpFYhCOpttf9WcG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-22 00:36:05', '2022-05-22 00:36:05', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Yoki Hidayatur', NULL, 'yoki.rohman16@student.uisi.ac.id', NULL, NULL, '$2y$10$NUutX8xvB/mzQCAYvSEi0O3Fx4fPy9C5IQJIywYu40ps1DCvOraae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 18:10:36', '2022-06-14 18:10:36', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'test', NULL, 'test@gmail.com', NULL, NULL, '$2y$10$xdfsq7g2AL3yMP7Dz73Hlerkr8ey5DvnnzHNh7CTztlmJvvoqL346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 20:10:41', '2022-06-14 20:10:41', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'hah', NULL, 'hahi@gmail.com', NULL, NULL, '$2y$10$b16kQ4KxR44iXXgNAN5.O.PcBf69hZw1zZWUcn.mPcbrqrr1SED0O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 07:58:10', '2022-06-25 07:58:10', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`) USING BTREE;

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bankdata`
--
ALTER TABLE `bankdata`
  ADD PRIMARY KEY (`id_bankdata`) USING BTREE;

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indexes for table `dekor`
--
ALTER TABLE `dekor`
  ADD PRIMARY KEY (`id_dekor`) USING BTREE;

--
-- Indexes for table `detail_bankdata`
--
ALTER TABLE `detail_bankdata`
  ADD PRIMARY KEY (`id_detail`) USING BTREE;

--
-- Indexes for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `homepage`
--
ALTER TABLE `homepage`
  ADD PRIMARY KEY (`id_homepage`) USING BTREE;

--
-- Indexes for table `induk_kategori`
--
ALTER TABLE `induk_kategori`
  ADD PRIMARY KEY (`id_indukKategori`) USING BTREE;

--
-- Indexes for table `jenisdekor`
--
ALTER TABLE `jenisdekor`
  ADD PRIMARY KEY (`id_jenisDekor`) USING BTREE;

--
-- Indexes for table `jenistanaman`
--
ALTER TABLE `jenistanaman`
  ADD PRIMARY KEY (`id_jenisTanaman`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`) USING BTREE;

--
-- Indexes for table `komentar_artikel`
--
ALTER TABLE `komentar_artikel`
  ADD PRIMARY KEY (`id_koment`) USING BTREE;

--
-- Indexes for table `koment_produk`
--
ALTER TABLE `koment_produk`
  ADD PRIMARY KEY (`id_koment`) USING BTREE;

--
-- Indexes for table `mediatanam`
--
ALTER TABLE `mediatanam`
  ADD PRIMARY KEY (`id_mediaTanam`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`) USING BTREE;

--
-- Indexes for table `m_alamat_pengiriman_user`
--
ALTER TABLE `m_alamat_pengiriman_user`
  ADD PRIMARY KEY (`id_alamat`) USING BTREE;

--
-- Indexes for table `m_kategori_produk`
--
ALTER TABLE `m_kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`) USING BTREE;

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `oauth_clients_user_id_index` (`user_id`) USING BTREE;

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Indexes for table `status_penjualan`
--
ALTER TABLE `status_penjualan`
  ADD PRIMARY KEY (`id_status`) USING BTREE;

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subKategori`) USING BTREE;

--
-- Indexes for table `submodul`
--
ALTER TABLE `submodul`
  ADD PRIMARY KEY (`id_subModul`) USING BTREE;

--
-- Indexes for table `tbl_ongkir`
--
ALTER TABLE `tbl_ongkir`
  ADD PRIMARY KEY (`id_ongkir`) USING BTREE;

--
-- Indexes for table `temporary_order`
--
ALTER TABLE `temporary_order`
  ADD PRIMARY KEY (`id_pre_order`) USING BTREE;

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id_tips`) USING BTREE;

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bankdata`
--
ALTER TABLE `bankdata`
  MODIFY `id_bankdata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT for table `dekor`
--
ALTER TABLE `dekor`
  MODIFY `id_dekor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `detail_bankdata`
--
ALTER TABLE `detail_bankdata`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `detail_barang`
--
ALTER TABLE `detail_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepage`
--
ALTER TABLE `homepage`
  MODIFY `id_homepage` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `induk_kategori`
--
ALTER TABLE `induk_kategori`
  MODIFY `id_indukKategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jenisdekor`
--
ALTER TABLE `jenisdekor`
  MODIFY `id_jenisDekor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jenistanaman`
--
ALTER TABLE `jenistanaman`
  MODIFY `id_jenisTanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `komentar_artikel`
--
ALTER TABLE `komentar_artikel`
  MODIFY `id_koment` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `koment_produk`
--
ALTER TABLE `koment_produk`
  MODIFY `id_koment` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mediatanam`
--
ALTER TABLE `mediatanam`
  MODIFY `id_mediaTanam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `m_alamat_pengiriman_user`
--
ALTER TABLE `m_alamat_pengiriman_user`
  MODIFY `id_alamat` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_kategori_produk`
--
ALTER TABLE `m_kategori_produk`
  MODIFY `id_kategori_produk` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_penjualan`
--
ALTER TABLE `status_penjualan`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subKategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `submodul`
--
ALTER TABLE `submodul`
  MODIFY `id_subModul` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_ongkir`
--
ALTER TABLE `tbl_ongkir`
  MODIFY `id_ongkir` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `temporary_order`
--
ALTER TABLE `temporary_order`
  MODIFY `id_pre_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id_tips` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
