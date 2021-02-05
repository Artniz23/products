-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2021 at 10:26 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_PRICE` int(11) NOT NULL,
  `PRODUCT_ARTICLE` text NOT NULL,
  `PRODUCT_QUANTITY` int(11) NOT NULL,
  `DATE_CREATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PRODUCT_HIDE` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`, `PRODUCT_HIDE`) VALUES
(1, 1, 'Бананы', 10, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 7, '2021-02-05 06:27:29', b'0'),
(2, 2, 'Огурцы', 5, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 10, '2021-02-05 06:27:29', b'0'),
(3, 3, 'Картофель', 2, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 20, '2021-02-05 06:29:09', b'0'),
(4, 4, 'Лист салата', 20, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 5, '2021-02-05 06:29:09', b'0'),
(5, 5, 'Авокадо', 30, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 5, '2021-02-05 06:30:28', b'0'),
(6, 6, 'Апельсины', 4, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 4, '2021-02-05 06:30:28', b'0'),
(7, 7, 'Кабачки', 3, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 11, '2021-02-05 06:31:45', b'0'),
(8, 8, 'Лук', 1, 'I\'m baby readymade scenester umami godard. Truffaut gentrify you probably haven\'t heard of them echo park cornhole viral heirloom, la croix gluten-free fixie roof party quinoa brunch humblebrag. Taxidermy hammock portland crucifix microdosing. Trust fund hella palo santo man bun, shabby chic etsy synth twee. Single-origin coffee man bun green juice authentic.', 20, '2021-02-05 06:31:45', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
