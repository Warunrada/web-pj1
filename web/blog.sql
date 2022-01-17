-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 06:38 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(45, 25, 9, 'Bankara Ramen', '1618655022_2.jpg', 'ราเมนสุดอร่อย ต้นตำรับจากเจ้าของชาวญี่ปุ่นแท้ๆ มีเมนูราเมนที่ควรมาลิ้มลองมากมาย ไม่ว่าจะเป็นในน้ำซุปมิโสะที่มาพร้อมหมูสไลซ์แผ่นบางผัดซอสหวานสูตรพิเศษของบังคาระลงตัวไม่เหมือนใคร หวานนุ่มละลายในปากเลยทีเดียว สั่งมาฟินกันถึงบ้านกันได้แล้ว เช็คสาขาใกล้บ้านได้ที่หน้าเพจเลยจ้า!\r\n\r\n&nbsp;\r\n\r\nสั่งเดลิเวอรี่ ? : Line Man\r\n\r\nLine : @bankararamen\r\n\r\nโทร : 08-6624-5162 / 02-610-7716\r\n\r\nพิกัด :&nbsp;https://goo.gl/maps/6Yhr3tJjh4Qku86T7\r\n\r\nที่อยู่ : ถนนพระรามที่ ๑ แขวงปทุมวัน เขตปทุมวัน กรุงเทพมหานคร\r\n\r\nร้านเปิดบริการ : 10.00-18.00 น.\r\n\r\nเว็บไซต์ :&nbsp;https://www.facebook.com/BankaraRamen/', 0, '2021-04-17 17:23:42'),
(46, 25, 9, 'Kabochasushi', '1618655059_3.jpg', 'ร้านอาหารญี่ปุ่นคุณภาพที่มีหลายสาขาทั่วกรุงเทพ จัดเต็มโปรโมชั่นมากมาย ไม่ว่าจะเป็น บริการส่งฟรี, แถมฟรียำปลาแซลมอน เมื่อสั่งอาหารราคาเท่าไหร่ก็ได้, สั่งอาหารครบ 2000 บาท รับฟรี Kabocha mask เป็นต้น กดเช็คสาขาใกล้บ้านที่หน้าเพจ แล้วกดสั่งไปฟินกันเลย!\r\n\r\n&nbsp;\r\n\r\nสั่งเดลิเวอรี่ ? : GET, Line Man\r\n\r\nโทร : 09-5691-6586\r\n\r\nพิกัด :&nbsp;https://goo.gl/maps/J9CaUHNJ8FecXJ7c8\r\n\r\nที่อยู่ : ซอยลาดพร้าว 19 แขวงจอมพล เขตจตุจักร กรุงเทพมหานคร\r\n\r\nเปิดบริการ : 11.00-21.00 น.\r\n\r\nเว็บไซต์ :&nbsp;https://www.facebook.com/Kabochasushi/', 0, '2021-04-17 17:24:19'),
(55, 28, 10, 'test', '1620706324_151711-apps-feature-best-zoom-backgrounds-fun-virtual-backgrounds-for-zoom-meetings-image1-tsrrckpzn8.jpg', '&lt;p&gt;test2&lt;/p&gt;', 0, '2021-05-11 11:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(9, 'Food', 'test'),
(10, 'Travel', ''),
(11, 'Movie', ''),
(12, 'Game', ''),
(13, 'Book', ''),
(14, 'Beauty', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(25, 1, 'pang', 'pang@pang.com', '$2y$10$xzgh2kyQaoTbY/klnN2W8eIFMzlC/irIUm2GTJYWU.0cWc9OwtyB2', '2021-04-17 07:39:31'),
(28, 0, 'bell', 'bell@bell.com', '$2y$10$BfhyQoELd7zkkOFcwPzbY.m5vzLCuIlVbVmK13pJ5MyKzBqFFLnjq', '2021-04-30 09:35:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
