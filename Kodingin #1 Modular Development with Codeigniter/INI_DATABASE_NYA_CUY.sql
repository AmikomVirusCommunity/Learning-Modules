-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2017 at 06:29 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kodingin`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_auth`
--

CREATE TABLE `users_auth` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_auth`
--

INSERT INTO `users_auth` (`id`, `username`, `password`, `status`) VALUES
(1, 'user', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(2, 'kamil', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `id_usr` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `kelas` varchar(150) NOT NULL,
  `jurusan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `id_usr`, `nama`, `kelas`, `jurusan`) VALUES
(1, 2, 'Kamil', 'D3-TI-01', 'Diploma III Teknik Informatika'),
(2, 1, 'Robin', 'D3-TI-05', 'Diploma III Teknik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_auth`
--
ALTER TABLE `users_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_auth`
--
ALTER TABLE `users_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
