-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2024 at 10:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelbreeze`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_number` int(10) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_status` text NOT NULL DEFAULT 'Incomplete',
  `contact_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_number`, `contact_message`, `contact_status`, `contact_timestamp`) VALUES
(1, 'karan', 'karan@gmail.com', 2147483647, 'hi', 'Completed', '2024-03-30 07:21:21'),
(2, 'Sahil', 'sahil@gmail.com', 2147483647, 'hi', 'Completed', '2024-03-30 07:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `package_desc` text NOT NULL,
  `package_days` int(11) NOT NULL,
  `package_price` int(11) NOT NULL,
  `package_f1` text NOT NULL,
  `package_f2` text NOT NULL,
  `package_f3` text NOT NULL,
  `package_f4` text NOT NULL,
  `package_f5` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `package_desc`, `package_days`, `package_price`, `package_f1`, `package_f2`, `package_f3`, `package_f4`, `package_f5`, `timestamp`) VALUES
(1, 'Maharashtra', 'Explore Mumbai\'s vibrant city life, ancient Ajanta & Ellora Caves, scenic Lonavala hills, and mystical Elephanta Island.', 7, 30000, 'Dive into the vibrant culture of Mumbai', 'Explore ancient caves of Ajanta & Ellora', 'Relax in hill stations like Lonavala', 'Experience tranquility at Elephanta Island', 'Beach tour in Kokan', '2024-03-30 10:30:00'),
(2, 'Rajasthan', 'Experience royal heritage in Jaipur, desert charm in Jaisalmer, romantic lakes in Udaipur, majestic forts in Jodhpur, and spiritual vibes in Pushkar.', 10, 45000, 'Explore royal heritage in Jaipur', 'Discover desert charm in Jaisalmer', 'Relax by romantic lakes in Udaipur', 'Visit majestic forts in Jodhpur', 'Experience spiritual vibes in Pushkar', '2024-03-30 10:28:25'),
(3, 'Karnataka', 'Discover Hampi\'s ancient ruins, Coorg\'s lush greenery, Mysore\'s grandeur, Gokarna\'s pristine beaches, and Bengaluru\'s dynamic culture.', 8, 38000, 'Explore ancient ruins in Hampi', 'Indulge in lush greenery of Coorg', 'Experience grandeur of Mysore', 'Relax on pristine beaches of Gokarna', 'Discover dynamic culture of Bengaluru', '2024-03-30 10:28:34'),
(4, 'Ladakh', 'Embark on a journey to Leh\'s monasteries, trek through Markha Valley, witness Pangong Lake\'s surreal beauty, explore Nubra Valley\'s desert, and experience Ladakhi hospitality.', 12, 55000, 'Explore Leh\'s monasteries', 'Trek through Markha Valley', 'Witness surreal beauty of Pangong Lake', 'Explore desert landscape of Nubra Valley', 'Experience Ladakhi hospitality', '2024-03-30 10:28:47'),
(5, 'Uttar Pradesh', 'Visit Agra\'s timeless Taj Mahal, immerse in Varanasi\'s spiritual ghats, explore Lucknow\'s architectural wonders, Dudhwa\'s wildlife sanctuaries, and Fatehpur Sikri\'s Mughal heritage.', 9, 42000, 'Explore timeless Taj Mahal in Agra', 'Immerse in spiritual ghats of Varanasi', 'Discover architectural wonders in Lucknow', 'Explore wildlife sanctuaries in Dudhwa', 'Witness Mughal heritage in Fatehpur Sikri', '2024-03-30 10:29:05'),
(6, 'Lakshadweep', 'Experience paradise on Agatti\'s pristine beaches, indulge in water sports in Kadmat, explore Kavaratti\'s culture, relax on Bangaram Island, and witness stunning sunsets in Minicoy.', 5, 25000, 'Experience paradise on Agatti\'s beaches', 'Indulge in water sports in Kadmat', 'Explore culture of Kavaratti', 'Relax on Bangaram Island', 'Witness stunning sunsets in Minicoy', '2024-03-30 10:29:18'),
(7, 'Kerala', 'Cruise the backwaters of Alleppey, rejuvenate with Ayurvedic treatments in Kochi, explore Munnar\'s tea plantations, unwind on Kovalam\'s beaches, and witness Kathakali in Thiruvananthapuram.', 6, 32000, 'Cruise backwaters of Alleppey', 'Rejuvenate with Ayurvedic treatments in Kochi', 'Explore tea plantations in Munnar', 'Unwind on Kovalam\'s beaches', 'Witness Kathakali in Thiruvananthapuram', '2024-03-30 10:29:27'),
(8, 'Himachal Pradesh', 'Trek Triund\'s breathtaking vistas, experience spirituality in Manali\'s temples, enjoy colonial charm in Shimla, witness Khajjiar\'s beauty, and seek adventure in Parvati Valley.', 7, 35000, 'Trek Triund\'s breathtaking vistas', 'Experience spirituality in Manali\'s temples', 'Enjoy colonial charm in Shimla', 'Witness Khajjiar\'s beauty', 'Seek adventure in Parvati Valley', '2024-03-30 10:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` varchar(300) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_description` text NOT NULL,
  `payment_by` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `payment_description`, `payment_by`, `timestamp`) VALUES
('pi_3P0HmESCAnzGgRoL0vGVcMtl', 1000, 'Payment from Karan for Ladakh tour', 'root', '2024-03-31 11:51:58'),
('pi_3P0HoGSCAnzGgRoL0HTYChl0', 30000, 'Payment from Karan for Ladakh tour', 'root', '2024-03-31 11:54:04'),
('pi_3P0Hq8SCAnzGgRoL17mOG2Kq', 30000, 'Payment from Karan for Ladakh tour', 'karan', '2024-03-31 11:56:00'),
('pi_3P0HqySCAnzGgRoL0gmTzhvn', 30000, 'Payment from Karan for Ladakh tour', 'karan', '2024-03-31 11:56:52'),
('pi_3P0I8USCAnzGgRoL1wx3hZ0L', 25000, 'Payment from Karan for Ladakh tour', 'sahil', '2024-03-31 12:14:59'),
('pi_3P0J90SCAnzGgRoL11tC2sIx', 35000, 'Payment from Karan for Ladakh tour', 'karan', '2024-03-31 13:19:34'),
('pi_3P0JBNSCAnzGgRoL0YQMzURq', 3500000, 'Payment from Karan for Ladakh tour', 'sahil', '2024-03-31 13:22:01'),
('pi_3P0JDSSCAnzGgRoL15SzDzw6', 55000, 'Payment from Karan for Ladakh tour', 'sahil', '2024-03-31 13:24:11'),
('pi_3P0JJgSCAnzGgRoL1w06b1FG', 25000, 'Payment from sahil for Lakshadweep tour', 'sahil', '2024-03-31 13:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `user_pass` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_pass`, `timestamp`) VALUES
(1, 'admin', '$2y$10$OH8vEZwXc4PqZh.j0UKL2um7kZ9BTFfvl2K.kKTTtTzi9xpr06T5K', '2024-03-30 12:28:56'),
(2, 'karan', '$2y$10$EKT2xBqgRxg5QYdob2ILn.qr2UPJWEiqHVTJ9HYZzsYtzMq3KSckC', '2024-03-30 12:32:24'),
(3, 'sahil', '$2y$10$XawEHynH.m3jT6wgq6v2peux1zxbyKyDTzJSyHIAbuxa22jk.Y3aO', '2024-03-31 12:14:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
