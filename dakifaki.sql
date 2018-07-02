-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 02, 2018 at 11:15 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dakifaki`
--
CREATE DATABASE IF NOT EXISTS `dakifaki` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `dakifaki`;

-- --------------------------------------------------------

--
-- Table structure for table `muske`
--

DROP TABLE IF EXISTS `muske`;
CREATE TABLE IF NOT EXISTS `muske` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slika` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `boja` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `muske`
--

INSERT INTO `muske` (`id`, `slika`, `cena`, `boja`) VALUES
(1, 'men1.jpg', 1500, 'bela(white)'),
(2, 'men2.jpg', 1600, 'crna(black)'),
(3, 'men3.jpg', 1800, 'crvena(red)'),
(4, 'men4.jpg', 1500, 'bela(white)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `time` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `status`, `time`) VALUES
(1, 'davor', 'dachi79@gmail.com', 'd8338298683cd3eb900ef5802d7196f1', 1, '10:19:18 2018-02-27 '),
(2, 'bojana', 'bokica@gmail.com', '6b3f3999b7fc099b8298d1dce49f6d77', 1, '10:20:23 2018-02-27 '),
(3, 'vlada', 'ninja@gmail.com', 'eb0a191797624dd3a48fa681d3061212', 3, '10:22:11 2018-02-27 '),
(5, 'daki', 'dachi799@gmail.com', '6e79dfd9db72c0b77c7d853a9b86e55f', 1, '10:24:39 2018-02-27 '),
(6, 'maja', 'maja@gmail.com', '1e98c046db002bfc8c2aa1c2e159b7bb', 1, '11:04:48 2018-02-27 '),
(8, 'dakica', 'bancturklish@yahoo.com', 'eb0a191797624dd3a48fa681d3061212', 1, '11:21:41 2018-02-27 '),
(9, 'bojan', 'bojan@gmail.com', 'fee2c775c18a12b7b52b58129b00e1bd', 3, '00+1:16:25 2018-03-19 '),
(10, 'dakifaki', 'aasdsa@asdsadas.conm', '8c49de2971250d62104b0c8badf17197', 1, '14:24:36 2018-03-24 '),
(11, 'korisnik', 'korisnik@korisnik.com', '716b64c0f6bad9ac405aab3f00958dd1', 1, '11:13:12 2018-07-02 ');

-- --------------------------------------------------------

--
-- Table structure for table `zenske`
--

DROP TABLE IF EXISTS `zenske`;
CREATE TABLE IF NOT EXISTS `zenske` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slika` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `boja` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
