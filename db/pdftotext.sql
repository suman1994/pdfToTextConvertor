-- phpMyAdmin SQL Dump
-- version 5.0.0-rc1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2019 at 06:17 PM
-- Server version: 10.4.10-MariaDB-log
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdftotext`
--

-- --------------------------------------------------------

--
-- Table structure for table `pdf_data`
--

CREATE TABLE `pdf_data` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `file_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf_data`
--

INSERT INTO `pdf_data` (`id`, `text`, `datetime`, `file_name`) VALUES
(1, 'Document title  Calibri : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lacus arcu, feugiat a ligula cursus, feugiat dapibus diam. Cras augue ante, volutpat non velit sit amet, vehicula facilisis lacus. Morbi vitae sapien elementum, gravida felis non, egestas magna. Aenean at mauris vitae magna dignissim dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus purus urna, sagittis eget semper id, porta vel risus. Integer sed felis rutrum, tempor nisl non, pellentesque elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi arcu nunc, cursus a libero eu, bibendum accumsan est. Vivamus non risus pellentesque massa tempus bibendum. Nunc in commodo dui. Integer pharetra felis arcu, id cursus lacus fringilla vel. Vestibulum eget purus consequat, consequat mi ac, feugiat mi. Arial : Praesent dictum vel orci ut aliquam. In hac habitasse platea dictumst. Nulla fermentum nibh eget rutrum suscipit. Donec in luctus eros. Cras tristique erat a tellus sodales, sit amet tempor massa aliquet. Ut a metus vitae ligula viverra congue. Curabitur non feugiat lacus. Integer a euismod quam. Donec eu laoreet magna. Fusce semper, lacus in volutpat commodo, lectus mi hendrerit lectus, nec porta lorem diam eget ipsum. Nulla et est felis. Pellentesque sit amet cursus magna. Times : Curabitur tristique, orci nec consectetur mollis, massa dui semper elit, sit amet pharetra lectus urna ut lorem. Praesent id nunc ornare, pretium nibh eget, blandit odio. Aliquam facilisis porta sollicitudin. Nunc porta dapibus augue sed pulvinar. Nullam sit amet nisl at urna eleifend scelerisque eu ac nisl. Integer congue vitae orci vel sollicitudin. Sed aliquet accumsan nunc sed interdum. In non purus sit amet risus porta volutpat facilisis sit amet lectus. Suspendisse fermentum purus sit amet lacus egestas vestibulum. Donec nibh diam, gravida sit amet mi ut, blandit porttitor lorem. Sed non mi vitae nulla convallis tristique ac lobortis velit. Mauris sed enim eu nibh porta malesuada. Nullam dapibus mauris sed ultricies condimentum. Nulla sodales at leo fringilla aliquet. Courier New : Cras iaculis a sapien vel sollicitudin. Cras bibendum in sapien non ultricies. Duis tempus sapien id leo volutpat, sit amet congue eros mollis. Pellentesque tincidunt purus a enim egestas, in vehicula mi eleifend. Integer molestie suscipit justo nec auctor. Nam non dolor est. Vestibulum congue hendrerit ante id posuere. Verdana : Nullam hendrerit ante sed risus luctus elementum. Morbi consectetur et diam sed dignissim. Sed a erat metus. Mauris a ultrices velit. Aenean laoreet lectus nisi, tincidunt auctor nunc dictum at. Pellentesque at enim ac arcu mattis pellentesque et et lectus. Pellentesque in augue ipsum. Vivamus sapien lorem, semper auctor ligula sit amet, aliquam imperdiet mi. Maecenas in neque in tellus sagittis feugiat ac non dolor. Ut adipiscing erat ac tortor fringilla, in lobortis orci gravida. Praesent vulputate neque ac nibh elementum tempor. Etiam tincidunt aliquam libero, ut faucibus justo sodales sed. Aenean aliquam sodales nulla, vel mollis leo blandit at. Morbi vulputate tincidunt venenatis.  ', '2019-12-13 23:45:56', 'document.pdf'),
(2, 'Document title  Calibri : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lacus arcu, feugiat a ligula cursus, feugiat dapibus diam. Cras augue ante, volutpat non velit sit amet, vehicula facilisis lacus. Morbi vitae sapien elementum, gravida felis non, egestas magna. Aenean at mauris vitae magna dignissim dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus purus urna, sagittis eget semper id, porta vel risus. Integer sed felis rutrum, tempor nisl non, pellentesque elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi arcu nunc, cursus a libero eu, bibendum accumsan est. Vivamus non risus pellentesque massa tempus bibendum. Nunc in commodo dui. Integer pharetra felis arcu, id cursus lacus fringilla vel. Vestibulum eget purus consequat, consequat mi ac, feugiat mi. Arial : Praesent dictum vel orci ut aliquam. In hac habitasse platea dictumst. Nulla fermentum nibh eget rutrum suscipit. Donec in luctus eros. Cras tristique erat a tellus sodales, sit amet tempor massa aliquet. Ut a metus vitae ligula viverra congue. Curabitur non feugiat lacus. Integer a euismod quam. Donec eu laoreet magna. Fusce semper, lacus in volutpat commodo, lectus mi hendrerit lectus, nec porta lorem diam eget ipsum. Nulla et est felis. Pellentesque sit amet cursus magna. Times : Curabitur tristique, orci nec consectetur mollis, massa dui semper elit, sit amet pharetra lectus urna ut lorem. Praesent id nunc ornare, pretium nibh eget, blandit odio. Aliquam facilisis porta sollicitudin. Nunc porta dapibus augue sed pulvinar. Nullam sit amet nisl at urna eleifend scelerisque eu ac nisl. Integer congue vitae orci vel sollicitudin. Sed aliquet accumsan nunc sed interdum. In non purus sit amet risus porta volutpat facilisis sit amet lectus. Suspendisse fermentum purus sit amet lacus egestas vestibulum. Donec nibh diam, gravida sit amet mi ut, blandit porttitor lorem. Sed non mi vitae nulla convallis tristique ac lobortis velit. Mauris sed enim eu nibh porta malesuada. Nullam dapibus mauris sed ultricies condimentum. Nulla sodales at leo fringilla aliquet. Courier New : Cras iaculis a sapien vel sollicitudin. Cras bibendum in sapien non ultricies. Duis tempus sapien id leo volutpat, sit amet congue eros mollis. Pellentesque tincidunt purus a enim egestas, in vehicula mi eleifend. Integer molestie suscipit justo nec auctor. Nam non dolor est. Vestibulum congue hendrerit ante id posuere. Verdana : Nullam hendrerit ante sed risus luctus elementum. Morbi consectetur et diam sed dignissim. Sed a erat metus. Mauris a ultrices velit. Aenean laoreet lectus nisi, tincidunt auctor nunc dictum at. Pellentesque at enim ac arcu mattis pellentesque et et lectus. Pellentesque in augue ipsum. Vivamus sapien lorem, semper auctor ligula sit amet, aliquam imperdiet mi. Maecenas in neque in tellus sagittis feugiat ac non dolor. Ut adipiscing erat ac tortor fringilla, in lobortis orci gravida. Praesent vulputate neque ac nibh elementum tempor. Etiam tincidunt aliquam libero, ut faucibus justo sodales sed. Aenean aliquam sodales nulla, vel mollis leo blandit at. Morbi vulputate tincidunt venenatis.  ', '2019-12-13 23:46:41', 'document.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pdf_data`
--
ALTER TABLE `pdf_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pdf_data`
--
ALTER TABLE `pdf_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

