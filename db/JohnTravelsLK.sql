-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2023 at 10:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `johntravelslk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification`
--

CREATE TABLE `admin_notification` (
  `Notification_Id` int(11) NOT NULL,
  `Notificaion_Name` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `Username`, `Password`, `Email`) VALUES
(3, 'k', 'kk', 'kkk'),
(9, 'siva', '$2y$10$9gZFQrvdQTznZbN7jQHsIug3zLXfN6cWUu/C6hdlwr9uw61NZFGqa', 'siva@gmail.com'),
(10, 'dog', '$2y$10$Cwt4RVgHPtWApuBx0TaJZOgjfmBRTWCO4SSNIlstjdw7ukeHNuXuS', 'rangertwo336@gmail.com'),
(12, 'googlr232', '$2y$10$gJ7ZL7y2gzmekghsYo9ih.JLGhIz5eX9/KUwFk6KN2yC/CmNXmlk2', 'sivrewae@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer_medical_details`
--

CREATE TABLE `customer_medical_details` (
  `Customer_Id` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_medical_details`
--

INSERT INTO `customer_medical_details` (`Customer_Id`, `Type`, `Description`) VALUES
(9, 'good', 'Good condition');

-- --------------------------------------------------------

--
-- Table structure for table `customer_more_details`
--

CREATE TABLE `customer_more_details` (
  `Customer_Id` int(11) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `Dateofbirth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact_number` int(20) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Id` int(50) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `language` varchar(25) NOT NULL,
  `Emegency_contact` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_more_details`
--

INSERT INTO `customer_more_details` (`Customer_Id`, `Fullname`, `Dateofbirth`, `Gender`, `Contact_number`, `Type`, `Id`, `Adress`, `language`, `Emegency_contact`) VALUES
(9, 'Mohanarasa Sivakaran', '0000-00-00', 'Male', 760503141, 'Fun', 2000342002, 'mullativu', 'Tamil', 119);

-- --------------------------------------------------------

--
-- Table structure for table `customer_travel_intrest`
--

CREATE TABLE `customer_travel_intrest` (
  `Customer_Id` int(11) NOT NULL,
  `Travel_intrest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_travel_intrest`
--

INSERT INTO `customer_travel_intrest` (`Customer_Id`, `Travel_intrest`) VALUES
(3, 'ggggggg'),
(3, 'kjvjhvmvv'),
(3, 'jhgfdf');

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack`
--

CREATE TABLE `customize_pack` (
  `Pack_Id` int(11) NOT NULL,
  `Pack_name` varchar(255) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Days` int(11) NOT NULL,
  `Nights` int(11) NOT NULL,
  `Start_date` datetime NOT NULL,
  `End_date` datetime NOT NULL,
  `Food` varchar(10) NOT NULL,
  `Hotel` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack_locations`
--

CREATE TABLE `customize_pack_locations` (
  `Pack_Id` int(11) NOT NULL,
  `Location_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack_members`
--

CREATE TABLE `customize_pack_members` (
  `Member_Id` int(11) NOT NULL,
  `Pack_Id` int(11) NOT NULL,
  `Member_name` varchar(255) NOT NULL,
  `Member_status` varchar(25) NOT NULL,
  `Id_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack_notification`
--

CREATE TABLE `customize_pack_notification` (
  `Notification_Id` int(11) NOT NULL,
  `Pack_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack_order`
--

CREATE TABLE `customize_pack_order` (
  `Order_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Pack_Id` int(11) NOT NULL,
  `Ordered_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack_payment`
--

CREATE TABLE `customize_pack_payment` (
  `Payment_Id` int(11) NOT NULL,
  `Order_Id` int(11) NOT NULL,
  `Payment_status` varchar(255) NOT NULL,
  `Paid_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_pack_places`
--

CREATE TABLE `customize_pack_places` (
  `Pack_Id` int(11) NOT NULL,
  `Location_Id` int(11) NOT NULL,
  `Place_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pack`
--

CREATE TABLE `default_pack` (
  `Pack_Id` int(11) NOT NULL,
  `Pack_name` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `Days` int(11) NOT NULL,
  `Nights` int(11) NOT NULL,
  `Start_date` datetime NOT NULL,
  `End_date` datetime NOT NULL,
  `Pickup_Location` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pack_locations`
--

CREATE TABLE `default_pack_locations` (
  `Pack_Id` int(11) NOT NULL,
  `Location_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pack_members`
--

CREATE TABLE `default_pack_members` (
  `Member_Id` int(11) NOT NULL,
  `Pack_Id` int(11) NOT NULL,
  `Member_name` varchar(255) NOT NULL,
  `Member_status` varchar(255) NOT NULL,
  `Id_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pack_order`
--

CREATE TABLE `default_pack_order` (
  `Order_Id` int(11) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `Pack_Id` int(11) NOT NULL,
  `Ordered_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pack_payment`
--

CREATE TABLE `default_pack_payment` (
  `Payment_Id` int(11) NOT NULL,
  `Order_Id` int(11) NOT NULL,
  `Payment_status` varchar(255) NOT NULL,
  `Paid_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pack_places`
--

CREATE TABLE `default_pack_places` (
  `Pack_Id` int(11) NOT NULL,
  `Location_Id` int(11) NOT NULL,
  `Place_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `Location_Id` int(11) NOT NULL,
  `Location_name` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsfeed`
--

CREATE TABLE `newsfeed` (
  `Newsfeed_Id` int(11) NOT NULL,
  `Newsfeed_name` varchar(255) NOT NULL,
  `Bonus` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_places`
--

CREATE TABLE `pickup_places` (
  `Pickup_Place_Id` int(11) NOT NULL,
  `Place_name` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `Place_Id` int(11) NOT NULL,
  `Location_Id` int(11) NOT NULL,
  `Place_name` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_admins`
--

CREATE TABLE `sub_admins` (
  `Id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notification`
--
ALTER TABLE `admin_notification`
  ADD PRIMARY KEY (`Notification_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `customer_medical_details`
--
ALTER TABLE `customer_medical_details`
  ADD KEY `Customer_Id_fk` (`Customer_Id`);

--
-- Indexes for table `customer_more_details`
--
ALTER TABLE `customer_more_details`
  ADD KEY `Customer_Id_fk` (`Customer_Id`);

--
-- Indexes for table `customer_travel_intrest`
--
ALTER TABLE `customer_travel_intrest`
  ADD KEY `Customer_Id_fk` (`Customer_Id`);

--
-- Indexes for table `customize_pack`
--
ALTER TABLE `customize_pack`
  ADD PRIMARY KEY (`Pack_Id`),
  ADD KEY `Customer_Id_fk` (`Customer_Id`);

--
-- Indexes for table `customize_pack_locations`
--
ALTER TABLE `customize_pack_locations`
  ADD KEY `Pack_Id_fk` (`Pack_Id`),
  ADD KEY `Location_Id_fk` (`Location_Id`);

--
-- Indexes for table `customize_pack_members`
--
ALTER TABLE `customize_pack_members`
  ADD PRIMARY KEY (`Member_Id`),
  ADD KEY `Pack_Id_fk` (`Pack_Id`);

--
-- Indexes for table `customize_pack_notification`
--
ALTER TABLE `customize_pack_notification`
  ADD PRIMARY KEY (`Notification_Id`),
  ADD KEY `Pack_Id_fk` (`Pack_Id`),
  ADD KEY `Customer_Id_fk` (`Customer_Id`);

--
-- Indexes for table `customize_pack_order`
--
ALTER TABLE `customize_pack_order`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Customer_Id_fk` (`Customer_Id`),
  ADD KEY `Pack_Id_fk` (`Pack_Id`);

--
-- Indexes for table `customize_pack_payment`
--
ALTER TABLE `customize_pack_payment`
  ADD PRIMARY KEY (`Payment_Id`),
  ADD KEY `Order_Id_fk` (`Order_Id`);

--
-- Indexes for table `customize_pack_places`
--
ALTER TABLE `customize_pack_places`
  ADD KEY `Pack_Id_fk` (`Pack_Id`),
  ADD KEY `Location_Id_fk` (`Location_Id`),
  ADD KEY `Place_Id_fk` (`Place_Id`);

--
-- Indexes for table `default_pack`
--
ALTER TABLE `default_pack`
  ADD PRIMARY KEY (`Pack_Id`);

--
-- Indexes for table `default_pack_locations`
--
ALTER TABLE `default_pack_locations`
  ADD KEY `Pack_Id_fk` (`Pack_Id`),
  ADD KEY `Location_Id_fk` (`Location_Id`);

--
-- Indexes for table `default_pack_members`
--
ALTER TABLE `default_pack_members`
  ADD PRIMARY KEY (`Member_Id`),
  ADD KEY `Pack_Id_fk` (`Pack_Id`);

--
-- Indexes for table `default_pack_order`
--
ALTER TABLE `default_pack_order`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Customer_Id_fk` (`Customer_Id`),
  ADD KEY `Pack_Id_fk` (`Pack_Id`);

--
-- Indexes for table `default_pack_payment`
--
ALTER TABLE `default_pack_payment`
  ADD PRIMARY KEY (`Payment_Id`),
  ADD KEY `Order_Id_fk` (`Order_Id`);

--
-- Indexes for table `default_pack_places`
--
ALTER TABLE `default_pack_places`
  ADD KEY `Pack_Id_fk` (`Pack_Id`),
  ADD KEY `Location_Id_fk` (`Location_Id`),
  ADD KEY `Place_Id_fk` (`Place_Id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`Location_Id`);

--
-- Indexes for table `newsfeed`
--
ALTER TABLE `newsfeed`
  ADD PRIMARY KEY (`Newsfeed_Id`);

--
-- Indexes for table `pickup_places`
--
ALTER TABLE `pickup_places`
  ADD PRIMARY KEY (`Pickup_Place_Id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`Place_Id`),
  ADD KEY `Location_Id_fk` (`Location_Id`);

--
-- Indexes for table `sub_admins`
--
ALTER TABLE `sub_admins`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notification`
--
ALTER TABLE `admin_notification`
  MODIFY `Notification_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customize_pack`
--
ALTER TABLE `customize_pack`
  MODIFY `Pack_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customize_pack_members`
--
ALTER TABLE `customize_pack_members`
  MODIFY `Member_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customize_pack_notification`
--
ALTER TABLE `customize_pack_notification`
  MODIFY `Notification_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customize_pack_order`
--
ALTER TABLE `customize_pack_order`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customize_pack_payment`
--
ALTER TABLE `customize_pack_payment`
  MODIFY `Payment_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `default_pack`
--
ALTER TABLE `default_pack`
  MODIFY `Pack_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `default_pack_members`
--
ALTER TABLE `default_pack_members`
  MODIFY `Member_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `default_pack_order`
--
ALTER TABLE `default_pack_order`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `default_pack_payment`
--
ALTER TABLE `default_pack_payment`
  MODIFY `Payment_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `Location_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsfeed`
--
ALTER TABLE `newsfeed`
  MODIFY `Newsfeed_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_places`
--
ALTER TABLE `pickup_places`
  MODIFY `Pickup_Place_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `Place_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_admins`
--
ALTER TABLE `sub_admins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_medical_details`
--
ALTER TABLE `customer_medical_details`
  ADD CONSTRAINT `customer_medical_details_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `customer_more_details`
--
ALTER TABLE `customer_more_details`
  ADD CONSTRAINT `customer_more_details_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `customer_travel_intrest`
--
ALTER TABLE `customer_travel_intrest`
  ADD CONSTRAINT `customer_travel_intrest_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `customize_pack`
--
ALTER TABLE `customize_pack`
  ADD CONSTRAINT `customize_pack_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `customize_pack_locations`
--
ALTER TABLE `customize_pack_locations`
  ADD CONSTRAINT `customize_pack_locations_ibfk_1` FOREIGN KEY (`Location_Id`) REFERENCES `locations` (`Location_Id`),
  ADD CONSTRAINT `customize_pack_locations_ibfk_2` FOREIGN KEY (`Pack_Id`) REFERENCES `customize_pack` (`Pack_Id`);

--
-- Constraints for table `customize_pack_members`
--
ALTER TABLE `customize_pack_members`
  ADD CONSTRAINT `customize_pack_members_ibfk_1` FOREIGN KEY (`Pack_Id`) REFERENCES `customize_pack` (`Pack_Id`);

--
-- Constraints for table `customize_pack_notification`
--
ALTER TABLE `customize_pack_notification`
  ADD CONSTRAINT `customize_pack_notification_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `customize_pack_notification_ibfk_2` FOREIGN KEY (`Pack_Id`) REFERENCES `customize_pack` (`Pack_Id`);

--
-- Constraints for table `customize_pack_order`
--
ALTER TABLE `customize_pack_order`
  ADD CONSTRAINT `customize_pack_order_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `customize_pack_order_ibfk_2` FOREIGN KEY (`Pack_Id`) REFERENCES `customize_pack` (`Pack_Id`);

--
-- Constraints for table `customize_pack_payment`
--
ALTER TABLE `customize_pack_payment`
  ADD CONSTRAINT `customize_pack_payment_ibfk_1` FOREIGN KEY (`Order_Id`) REFERENCES `customize_pack_order` (`Order_Id`);

--
-- Constraints for table `customize_pack_places`
--
ALTER TABLE `customize_pack_places`
  ADD CONSTRAINT `customize_pack_places_ibfk_1` FOREIGN KEY (`Location_Id`) REFERENCES `locations` (`Location_Id`),
  ADD CONSTRAINT `customize_pack_places_ibfk_2` FOREIGN KEY (`Place_Id`) REFERENCES `places` (`Place_Id`),
  ADD CONSTRAINT `customize_pack_places_ibfk_3` FOREIGN KEY (`Pack_Id`) REFERENCES `customize_pack` (`Pack_Id`);

--
-- Constraints for table `default_pack_locations`
--
ALTER TABLE `default_pack_locations`
  ADD CONSTRAINT `default_pack_locations_ibfk_1` FOREIGN KEY (`Location_Id`) REFERENCES `locations` (`Location_Id`),
  ADD CONSTRAINT `default_pack_locations_ibfk_2` FOREIGN KEY (`Pack_Id`) REFERENCES `default_pack` (`Pack_Id`);

--
-- Constraints for table `default_pack_members`
--
ALTER TABLE `default_pack_members`
  ADD CONSTRAINT `default_pack_members_ibfk_1` FOREIGN KEY (`Pack_Id`) REFERENCES `default_pack` (`Pack_Id`);

--
-- Constraints for table `default_pack_order`
--
ALTER TABLE `default_pack_order`
  ADD CONSTRAINT `default_pack_order_ibfk_1` FOREIGN KEY (`Pack_Id`) REFERENCES `default_pack` (`Pack_Id`),
  ADD CONSTRAINT `default_pack_order_ibfk_2` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `default_pack_payment`
--
ALTER TABLE `default_pack_payment`
  ADD CONSTRAINT `default_pack_payment_ibfk_1` FOREIGN KEY (`Order_Id`) REFERENCES `default_pack_order` (`Order_Id`);

--
-- Constraints for table `default_pack_places`
--
ALTER TABLE `default_pack_places`
  ADD CONSTRAINT `default_pack_places_ibfk_1` FOREIGN KEY (`Location_Id`) REFERENCES `locations` (`Location_Id`),
  ADD CONSTRAINT `default_pack_places_ibfk_2` FOREIGN KEY (`Pack_Id`) REFERENCES `default_pack` (`Pack_Id`),
  ADD CONSTRAINT `default_pack_places_ibfk_3` FOREIGN KEY (`Place_Id`) REFERENCES `places` (`Place_Id`);

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_ibfk_1` FOREIGN KEY (`Location_Id`) REFERENCES `locations` (`Location_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
