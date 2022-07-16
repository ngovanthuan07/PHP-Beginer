-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2019 at 01:52 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

DROP TABLE IF EXISTS `image_library`;
CREATE TABLE IF NOT EXISTS `image_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(1, 2, '/uploads/15-03-2019/giay-da-bong-akka-1-power-18.jpg', 1552615987, 1552615987),
(2, 2, '/uploads/15-03-2019/giay-da-bong-akka-1-power-19.jpg', 1552615987, 1552615987),
(3, 2, '/uploads/15-03-2019/giay-da-bong-akka-22_compressed.jpg', 1552615987, 1552615987),
(4, 14, '/uploads/16-03-2019/201262223231919261.jpg', 1552738889, 1552738889),
(5, 14, '/uploads/16-03-2019/nike-mercurial-vapor-superfly-iii-fg-soccer-football-boots-cr7-italy-441972-505.jpg', 1552738889, 1552738889);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(3, 'GiÃ y bÃ³ng Ä‘Ã¡ 2', 'uploads/06-03-2019/shoes-2.jpg', 1500000, 'GiÃ y bÃ³ng Ä‘Ã¡ 2 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(2, 'GiÃ y bÃ³ng Ä‘Ã¡ 1', 'uploads/06-03-2019/shoes-1.jpg', 540000, 'GiÃ y bÃ³ng Ä‘Ã¡ 1 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(4, 'GiÃ y bÃ³ng Ä‘Ã¡ 3', 'uploads/06-03-2019/shoes-3.jpg', 780000, 'GiÃ y bÃ³ng Ä‘Ã¡ 3 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(5, 'GiÃ y bÃ³ng Ä‘Ã¡ 4', 'uploads/06-03-2019/shoes-4.jpg', 657000, 'GiÃ y bÃ³ng Ä‘Ã¡ 4 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(6, 'GiÃ y bÃ³ng Ä‘Ã¡ 5', 'uploads/06-03-2019/shoes-5.jpg', 684000, 'GiÃ y bÃ³ng Ä‘Ã¡ 5 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(7, 'GiÃ y bÃ³ng Ä‘Ã¡ 6', 'uploads/06-03-2019/shoes-6.jpg', 580000, 'GiÃ y bÃ³ng Ä‘Ã¡ 6 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(8, 'GiÃ y bÃ³ng Ä‘Ã¡ 7', 'uploads/06-03-2019/shoes-7.jpg', 1320000, 'GiÃ y bÃ³ng Ä‘Ã¡ 7 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(9, 'GiÃ y bÃ³ng Ä‘Ã¡ 8', 'uploads/06-03-2019/shoes-8.jpg', 1450000, 'GiÃ y bÃ³ng Ä‘Ã¡ 8 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(10, 'GiÃ y bÃ³ng Ä‘Ã¡ 9', 'uploads/06-03-2019/shoes-9.jpg', 1000000, 'GiÃ y bÃ³ng Ä‘Ã¡ 9 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(11, 'GiÃ y bÃ³ng Ä‘Ã¡ 10', 'uploads/06-03-2019/shoes-10.jpg', 900000, 'GiÃ y bÃ³ng Ä‘Ã¡ 10 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(12, 'GiÃ y bÃ³ng Ä‘Ã¡ 11', 'uploads/06-03-2019/shoes-11.jpg', 1100000, 'GiÃ y bÃ³ng Ä‘Ã¡ 11 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(13, 'GiÃ y bÃ³ng Ä‘Ã¡ 12', 'uploads/06-03-2019/shoes-12.jpg', 880000, 'GiÃ y bÃ³ng Ä‘Ã¡ 12 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `birthday`, `created_time`, `last_updated`) VALUES
(1, 'admin', 'Andn', '25d55ad283aa400af464c76d713c07ad', 123, 123, 1552735239);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
