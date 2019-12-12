-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2019 at 06:37 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gajjar_kahani_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
CREATE TABLE IF NOT EXISTS `portfolio` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slide_1` varchar(50) NOT NULL,
  `slide_2` varchar(50) NOT NULL,
  `slide_3` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `role` varchar(50) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `mid_1` varchar(50) NOT NULL,
  `mid_2` varchar(50) NOT NULL,
  `wireframe` varchar(50) NOT NULL,
  `hero_img` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`ID`, `title`, `slide_1`, `slide_2`, `slide_3`, `year`, `role`, `skills`, `body`, `mid_1`, `mid_2`, `wireframe`, `hero_img`) VALUES
(1, 'ORGAN REGENERATION', 'slide_1_org.jpg', 'slide_2_org.jpg', 'slide_3_org.jpg', '2019', 'UX&UI Designer', '\r\nResearch,Content Creation,UX/UI Design,Animation,Prototyping', 'The goal is to bring awareness to this new organ transplant process and spread the ‘word’ on what it is, who can benefit from it and why this process is so unique and why it should become a part of mainstream medicine. \r\n\r\nAdvertisements The three mini advertisements can be displayed in a number of locations but they are designed ideally for two of the most commonly viewed advertisement spots - bus shelters and social media stories. \r\nBrochure The brochure is shaped like a heart with enough space to completely relay the necessary details to the reader complete with guidance information, statistics and contact information. \r\nMagazine Spots The pages designed for magazines stands as a combination of both a brochure and an advertisement for the awareness of our campaign. \r\nGift Bag is a package containing small health/care, wellness and other miscellaneous items such as band-aids, vitamin tablets, a notebook and suchlike, with our brand on them. It is given out for free in department stores or our conferences. \r\n ', 'mid_1_org.jpg', 'mid_2_org.jpg', 'brochure_org.jpg', 'hero_org.jpg'),
(2, 'THERMOSECURITY', 'slide_1_thermo.jpg', 'slide_2_thermo.jpg', 'slide_3_thermo.jpg', '2019', 'UX/UI Designer,Project Manager', 'UI Design,Animation,Product Mockup,Web Developmemt', '\r\nThermosecurity is a new product launch by Housecom. My team and I created the whole branding and the User Interface of the new product. A webpage for created to make customers aware of its specifications and the feel and look of it.\r\n\r\nProduct Page An informative approach is given to the product page and composes of specifications and all the user interface designs to make a client get accustomed to the product.\r\n', 'mid_1_thermo.jpg', 'mid_2_thermo.jpg', 'wireframe_thermo.jpg', 'hero_thermo.jpg'),
(3, 'IMAGINA', 'slide_1_imagina.jpg', 'slide_2_imagina.jpg', 'slide_3_imagina.jpg', '2019', 'UXUI Designer,Content Developer', 'Logo Design,Branding,Design & Development', 'We are here to make your brand stand out in the digital world. The combination of your vision and our out of the box ideas will ensure an exceptional brand experience.', 'mid_1_imagina.jpg', 'mid_2_imagina.jpg', 'wireframe_imagina.jpg', 'hero_imagina.jpg'),
(4, 'CORPORATE DESIGN', 'slide_1_corp.jpg', 'slide_2_corp.jpg', 'slide_3_corp.jpg', '2017', 'Interior Designer,Illustrator', '\r\nInstallation  Design,Space Making,Furniture Design,Architectural Modelling', 'Revival of an old space through installing a new idea inside the existing structure. The design was achieved by respecting the structure and applying the overlapping technique of a new system.', 'mid_1_corp.jpg', 'mid_2_corp.jpg', 'wireframe_corp.jpg', 'hero_corp.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
