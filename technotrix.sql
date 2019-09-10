-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 01:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technotrix`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `score` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `uname`, `password`, `score`) VALUES
(1, 'Deepraj Chouhan', 'deep123', 'pass', 0),
(2, '', '', '', 8),
(3, 'Deep', 'dee12', 'lol', 15),
(4, 'lol', 'lol1', '1234', 7),
(5, 'Aniruddha', 'ani@123', 'vzio1234', 5),
(6, 'rohit', 'r', '123', 21),
(7, 'rohit', 'rohit1', 'rohit1', 8),
(8, 'Kajal Dulewale', 'kajal', 'kajal2511', 8),
(9, 'Kajal', 'kajal', '123', 8);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(30, 'Which of the following are components of Central Processing Unit (CPU) ?', 'Arithmetic logic unit, Mouse', 'Arithmetic logic unit, Control unit', 'Arithmetic logic unit, Integrated Circuits', 'Control Unit, Monitor                           Control Unit, Monitor                     ', 'Arithmetic logic unit, Control unit'),
(31, 'Full form of URL is?', 'Uniform Resource Locator', 'Uniform Resource Link', 'Uniform Registered Link', 'Unified Resource Link', 'Uniform Resource Locator'),
(32, 'From what location are the first computer instructions available on boot up?', 'BIOS', 'RAM', 'Hard Drive', 'Monitor', 'BIOS'),
(33, 'A hard drive is divided into tracks which is subdivided into', 'Vectors', 'Aligator ', 'Numerator', 'Sector                    ', 'Sector'),
(34, 'Which of the following retains the information itâ€™s storing when the power to the system is turned off?', 'CPU ', 'ROM', 'RAM', 'DIMM             ', 'ROM'),
(35, 'A network of computers and other devices that is confined to a relatively small space is called?', 'Wide Area Network', 'Local Area Network', 'Global Network', 'Peer-to-Peer Network', 'Local Area Network'),
(36, 'Which of the following memories must be refreshed many times per second?', 'Static RAM', 'Dynamic RAM', ' EPROM', ' ROM             ', 'Dynamic RAM'),
(37, 'USB is a device used to store data and it stands for', 'Unlimited Service Band', 'Unlimited Serial Bus', 'Universal Serial Bus', 'Universal Service Bus', 'Universal Serial Bus'),
(38, '______ is a technology that a JIO uses for telephone calls to be made over computer networks like the Internet.', 'VoIP', 'GSM', 'Modem', 'CDMA ', 'VoIP'),
(39, '1 Gigabyte (GB) is equal to', '1024 bytes', '1024 KB', '1024 MB', '1024 TB', '1024 MB'),
(40, 'The fourth generation computers are based on', 'Transistor', 'Integrated circuit', 'VLSI microprocessor', 'ULSI microprocessor', 'VLSI microprocessor'),
(41, 'The computer you are controlling or working via a network is called?', 'Remote computer', 'Local computer', 'Host computer', 'Personal Computer ', 'Remote computer'),
(42, 'Which protocol sends electronic mail?', 'Outlook Express', 'POP3', 'FTP', 'SMTP', 'SMTP'),
(43, 'What type of connector is used to plug a telephone line into a modem?', 'COM1', 'RJ-45', 'RJ-11', 'RJ-10', 'RJ-11'),
(44, 'Which generation of computer used VLSI (Very Large Scale Integrated Chips) technology that  brought bloom in the hardware industries.', 'First Generation', 'Second Generation', ' Fourth Generation', 'Fifth Generation', 'Fourth Generation'),
(45, 'What is the name of an application program that gathers user information and sends it to someone through the Internet?', 'A virus ', 'Spybot ', 'Logic bomb', 'Security patch', 'Spybot '),
(46, ' ------ is the measurement of things such as fingerprints and retinal scans used for security access.', 'Biometrics ', 'Bio measurement ', '. Computer security ', 'Smart weapon machinery', 'Biometrics '),
(47, 'What is the most common tool used to restrict access to a computer system? ', 'User logins', 'Passwords ', 'Computer keys', 'Access-control software', 'Passwords '),
(48, 'To prevent the loss of data during power failures, use a(n):', 'Encryption program', 'Surge protector', 'Firewall', 'UPS', 'UPS'),
(49, ' Snowbol is an/a--------- ', 'Operating system ', 'HLL ', 'Software', 'Search engine', 'HLL '),
(50, ' ---------- computer is small general purpose micro computer, but larger than portable computer ', 'Hybrid ', 'Digital ', 'Desktop ', 'Laptop', 'Desktop '),
(51, 'Trackball is a........... ', ' Input device', 'Output device', 'Programming language', 'Software ', 'Input device'),
(52, ' ............. computer is a medium sized computer ', 'Micro ', 'Mainframe ', 'Super', 'Mini ', 'Mini '),
(53, ' ........... computer are of large size ', 'Micro ', 'Mainframe ', 'Super', 'Mini', 'Mainframe '),
(54, ' Note book, laptop,palm,hand-held computers are coming under the category of......... computer ', 'Digital computer ', 'Mainframe computer ', 'Portable computer ', 'Hybrid computer', 'Portable computer '),
(55, ' Light pen and joystick are............', 'Algorithm ', 'Input devices', 'Output devices', 'Portals', 'Input devices'),
(56, '  .............printer is the cheapest in terms of price and operating cost ', 'Inkjet ', 'Laser', 'Thermal ', 'Dot matrix', 'Dot matrix'),
(57, ' ....are specific to usersâ€™ needs ', 'System software ', 'Application software ', 'Assemblers', 'Compilers', 'Application software '),
(58, ' Joshy, Perfumes are examples of.............', 'Operating system ', 'Computer languages', 'Computer viruses ', 'Web portals', 'Computer viruses '),
(59, ' .......... printer is a non-impact printer and is quite in working ', 'Inkjet', 'Laser', 'Thermal ', 'Dot matrix', 'Inkjet'),
(60, ' Touch Screen is............', 'Input device', 'Output device', 'Both a & b above ', 'None of these', 'Both a & b above ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
