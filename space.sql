-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 04:22 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `space`
--

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(5) NOT NULL,
  `orbitor` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `launch` varchar(40) NOT NULL,
  `landing` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `orbitor`, `name`, `launch`, `landing`) VALUES
(1, 'Atlantis', 'STS-135', '11:29 a.m. EDT - July 8, 2011', '5:57 a.m. EDT - July 21, 2011'),
(2, 'Endeavor', 'STS-134', '8:56 a.m. EDT - May 16, 2011', '2:34 a.m. EDT - June 1, 2011'),
(3, 'Discovery', 'STS-133', '4:53:24 p.m. EST - Feb. 24, 2011', '11:57:17 a.m. EST - March 9, 2011'),
(4, 'Columbia', 'STS-107', 'January 16, 2003, 10:39 a.m. EST', 'Vehicle and crew lost on Feb. 1, 2003 '),
(5, 'Challenger', 'STS-51L', 'Jan. 28, 1986, 11:38:00 a.m. EST', 'Vehicle and crew lost 73 seconds after liftoff'),
(6, 'Atlantis', 'STS-132', '2:20 p.m. EDT - May 14, 2010', '8:48 a.m. EDT - May 26, 2010'),
(7, 'Discovery', 'STS-131', '6:21 a.m. EDT - April 5, 2010', '9:08 a.m. EDT - April 20, 2010'),
(8, 'Endeavor', 'STS-130', '4:14 a.m. EST - Feb. 8, 2010', '10:20 p.m. EST - Feb. 21, 2010'),
(9, 'Atlantis', 'STS-129', '2:28 p.m. EST - Nov. 16, 2009', '9:44 a.m. EST - Nov. 27, 2009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
