-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 07:39 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `informer_info`
--

CREATE TABLE IF NOT EXISTS `informer_info` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `informer_info`
--

INSERT INTO `informer_info` (`name`, `email`, `contact`, `address`, `password`) VALUES
('hemant', 'hemant@gmail.com', '1234', 'shirpur', '1'),
('vaishnavi', 'vaishnavi@gmail.com', '1234', 'Amalner', '1'),
('hetal', 'hetal@gmail.com', '1234', 'Shirpur', '1'),
('arpan', 'arpan@gmail.com', '1234', 'Shirpur', '1');

-- --------------------------------------------------------

--
-- Table structure for table `spot_info`
--

CREATE TABLE IF NOT EXISTS `spot_info` (
  `informer_id` varchar(40) NOT NULL,
  `location_name` varchar(40) NOT NULL,
  `location_description` varchar(60) NOT NULL,
  `latitude` varchar(40) NOT NULL,
  `longitude` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `reason` varchar(20) NOT NULL,
  `zone` varchar(20) NOT NULL,
  `precaution` varchar(80) NOT NULL,
  `hotels` varchar(60) NOT NULL,
  `route1_sd` varchar(30) NOT NULL,
  `route1_fd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spot_info`
--

INSERT INTO `spot_info` (`informer_id`, `location_name`, `location_description`, `latitude`, `longitude`, `address`, `city`, `reason`, `zone`, `precaution`, `hotels`, `route1_sd`, `route1_fd`) VALUES
('hemant@gmail.com', 'Dhule', 'Nakane Road', '20.909704', '74.7610138', 'near Dhule Bus Stand', 'Dhule', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low', 'Hotel Paras, Hotel 7/12', 'Dhule', 'Devbhane'),
('hetal@gmail.com', 'datta mandir', 'front of datta mandir', '19.955252°', '73.834373°', 'datta mandir, nasik pune highway', 'nasik', 'Accidents', 'orange zone', 'wearing helmet and low speed', 'hotel shri jai palace', 'Nasik', 'Pune '),
('hetal@gmail.com', ' sinnar bypass', 'sinnar bypass highway', '19.853060', '74.000633', 'sinnar bypass highway', 'nasik', 'Accidents', 'Yellow Zone', 'drive slow with minimum speed', 'hotel patil wada', 'nasik', 'pune'),
('hetal@gmail.com', ' Mumbai-Agra highway', ' Gonde Dumala', '19.6973266', '73.5609251', 'Gonde Dumala, 25 km from Nashik', 'nasik', 'Crowded Area', 'green zone', 'focus on driving', 'hotel triton', 'nasik', 'mumbai'),
('hetal@gmail.com', 'dwarka chowk', 'dwarka flyover', '19.99245', '73.7795', 'dwarka flyover', 'nasik', 'Accidents', 'yellow zone', 'focus on road', 'hotel dwarka', 'nasik ', 'chandwad'),
('hetal@gmail.com', 'shalimar', 'shalimar streets ', '20.0012257', '73.7859273', 'shalimar street nasik', 'nasik', 'Accidents', 'orange zone', 'drive slow with minimum speed', 'atithi guest house', 'shalimar ', 'nasik road'),
('hetal@gmail.com', 'Nashik-Pune national highway', 'Mohadari Ghat near Sinnar', '19.875141', '73.949804', 'Mohadari Ghat', 'sinnar,nasik', 'Accidents', 'Orange Zone', 'drive slow with minimum speed', 'hotel sai lodge', 'nasik', 'pune'),
('hetal@gmail.com', 'nasik road', 'Adgaon area  ', '19.9729°', '73.8230°', 'adgaon ,nasik road ', 'nasik', 'Accidents', 'orange zone', 'focus on road', 'hotel saroj', 'nasik road', 'nasik main city'),
('hetal@gmail.com', 'shiroli village', 'pune nasik highway', '18.840506', '73.907188', 'shiroli village ', 'nasik', 'Accidents', 'orange zone', 'drive slow with minimum speed', 'hotel basera', 'nasik', 'pune'),
('hetal@gmail.com', 'ashoka marg', 'ashoka marg nasik raod', '19.96224', '19.96224', 'ashoka marg road', 'nasik', 'Accidents', 'yellow zone', 'wearing helmet and low speed', 'hotel sameer', 'nasik road ', 'dwarka chowk'),
('hetal@gmail.com', 'deolali camp', 'sansari naka deolali camp nasik', '19.8971378', '73.8368452', 'deolali camp nasik', 'nasik', 'Crowded Area', 'yellow zone', 'more traffic happens drive carefully', 'shriram guest house', 'deolali camp', 'nasik road'),
('hetal@gmail.com', 'panchavati', 'panchavati nasik', '20.0095°', '73.7919°', 'panchavti nasik', 'nasik', 'Accidents', 'orange zone', 'walk in service road', 'hotel panchavati yatri', 'panchavti ', 'nasik city'),
('hetal@gmail.com', 'nasik road', 'Adgaon area  ', '19.9729°', '73.8230°', 'adgaon ,nasik road ', 'nasik', 'Accidents', 'orange zone', 'focus on road', 'hotel saroj', 'nasik road', 'nasik main city'),
('hetal@gmail.com', 'mumbai agra highway', 'mumbai agra highway near igatpuri', ' 22.775635', '75.902132', 'mumbai agra highway near igatpuri', 'nasik', 'Accidents', 'Yellow Zone', 'drive slow with minimum speed', 'hotel highway inn', 'nasik city', 'mumbai'),
('hetal@gmail.com', 'chandwad ', 'chandwad near nasik', '20.3271°', '74.2473°', 'chandwad ghat ', 'nasik', 'Accidents', 'orange zone', 'drive slow with minimum speed', '', 'malegaon', 'nasik'),
('hetal@gmail.com', 'dwarka chowk', 'dwarka flyover', '19.99245', '73.7795', 'dwarka flyover', 'nasik', 'Accidents', 'yellow zone', 'focus on road', 'hotel dwarka', 'nasik ', 'chandwad'),
('hetal@gmail.com', 'someshwar waterfall', 'someshwar waterfall near nasik', '20.0292° ', '73.7234°', 'someshwar waterfall near nasik', 'nasik', 'Hilly Area', 'yellow zone', 'walk carefully near waterfall', 'hotel seven sky', 'jalalpur ', 'nasik main city'),
('hetal@gmail.com', 'narmada river ', 'narmada river nasik ', '22.0800', '74.9000', 'narmada river nasik ', 'nasik', 'Crime', 'red zone', 'be carefull with personal stuff', 'rewa hotel ', 'nashik ', 'ozar'),
('hetal@gmail.com', 'gangapur road', 'gangapur road nasik', '20.007844°.', '73.770193° ', 'gangapur road to sula vineyards', 'nasik', 'Accidents', 'green zone', 'prefer bike', 'hotel vaishali', 'nasik road ', 'sula vineyards'),
('hetal@gmail.com', 'thakkar bazaar ', 'thakkar bazaar bus stop', '19° 59'' 50.8308', '73° 47'' 23.2872', 'thakkar bazzar bus stop nasik', 'nasik', 'Crime', 'red zone', 'protect your luggage', 'padmalaxmi hotel', 'nasik city', 'to various cities'),
('hetal@gmail.com', 'igatpuri', 'igatpuri ghat ', '19.6937131', '	73.5529633', 'igatpuri ghat near nasik', 'igatpuri', 'Accidents', 'orange zone', 'proper headlights on road', '', 'nasik ', 'mumbai'),
('hetal@gmail.com', ' Mumbai-Agra highway', ' Gonde Dumala', '19.6973266', '73.5609251', 'Gonde Dumala, 25 km from Nashik', 'nasik', 'Crowded Area', 'green zone', 'focus on driving', 'hotel triton', 'nasik', 'mumbai'),
('hetal@gmail.com', ' Mumbai-nasik highway', ' near Kharigaon bridge', ' 19° 11'' 24', '73° 0'' 0', 'near Kharigaon bridge  Mumbai-nasik highway', 'mumbai', 'Accidents', 'orange zone', 'wearing helmet and low speed', 'hotel time square', 'Bhiwandi', 'Dharavi'),
('hetal@gmail.com', 'worli sea link', 'bandra worli sea link mumbai', '19.0252°', '72.8144°', 'bandra worli sea link mumbai', 'mumbai', 'Accidents', 'orange zone', 'drive slow with minimum speed', '-', 'bandra ', 'worli'),
('hetal@gmail.com', 'suburban', 'suburban Dahisar near Mumbai', '19.4946°', '72.8604°', 'suburban Dahisar near Mumbai', 'mumbai', 'Crime', 'Red Zone', 'proper cctv in shops', 'hotel sai', 'dahisar', 'kasarali'),
('hetal@gmail.com', 'kasara ghat', 'kasara ghat thane', '19.6700°', '73.4800°', 'kasara ghat thane mumbai', 'thane,mumbai', 'Accidents', 'orange zone', 'proper headlights on road', '--', 'thane', 'kasara'),
('hetal@gmail.com', 'thane', 'Ambernath township, thane', '19.2354425', '73.1298804', 'Ambernath township, thane mumbai', 'mumbai', 'Accidents', 'Orange Zone', 'more traffic police', '', 'thane', 'dombivali'),
('hetal@gmail.com', 'kalyan', 'kalyan mumbai', '19.2362°', '73.1302° ', 'kalyan railway station', 'kalyan mumbai', 'Crime', 'Red Zone', 'take care of your luggage', 'hotel raja', 'kalyan', 'ulhasnagar'),
('hetal@gmail.com', ' Mumbai-goa highway', 'near mangaon, mumbai goa highway ', '16° 16'' 11.2152', '73° 42'' 28.2024', 'near mangaon, mumbai goa highway ', 'raigad ', 'Accidents', 'yellow zone', 'focus on driving', 'hotel king palace', 'mumbai', 'goa'),
('hetal@gmail.com', 'Sion-Panvel highway  ', 'Sion-Panvel highway  near Turbhe flyover  ', '19°1''38.64', '73°5''35.52', 'Sion-Panvel highway  near Turbhe flyover ', 'panvel', 'Accidents', 'orange zone', 'more traffic police', 'hotel city view', 'sion', 'panvel'),
('hetal@gmail.com', 'western express highway', 'western express highway adheri', '19.1364°', '72.8296°', 'western express highway adheri mumbai', 'mumbai', 'Accidents', 'Orange Zone', 'drive slow with minimum speed', 'hotel regent', 'andheri', 'amboli'),
('hemant@gmail.com', 'Karwand Naka', 'near Jotiba Circle', '21.3496137', '74.8770991', 'Karand Naka Shirpur', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Kalamsare'),
('hemant@gmail.com', 'Nimzari Naka', 'Uddan Pul', '21.3588023', '74.8706157', 'near rajastan hotel', 'Shirpur', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low', 'Rajastan Hotel', 'Shirpur', 'Shahada'),
('hemant@gmail.com', 'Kalmasare', 'front of gold factory ', '21.3516959', '74.874031', 'Near Highway', 'Shirpur', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low and be aware of animals', '', 'Shirpur', 'Chopda'),
('hemant@gmail.com', 'Karwand', 'Karwand Dam Road Slope', '21.3801938', '74.9123366', 'near Lauki', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low and be aware of croud', '', 'Shirpur', 'Lauki'),
('hemant@gmail.com', 'Lauki', 'Corner in front of Balaji Temple', '21.4006287', '74.9110753', 'near aakash shop, Lauki', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Hadakhed'),
('hemant@gmail.com', 'Shingave', 'Entrance of Shingave', '19.7978486', '74.5509267', 'Near Shirpur', 'Shirpur', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Balade'),
('hemant@gmail.com', 'Kharde Bk', 'front road of datta mandir', '21.3308196', '74.8610252', 'Near Shirpur', 'Shirpur', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low and be aware of croud', '', 'Shirpur', 'Sawalde'),
('hemant@gmail.com', 'Vikhran', 'front road of Village Entrance', '21.4142616', '74.7855831', 'Near Arthe Bk', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Shahada'),
('hemant@gmail.com', 'Waghadi', 'Three Road Circle ', '21.4040049', '74.8064251', 'Near Shirpur', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Shahada'),
('hemant@gmail.com', 'Arthe Kh', 'front road of Village Entrance', '21.3945593', '74.8094491', 'Near Waghadi', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Shahada'),
('hemant@gmail.com', 'Arthe Bk', 'front road of Village Entrance', '21.4075339', '74.802631', 'Near Waghadi', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Shahada'),
('hemant@gmail.com', 'Sawalde', 'Highway Starting', '21.5005846', '74.4664302', 'Near Shirpur', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Dhule'),
('hemant@gmail.com', 'Varzadi', 'Road gone through Mountains', '21.2214601', '74.564845', 'Near Shirpur', 'Shirpur', 'Hilly Area', 'Green Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Boradi'),
('hemant@gmail.com', 'Nimzari', 'Road gone through Mountains', '21.4214744', '74.8608811', 'Near Shirpur', 'Shirpur', 'Hilly Area', 'Green Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Boradi'),
('hemant@gmail.com', 'Amode', 'Highway Starting', '21.3322038', '74.8771504', 'Near Shirpur', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Dhule'),
('hemant@gmail.com', 'Pach Kandil', 'Vijay Stambh', '21.3452931', '74.8773347', 'Pach Kandil, Vijay Stambh ', 'Shirpur', 'Crowded Area', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Amode'),
('hemant@gmail.com', 'Shirpur Bus Stand', 'Bus Stand Road', '21.3426267', '74.8825047', 'Bus stand, Shirpur', 'Shirpur', 'Crowded Area', 'Yellow Zone', 'Keep Vehicle Speed low', 'Sudarshan Hotel', 'Shirpur', 'Amode'),
('hemant@gmail.com', 'Ahilyapur', 'Main Bypass Road ', '21.2962087', '74.9152303', 'Ahilyapur Bypass Road', 'Shirpur', 'Accidents', 'Orange Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Chopda'),
('hemant@gmail.com', 'Holnanthe', 'Chopda Road ', '21.2178974', '75.047811', 'Near Babhalaj', 'Shirpur', 'Accidents', 'Red Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Chopda'),
('hemant@gmail.com', 'Boradi', 'Road Gone T', '21.5599491', '74.8435887', 'Near Shirpur', 'Shirpur', 'Crime', 'Red Zone', 'Keep self defence tools', 'Hotel Aaram', 'Shirpur', 'Boradi'),
('hemant@gmail.com', 'Dahivad', 'Highway', '21.3458549', '74.9024251', 'Near Shirpur', 'Shirpur', 'Accidents', 'Orange Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Indore'),
('hemant@gmail.com', 'Jatoda', 'Highway Near Nardana', '21.197229', '74.8323376', 'Near nardana', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Dhule'),
('hemant@gmail.com', 'Tande', 'Chopda Road', '21.3211187', '74.9387453', 'Near Shirpur', 'Shirpur', 'Crowded Area', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Chopda'),
('hemant@gmail.com', 'Kharde Kh', 'front road of Village Entrance', '21.2874734', '74.8142287', 'near Gidhade', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Sawalde', 'Dhule'),
('hemant@gmail.com', 'Thalner', 'Highway Road Near Thalner', '21.27194', '74.90364', 'Near Shirpur', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Dhule'),
('hemant@gmail.com', 'Varul', 'Bypass Road ', '21.404097', '74.7192984', 'Near Waghadi', 'Shirpur', 'Other', 'Green Zone', 'Safe Zone', '', 'Shirpur', 'Shahada'),
('hemant@gmail.com', 'Zende-anjan', 'School Road', '21.5180863', '74.9573967', 'Near Sangavi', 'Shirpur', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Sangavi'),
('hemant@gmail.com', 'Piloda', 'Shiv Mandir Road', '21.1931697', '75.0054108', 'near Manjrod', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Manjrod'),
('hemant@gmail.com', 'Sangvi', 'Main Bypass Road ', '21.4745458', '74.9856295', 'near Hadakhed', 'Shirpur', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Shirpur', 'Indore'),
('vaishnavi@gmail.com', 'Ambarishi Tekadi ', 'Around 100 meter area', '21.0484498', '75.0812385', 'Amalner Chopda Road', 'Amalner', 'Hilly Area', 'Yellow Zone', 'Keep your vehicle speed slow', '', 'Amalner', 'Chopda'),
('vaishnavi@gmail.com', 'Trikoni Bagicha', 'Near market around 200 meter area', '', '', 'Vegitable Market', 'Amalner', 'Crowded Area', 'Orange Zone', 'Keep Vehicle Speed low and be aware of croud', '', 'Amalner', 'Chopda'),
('vaishnavi@gmail.com', 'Walkheda', 'Village Road Damage', '21.1079078', '74.8653406', 'in Amalner', 'Amalner', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Amalner', 'Shirpur'),
('vaishnavi@gmail.com', 'Betawad', 'Pool on River', '21.1648961', '74.8989378', 'Betawad, Amalner', 'Amalner', 'Accidents', 'Yellow Zone', 'Pool on river is not well in rainy season keep vehicle speed slow', '', 'Amalner', 'Shirpur'),
('vaishnavi@gmail.com', 'Mandal', 'River Pool', '21.0590518', '74.8080628', 'Mandal, Amalner', 'Amalner', 'Accidents', 'Yellow Zone', 'River Pool is Broken keep vehicle speed low', '', 'Amalner', 'Shirpur'),
('vaishnavi@gmail.com', 'Kasara Ghat', 'Whole Ghat', '19.6649224', '73.4049717', '', 'Nashik', 'Hilly Area', 'Yellow Zone', 'Keep Vehicle Speed low and careful on Turns', '', 'Nashik', 'Igatpuri'),
('vaishnavi@gmail.com', 'Patna Devi Waterfall', 'Entrance Road', '20.3250795', '74.978425', 'near Chalisgaon', 'Chalisgaon', 'Hilly Area', 'Yellow Zone', 'Keep Vehicle Speed low and careful on Turns', '', 'Chalisgaon', 'Chatrapati Sabhaji Nagar'),
('vaishnavi@gmail.com', 'Marvad', 'Village Entrance Road', '21.1587492', '74.9842602', 'near Amalner', 'Amalner', 'Crowded Area', 'Green Zone', 'Keep Vehicle Speed low', '', 'Amalner', 'Shirpur'),
('vaishnavi@gmail.com', 'Janave', 'Entrance Road', '20.9450506', '74.8861754', 'near Marvad', 'Amalner', 'Accidents', 'Yellow Zone', 'Keep Vehicle Speed low', '', 'Amalner', 'Dhule');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`name`, `email`, `password`, `contact`, `city`) VALUES
('ganesh', 'ganesh@gmail.com', '1', '1234', 'Dhule');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
