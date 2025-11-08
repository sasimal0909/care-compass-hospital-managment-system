-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 06:58 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carecompass`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirm_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fullname`, `username`, `email`, `password`, `confirm_password`) VALUES
('Sasimal Chandeepa', 'sasimal123', 'chandeepasasimal@gmail.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `patientname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `appointmentdate` varchar(50) NOT NULL,
  `appointmenttime` date NOT NULL,
  `notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`patientname`, `email`, `phone`, `appointmentdate`, `appointmenttime`, `notes`) VALUES
('sasimal', 'chandeepasasimal@gmail.com', '0762355371', '2025-02-22', '0000-00-00', 'hello'),
('sasimal', 'chandeepasasimal@gmail.com', '0762355371', '2025-02-22', '0000-00-00', 'hello'),
('sasimal', 'chandeepasasimal@gmail.com', '0762355371', '2025-02-22', '0000-00-00', 'hello boy\r\n'),
('sasimal', 'vcbcv@gamil.com', 'vc v', '2025-02-12', '0000-00-00', 'cvvc '),
('pasindu', 'pasindu@gmail.com', '0772345678', '2025-04-04', '0000-00-00', 'hurry up'),
('chathuri kulathunga', 'chathurukula@gmail.com', '0762355371', '2025-03-06', '0000-00-00', 'hurry up'),
('mine', 'mine123@gmail.com', '0762355371', '2025-03-07', '0000-00-00', 'hhhhh');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`name`, `email`, `subject`, `message`) VALUES
('Sasimal Chandeepa', 'chandeepasasimal@gmail.com', 'sasi', 'good work'),
('Sasimal Chandeepa', 'chandeepasasimal@gmail.com', 'dfghdf', 'dfhdfhdf'),
('sahan', 'warapitiyA@gmail.com', 'dfhhgdf', 'fhf');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `specialization` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`fullname`, `username`, `email`, `password`, `phone`, `specialization`) VALUES
('nadeera', 'nadeera321', 'nadeera@gmail.com', '123', '', 'Neurology');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback`) VALUES
('hello'),
('fgfbfbcb'),
('tdfgdfgbdf'),
('medicine'),
('fhdfhdbc');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`fullname`, `username`, `email`, `password`, `phone`) VALUES
('Sasimal Chandeepa', 'sasimal123', 'chandeepasasimal@gmail.com', '123', '0762355371'),
('Amal', 'amal321', 'amal@gmail.com', '123', '0765478901'),
('chathuri', 'chathuru2000', 'chathuri@gmail.com', '12345', '0762355371');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
