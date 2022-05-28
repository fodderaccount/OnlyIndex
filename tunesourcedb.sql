-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 08:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tunesourcedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(20) DEFAULT NULL,
  `genre_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`, `genre_desc`) VALUES
(1, 'J-pop', 'Japanese Pop'),
(2, 'Pop', 'genre of popular music that originated in its modern form during the mid-1950s in the United States and the United Kingdom. The terms popular music and pop music are often used interchangeably'),
(3, 'Rock n Roll', 'genre of popular music that evolved in the United States during the late 1940s and early 1950s'),
(4, 'Hip Hop', 'also known as rap music, is a genre of popular music developed in the United States by inner-city African Americans, Latino Americans and Caribbean Americans in the Bronx borough of New York City in t'),
(5, 'Jazz', ' music genre that originated in the African-American communities of New Orleans, Louisiana, United States, in the late 19th and early 20th centuries, with its roots in blues and ragtime.'),
(6, 'Folk music', 'music genre that includes traditional folk music and the contemporary genre that evolved from the former during the 20th-century folk revival. Some types of folk music may be called world music'),
(7, 'Classical music', 'generally refers to the formal musical tradition of the Western world, considered to be distinct from Western folk music or popular music traditions'),
(8, 'Rock', ' broad genre of popular music that originated as \"rock and roll\" in the United States in the late 1940s and early 1950s, developing into a range of different styles in the mid-1960s and later, particu'),
(9, 'Funk', 'music genre that originated in African American communities in the mid-1960s when musicians created a rhythmic, danceable new form of music through a mixture of soul, jazz and rhythm and blues');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(100) DEFAULT NULL,
  `song_desc` varchar(200) DEFAULT NULL,
  `song_price` varchar(50) DEFAULT NULL,
  `song_file` varchar(500) DEFAULT NULL,
  `song_img` varchar(500) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `song_desc`, `song_price`, `song_file`, `song_img`, `genre_id`) VALUES
(2, 'ココロフロート', '【J-Pop】Yunomi - ココロフロート (feat. nicamoq)', '$10', 'Music/【J-Pop】Yunomi - ココロフロート (feat. nicamoq).mp3', 'Images/【J-Pop】Yunomi - ココロフロート (feat. nicamoq).jfif', 1),
(3, 'Aquarium Night', 'Aquarium Night - ミカヅキBIGWAVE feat. somunia', '$10', 'Music/Aquarium Night - ミカヅキBIGWAVE feat. somunia.mp3', 'Images/Aquarium Night - ミカヅキBIGWAVE feat. somunia.jfif\r\n', 1),
(4, 'Single Ladies ', 'Beyoncé - Single Ladies (Put a Ring on It)', '$10', 'Music/Beyoncé - Single Ladies (Put a Ring on It) (Video Version).mp3', 'Images/Byonce.jfif', 2),
(5, 'CY8ER - HANNARI', 'CY8ER - HANNARI', '$10', 'Music/CY8ER - HANNARI.mp3', 'Images/CY8ER - HANNARI.jfif', 1),
(6, 'Hyper Potions', 'Hyper Potions, Synthion & MYLK - Maboroshi (w- Lyrics)', '$10', 'Music/Hyper Potions, Synthion & MYLK - Maboroshi (w- Lyrics).mp3', 'Images/Hyper Potions, Synthion & MYLK - Maboroshi (w- Lyrics).jfif', 1),
(7, 'Stairway To Heaven', 'Led Zeppelin - Stairway To Heaven (Official Audio)', '$10', 'Music/Led Zeppelin - Stairway To Heaven (Official Audio).mp3', 'Images/Led Zeppelin - Stairway To Heaven (Official Audio).jfif', 8),
(8, 'love bite ', 'love bite - nyankobrq & yaca from -arbeit-', '$10', 'Music/love bite - nyankobrq & yaca from -arbeit-.mp3', 'Images/love bite - nyankobrq & yaca from -arbeit-.jfif', 1),
(9, 'Uptown Funk', 'Mark Ronson - Uptown Funk  ft. Bruno Mars', '$10', 'Music/Mark Ronson - Uptown Funk (Official Video) ft. Bruno Mars.mp3', 'Images/Mark Ronson - Uptown Funk (Official Video) ft. Bruno Mars.jfif', 9),
(10, 'RUSH E', 'RUSH E - Sheet Music Boss', '$10', 'Music/RUSH E.mp3', 'Images/Rushe.jfif', 7),
(11, 'So What', 'So What by.Miles Davis', '$10', 'Music/So What by.Miles Davis.mp3', 'Images/So What by.Miles Davis.jfif', 6),
(12, 'Blinding Lights', 'The Weeknd - Blinding Lights (Official Audio)', '$10', 'Music/The Weeknd - Blinding Lights (Official Audio).mp3', 'Images/The Weeknd - Blinding Lights (Official Audio).jfif', 4),
(13, 'This Land Is Your Land', 'Woody Guthrie- This Land Is Your Land', '$10', 'Music/Woody Guthrie- This Land Is Your Land.mp3', 'Images/Woody Guthrie- This Land Is Your Land.jfif', 5),
(14, 'Cake By The Ocean', 'Cake By The Ocean -DNCE', '$39.44', 'Music/DNCE - Cake By The Ocean.mp3', 'Images/download.jfif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `u_email`, `username`, `password`, `fullname`) VALUES
(1, 'marcus@gmail.com', 'marcus6969', '12345678', 'Marcus Fuel'),
(2, 'Diehard420@gmail.com', 'Diehard420', 'abc123', 'Bill Murphy'),
(3, 'Sadface@gmail.com', 'Sadface12', 'qwerty123', 'Deby Ilynav'),
(4, 'Honey2shoes123@gmail.com', 'Honey2shoes123', 'hahaha123', 'Philys Ovenal'),
(5, 'iamwhoiam@gmail.com', 'iamwhoiam', 'dedass123', 'Delan McKallen'),
(6, 'xxx@gmail.com', '00_sora', '1123123', 'Alex Bacon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD UNIQUE KEY `genre_name` (`genre_name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `song_id` (`song_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
