-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Ara 2018, 17:40:10
-- Sunucu sürümü: 10.1.34-MariaDB
-- PHP Sürümü: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db3205`
--

DELIMITER $$
--
-- Yordamlar
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllcategories` ()  BEGIN
   SELECT *  FROM categories;
   END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'cat1'),
(2, 'cat2'),
(3, 'cat3'),
(4, 'cat4'),
(5, 'cat5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`) VALUES
(33, 5, 19, 'test', 2000, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_quantity` int(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_quantity`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(6, '1', 10, 'some title', 3000, 'some description some description some description some description some description some description ', 'test.jpg', 'somekeyword'),
(5, '1', 10, 'some title5', 1000, 'some description some description some description some description', 'test.jpg', 'somekeyword'),
(8, '1', 10, 'some title8', 1660, 'some description some description some description some description some description ', 'test.jpg', 'some keyword'),
(9, '1', 10, 'some title9', 1200, 'some description some description some description some description some description ', 'test.jpg', 'some keyword'),
(10, '1', 10, 'some title10', 500, 'some description some description some description some description ', 'test.jpg', 'somekeyword'),
(11, '1', 10, 'sometitle11', 1300, 'some description some description some description some description some description ', 'test.jpg', ''),
(12, '1', 10, 'sometitle12', 900, 'some description some description some description some description ', 'test.jpg', 'keyword'),
(13, '1', 10, 'some title13', 1700, 'some description some description some description some description some description some description ', 'test.jpg', 'keyword'),
(14, '1', 10, 'some title14', 5999, 'some description some description some description some description some description ', 'test.jpg', 'keyww'),
(15, '2', 10, 'sometitle15', 200, 'some description some description some description some description some description some description ', 'test.jpg', 'key'),
(16, '2', 10, 'some title16', 300, 'some description some description some description some description ', 'test.jpg', 'keywodd'),
(17, '2', 10, 'sometitle17', 100, 'some description some description some description some description some description some description ', 'test.jpg', 'keyword'),
(18, '2', 10, 'sometitle18', 1000, 'some description some description some description some description some description some description ', 'test.jpg', 'keyword'),
(19, '2', 10, 'sometitle19', 2000, 'some description some description some description some description ', 'test.jpg', 'key'),
(20, '2', 10, 'sometitle20', 700, 'some description some description some description some description some description some description ', 'test.jpg', 'keyword'),
(24, '3', 10, 'some title24', 15, 'some description some description some description some description some description some description ', 'test.jpg', 'keyword'),
(25, '3', 10, 'title25', 240, 'some description some description some description some description ', 'test.jpg', 'keyword'),
(26, '3', 10, 'sometitle26', 100, 'some description some description some description some description some description ', 'test.jpg', 'keyword'),
(27, '3', 10, 'sometitle27', 40, 'some description some description some description some description ', 'test.jpg', 'key'),
(28, '4', 10, 'sometitle28', 80, 'some description some description some description some description some description ', 'test.jpg', 'key'),
(29, '4', 10, 'title29', 85, 'some description some description some description some description ', 'test.jpg', 'key'),
(30, '4', 10, 'sometitle30', 250, 'some description some description some description some description ', 'test.jpg', 'key'),
(31, '4', 10, 'sometitle31', 40, 'some description some description some description some description some description some description ', 'test.jpg', 'key'),
(32, '4', 10, 'sometitle32', 10, 'some description some description some description some description some description ', 'test.jpg', 'key'),
(33, '4', 10, 'sometitle33', 13, 'some description some description some description some description some description ', 'test.jpg', 'keyword'),
(34, '5', 10, 'someproduct34', 80, 'some description some description some description some description ', 'test.jpg', 'keyword'),
(35, '5', 10, 'sometitle35', 100, 'some description some description some description some description some description ', 'test.jpg', 'key'),
(36, '5', 9, 'sometitle36', 25, 'some description some description some description some description some description ', 'test.jpg', 'keyw'),
(37, '5', 10, 'title37', 150, 'some description some description some description some description ', 'test.jpg', 'key'),
(38, '5', 10, 'sometitle38', 50, 'some description some description some description some description ', 'test.jpg', 'key'),
(39, '5', 10, 'sometitle39', 25, 'some description some description some description some description some description some description ', 'test.jpg', 'key');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'User'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`, `user_type`) VALUES
(1, 'Kerem', 'Guler', 'gulerkerem@hotmail.com', '1478963', '4561237899', 'dasdsa', 'dasdsa', 'Admin'),
(2, 'Alpcan', 'Kose', 'bravealp@hotmail.com', '12345', '1234567897', 'dasdas', 'dasdas', 'Admin'),
(12, 'Kerem', 'Gulerr', 'melaanioss@gmail.coms', 'alpcan12345', '1472583693', 'rewrew', 'rerewre', 'User'),
(10, 'Aysu', 'Gevrekci', 'aysugevrekci.51@gmail.com', 'ahm217ge', '5077696899', 'ajskajd', 'hsjshdj', 'User'),
(11, 'Alp', 'Kose', 'bravealpp@hotmail.com', 'rbzwjer6b', '5517272252', '203/3 Sk. No 1-3', 'Ufuk Daire 6', 'User'),
(13, 'Hılal', 'Gurel', 'hilalgurel35@gmail.com', '19981998', '5416229480', 'Balıklı mah. Hıcret sok. Osmanlı cad.', 'Kutahya-Merkez', 'User');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Tablo için indeksler `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
