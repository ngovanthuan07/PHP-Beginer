-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2019 at 09:31 AM
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
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(5, 30, '/uploads/24-03-2019/2018-en-ok-satan-futbol-izmeler-beyaz-mor(1).jpg', 1553415495, 1553415495),
(6, 30, '/uploads/24-03-2019/futbol-izmeler-beyaz-mor-100-orijinal-cristiano(1).jpg', 1553415495, 1553415495),
(7, 30, '/uploads/24-03-2019/rBVaR1pnzIaAMqTXAAJ8j-qjSi0711(1).jpg', 1553415495, 1553415495),
(8, 30, '/uploads/24-03-2019/c823d964836d178ecb0be8f13da7562f.jpg', 1553416432, 1553416432),
(9, 30, '/uploads/24-03-2019/Nike_Herren_Mercurial_Victory_Vi_Fg_Fuszligballschuhe_B01MT1QXIZ.jpg', 1553416432, 1553416432),
(13, 33, '/uploads/24-03-2019/s-l400(1).jpg', 1553417393, 1553417393),
(14, 33, '/uploads/24-03-2019/2018-en-ok-satan-futbol-izmeler-beyaz-mor(1).jpg', 1553417393, 1553417393),
(15, 33, '/uploads/24-03-2019/futbol-izmeler-beyaz-mor-100-orijinal-cristiano(1).jpg', 1553417393, 1553417393),
(16, 33, '/uploads/24-03-2019/rBVaR1pnzIaAMqTXAAJ8j-qjSi0711(1).jpg', 1553417393, 1553417393),
(17, 33, '/uploads/24-03-2019/c823d964836d178ecb0be8f13da7562f.jpg', 1553417393, 1553417393),
(18, 33, '/uploads/24-03-2019/Nike_Herren_Mercurial_Victory_Vi_Fg_Fuszligballschuhe_B01MT1QXIZ.jpg', 1553417393, 1553417393),
(20, 34, '/uploads/24-03-2019/2018-en-ok-satan-futbol-izmeler-beyaz-mor(1).jpg', 1553417456, 1553417456),
(21, 34, '/uploads/24-03-2019/futbol-izmeler-beyaz-mor-100-orijinal-cristiano(1).jpg', 1553417456, 1553417456),
(22, 34, '/uploads/24-03-2019/rBVaR1pnzIaAMqTXAAJ8j-qjSi0711(1).jpg', 1553417456, 1553417456);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `content`, `created_time`, `last_updated`) VALUES
(2, 'GiÃ y bÃ³ng Ä‘Ã¡ 1', 'uploads/06-03-2019/shoes-1.jpg', 540000, 'GiÃ y bÃ³ng Ä‘Ã¡ 1 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(3, 'GiÃ y bÃ³ng Ä‘Ã¡ 2', 'uploads/06-03-2019/shoes-2.jpg', 1500000, 'GiÃ y bÃ³ng Ä‘Ã¡ 2 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(4, 'GiÃ y bÃ³ng Ä‘Ã¡ 3', 'uploads/06-03-2019/shoes-3.jpg', 780000, 'GiÃ y bÃ³ng Ä‘Ã¡ 3 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(5, 'GiÃ y bÃ³ng Ä‘Ã¡ 4', 'uploads/06-03-2019/shoes-4.jpg', 657000, 'GiÃ y bÃ³ng Ä‘Ã¡ 4 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(6, 'GiÃ y bÃ³ng Ä‘Ã¡ 5', 'uploads/06-03-2019/shoes-5.jpg', 684000, 'GiÃ y bÃ³ng Ä‘Ã¡ 5 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(7, 'GiÃ y bÃ³ng Ä‘Ã¡ 6', 'uploads/06-03-2019/shoes-6.jpg', 580000, 'GiÃ y bÃ³ng Ä‘Ã¡ 6 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(8, 'GiÃ y bÃ³ng Ä‘Ã¡ 7', 'uploads/06-03-2019/shoes-7.jpg', 1320000, 'GiÃ y bÃ³ng Ä‘Ã¡ 7 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(9, 'GiÃ y bÃ³ng Ä‘Ã¡ 8', 'uploads/06-03-2019/shoes-8.jpg', 1450000, 'GiÃ y bÃ³ng Ä‘Ã¡ 8 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(10, 'GiÃ y bÃ³ng Ä‘Ã¡ 9', 'uploads/06-03-2019/shoes-9.jpg', 1000000, 'GiÃ y bÃ³ng Ä‘Ã¡ 9 sÃ¢n cá» nhÃ¢n táº¡o', 1552615987, 1552615987),
(30, 'GiÃ y bÃ³ng Ä‘Ã¡ sá»‘ 14', '/uploads/24-03-2019/2018-en-ok-satan-futbol-izmeler-beyaz-mor_(1).jpg', 1250000, '<p>Ná»™i dung gi&agrave;y b&oacute;ng Ä‘&aacute; sá»‘ 14</p>\r\n', 1553415495, 1553417031),
(33, 'GiÃ y bÃ³ng Ä‘Ã¡ sá»‘ 15', '/uploads/24-03-2019/565675597.g_400-w_g.jpg', 1450000, '<p>Ná»™i dung gi&agrave;y b&oacute;ng Ä‘&aacute; sá»‘ 15</p>\r\n', 1553417393, 1553417441),
(34, 'GiÃ y bÃ³ng Ä‘Ã¡ sá»‘ 16', '/uploads/24-03-2019/76e367a4d13a57248f0791dab6d8da38.jpg', 1550000, '<p>Ná»™i dung gi&agrave;y b&oacute;ng Ä‘&aacute; sá»‘ 16</p>\r\n', 1553417456, 1553417465);

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
(1, 'admin', 'Andn', '25d55ad283aa400af464c76d713c07ad', 123, 123, 1553185530);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
