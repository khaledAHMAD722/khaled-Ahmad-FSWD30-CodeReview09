-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 03, 2018 at 04:31 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_khaled_Ahmad_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `Additional_charges`
--

CREATE TABLE `Additional_charges` (
  `additional_charges_id` int(11) NOT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `additional_charges_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Additional_charges`
--

INSERT INTO `Additional_charges` (`additional_charges_id`, `fk_car_id`, `additional_charges_price`) VALUES
(1, 1, 0),
(2, 2, 14),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 1542),
(7, 7, 0),
(8, 8, 127.17),
(9, 9, 0),
(10, 10, 12.92);

-- --------------------------------------------------------

--
-- Table structure for table `Car`
--

CREATE TABLE `Car` (
  `car_id` int(11) NOT NULL,
  `car_num` int(11) DEFAULT NULL,
  `fk_category_id` int(11) DEFAULT NULL,
  `car_model` varchar(55) DEFAULT NULL,
  `color` varchar(55) DEFAULT NULL,
  `chare_num` int(11) DEFAULT NULL,
  `care_status` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Car`
--

INSERT INTO `Car` (`car_id`, `car_num`, `fk_category_id`, `car_model`, `color`, `chare_num`, `care_status`) VALUES
(1, 126172123, 1, 'BMW X1', 'RED', 5, 'FULL'),
(2, 4986786, NULL, 'VOLVO a45', 'black', 9, 'full'),
(3, 6562667, NULL, 'BMW X5', 'Blue', 2, 'fuel is 50%'),
(4, 6759876, NULL, 'Marcedes A-5', 'Grey', 5, 'full'),
(5, 8762342, NULL, 'Audi g3', 'RED', 5, 'full'),
(6, 56238725, NULL, 'Audi r23', 'White', 5, 'Fuel is 30%'),
(7, 4211232, NULL, 'BMW X6', 'White', 9, 'full'),
(8, 5623771, NULL, 'WV golf', 'blue white', 5, 'full'),
(9, 5423433, NULL, 'Volvo xm13', 'White', 2, 'full'),
(10, 2434223, NULL, 'BMW x4', 'RED', 5, 'full');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `car_type` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `car_type`) VALUES
(1, '4X4'),
(2, 'cube'),
(3, 'Family'),
(4, 'Sport'),
(5, 'Truck');

-- --------------------------------------------------------

--
-- Table structure for table `Driver`
--

CREATE TABLE `Driver` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(55) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `license_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Driver`
--

INSERT INTO `Driver` (`driver_id`, `driver_name`, `birth_day`, `license_num`) VALUES
(1, 'david', '1979-02-15', 10002389),
(2, 'Hasan ', '1989-01-18', 104332389),
(3, 'alex stiphan', '1988-12-25', 100432342),
(4, 'Mohd Saleh', '1999-10-14', 1003909890),
(5, 'Majed khalil', '1995-12-12', 198392103),
(6, 'Mario Propst', '1951-11-01', 321324343),
(7, 'Simone Mario', '1998-09-04', 12983192),
(8, 'Sandra Sisi', '1978-01-03', 122423543),
(9, 'Salha saoer', '1994-05-18', 232432435),
(10, 'Fozeah Marei', '1981-03-15', 232415245);

-- --------------------------------------------------------

--
-- Table structure for table `Drop_off_location`
--

CREATE TABLE `Drop_off_location` (
  `drop_off_location_id` int(11) NOT NULL,
  `street` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `country` varchar(55) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Drop_off_location`
--

INSERT INTO `Drop_off_location` (`drop_off_location_id`, `street`, `city`, `country`, `zip`) VALUES
(1, 'robert-starße', 'wien', 'Austria', '1050'),
(2, 'westbahn', 'wien', 'Austria', '1040'),
(3, 'Victorea-gasse', 'wien', 'Austria', '1150'),
(4, 'thefirststreet', 'salzburg', 'Austria', '1270'),
(5, 'thesecoundstreet', 'linz', 'Austria', '1564'),
(6, 'thetherdstreet', 'graz', 'Austria', '2541'),
(7, 'thefourthstreet', 'München', 'Deutschland', '54667');

-- --------------------------------------------------------

--
-- Table structure for table `Invoice`
--

CREATE TABLE `Invoice` (
  `invoice_id` int(11) NOT NULL,
  `fk_reservation_id` int(11) DEFAULT NULL,
  `car_rent` float DEFAULT NULL,
  `service_tax` float DEFAULT NULL,
  `VAT` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `discount_amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Invoice`
--

INSERT INTO `Invoice` (`invoice_id`, `fk_reservation_id`, `car_rent`, `service_tax`, `VAT`, `total`, `discount_amount`) VALUES
(1, 1, 334, 12, 17, 400, 0),
(2, 2, 877.99, 55.55, 230, 1050, 20),
(3, 3, 332.98, 33.67, 55.84, 593.87, 40),
(4, 4, 566.98, 33.54, 100, 790, 0),
(5, 5, 1231.98, 23.23, 120, 1644.22, 0),
(6, 6, 123.23, 23, 17, 167.23, 0),
(7, 7, 1422.21, 0, 142, 1600, 100),
(8, 8, 142.21, 23, 14.92, 150, 0),
(9, 9, 1542, 23.67, 123, 1700, 0),
(10, 10, 143.98, 0, 14.3, 160, 45);

-- --------------------------------------------------------

--
-- Table structure for table `Pick_up_location`
--

CREATE TABLE `Pick_up_location` (
  `pick_up_location_id` int(11) NOT NULL,
  `street` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `country` varchar(55) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pick_up_location`
--

INSERT INTO `Pick_up_location` (`pick_up_location_id`, `street`, `city`, `country`, `zip`) VALUES
(1, 'robert-starße', 'wien', 'Austria', '1050'),
(2, 'westbahn', 'wien', 'Austria', '1040'),
(3, 'Victorea-gasse', 'wien', 'Austria', '1150'),
(4, 'thefirststreet', 'salzburg', 'Austria', '1270'),
(5, 'thesecoundstreet', 'linz', 'Austria', '1564'),
(6, 'thetherdstreet', 'graz', 'Austria', '2541'),
(7, 'thefourthstreet', 'München', 'Deutschland', '54667');

-- --------------------------------------------------------

--
-- Table structure for table `Reservation`
--

CREATE TABLE `Reservation` (
  `reservation_id` int(11) NOT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `fk_driver_id` int(11) DEFAULT NULL,
  `fk_pick_up_location_id` int(11) DEFAULT NULL,
  `fk_drop_off_location_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Reservation`
--

INSERT INTO `Reservation` (`reservation_id`, `fk_car_id`, `fk_driver_id`, `fk_pick_up_location_id`, `fk_drop_off_location_id`, `start_date`, `end_date`) VALUES
(1, 1, 10, 2, 7, '2018-02-01', '2018-02-28'),
(2, 2, 9, 7, 1, '2018-02-07', '2018-02-26'),
(3, 3, 8, 4, 5, '2018-02-04', '2018-03-21'),
(4, 4, 7, 6, 2, '2018-02-06', '2018-02-24'),
(5, 5, 6, 4, 4, '2018-02-08', '2018-02-21'),
(6, 6, 5, 1, 7, '2018-02-12', '2018-04-06'),
(7, 7, 4, 3, 5, '2018-02-06', '2018-02-27'),
(8, 8, 3, 3, 6, '2018-02-15', '2018-02-28'),
(9, 2, 9, 2, 2, '2018-02-08', '2018-02-20'),
(10, 1, 1, 3, 5, '2018-02-06', '2018-02-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Additional_charges`
--
ALTER TABLE `Additional_charges`
  ADD PRIMARY KEY (`additional_charges_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `Car`
--
ALTER TABLE `Car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_category_id` (`fk_category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `Driver`
--
ALTER TABLE `Driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `Drop_off_location`
--
ALTER TABLE `Drop_off_location`
  ADD PRIMARY KEY (`drop_off_location_id`);

--
-- Indexes for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `fk_reservation_id` (`fk_reservation_id`);

--
-- Indexes for table `Pick_up_location`
--
ALTER TABLE `Pick_up_location`
  ADD PRIMARY KEY (`pick_up_location_id`);

--
-- Indexes for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_driver_id` (`fk_driver_id`),
  ADD KEY `fk_pick_up_location_id` (`fk_pick_up_location_id`),
  ADD KEY `fk_drop_off_location_id` (`fk_drop_off_location_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Additional_charges`
--
ALTER TABLE `Additional_charges`
  ADD CONSTRAINT `Additional_charges_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `Car` (`car_id`);

--
-- Constraints for table `Car`
--
ALTER TABLE `Car`
  ADD CONSTRAINT `Car_ibfk_1` FOREIGN KEY (`fk_category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `Invoice`
--
ALTER TABLE `Invoice`
  ADD CONSTRAINT `Invoice_ibfk_1` FOREIGN KEY (`fk_reservation_id`) REFERENCES `Reservation` (`reservation_id`);

--
-- Constraints for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `Car` (`car_id`),
  ADD CONSTRAINT `Reservation_ibfk_2` FOREIGN KEY (`fk_driver_id`) REFERENCES `Driver` (`driver_id`),
  ADD CONSTRAINT `Reservation_ibfk_3` FOREIGN KEY (`fk_pick_up_location_id`) REFERENCES `Pick_up_location` (`pick_up_location_id`),
  ADD CONSTRAINT `Reservation_ibfk_4` FOREIGN KEY (`fk_drop_off_location_id`) REFERENCES `Drop_off_location` (`drop_off_location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
