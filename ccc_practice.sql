-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccc_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `show_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_title`, `banner_image`, `status`, `show_on`) VALUES
(1, 'jordan', 'jordans.png', 1, '234'),
(4, 'Sneakers', 'Screenshot 2024-03-28 141007.png', 1, 'Sneakers'),
(5, 'Running Shoes', 'Screenshot 2024-03-28 140946.png', 1, 'Running Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category`
--

CREATE TABLE `catalog_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog_category`
--

INSERT INTO `catalog_category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Mens', 1),
(2, 'Womens', 1),
(3, 'Kids', 1),
(4, 'Sports', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product`
--

CREATE TABLE `catalog_product` (
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `mfr_cost` decimal(12,2) NOT NULL,
  `shipping_cost` decimal(12,2) NOT NULL,
  `total_cost` decimal(12,2) NOT NULL,
  `margin_percentage` int(11) NOT NULL,
  `min_price` decimal(12,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `inventory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog_product`
--

INSERT INTO `catalog_product` (`product_id`, `sku`, `name`, `color`, `size`, `description`, `image_link`, `link`, `category_id`, `price`, `mfr_cost`, `shipping_cost`, `total_cost`, `margin_percentage`, `min_price`, `status`, `created_at`, `updated_at`, `inventory`) VALUES
(1, 'YIV08365', 'Air Jordan 1 Low SE Mens Shoes', 'Firebrick', '7', 'Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.', 'Air Jordan 1 Low SE Mens Shoes.png ', '', 3, 887.00, 1969.00, 1974.00, 1582.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(2, 'UWU96718', 'Nike Air Force 1 07 Mens Shoes', 'DimGray', '4.5', 'Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.', 'Nike Air Force 1 07 Mens Shoes.png ', '', 1, 983.00, 1408.00, 1423.00, 1899.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(3, 'PDG40536', 'Nike Air Max Dn Mens Shoes(1)', 'DarkOrange', '9', 'Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.', 'Nike Air Max Dn Mens Shoes(1).png ', '', 1, 1250.00, 984.00, 991.00, 1520.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(4, 'BIY99840', 'Nike Air Max Dn Mens Shoes', 'MediumSeaGreen', '3', 'Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!', 'Nike Air Max Dn Mens Shoes.png ', '', 2, 895.00, 1365.00, 900.00, 1175.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(5, 'HZN44796', 'Nike Air Max Dn Shoes(1)', 'RoyalBlue', '10', 'Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.', 'Nike Air Max Dn Shoes(1).png ', '', 2, 979.00, 1453.00, 1092.00, 1856.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(6, 'WPP66879', 'Nike Air Max Dn Shoes(2)', 'Fuchsia', '5.5', 'Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.', 'Nike Air Max Dn Shoes(2).png ', '', 2, 1807.00, 938.00, 1886.00, 1316.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(7, 'YOD23501', 'Nike Air Max Dn Shoes', 'Chocolate', '8.5', 'Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.', 'Nike Air Max Dn Shoes.png ', '', 4, 1959.00, 1612.00, 1034.00, 1599.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(8, 'BIO76001', 'Nike Air Max Plus Drift Mens Shoes', 'Teal', '11', 'Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.', 'Nike Air Max Plus Drift Mens Shoes.png ', '', 1, 1919.00, 1125.00, 1523.00, 843.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(9, 'BYV92825', 'Air Jordan 1 Low Mens Shoes', 'Goldenrod', '6', 'Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. ', 'Air Jordan 1 Low Mens Shoes.png ', '', 4, 1423.00, 995.00, 1920.00, 943.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(10, 'IHR81933', 'Nike Air Max Excee Mens shoes', 'DodgerBlue', '2.5', 'Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.', 'Nike Air Max Excee Mens shoes.png ', '', 3, 1470.00, 1042.00, 1832.00, 1041.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(11, 'AZL30757', 'Nike Air Max Plus 3 Mens Shoes', 'DarkOrchid', '7.5', 'Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.', 'Nike Air Max Plus 3 Mens Shoes.png ', '', 2, 1591.00, 984.00, 1017.00, 1785.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(12, 'TER79524', 'Nike Dunk Low Retro SE Mens Shoes', 'Peru', '4', 'Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.', 'Nike Dunk Low Retro SE Mens Shoes.jpg ', '', 1, 874.00, 868.00, 1403.00, 1411.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(13, 'MOC12174', 'Nike Air Max 90 Mens Shoes(1)', 'SteelBlue', '12', 'Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.', 'Nike Air Max 90 Mens Shoes(1).png ', '', 3, 1830.00, 841.00, 1719.00, 1814.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(14, 'EUM28265', 'Nike Air Max 90 Mens Shoes', 'Crimson', '9.5', 'Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.', 'Nike Air Max 90 Mens Shoes.png ', '', 4, 1420.00, 1019.00, 1185.00, 1658.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(15, 'JLD71026', 'Nike Air Max 270 Mens Shoes', 'Indigo', '5', 'Men Running Blue Supernova 3 Running Shoes:  These reliable blue Supernova 3 shoes provide all the support and comfort you need to conquer any distance.', 'Nike Air Max 270 Mens Shoes.png ', '', 1, 819.00, 1763.00, 1077.00, 1654.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(16, 'RMV32591', 'Nike Air Max SYSTM Mens Shoes', 'Navy', '3.5', 'Men Running Blue Ultraboost Light Shoes:  Experience ultimate comfort and energy return with these lightweight blue Ultraboost shoes.', 'Nike Air Max SYSTM Mens Shoes.png ', '', 4, 1208.00, 1006.00, 991.00, 1878.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(17, 'XNN01557', 'Nike Dunk Low Mens Shoes(1)', 'Maroon', '8', 'Men Running Blue Ultrabounce Shoes:  The perfect mix of style and performance.  These blue Ultrabounce shoes offer a supportive fit and a sleek look to take you from run to brunch.', 'Nike Dunk Low Mens Shoes(1).png ', '', 2, 817.00, 1058.00, 1957.00, 1637.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(18, 'QDQ47138', 'Nike Dunk Low Mens Shoes', 'Sienna', '6.5', 'Men Running Green MASTER GLIDE SHOES:  Glide effortlessly through your run with these innovative green MASTER GLIDE shoes.  Designed for maximum energy return and efficiency.', 'Nike Dunk Low Mens Shoes.png ', '', 2, 1067.00, 942.00, 1339.00, 889.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(19, 'TWQ54144', 'Nike Air Force 1 07 Mens Shoes(1)', 'DarkGreen', '10.5', 'Men Running Green Ultraboost Light Shoes:  Another pair of lightweight green Ultraboosts  perfect for eco-conscious runners who don\'t compromise on performance.', 'Nike Air Force 1 07 Mens Shoes(1).png ', '', 2, 1122.00, 1358.00, 1306.00, 1636.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(20, 'BYO40796', 'Nike Air Humara Mens Shoes', 'Olive', '2', 'Men Running Grey MECH DUNE SHOES:  Inspired by rugged terrain  these grey MECH DUNE shoes offer superior traction and support for conquering any trail.', 'Nike Air Humara Mens Shoes.png ', '', 4, 1865.00, 1224.00, 1013.00, 967.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(21, 'DHM68036', 'Nike Air Max Dn Shoes(3)', 'Coral', '4.5', 'Men Running Grey SolderRun M:  Built to last  these durable grey SolderRun shoes can handle any running surface   keeping your feet comfortable and protected.', 'Nike Air Max Dn Shoes(3).png ', '', 3, 1469.00, 1404.00, 1857.00, 1635.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(22, 'FZE10203', 'Nike Air Max Dn Shoes(4)', 'Turquoise', '11.5', 'Men Running Turquoise RAYGUN SHOES:  Embrace your inner speed demon with these electrifying turquoise RAYGUN shoes.  Designed for fast-paced training and competition.', 'Nike Air Max Dn Shoes(4).png ', '', 3, 1818.00, 1064.00, 836.00, 1147.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(23, 'BWN85021', 'Nike Air Max Dn Shoes(5)', 'SlateGray', '7', 'Men Skateboarding White VS Pace 2.0 Shoes:  Shred the park in style with these versatile white VS Pace 2.0 shoes.  Offering great boardfeel and durability for any terrain.', 'Nike Air Max Dn Shoes(5).png ', '', 3, 1252.00, 1489.00, 1591.00, 1651.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(24, 'AHI55583', 'Nike Air Max Dn Shoes(6)', 'Lavender', '3', 'Men sportswear Grey Ultraboost 1.0 Shoes:  The OG of comfort.  These classic grey Ultraboost 1.0 shoes offer iconic style and unparalleled cushioning.', 'Nike Air Max Dn Shoes(6).png ', '', 4, 1901.00, 1565.00, 1026.00, 1312.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(25, 'AHK33954', 'Nike Cortez Mens Shoes', 'Magenta', '8.5', 'Men sportswear White Advantage Base Court Lifestyle Shoes:  Transition seamlessly from court to street with these stylish white Advantage shoes.  Comfortable and versatile for all-day wear.', 'Nike Cortez Mens Shoes.png ', '', 4, 1314.00, 1879.00, 1166.00, 1696.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(26, 'VLE04985', 'Nike Full Force Low Mens Shoes', 'LimeGreen', '5.5', 'Men sportswear White Grand Court Cloudfoam Comfort Shoes:  Cloud comfort meets classic design.  These white Grand Court shoes feature a cushioned Cloudfoam sole for ultimate comfort all day long.', 'Nike Full Force Low Mens Shoes.png ', '', 1, 1825.00, 1355.00, 1699.00, 1804.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(27, 'ADI29479', 'Nike SB Janoski+ Slip Skate Shoes', 'DarkRed', '6', 'Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.', 'Nike SB Janoski+ Slip Skate Shoes.png ', '', 2, 1627.00, 1990.00, 1003.00, 815.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(28, 'FTT28919', 'Nike Waffle Nav Mens Shoes', 'MediumPurple', '12', 'Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.', 'Nike Waffle Nav Mens Shoes.png ', '', 1, 1205.00, 1305.00, 1515.00, 1232.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(29, 'HKI21320', 'Nike Zoom Vomero 5 Mens Shoes', 'DarkViolet', '9', 'Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.', 'Nike Zoom Vomero 5 Mens Shoes.png ', '', 4, 989.00, 1567.00, 1306.00, 1901.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(30, 'VVM41291', 'Air Jordan 1 Low SE Mens Shoes(1)', 'DarkSlateBlue', '2.5', 'Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!', 'Air Jordan 1 Low SE Mens Shoes(1).png ', '', 3, 963.00, 1933.00, 1134.00, 1703.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(31, 'QYE12671', 'Jordan Stay Loyal 3 Mens shoes', 'LightSeaGreen', '4', 'Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.', 'Jordan Stay Loyal 3 Mens shoes.png ', '', 3, 1076.00, 1293.00, 1725.00, 1411.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(32, 'WIW88004', 'Jumpman MVP Mens Shoes', 'DarkKhaki', '10', 'Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.', 'Jumpman MVP Mens Shoes.png ', '', 3, 1459.00, 1670.00, 1571.00, 923.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(33, 'TTO01942', 'Nike Court Vision Low Mens Shoes', 'CornflowerBlue', '7.5', 'Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.', 'Nike Court Vision Low Mens Shoes.png ', '', 4, 810.00, 1249.00, 1642.00, 1047.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(34, 'VJC09517', 'Nike Juniper Trail 2 Mens Trail-Running Shoes', 'RebeccaPurple', '3.5', 'Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.', 'Nike Juniper Trail 2 Mens Trail-Running Shoes.png ', '', 4, 1714.00, 1899.00, 830.00, 1026.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(35, 'TJN10815', 'Nike Revolution 7 Mens Road Running Shoes', 'Tomato', '8', 'Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. ', 'Nike Revolution 7 Mens Road Running Shoes.png ', '', 1, 843.00, 1168.00, 1138.00, 1021.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(36, 'KEJ12138', 'Nike SB Janoski+ Slip Skate Shoes(1)', 'MediumSlateBlue', '6.5', 'Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.', 'Nike SB Janoski+ Slip Skate Shoes(1).png ', '', 1, 838.00, 1168.00, 889.00, 1510.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(37, 'QPN34240', 'Air Jordan 1 Low Womens Shoes', 'SandyBrown', '11', 'Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.', 'Air Jordan 1 Low Womens Shoes.png ', '', 1, 822.00, 1073.00, 1476.00, 979.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(38, 'HWC98240', 'Nike Air Force 1 07 Mens Shoe', 'MidnightBlue', '5', 'Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.', 'Nike Air Force 1 07 Mens Shoe.png ', '', 3, 1462.00, 816.00, 1116.00, 1086.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(39, 'PZC09934', 'Nike Air Force 1 07 Mens Shoes(2)', 'DarkTurquoise', '2', 'Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.', 'Nike Air Force 1 07 Mens Shoes(2).png ', '', 1, 1258.00, 1334.00, 1743.00, 1984.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(40, 'EKX76076', 'Nike Court Vision Low Mens Shoes(1)', 'PaleVioletRed', '4.5', 'Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.', 'Nike Court Vision Low Mens Shoes(1).png ', '', 3, 1528.00, 983.00, 1229.00, 1812.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(41, 'FYF90148', 'Nike Downshifter 12 Mens Road Running Shoes', 'LightCoral', '11.5', 'Men Running Blue Supernova 3 Running Shoes:  These reliable blue Supernova 3 shoes provide all the support and comfort you need to conquer any distance.', 'Nike Downshifter 12 Mens Road Running Shoes.png ', '', 3, 1992.00, 1900.00, 1533.00, 1147.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(42, 'TMC17249', 'Nike Revolution 6 Mens Road Running Shoes', 'LightCyan', '7', 'Men Running Blue Ultraboost Light Shoes:  Experience ultimate comfort and energy return with these lightweight blue Ultraboost shoes.', 'Nike Revolution 6 Mens Road Running Shoes.png ', '', 3, 1651.00, 1128.00, 1628.00, 1094.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(43, 'YIV08366', 'Nike Air Max Plus Mens Shoes', 'Firebrick', '6.742740999', 'Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.', 'Nike Air Max Plus Mens Shoes.png ', '', 1, 1485.00, 1393.00, 1490.00, 836.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(44, 'UWU96719', 'Nike Court Vision Low Next Nature Mens Shoes', 'DimGray', '6.740188531', 'Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.', 'Nike Court Vision Low Next Nature Mens Shoes.png ', '', 3, 1858.00, 897.00, 1242.00, 1536.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(45, 'PDG40537', 'Nike Legend Essential 3 Next Nature Mens Workout Shoes', 'DarkOrange', '6.737636064', 'Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.', 'Nike Legend Essential 3 Next Nature Mens Workout Shoes.png ', '', 2, 1905.00, 1438.00, 1401.00, 1644.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(46, 'BIY99841', 'Nike Killshot 2 Leather Shoes', 'MediumSeaGreen', '6.735083597', 'Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!', 'Nike Killshot 2 Leather Shoes.png ', '', 1, 881.00, 1354.00, 1312.00, 1264.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(47, 'HZN44797', 'Jordan Roam Slides', 'RoyalBlue', '6.732531129', 'Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.', 'Jordan Roam Slides.png ', '', 3, 1954.00, 1559.00, 1778.00, 1283.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(48, 'WPP66880', 'Nike Air Dunk Low Jumbo Mens Shoes', 'Fuchsia', '6.729978662', 'Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.', 'Nike Air Dunk Low Jumbo Mens Shoes.png ', '', 4, 1954.00, 1191.00, 1004.00, 1366.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(49, 'YOD23502', 'Nike Air Max Alpha Trainer 5 Mens Workout Shoes', 'Chocolate', '6.727426195', 'Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.', 'Nike Air Max Alpha Trainer 5 Mens Workout Shoes.png ', '', 4, 929.00, 1375.00, 1446.00, 1764.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(50, 'BIO76002', 'Nike Downshifter 12 Mens Road Running Shoes(1)', 'Teal', '6.724873727', 'Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.', 'Nike Downshifter 12 Mens Road Running Shoes(1).png ', '', 3, 914.00, 886.00, 1425.00, 1789.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(51, 'BYV92826', 'Nike Dunk High Retro Mens Shoe', 'Goldenrod', '6.72232126', 'Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. ', 'Nike Dunk High Retro Mens Shoe.jpg ', '', 4, 1885.00, 1202.00, 1137.00, 1419.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(52, 'IHR81934', 'Nike SB Force 58 Skate Shoes', 'DodgerBlue', '6.719768792', 'Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.', 'Nike SB Force 58 Skate Shoes.png ', '', 4, 1397.00, 1819.00, 1393.00, 1918.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(53, 'AZL30758', 'Air Jordan 1 Low G Golf Shoes', 'DarkOrchid', '6.717216325', 'Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.', 'Air Jordan 1 Low G Golf Shoes.png ', '', 1, 894.00, 1506.00, 832.00, 1995.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(54, 'TER79525', 'Air Jordan 1 Low Mens Shoes(1)', 'Peru', '6.714663858', 'Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.', 'Air Jordan 1 Low Mens Shoes(1).png ', '', 4, 1235.00, 1164.00, 1883.00, 1640.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(55, 'MOC12175', 'Air Jordan 1 Mid Mens Shoes(1)', 'SteelBlue', '6.71211139', 'Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.', 'Air Jordan 1 Mid Mens Shoes(1).png ', '', 3, 860.00, 1167.00, 1806.00, 1979.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0),
(56, 'EUM28266', 'Air Jordan 1 Mid Mens Shoes', 'Crimson', '6.709558923', 'Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.', 'Air Jordan 1 Mid Mens Shoes.png ', '', 4, 1828.00, 1346.00, 1848.00, 1584.00, 0, 0.00, 0, '2024-03-28', '2024-03-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ccc_category`
--

CREATE TABLE `ccc_category` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ccc_category`
--

INSERT INTO `ccc_category` (`cat_id`, `name`) VALUES
(1, 'Bar & Game Room'),
(3, 'Outdoor'),
(4, 'Decor'),
(5, 'Dining & Kitchen'),
(6, 'Office'),
(7, 'Lighting'),
(8, 'Mattresses');

-- --------------------------------------------------------

--
-- Table structure for table `ccc_license_request`
--

CREATE TABLE `ccc_license_request` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `license_type` varchar(255) NOT NULL,
  `total_rate` int(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ccc_license_request`
--

INSERT INTO `ccc_license_request` (`id`, `session_id`, `user_name`, `state`, `license_type`, `total_rate`, `created_at`) VALUES
(2, 0, 'mardav', 'Gujarat', 'LL', 0, '2024-03-07'),
(3, 0, 'mardav', 'Gujarat', 'LL', 0, '2024-03-07'),
(4, 0, 'Mardav', 'Delhi', 'DL', 0, '2024-03-07'),
(5, 0, 'Mardav', 'Delhi', 'DL', 0, '2024-03-07'),
(6, 0, 'Mardav', 'Delhi', 'DL', 0, '2024-03-07'),
(7, 0, 'Mardav', 'Delhi', 'DL', 0, '2024-03-07'),
(8, 0, 'mardav', 'Gujarat', 'DL', 0, '2024-03-07'),
(9, 0, 'Mardav', 'Gujarat', 'DL', 0, '2024-03-07'),
(10, 4, 'mardav', 'Gujarat', 'DL', 0, '2024-03-07'),
(11, 7, 'Mardav', 'Gujarat', 'DL', 0, '2024-03-07'),
(12, 1, 'Mardav', 'Gujarat', 'LL,DL', 0, '2024-03-07'),
(13, 9, 'Mardav', 'Gujarat', 'LL', 0, '2024-03-07'),
(14, 7, 'Mardav', 'Gujarat', 'LL,DL', 0, '2024-03-07'),
(15, 3, 'Mardav', 'Gujarat', 'LL,DL', 0, '2024-03-07'),
(16, 4, 'Mardav', 'Gujarat', 'LL,DL', 0, '2024-03-07'),
(17, 0, 'Mardav', 'Gujarat', 'LL,DL', 0, '2024-03-07'),
(18, 7, 'Mardav', 'Gujarat', 'LL', 0, '2024-03-07'),
(19, 7, 'mj', 'Gujarat', 'LL,DL', 300, '2024-03-07'),
(20, 5, 'mardav', 'Gujarat', 'LL', 100, '2024-03-07'),
(21, 6, 'mardav', 'Maharashtra', 'DL', 210, '2024-03-07'),
(22, 6, 'Mardav', 'Gujarat', 'DL', 0, '2024-03-07'),
(23, 8, 'mardav', 'Rajasthan', 'LL', 120, '2024-03-07'),
(24, 3, 'mardav', 'Gujarat', '', 0, '2024-03-07'),
(25, 8, 'mardav', 'Delhi', 'LL', 130, '2024-03-07'),
(26, 9, 'mardav', 'Delhi', 'DL', 230, '2024-03-07'),
(27, 3, 'Mardav', 'Maharashtra', 'LL,DL', 320, '2024-03-07'),
(28, 2, 'mj', 'Maharashtra', 'LL,DL', 320, '2024-03-07'),
(29, 2, 'mardav', 'Delhi', 'LL', 130, '2024-03-07'),
(30, 2, 'Mardav', 'Delhi', 'LL', 130, '2024-03-07'),
(31, 5, 'Mardav', 'Rajasthan', 'LL,DL', 340, '2024-03-07'),
(32, 0, 'Mardav', 'Gujarat', 'DL', 200, '2024-03-07'),
(33, 0, 'Mardav', 'Delhi', 'LL', 130, '2024-03-07'),
(34, 0, 'Mardav', 'Gujarat', 'LL', 100, '2024-03-07'),
(35, 0, 'Mardav', 'Delhi', 'LL', 130, '2024-03-07'),
(36, 0, 'Mardav', 'Gujarat', 'DL', 200, '2024-03-07'),
(37, 0, 'Marsada', 'Delhi', 'LL', 130, '2024-03-07'),
(38, 0, 'Marsada', 'Delhi', 'LL', 130, '2024-03-07'),
(39, 0, 'Marsada', 'Delhi', 'LL', 130, '2024-03-07'),
(40, 7, 'Marsh', 'Maharashtra', 'DL', 210, '2024-03-07'),
(41, 7, 'Mars', 'Maharashtra', 'LL,DL', 320, '2024-03-07'),
(42, 10, 'ccc', 'Delhi', 'LL,DL', 360, '2024-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `ccc_mfr`
--

CREATE TABLE `ccc_mfr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ccc_mfr`
--

INSERT INTO `ccc_mfr` (`id`, `name`) VALUES
(1, 'Ashley'),
(3, 'ACME'),
(4, 'ART');

-- --------------------------------------------------------

--
-- Table structure for table `ccc_product`
--

CREATE TABLE `ccc_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `sku` varchar(30) NOT NULL,
  `product_type` varchar(8) NOT NULL,
  `category` varchar(18) NOT NULL,
  `manufact_cost` int(11) NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ccc_product`
--

INSERT INTO `ccc_product` (`product_id`, `product_name`, `sku`, `product_type`, `category`, `manufact_cost`, `shipping_cost`, `total_cost`, `price`, `status`, `created_at`, `updated_at`) VALUES
(3, 'RGB', 'bckds4631', 'simple', 'dining_kitchen', 45, 45, 50, 45, 'enabled', '2024-01-24', '2024-02-05 04:40:14'),
(4, 'Pen', '4512aser89', 'simple', 'lighting', 10, 3, 150, 15, 'enabled', '2024-02-01', '2024-02-05 05:51:45'),
(5, 'Mardav', '17022003', 'simple', 'dining_kitchen', 5353, 5345345, 54345, 534345, 'enabled', '2024-02-12', '2024-02-12 05:32:50'),
(6, 'fgre', ' 34534', 'simple', 'living_Room', 43534, 5645, 0, 0, '', '2024-02-12', '2024-02-12 11:12:23'),
(7, 'hggf', ' 99564', 'simple', 'lighting', 767765, 76556, 56756, 0, '', '2024-02-12', '2024-02-12 11:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `ccc_state`
--

CREATE TABLE `ccc_state` (
  `id` int(11) NOT NULL,
  `mfr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ccc_state`
--

INSERT INTO `ccc_state` (`id`, `mfr_id`, `name`) VALUES
(1, 1, 'Gujarat'),
(2, 1, 'Mumbai'),
(3, 3, 'Surat'),
(4, 4, 'Delhi'),
(5, 4, 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `ccc_statewise_license_rate`
--

CREATE TABLE `ccc_statewise_license_rate` (
  `id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `license_type` varchar(100) NOT NULL,
  `rate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ccc_statewise_license_rate`
--

INSERT INTO `ccc_statewise_license_rate` (`id`, `state`, `license_type`, `rate`) VALUES
(1, 'Gujarat', 'LL', 100),
(2, 'Gujarat', 'DL', 200),
(3, 'Maharastra', 'LL', 110),
(4, 'Maharastra', 'DL', 210),
(5, 'Rajasthan', 'LL', 120),
(6, 'Rajasthan', 'DL', 220),
(7, 'Delhi', 'LL', 130),
(8, 'Delhi', 'DL', 230);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_email`, `first_name`, `last_name`, `password`) VALUES
(1, 'mardav@gmail.com', 'Mardav', 'Parmar', '$2y$10$Y75IdPZay8NDaZ7.4wxRd.FPGjDqFUqsrJXHtMGIWcTMNOwDPzMSy'),
(2, 'marsh@gmail.com', 'Marsh', 'Parmar', '$2y$10$XfTlCX/O4eWiFMCBfA1WCu14S8JO.aS.0LyFNolMLn/Rfj.JM/6T.'),
(4, 'shivengohil@gmail.com', 'shiven', 'gohil', '$2y$10$W0V01YXRxT9FNuKSBgZgIuzXsae6krbKryrRf69W7irT6XxINGK26'),
(5, 'maddy@gmail.com', 'maddy', 'rocks', '$2y$10$26KNcnYMmq5/xnbNjHk3DuEsjdBDBAm784YG9sT45Fl0V6NdQ/y6O'),
(14, 'marsh123@gmail.com', 'Marsh', 'Parmar', '$2y$10$k7a2hFGTaWFvgGldJ9en2OFrv1VRCfF7Sfh6h5F1zsWOrxJsvw3Da'),
(17, 'mardav123@gmail.com', 'Mardav', 'Parmar', '$2y$10$VB9H2e2mvj1viecDUAMjV.splxBuruGdoniD5Fwrn.2nmAT7JLz0e'),
(18, 'marsh17@gmail.com', 'marsh', 'marsh', '$2y$10$TTPkd3aDp8ozdz7/6YIfCOreYWZjmD4HwfgpwiXV3hq/X2OHUjBqm');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_region` int(11) NOT NULL,
  `billing_country` int(11) NOT NULL,
  `billing_phone` varchar(255) NOT NULL,
  `billing_postcode` int(11) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_region` int(11) NOT NULL,
  `shipping_country` int(11) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_postcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `customer_id`, `email`, `billing_address`, `billing_city`, `billing_region`, `billing_country`, `billing_phone`, `billing_postcode`, `shipping_address`, `shipping_city`, `shipping_region`, `shipping_country`, `shipping_phone`, `shipping_postcode`) VALUES
(1, 1, '', '123 Main St', 'Anytown', 1, 1, '1234567890', 12345, '456 Elm St', 'Anytown', 1, 1, '0987654321', 0),
(2, 1, '', '789 Oak St', 'Othertown', 2, 1, '0987654321', 54321, '321 Maple St', 'Othertown', 2, 1, '1234567890', 0),
(3, 3, 'maddy@gmail.com', '567 Pine St', 'Somewhere', 3, 1, '1357924680', 67890, '567 Pine St', 'Somewhere', 3, 1, '1357924680', 67890),
(4, 5, '', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(5, 14, '', '890 Cherry St', 'Othertown', 2, 1, '0123456789', 65432, '234 Spruce St', 'Othertown', 2, 1, '9876543210', 0),
(6, 17, '', '678 Oak St', 'Somewhere', 3, 0, '2468013579', 78901, '890 Pine St', 'Somewhere', 3, 1, '1357924680', 0),
(7, 17, '', '3456 Elm St', 'Anytown', 1, 1, '1234567890', 34567, '789 Walnut St', 'Anytown', 1, 1, '0987654321', 0),
(8, 18, '', '901 Maple St', 'Othertown', 2, 1, '0987654321', 76543, '456 Cherry St', 'Othertown', 2, 1, '1234567890', 0),
(9, 18, '', '789 Birch St', 'Somewhere', 3, 1, '1357924680', 89012, '234 Cedar St', 'Somewhere', 3, 1, '2468013579', 0),
(10, 17, '', 'Behind Rajput Samaj Wadi, Krishna Marble Road ,Junavas Madhapar', 'BHUJ', 12, 91, '7096329756', 370001, 'Behind Rajput Samaj Wadi, Krishna Marble Road ,Junavas Madhapar', 'BHUJ', 12, 91, '7096329756', 370001),
(11, 3, 'maddy@gmail.com', 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010, 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010),
(12, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010, 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010),
(14, 5, 'maddy@gmail.com', ' B/H, Itc Narmada, B-305, The First, Vastrapur, Ahmedabad, Gujarat 380015', 'Ahmedabad', 1, 0, '7096329756', 380015, 'Savaj PG, Nehrunagar Circle, Near Tagor Park.', 'Ahmedabad', 1, 0, '7096329756', 380015);

-- --------------------------------------------------------

--
-- Table structure for table `import_data`
--

CREATE TABLE `import_data` (
  `import_id` int(11) NOT NULL,
  `json_data` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `import_data`
--

INSERT INTO `import_data` (`import_id`, `json_data`, `status`) VALUES
(1, '{\"sku\":\"YIV08365\",\"name\":\"Air Jordan 1 Low SE Mens Shoes\",\"color\":\"Firebrick\",\"size\":\"7\",\"description\":\"Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.\",\"image_link\":\"Air Jordan 1 Low SE Mens Shoes.png \",\"category_id\":\"3\",\"price\":\"887\",\"mfr_cost\":\"1969\",\"shipping_cost\":\"1974\",\"total_cost\":\"1582\"}', 1),
(2, '{\"sku\":\"UWU96718\",\"name\":\"Nike Air Force 1 07 Mens Shoes\",\"color\":\"DimGray\",\"size\":\"4.5\",\"description\":\"Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.\",\"image_link\":\"Nike Air Force 1 07 Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"983\",\"mfr_cost\":\"1408\",\"shipping_cost\":\"1423\",\"total_cost\":\"1899\"}', 1),
(3, '{\"sku\":\"PDG40536\",\"name\":\"Nike Air Max Dn Mens Shoes(1)\",\"color\":\"DarkOrange\",\"size\":\"9\",\"description\":\"Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.\",\"image_link\":\"Nike Air Max Dn Mens Shoes(1).png \",\"category_id\":\"1\",\"price\":\"1250\",\"mfr_cost\":\"984\",\"shipping_cost\":\"991\",\"total_cost\":\"1520\"}', 1),
(4, '{\"sku\":\"BIY99840\",\"name\":\"Nike Air Max Dn Mens Shoes\",\"color\":\"MediumSeaGreen\",\"size\":\"3\",\"description\":\"Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!\",\"image_link\":\"Nike Air Max Dn Mens Shoes.png \",\"category_id\":\"2\",\"price\":\"895\",\"mfr_cost\":\"1365\",\"shipping_cost\":\"900\",\"total_cost\":\"1175\"}', 1),
(5, '{\"sku\":\"HZN44796\",\"name\":\"Nike Air Max Dn Shoes(1)\",\"color\":\"RoyalBlue\",\"size\":\"10\",\"description\":\"Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.\",\"image_link\":\"Nike Air Max Dn Shoes(1).png \",\"category_id\":\"2\",\"price\":\"979\",\"mfr_cost\":\"1453\",\"shipping_cost\":\"1092\",\"total_cost\":\"1856\"}', 1),
(6, '{\"sku\":\"WPP66879\",\"name\":\"Nike Air Max Dn Shoes(2)\",\"color\":\"Fuchsia\",\"size\":\"5.5\",\"description\":\"Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.\",\"image_link\":\"Nike Air Max Dn Shoes(2).png \",\"category_id\":\"2\",\"price\":\"1807\",\"mfr_cost\":\"938\",\"shipping_cost\":\"1886\",\"total_cost\":\"1316\"}', 1),
(7, '{\"sku\":\"YOD23501\",\"name\":\"Nike Air Max Dn Shoes\",\"color\":\"Chocolate\",\"size\":\"8.5\",\"description\":\"Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.\",\"image_link\":\"Nike Air Max Dn Shoes.png \",\"category_id\":\"4\",\"price\":\"1959\",\"mfr_cost\":\"1612\",\"shipping_cost\":\"1034\",\"total_cost\":\"1599\"}', 1),
(8, '{\"sku\":\"BIO76001\",\"name\":\"Nike Air Max Plus Drift Mens Shoes\",\"color\":\"Teal\",\"size\":\"11\",\"description\":\"Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.\",\"image_link\":\"Nike Air Max Plus Drift Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"1919\",\"mfr_cost\":\"1125\",\"shipping_cost\":\"1523\",\"total_cost\":\"843\"}', 1),
(9, '{\"sku\":\"BYV92825\",\"name\":\"Air Jordan 1 Low Mens Shoes\",\"color\":\"Goldenrod\",\"size\":\"6\",\"description\":\"Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. \",\"image_link\":\"Air Jordan 1 Low Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1423\",\"mfr_cost\":\"995\",\"shipping_cost\":\"1920\",\"total_cost\":\"943\"}', 1),
(10, '{\"sku\":\"IHR81933\",\"name\":\"Nike Air Max Excee Mens shoes\",\"color\":\"DodgerBlue\",\"size\":\"2.5\",\"description\":\"Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.\",\"image_link\":\"Nike Air Max Excee Mens shoes.png \",\"category_id\":\"3\",\"price\":\"1470\",\"mfr_cost\":\"1042\",\"shipping_cost\":\"1832\",\"total_cost\":\"1041\"}', 1),
(11, '{\"sku\":\"AZL30757\",\"name\":\"Nike Air Max Plus 3 Mens Shoes\",\"color\":\"DarkOrchid\",\"size\":\"7.5\",\"description\":\"Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.\",\"image_link\":\"Nike Air Max Plus 3 Mens Shoes.png \",\"category_id\":\"2\",\"price\":\"1591\",\"mfr_cost\":\"984\",\"shipping_cost\":\"1017\",\"total_cost\":\"1785\"}', 1),
(12, '{\"sku\":\"TER79524\",\"name\":\"Nike Dunk Low Retro SE Mens Shoes\",\"color\":\"Peru\",\"size\":\"4\",\"description\":\"Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.\",\"image_link\":\"Nike Dunk Low Retro SE Mens Shoes.jpg \",\"category_id\":\"1\",\"price\":\"874\",\"mfr_cost\":\"868\",\"shipping_cost\":\"1403\",\"total_cost\":\"1411\"}', 1),
(13, '{\"sku\":\"MOC12174\",\"name\":\"Nike Air Max 90 Mens Shoes(1)\",\"color\":\"SteelBlue\",\"size\":\"12\",\"description\":\"Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.\",\"image_link\":\"Nike Air Max 90 Mens Shoes(1).png \",\"category_id\":\"3\",\"price\":\"1830\",\"mfr_cost\":\"841\",\"shipping_cost\":\"1719\",\"total_cost\":\"1814\"}', 1),
(14, '{\"sku\":\"EUM28265\",\"name\":\"Nike Air Max 90 Mens Shoes\",\"color\":\"Crimson\",\"size\":\"9.5\",\"description\":\"Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.\",\"image_link\":\"Nike Air Max 90 Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1420\",\"mfr_cost\":\"1019\",\"shipping_cost\":\"1185\",\"total_cost\":\"1658\"}', 1),
(15, '{\"sku\":\"JLD71026\",\"name\":\"Nike Air Max 270 Mens Shoes\",\"color\":\"Indigo\",\"size\":\"5\",\"description\":\"Men Running Blue Supernova 3 Running Shoes:  These reliable blue Supernova 3 shoes provide all the support and comfort you need to conquer any distance.\",\"image_link\":\"Nike Air Max 270 Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"819\",\"mfr_cost\":\"1763\",\"shipping_cost\":\"1077\",\"total_cost\":\"1654\"}', 1),
(16, '{\"sku\":\"RMV32591\",\"name\":\"Nike Air Max SYSTM Mens Shoes\",\"color\":\"Navy\",\"size\":\"3.5\",\"description\":\"Men Running Blue Ultraboost Light Shoes:  Experience ultimate comfort and energy return with these lightweight blue Ultraboost shoes.\",\"image_link\":\"Nike Air Max SYSTM Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1208\",\"mfr_cost\":\"1006\",\"shipping_cost\":\"991\",\"total_cost\":\"1878\"}', 1),
(17, '{\"sku\":\"XNN01557\",\"name\":\"Nike Dunk Low Mens Shoes(1)\",\"color\":\"Maroon\",\"size\":\"8\",\"description\":\"Men Running Blue Ultrabounce Shoes:  The perfect mix of style and performance.  These blue Ultrabounce shoes offer a supportive fit and a sleek look to take you from run to brunch.\",\"image_link\":\"Nike Dunk Low Mens Shoes(1).png \",\"category_id\":\"2\",\"price\":\"817\",\"mfr_cost\":\"1058\",\"shipping_cost\":\"1957\",\"total_cost\":\"1637\"}', 1),
(18, '{\"sku\":\"QDQ47138\",\"name\":\"Nike Dunk Low Mens Shoes\",\"color\":\"Sienna\",\"size\":\"6.5\",\"description\":\"Men Running Green MASTER GLIDE SHOES:  Glide effortlessly through your run with these innovative green MASTER GLIDE shoes.  Designed for maximum energy return and efficiency.\",\"image_link\":\"Nike Dunk Low Mens Shoes.png \",\"category_id\":\"2\",\"price\":\"1067\",\"mfr_cost\":\"942\",\"shipping_cost\":\"1339\",\"total_cost\":\"889\"}', 1),
(19, '{\"sku\":\"TWQ54144\",\"name\":\"Nike Air Force 1 07 Mens Shoes(1)\",\"color\":\"DarkGreen\",\"size\":\"10.5\",\"description\":\"Men Running Green Ultraboost Light Shoes:  Another pair of lightweight green Ultraboosts  perfect for eco-conscious runners who don\'t compromise on performance.\",\"image_link\":\"Nike Air Force 1 07 Mens Shoes(1).png \",\"category_id\":\"2\",\"price\":\"1122\",\"mfr_cost\":\"1358\",\"shipping_cost\":\"1306\",\"total_cost\":\"1636\"}', 1),
(20, '{\"sku\":\"BYO40796\",\"name\":\"Nike Air Humara Mens Shoes\",\"color\":\"Olive\",\"size\":\"2\",\"description\":\"Men Running Grey MECH DUNE SHOES:  Inspired by rugged terrain  these grey MECH DUNE shoes offer superior traction and support for conquering any trail.\",\"image_link\":\"Nike Air Humara Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1865\",\"mfr_cost\":\"1224\",\"shipping_cost\":\"1013\",\"total_cost\":\"967\"}', 1),
(21, '{\"sku\":\"DHM68036\",\"name\":\"Nike Air Max Dn Shoes(3)\",\"color\":\"Coral\",\"size\":\"4.5\",\"description\":\"Men Running Grey SolderRun M:  Built to last  these durable grey SolderRun shoes can handle any running surface   keeping your feet comfortable and protected.\",\"image_link\":\"Nike Air Max Dn Shoes(3).png \",\"category_id\":\"3\",\"price\":\"1469\",\"mfr_cost\":\"1404\",\"shipping_cost\":\"1857\",\"total_cost\":\"1635\"}', 1),
(22, '{\"sku\":\"FZE10203\",\"name\":\"Nike Air Max Dn Shoes(4)\",\"color\":\"Turquoise\",\"size\":\"11.5\",\"description\":\"Men Running Turquoise RAYGUN SHOES:  Embrace your inner speed demon with these electrifying turquoise RAYGUN shoes.  Designed for fast-paced training and competition.\",\"image_link\":\"Nike Air Max Dn Shoes(4).png \",\"category_id\":\"3\",\"price\":\"1818\",\"mfr_cost\":\"1064\",\"shipping_cost\":\"836\",\"total_cost\":\"1147\"}', 1),
(23, '{\"sku\":\"BWN85021\",\"name\":\"Nike Air Max Dn Shoes(5)\",\"color\":\"SlateGray\",\"size\":\"7\",\"description\":\"Men Skateboarding White VS Pace 2.0 Shoes:  Shred the park in style with these versatile white VS Pace 2.0 shoes.  Offering great boardfeel and durability for any terrain.\",\"image_link\":\"Nike Air Max Dn Shoes(5).png \",\"category_id\":\"3\",\"price\":\"1252\",\"mfr_cost\":\"1489\",\"shipping_cost\":\"1591\",\"total_cost\":\"1651\"}', 1),
(24, '{\"sku\":\"AHI55583\",\"name\":\"Nike Air Max Dn Shoes(6)\",\"color\":\"Lavender\",\"size\":\"3\",\"description\":\"Men sportswear Grey Ultraboost 1.0 Shoes:  The OG of comfort.  These classic grey Ultraboost 1.0 shoes offer iconic style and unparalleled cushioning.\",\"image_link\":\"Nike Air Max Dn Shoes(6).png \",\"category_id\":\"4\",\"price\":\"1901\",\"mfr_cost\":\"1565\",\"shipping_cost\":\"1026\",\"total_cost\":\"1312\"}', 1),
(25, '{\"sku\":\"AHK33954\",\"name\":\"Nike Cortez Mens Shoes\",\"color\":\"Magenta\",\"size\":\"8.5\",\"description\":\"Men sportswear White Advantage Base Court Lifestyle Shoes:  Transition seamlessly from court to street with these stylish white Advantage shoes.  Comfortable and versatile for all-day wear.\",\"image_link\":\"Nike Cortez Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1314\",\"mfr_cost\":\"1879\",\"shipping_cost\":\"1166\",\"total_cost\":\"1696\"}', 1),
(26, '{\"sku\":\"VLE04985\",\"name\":\"Nike Full Force Low Mens Shoes\",\"color\":\"LimeGreen\",\"size\":\"5.5\",\"description\":\"Men sportswear White Grand Court Cloudfoam Comfort Shoes:  Cloud comfort meets classic design.  These white Grand Court shoes feature a cushioned Cloudfoam sole for ultimate comfort all day long.\",\"image_link\":\"Nike Full Force Low Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"1825\",\"mfr_cost\":\"1355\",\"shipping_cost\":\"1699\",\"total_cost\":\"1804\"}', 1),
(27, '{\"sku\":\"ADI29479\",\"name\":\"Nike SB Janoski+ Slip Skate Shoes\",\"color\":\"DarkRed\",\"size\":\"6\",\"description\":\"Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.\",\"image_link\":\"Nike SB Janoski+ Slip Skate Shoes.png \",\"category_id\":\"2\",\"price\":\"1627\",\"mfr_cost\":\"1990\",\"shipping_cost\":\"1003\",\"total_cost\":\"815\"}', 1),
(28, '{\"sku\":\"FTT28919\",\"name\":\"Nike Waffle Nav Mens Shoes\",\"color\":\"MediumPurple\",\"size\":\"12\",\"description\":\"Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.\",\"image_link\":\"Nike Waffle Nav Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"1205\",\"mfr_cost\":\"1305\",\"shipping_cost\":\"1515\",\"total_cost\":\"1232\"}', 1),
(29, '{\"sku\":\"HKI21320\",\"name\":\"Nike Zoom Vomero 5 Mens Shoes\",\"color\":\"DarkViolet\",\"size\":\"9\",\"description\":\"Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.\",\"image_link\":\"Nike Zoom Vomero 5 Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"989\",\"mfr_cost\":\"1567\",\"shipping_cost\":\"1306\",\"total_cost\":\"1901\"}', 1),
(30, '{\"sku\":\"VVM41291\",\"name\":\"Air Jordan 1 Low SE Mens Shoes(1)\",\"color\":\"DarkSlateBlue\",\"size\":\"2.5\",\"description\":\"Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!\",\"image_link\":\"Air Jordan 1 Low SE Mens Shoes(1).png \",\"category_id\":\"3\",\"price\":\"963\",\"mfr_cost\":\"1933\",\"shipping_cost\":\"1134\",\"total_cost\":\"1703\"}', 1),
(31, '{\"sku\":\"QYE12671\",\"name\":\"Jordan Stay Loyal 3 Mens shoes\",\"color\":\"LightSeaGreen\",\"size\":\"4\",\"description\":\"Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.\",\"image_link\":\"Jordan Stay Loyal 3 Mens shoes.png \",\"category_id\":\"3\",\"price\":\"1076\",\"mfr_cost\":\"1293\",\"shipping_cost\":\"1725\",\"total_cost\":\"1411\"}', 1),
(32, '{\"sku\":\"WIW88004\",\"name\":\"Jumpman MVP Mens Shoes\",\"color\":\"DarkKhaki\",\"size\":\"10\",\"description\":\"Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.\",\"image_link\":\"Jumpman MVP Mens Shoes.png \",\"category_id\":\"3\",\"price\":\"1459\",\"mfr_cost\":\"1670\",\"shipping_cost\":\"1571\",\"total_cost\":\"923\"}', 1),
(33, '{\"sku\":\"TTO01942\",\"name\":\"Nike Court Vision Low Mens Shoes\",\"color\":\"CornflowerBlue\",\"size\":\"7.5\",\"description\":\"Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.\",\"image_link\":\"Nike Court Vision Low Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"810\",\"mfr_cost\":\"1249\",\"shipping_cost\":\"1642\",\"total_cost\":\"1047\"}', 1),
(34, '{\"sku\":\"VJC09517\",\"name\":\"Nike Juniper Trail 2 Mens Trail-Running Shoes\",\"color\":\"RebeccaPurple\",\"size\":\"3.5\",\"description\":\"Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.\",\"image_link\":\"Nike Juniper Trail 2 Mens Trail-Running Shoes.png \",\"category_id\":\"4\",\"price\":\"1714\",\"mfr_cost\":\"1899\",\"shipping_cost\":\"830\",\"total_cost\":\"1026\"}', 1),
(35, '{\"sku\":\"TJN10815\",\"name\":\"Nike Revolution 7 Mens Road Running Shoes\",\"color\":\"Tomato\",\"size\":\"8\",\"description\":\"Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. \",\"image_link\":\"Nike Revolution 7 Mens Road Running Shoes.png \",\"category_id\":\"1\",\"price\":\"843\",\"mfr_cost\":\"1168\",\"shipping_cost\":\"1138\",\"total_cost\":\"1021\"}', 1),
(36, '{\"sku\":\"KEJ12138\",\"name\":\"Nike SB Janoski+ Slip Skate Shoes(1)\",\"color\":\"MediumSlateBlue\",\"size\":\"6.5\",\"description\":\"Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.\",\"image_link\":\"Nike SB Janoski+ Slip Skate Shoes(1).png \",\"category_id\":\"1\",\"price\":\"838\",\"mfr_cost\":\"1168\",\"shipping_cost\":\"889\",\"total_cost\":\"1510\"}', 1),
(37, '{\"sku\":\"QPN34240\",\"name\":\"Air Jordan 1 Low Womens Shoes\",\"color\":\"SandyBrown\",\"size\":\"11\",\"description\":\"Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.\",\"image_link\":\"Air Jordan 1 Low Womens Shoes.png \",\"category_id\":\"1\",\"price\":\"822\",\"mfr_cost\":\"1073\",\"shipping_cost\":\"1476\",\"total_cost\":\"979\"}', 1),
(38, '{\"sku\":\"HWC98240\",\"name\":\"Nike Air Force 1 07 Mens Shoe\",\"color\":\"MidnightBlue\",\"size\":\"5\",\"description\":\"Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.\",\"image_link\":\"Nike Air Force 1 07 Mens Shoe.png \",\"category_id\":\"3\",\"price\":\"1462\",\"mfr_cost\":\"816\",\"shipping_cost\":\"1116\",\"total_cost\":\"1086\"}', 1),
(39, '{\"sku\":\"PZC09934\",\"name\":\"Nike Air Force 1 07 Mens Shoes(2)\",\"color\":\"DarkTurquoise\",\"size\":\"2\",\"description\":\"Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.\",\"image_link\":\"Nike Air Force 1 07 Mens Shoes(2).png \",\"category_id\":\"1\",\"price\":\"1258\",\"mfr_cost\":\"1334\",\"shipping_cost\":\"1743\",\"total_cost\":\"1984\"}', 1),
(40, '{\"sku\":\"EKX76076\",\"name\":\"Nike Court Vision Low Mens Shoes(1)\",\"color\":\"PaleVioletRed\",\"size\":\"4.5\",\"description\":\"Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.\",\"image_link\":\"Nike Court Vision Low Mens Shoes(1).png \",\"category_id\":\"3\",\"price\":\"1528\",\"mfr_cost\":\"983\",\"shipping_cost\":\"1229\",\"total_cost\":\"1812\"}', 1),
(41, '{\"sku\":\"FYF90148\",\"name\":\"Nike Downshifter 12 Mens Road Running Shoes\",\"color\":\"LightCoral\",\"size\":\"11.5\",\"description\":\"Men Running Blue Supernova 3 Running Shoes:  These reliable blue Supernova 3 shoes provide all the support and comfort you need to conquer any distance.\",\"image_link\":\"Nike Downshifter 12 Mens Road Running Shoes.png \",\"category_id\":\"3\",\"price\":\"1992\",\"mfr_cost\":\"1900\",\"shipping_cost\":\"1533\",\"total_cost\":\"1147\"}', 1),
(42, '{\"sku\":\"TMC17249\",\"name\":\"Nike Revolution 6 Mens Road Running Shoes\",\"color\":\"LightCyan\",\"size\":\"7\",\"description\":\"Men Running Blue Ultraboost Light Shoes:  Experience ultimate comfort and energy return with these lightweight blue Ultraboost shoes.\",\"image_link\":\"Nike Revolution 6 Mens Road Running Shoes.png \",\"category_id\":\"3\",\"price\":\"1651\",\"mfr_cost\":\"1128\",\"shipping_cost\":\"1628\",\"total_cost\":\"1094\"}', 1),
(43, '{\"sku\":\"YIV08366\",\"name\":\"Nike Air Max Plus Mens Shoes\",\"color\":\"Firebrick\",\"size\":\"6.742740999\",\"description\":\"Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.\",\"image_link\":\"Nike Air Max Plus Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"1485\",\"mfr_cost\":\"1393\",\"shipping_cost\":\"1490\",\"total_cost\":\"836\"}', 1),
(44, '{\"sku\":\"UWU96719\",\"name\":\"Nike Court Vision Low Next Nature Mens Shoes\",\"color\":\"DimGray\",\"size\":\"6.740188531\",\"description\":\"Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.\",\"image_link\":\"Nike Court Vision Low Next Nature Mens Shoes.png \",\"category_id\":\"3\",\"price\":\"1858\",\"mfr_cost\":\"897\",\"shipping_cost\":\"1242\",\"total_cost\":\"1536\"}', 1),
(45, '{\"sku\":\"PDG40537\",\"name\":\"Nike Legend Essential 3 Next Nature Mens Workout Shoes\",\"color\":\"DarkOrange\",\"size\":\"6.737636064\",\"description\":\"Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.\",\"image_link\":\"Nike Legend Essential 3 Next Nature Mens Workout Shoes.png \",\"category_id\":\"2\",\"price\":\"1905\",\"mfr_cost\":\"1438\",\"shipping_cost\":\"1401\",\"total_cost\":\"1644\"}', 1),
(46, '{\"sku\":\"BIY99841\",\"name\":\"Nike Killshot 2 Leather Shoes\",\"color\":\"MediumSeaGreen\",\"size\":\"6.735083597\",\"description\":\"Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!\",\"image_link\":\"Nike Killshot 2 Leather Shoes.png \",\"category_id\":\"1\",\"price\":\"881\",\"mfr_cost\":\"1354\",\"shipping_cost\":\"1312\",\"total_cost\":\"1264\"}', 1),
(47, '{\"sku\":\"HZN44797\",\"name\":\"Jordan Roam Slides\",\"color\":\"RoyalBlue\",\"size\":\"6.732531129\",\"description\":\"Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.\",\"image_link\":\"Jordan Roam Slides.png \",\"category_id\":\"3\",\"price\":\"1954\",\"mfr_cost\":\"1559\",\"shipping_cost\":\"1778\",\"total_cost\":\"1283\"}', 1),
(48, '{\"sku\":\"WPP66880\",\"name\":\"Nike Air Dunk Low Jumbo Mens Shoes\",\"color\":\"Fuchsia\",\"size\":\"6.729978662\",\"description\":\"Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.\",\"image_link\":\"Nike Air Dunk Low Jumbo Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1954\",\"mfr_cost\":\"1191\",\"shipping_cost\":\"1004\",\"total_cost\":\"1366\"}', 1),
(49, '{\"sku\":\"YOD23502\",\"name\":\"Nike Air Max Alpha Trainer 5 Mens Workout Shoes\",\"color\":\"Chocolate\",\"size\":\"6.727426195\",\"description\":\"Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.\",\"image_link\":\"Nike Air Max Alpha Trainer 5 Mens Workout Shoes.png \",\"category_id\":\"4\",\"price\":\"929\",\"mfr_cost\":\"1375\",\"shipping_cost\":\"1446\",\"total_cost\":\"1764\"}', 1),
(50, '{\"sku\":\"BIO76002\",\"name\":\"Nike Downshifter 12 Mens Road Running Shoes(1)\",\"color\":\"Teal\",\"size\":\"6.724873727\",\"description\":\"Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.\",\"image_link\":\"Nike Downshifter 12 Mens Road Running Shoes(1).png \",\"category_id\":\"3\",\"price\":\"914\",\"mfr_cost\":\"886\",\"shipping_cost\":\"1425\",\"total_cost\":\"1789\"}', 1),
(51, '{\"sku\":\"BYV92826\",\"name\":\"Nike Dunk High Retro Mens Shoe\",\"color\":\"Goldenrod\",\"size\":\"6.72232126\",\"description\":\"Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. \",\"image_link\":\"Nike Dunk High Retro Mens Shoe.jpg \",\"category_id\":\"4\",\"price\":\"1885\",\"mfr_cost\":\"1202\",\"shipping_cost\":\"1137\",\"total_cost\":\"1419\"}', 1),
(52, '{\"sku\":\"IHR81934\",\"name\":\"Nike SB Force 58 Skate Shoes\",\"color\":\"DodgerBlue\",\"size\":\"6.719768792\",\"description\":\"Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.\",\"image_link\":\"Nike SB Force 58 Skate Shoes.png \",\"category_id\":\"4\",\"price\":\"1397\",\"mfr_cost\":\"1819\",\"shipping_cost\":\"1393\",\"total_cost\":\"1918\"}', 1),
(53, '{\"sku\":\"AZL30758\",\"name\":\"Air Jordan 1 Low G Golf Shoes\",\"color\":\"DarkOrchid\",\"size\":\"6.717216325\",\"description\":\"Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.\",\"image_link\":\"Air Jordan 1 Low G Golf Shoes.png \",\"category_id\":\"1\",\"price\":\"894\",\"mfr_cost\":\"1506\",\"shipping_cost\":\"832\",\"total_cost\":\"1995\"}', 1),
(54, '{\"sku\":\"TER79525\",\"name\":\"Air Jordan 1 Low Mens Shoes(1)\",\"color\":\"Peru\",\"size\":\"6.714663858\",\"description\":\"Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.\",\"image_link\":\"Air Jordan 1 Low Mens Shoes(1).png \",\"category_id\":\"4\",\"price\":\"1235\",\"mfr_cost\":\"1164\",\"shipping_cost\":\"1883\",\"total_cost\":\"1640\"}', 1),
(55, '{\"sku\":\"MOC12175\",\"name\":\"Air Jordan 1 Mid Mens Shoes(1)\",\"color\":\"SteelBlue\",\"size\":\"6.71211139\",\"description\":\"Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.\",\"image_link\":\"Air Jordan 1 Mid Mens Shoes(1).png \",\"category_id\":\"3\",\"price\":\"860\",\"mfr_cost\":\"1167\",\"shipping_cost\":\"1806\",\"total_cost\":\"1979\"}', 1),
(56, '{\"sku\":\"EUM28266\",\"name\":\"Air Jordan 1 Mid Mens Shoes\",\"color\":\"Crimson\",\"size\":\"6.709558923\",\"description\":\"Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.\",\"image_link\":\"Air Jordan 1 Mid Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1828\",\"mfr_cost\":\"1346\",\"shipping_cost\":\"1848\",\"total_cost\":\"1584\"}', 1),
(57, '{\"sku\":\"YIV08366\",\"name\":\"Air Jordan 1 Zoom CMFT 2 Mens Shoes\",\"color\":\"Indigo\",\"size\":\"6.707006455\",\"description\":\"Men Running Blue Supernova 3 Running Shoes:  These reliable blue Supernova 3 shoes provide all the support and comfort you need to conquer any distance.\",\"image_link\":\"Air Jordan 1 Zoom CMFT 2 Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"1568\",\"mfr_cost\":\"1559\",\"shipping_cost\":\"1372\",\"total_cost\":\"836\"}', 0),
(58, '{\"sku\":\"UWU96719\",\"name\":\"Air Jordan Legacy 312 Low Mens Shoes\",\"color\":\"Navy\",\"size\":\"6.704453988\",\"description\":\"Men Running Blue Ultraboost Light Shoes:  Experience ultimate comfort and energy return with these lightweight blue Ultraboost shoes.\",\"image_link\":\"Air Jordan Legacy 312 Low Mens Shoes.png \",\"category_id\":\"2\",\"price\":\"877\",\"mfr_cost\":\"1365\",\"shipping_cost\":\"1745\",\"total_cost\":\"1921\"}', 0),
(59, '{\"sku\":\"PDG40537\",\"name\":\"Jordan Max Aura 5 Mens Shoes\",\"color\":\"Maroon\",\"size\":\"6.701901521\",\"description\":\"Men Running Blue Ultrabounce Shoes:  The perfect mix of style and performance.  These blue Ultrabounce shoes offer a supportive fit and a sleek look to take you from run to brunch.\",\"image_link\":\"Jordan Max Aura 5 Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"1484\",\"mfr_cost\":\"978\",\"shipping_cost\":\"1278\",\"total_cost\":\"1545\"}', 0),
(60, '{\"sku\":\"BIY99841\",\"name\":\"Nike Air Force 1 07 Mens Shoes(3)\",\"color\":\"Sienna\",\"size\":\"6.699349053\",\"description\":\"Men Running Green MASTER GLIDE SHOES:  Glide effortlessly through your run with these innovative green MASTER GLIDE shoes.  Designed for maximum energy return and efficiency.\",\"image_link\":\"Nike Air Force 1 07 Mens Shoes(3).png \",\"category_id\":\"4\",\"price\":\"1741\",\"mfr_cost\":\"1478\",\"shipping_cost\":\"1852\",\"total_cost\":\"1069\"}', 0),
(61, '{\"sku\":\"HZN44797\",\"name\":\"Nike Air Max Excee Men\'s Shoe\",\"color\":\"DarkGreen\",\"size\":\"6.696796586\",\"description\":\"Men Running Green Ultraboost Light Shoes:  Another pair of lightweight green Ultraboosts  perfect for eco-conscious runners who don\'t compromise on performance.\",\"image_link\":\"Nike Air Max Excee Men\'s Shoe.png \",\"category_id\":\"1\",\"price\":\"1535\",\"mfr_cost\":\"1764\",\"shipping_cost\":\"1868\",\"total_cost\":\"1764\"}', 0),
(62, '{\"sku\":\"WPP66880\",\"name\":\"Nike Air Max SC Mens Shoes\",\"color\":\"Olive\",\"size\":\"6.694244119\",\"description\":\"Men Running Grey MECH DUNE SHOES:  Inspired by rugged terrain  these grey MECH DUNE shoes offer superior traction and support for conquering any trail.\",\"image_link\":\"Nike Air Max SC Mens Shoes.png \",\"category_id\":\"1\",\"price\":\"948\",\"mfr_cost\":\"1291\",\"shipping_cost\":\"967\",\"total_cost\":\"1594\"}', 0),
(63, '{\"sku\":\"YOD23502\",\"name\":\"Nike Offcourt Adjust Mens Slides\",\"color\":\"Coral\",\"size\":\"6.691691651\",\"description\":\"Men Running Grey SolderRun M:  Built to last  these durable grey SolderRun shoes can handle any running surface   keeping your feet comfortable and protected.\",\"image_link\":\"Nike Offcourt Adjust Mens Slides.png \",\"category_id\":\"4\",\"price\":\"1271\",\"mfr_cost\":\"1434\",\"shipping_cost\":\"1648\",\"total_cost\":\"1674\"}', 0),
(64, '{\"sku\":\"BIO76002\",\"name\":\"Air Jordan 1 Mid Shoes\",\"color\":\"Turquoise\",\"size\":\"6.689139184\",\"description\":\"Men Running Turquoise RAYGUN SHOES:  Embrace your inner speed demon with these electrifying turquoise RAYGUN shoes.  Designed for fast-paced training and competition.\",\"image_link\":\"Air Jordan 1 Mid Shoes.png \",\"category_id\":\"1\",\"price\":\"1108\",\"mfr_cost\":\"1515\",\"shipping_cost\":\"1871\",\"total_cost\":\"1580\"}', 0),
(65, '{\"sku\":\"BYV92826\",\"name\":\"Air Jordan 6 Retro Yellow Ochre Mens Shoes\",\"color\":\"SlateGray\",\"size\":\"6.686586716\",\"description\":\"Men Skateboarding White VS Pace 2.0 Shoes:  Shred the park in style with these versatile white VS Pace 2.0 shoes.  Offering great boardfeel and durability for any terrain.\",\"image_link\":\"Air Jordan 6 Retro Yellow Ochre Mens Shoes.jpg \",\"category_id\":\"3\",\"price\":\"1403\",\"mfr_cost\":\"1937\",\"shipping_cost\":\"1540\",\"total_cost\":\"1569\"}', 0),
(66, '{\"sku\":\"IHR81934\",\"name\":\"Nike Air Max 1 Mens shoes\",\"color\":\"Lavender\",\"size\":\"6.684034249\",\"description\":\"Men sportswear Grey Ultraboost 1.0 Shoes:  The OG of comfort.  These classic grey Ultraboost 1.0 shoes offer iconic style and unparalleled cushioning.\",\"image_link\":\"Nike Air Max 1 Mens shoes.png \",\"category_id\":\"4\",\"price\":\"1145\",\"mfr_cost\":\"827\",\"shipping_cost\":\"878\",\"total_cost\":\"1282\"}', 0),
(67, '{\"sku\":\"AZL30758\",\"name\":\"Nike Air Max Plus Drift Mens Shoes(1)\",\"color\":\"Magenta\",\"size\":\"6.681481782\",\"description\":\"Men sportswear White Advantage Base Court Lifestyle Shoes:  Transition seamlessly from court to street with these stylish white Advantage shoes.  Comfortable and versatile for all-day wear.\",\"image_link\":\"Nike Air Max Plus Drift Mens Shoes(1).png \",\"category_id\":\"4\",\"price\":\"1936\",\"mfr_cost\":\"1858\",\"shipping_cost\":\"1456\",\"total_cost\":\"1003\"}', 0),
(68, '{\"sku\":\"TER79525\",\"name\":\"Nike Air More Uptempo Mens Slides\",\"color\":\"LimeGreen\",\"size\":\"6.678929314\",\"description\":\"Men sportswear White Grand Court Cloudfoam Comfort Shoes:  Cloud comfort meets classic design.  These white Grand Court shoes feature a cushioned Cloudfoam sole for ultimate comfort all day long.\",\"image_link\":\"Nike Air More Uptempo Mens Slides.png \",\"category_id\":\"1\",\"price\":\"1527\",\"mfr_cost\":\"1297\",\"shipping_cost\":\"975\",\"total_cost\":\"1929\"}', 0),
(69, '{\"sku\":\"MOC12175\",\"name\":\"Nike Alphafly 3 Mens Road Racing Shoes\",\"color\":\"DarkRed\",\"size\":\"6.676376847\",\"description\":\"Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.\",\"image_link\":\"Nike Alphafly 3 Mens Road Racing Shoes.png \",\"category_id\":\"1\",\"price\":\"1442\",\"mfr_cost\":\"1990\",\"shipping_cost\":\"929\",\"total_cost\":\"1627\"}', 0),
(70, '{\"sku\":\"EUM28266\",\"name\":\"Nike Dunk Low Retro Mens Shoes\",\"color\":\"MediumPurple\",\"size\":\"6.673824379\",\"description\":\"Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.\",\"image_link\":\"Nike Dunk Low Retro Mens Shoes.jpg \",\"category_id\":\"3\",\"price\":\"1500\",\"mfr_cost\":\"942\",\"shipping_cost\":\"948\",\"total_cost\":\"1264\"}', 0),
(71, '{\"sku\":\"JLD71027\",\"name\":\"Nike Dunk Low Retro Premium Mens Shoes\",\"color\":\"DarkViolet\",\"size\":\"6.671271912\",\"description\":\"Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.\",\"image_link\":\"Nike Dunk Low Retro Premium Mens Shoes.jpg \",\"category_id\":\"1\",\"price\":\"1502\",\"mfr_cost\":\"1564\",\"shipping_cost\":\"1571\",\"total_cost\":\"928\"}', 0),
(72, '{\"sku\":\"RMV32592\",\"name\":\"Nike Free RN NN Mens Road Running Shoes\",\"color\":\"DarkSlateBlue\",\"size\":\"6.668719445\",\"description\":\"Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!\",\"image_link\":\"Nike Free RN NN Mens Road Running Shoes.png \",\"category_id\":\"4\",\"price\":\"1278\",\"mfr_cost\":\"1659\",\"shipping_cost\":\"926\",\"total_cost\":\"1540\"}', 0),
(73, '{\"sku\":\"XNN01558\",\"name\":\"Nike SB Zoom Blazer Low Pro GT Skate Shoes\",\"color\":\"LightSeaGreen\",\"size\":\"6.666166977\",\"description\":\"Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.\",\"image_link\":\"Nike SB Zoom Blazer Low Pro GT Skate Shoes.png \",\"category_id\":\"4\",\"price\":\"1079\",\"mfr_cost\":\"936\",\"shipping_cost\":\"837\",\"total_cost\":\"1617\"}', 0),
(74, '{\"sku\":\"QDQ47139\",\"name\":\"Air Jordan 1 Mid Mens Shoes(2)\",\"color\":\"DarkKhaki\",\"size\":\"6.66361451\",\"description\":\"Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.\",\"image_link\":\"Air Jordan 1 Mid Mens Shoes(2).png \",\"category_id\":\"3\",\"price\":\"1732\",\"mfr_cost\":\"1649\",\"shipping_cost\":\"1993\",\"total_cost\":\"954\"}', 0),
(75, '{\"sku\":\"TWQ54145\",\"name\":\"Air Jordan 1 Mid SE Mens Shoes\",\"color\":\"CornflowerBlue\",\"size\":\"6.661062043\",\"description\":\"Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.\",\"image_link\":\"Air Jordan 1 Mid SE Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1081\",\"mfr_cost\":\"1938\",\"shipping_cost\":\"1205\",\"total_cost\":\"1479\"}', 0),
(76, '{\"sku\":\"BYO40797\",\"name\":\"Air Jordan Legacy 312 Low PSG Mens Shoes\",\"color\":\"RebeccaPurple\",\"size\":\"6.658509575\",\"description\":\"Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.\",\"image_link\":\"Air Jordan Legacy 312 Low PSG Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1178\",\"mfr_cost\":\"1820\",\"shipping_cost\":\"1056\",\"total_cost\":\"884\"}', 0),
(77, '{\"sku\":\"DHM68037\",\"name\":\"Jordan Jumpman Mens Slides\",\"color\":\"Tomato\",\"size\":\"6.655957108\",\"description\":\"Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. \",\"image_link\":\"Jordan Jumpman Mens Slides.png \",\"category_id\":\"3\",\"price\":\"1512\",\"mfr_cost\":\"1585\",\"shipping_cost\":\"1112\",\"total_cost\":\"974\"}', 0),
(78, '{\"sku\":\"FZE10204\",\"name\":\"Jordan Stadium 90 Mens Shoes\",\"color\":\"MediumSlateBlue\",\"size\":\"6.65340464\",\"description\":\"Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.\",\"image_link\":\"Jordan Stadium 90 Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1953\",\"mfr_cost\":\"1108\",\"shipping_cost\":\"1364\",\"total_cost\":\"1019\"}', 0),
(79, '{\"sku\":\"BWN85022\",\"name\":\"Jumpman Two Trey Mens Shoes\",\"color\":\"SandyBrown\",\"size\":\"6.650852173\",\"description\":\"Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.\",\"image_link\":\"Jumpman Two Trey Mens Shoes.png \",\"category_id\":\"4\",\"price\":\"1821\",\"mfr_cost\":\"1589\",\"shipping_cost\":\"1603\",\"total_cost\":\"1711\"}', 0),
(80, '{\"sku\":\"AHI55584\",\"name\":\"KD Trey 5 X EP Basketball Shoes\",\"color\":\"MidnightBlue\",\"size\":\"6.648299706\",\"description\":\"Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.\",\"image_link\":\"KD Trey 5 X EP Basketball Shoes.png \",\"category_id\":\"4\",\"price\":\"1183\",\"mfr_cost\":\"1098\",\"shipping_cost\":\"1476\",\"total_cost\":\"900\"}', 0),
(81, '{\"sku\":\"AHK33955\",\"name\":\"LeBron NXXT Gen AMPD EP Basketball Shoes\",\"color\":\"DarkTurquoise\",\"size\":\"6.645747238\",\"description\":\"Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.\",\"image_link\":\"LeBron NXXT Gen AMPD EP Basketball Shoes.png \",\"category_id\":\"2\",\"price\":\"953\",\"mfr_cost\":\"810\",\"shipping_cost\":\"1722\",\"total_cost\":\"1460\"}', 0),
(82, '{\"sku\":\"VLE04986\",\"name\":\"Luka 2 PF Basketball Shoes\",\"color\":\"PaleVioletRed\",\"size\":\"6.643194771\",\"description\":\"Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.\",\"image_link\":\"Luka 2 PF Basketball Shoes.png \",\"category_id\":\"2\",\"price\":\"1094\",\"mfr_cost\":\"1573\",\"shipping_cost\":\"1456\",\"total_cost\":\"1978\"}', 0),
(83, '{\"sku\":\"ADI29480\",\"name\":\"Nike Air Force 1 07 LV8 Mens Shoes\",\"color\":\"LightCoral\",\"size\":\"6.640642303\",\"description\":\"Men Running Blue Supernova 3 Running Shoes:  These reliable blue Supernova 3 shoes provide all the support and comfort you need to conquer any distance.\",\"image_link\":\"Nike Air Force 1 07 LV8 Mens Shoes.png \",\"category_id\":\"3\",\"price\":\"1456\",\"mfr_cost\":\"819\",\"shipping_cost\":\"1031\",\"total_cost\":\"1629\"}', 0),
(84, '{\"sku\":\"FTT28920\",\"name\":\"Nike Air Max 1 SE Mens Shoe\",\"color\":\"LightCyan\",\"size\":\"6.638089836\",\"description\":\"Men Running Blue Ultraboost Light Shoes:  Experience ultimate comfort and energy return with these lightweight blue Ultraboost shoes.\",\"image_link\":\"Nike Air Max 1 SE Mens Shoe.png \",\"category_id\":\"2\",\"price\":\"1708\",\"mfr_cost\":\"1113\",\"shipping_cost\":\"1083\",\"total_cost\":\"1829\"}', 0),
(85, '{\"sku\":\"HKI21321\",\"name\":\"Nike Invincible 3 Mens Road Running Shoes\",\"color\":\"Firebrick\",\"size\":\"6.635537369\",\"description\":\"Lifestyle White Web BOOST Shoes:  These sleek kicks feature a futuristic web design woven across the pristine white upper. BOOST technology in the sole provides all-day comfort for conquering your daily hustle.\",\"image_link\":\"Nike Invincible 3 Mens Road Running Shoes.png \",\"category_id\":\"3\",\"price\":\"1037\",\"mfr_cost\":\"1734\",\"shipping_cost\":\"1164\",\"total_cost\":\"1135\"}', 0),
(86, '{\"sku\":\"VVM41292\",\"name\":\"Air Jordan 1 Zoom CMFT 2 Mens Shoes(1)\",\"color\":\"DimGray\",\"size\":\"6.632984901\",\"description\":\"Men Lifestyle Pink Adilette Slides:  Forget boring slides!  These vibrant pink numbers will have your feet feeling (and looking) beach-ready even in the heart of the city.\",\"image_link\":\"Air Jordan 1 Zoom CMFT 2 Mens Shoes(1).png \",\"category_id\":\"2\",\"price\":\"1347\",\"mfr_cost\":\"1564\",\"shipping_cost\":\"1201\",\"total_cost\":\"1776\"}', 0),
(87, '{\"sku\":\"QYE12672\",\"name\":\"Air Jordan I High G Mens Golf Shoes\",\"color\":\"DarkOrange\",\"size\":\"6.630432434\",\"description\":\"Men originals Blue Superstar Shoes:  A classic gets a cool upgrade.  These iconic blue Superstars add a pop of color to any outfit  maintaining their timeless appeal.\",\"image_link\":\"Air Jordan I High G Mens Golf Shoes.png \",\"category_id\":\"4\",\"price\":\"934\",\"mfr_cost\":\"1289\",\"shipping_cost\":\"861\",\"total_cost\":\"1035\"}', 0),
(88, '{\"sku\":\"WIW88005\",\"name\":\"Jordan Stadium 90 Mens Shoes(1)\",\"color\":\"MediumSeaGreen\",\"size\":\"6.627879967\",\"description\":\"Men originals Green TMNT Shell-Toe Shoes:  Cowabunga dudes!  Channel your inner teenage mutant ninja turtle with these limited edition green shell-toe shoes.  Totally tubular!\",\"image_link\":\"Jordan Stadium 90 Mens Shoes(1).png \",\"category_id\":\"3\",\"price\":\"1044\",\"mfr_cost\":\"1103\",\"shipping_cost\":\"1283\",\"total_cost\":\"973\"}', 0),
(89, '{\"sku\":\"TTO01943\",\"name\":\"Nike G.T. Jump 2 EP Mens Basketball Shoes\",\"color\":\"RoyalBlue\",\"size\":\"6.625327499\",\"description\":\"Men originals White Forum Low CL Shoes:  Clean and crisp  these white Forum Lows offer a timeless design with premium materials for a touch of luxury.\",\"image_link\":\"Nike G.T. Jump 2 EP Mens Basketball Shoes.png \",\"category_id\":\"3\",\"price\":\"1642\",\"mfr_cost\":\"864\",\"shipping_cost\":\"852\",\"total_cost\":\"909\"}', 0),
(90, '{\"sku\":\"VJC09518\",\"name\":\"Nike GP Challenge Pro Mens Hard Court Tennis Shoes\",\"color\":\"Fuchsia\",\"size\":\"6.622775032\",\"description\":\"Men originals White NMD_R1 Shoes:  The ultimate in street style.  These white NMD_R1s feature a futuristic silhouette and comfortable boost technology for effortless cool.\",\"image_link\":\"Nike GP Challenge Pro Mens Hard Court Tennis Shoes.png \",\"category_id\":\"1\",\"price\":\"1775\",\"mfr_cost\":\"1497\",\"shipping_cost\":\"1803\",\"total_cost\":\"1546\"}', 0),
(91, '{\"sku\":\"TJN10816\",\"name\":\"Nike Offcourt Mens Slides(1)\",\"color\":\"Chocolate\",\"size\":\"6.620222564\",\"description\":\"Men originals White Samba OG Shoes:  A true OG.  These pristine white Samba OGs are a must-have for any sneaker collection  offering classic style and versatility.\",\"image_link\":\"Nike Offcourt Mens Slides(1).png \",\"category_id\":\"4\",\"price\":\"996\",\"mfr_cost\":\"1827\",\"shipping_cost\":\"1903\",\"total_cost\":\"1867\"}', 0),
(92, '{\"sku\":\"KEJ12139\",\"name\":\"Nike Offcourt Mens Slides\",\"color\":\"Teal\",\"size\":\"6.617670097\",\"description\":\"Men originals White Superstar Shoes:  Another classic!  This fresh pair of white Superstars is perfect for everyday wear  offering comfort and iconic design.\",\"image_link\":\"Nike Offcourt Mens Slides.png \",\"category_id\":\"3\",\"price\":\"1566\",\"mfr_cost\":\"933\",\"shipping_cost\":\"1371\",\"total_cost\":\"1304\"}', 0),
(93, '{\"sku\":\"QPN34241\",\"name\":\"Best Nike shoes to wear with jeans\",\"color\":\"Goldenrod\",\"size\":\"6.61511763\",\"description\":\"Men Running Black ADI-SHAWT SPORT INSPIRED SHOES:  Channel your inner champion in these black ADI-SHAWT shoes.  Inspired by classic running styles  they offer comfort and support to power through your next workout. \",\"image_link\":\"Best Nike shoes to wear with jeans.jpg \",\"category_id\":\"4\",\"price\":\"1358\",\"mfr_cost\":\"1889\",\"shipping_cost\":\"1496\",\"total_cost\":\"1998\"}', 0),
(94, '{\"sku\":\"HWC98241\",\"name\":\"Best trail-running shoes by Nike\",\"color\":\"DodgerBlue\",\"size\":\"6.612565162\",\"description\":\"Men Running Black CLEAR FACTOR SHOES:  These sleek black running shoes feature a breathable mesh upper that keeps your feet cool and comfortable on every mile.\",\"image_link\":\"Best trail-running shoes by Nike.jpg \",\"category_id\":\"1\",\"price\":\"1394\",\"mfr_cost\":\"1789\",\"shipping_cost\":\"1373\",\"total_cost\":\"1470\"}', 0),
(95, '{\"sku\":\"PZC09935\",\"name\":\"Nike Superfly 9 Academy Mercurial Dream Speed MG High-Top Football Boot\",\"color\":\"DarkOrchid\",\"size\":\"6.610012695\",\"description\":\"Men Running Black FLEXPACE SHOES:  Built for flexibility  these black FLEXPACE shoes adapt to your every move  offering a smooth and comfortable running experience.\",\"image_link\":\"Nike Superfly 9 Academy Mercurial Dream Speed MG High-Top Football Boot.png \",\"category_id\":\"4\",\"price\":\"1025\",\"mfr_cost\":\"1464\",\"shipping_cost\":\"1704\",\"total_cost\":\"1690\"}', 0),
(96, '{\"sku\":\"EKX76077\",\"name\":\"Nike Superfly 9 Elite Mercurial Dream Speed FG High-Top Football Boot\",\"color\":\"Peru\",\"size\":\"6.607460227\",\"description\":\"Men Running Black Ultimashow Shoes:  Don\'t be afraid to push your limits.  These black Ultimashow shoes boast advanced technology and a supportive fit to help you achieve your running goals.\",\"image_link\":\"Nike Superfly 9 Elite Mercurial Dream Speed FG High-Top Football Boot.png \",\"category_id\":\"3\",\"price\":\"821\",\"mfr_cost\":\"1100\",\"shipping_cost\":\"864\",\"total_cost\":\"1652\"}', 0),
(97, '{\"sku\":\"FYF90149\",\"name\":\"The history of the Air Max 97\",\"color\":\"SteelBlue\",\"size\":\"6.60490776\",\"description\":\"Men Running Blue ADIMOVE SHOES:  These electric blue ADIMOVE shoes are designed to move with you  offering lightweight comfort and flexibility for your daily run.\",\"image_link\":\"The history of the Air Max 97.jpg \",\"category_id\":\"4\",\"price\":\"1874\",\"mfr_cost\":\"1837\",\"shipping_cost\":\"1181\",\"total_cost\":\"1323\"}', 0),
(98, '{\"sku\":\"TMC17250\",\"name\":\"The history of the Air Max 90\",\"color\":\"Crimson\",\"size\":\"6.602355293\",\"description\":\"Men Running Blue AstoundRun M:  Turn heads on your next run with these eye-catching blue AstoundRun shoes.  Featuring responsive cushioning and a stylish design.\",\"image_link\":\"The history of the Air Max 90.jpg\",\"category_id\":\"2\",\"price\":\"1310\",\"mfr_cost\":\"955\",\"shipping_cost\":\"1607\",\"total_cost\":\"1685\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `tax_percent` int(11) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`order_id`, `customer_id`, `order_number`, `tax_percent`, `grand_total`, `payment_id`, `shipping_id`, `status`, `date`) VALUES
(1, 5, 'CCC-65fb0481e7bb4', 7, 693.36, 1, 1, 'completed', '2024-03-21'),
(2, 0, 'CCC1000002', 7, 0.00, 0, 0, 'pending', '2024-03-21'),
(3, 0, '9874208', 7, 0.00, 0, 0, 'pending', NULL),
(4, 0, '4454456', 7, 0.00, 0, 0, 'pending', NULL),
(5, 0, '5262656', 7, 0.00, 0, 0, 'pending', NULL),
(6, 0, '279515', 7, 0.00, 0, 0, 'pending', NULL),
(7, 0, '1920686', 7, 0.00, 0, 0, 'pending', NULL),
(8, 0, '3765819', 7, 346.68, 0, 0, 'pending', NULL),
(9, 0, '2111241', 7, 346.68, 0, 0, 'pending', NULL),
(10, 0, '5287336', 7, 346.68, 0, 0, 'pending', NULL),
(11, 0, '7639460', 7, 346.68, 0, 0, 'pending', NULL),
(12, 0, '9176339', 7, 346.68, 0, 0, 'pending', NULL),
(14, 5, '1303699', 7, 2080.08, 0, 0, 'pending', NULL),
(15, 5, '1610677', 7, 693.36, 0, 0, 'pending', NULL),
(16, 5, '9126392', 7, 1605.00, 0, 0, 'pending', NULL),
(17, 0, '13931', 7, 952.30, 0, 0, 'pending', NULL),
(18, 3, '9571531', 7, 497.55, 0, 0, 'pending', NULL),
(19, 3, '1466909', 7, 497.55, 0, 0, 'pending', NULL),
(20, 3, '2381199', 7, 497.55, 0, 0, 'pending', NULL),
(21, 3, '6172066', 7, 497.55, 0, 0, 'pending', NULL),
(22, 3, '5729994', 7, 497.55, 0, 0, 'pending', NULL),
(23, 3, '6884925', 7, 1434.87, 0, 0, 'pending', NULL),
(24, 3, '942758', 7, 1434.87, 0, 0, 'pending', NULL),
(25, 3, '8232152', 7, 1434.87, 0, 0, 'pending', NULL),
(26, 3, '2011103', 7, 1434.87, 0, 0, 'pending', NULL),
(27, 3, '1567949', 7, 1434.87, 0, 0, 'pending', NULL),
(28, 3, '5269150', 7, 1434.87, 0, 0, 'pending', NULL),
(29, 3, '159297', 7, 1434.87, 0, 0, 'pending', NULL),
(30, 3, '4919950', 7, 952.30, 0, 0, 'shipped', NULL),
(31, 0, '', 0, 0.00, 0, 0, 'shipped', '2024-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_customer`
--

CREATE TABLE `sales_order_customer` (
  `order_customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_region` int(11) NOT NULL,
  `billing_country` int(11) NOT NULL,
  `billing_phone` varchar(255) NOT NULL,
  `billing_postcode` int(11) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_region` int(11) NOT NULL,
  `shipping_country` int(11) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_postcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_customer`
--

INSERT INTO `sales_order_customer` (`order_customer_id`, `order_id`, `customer_id`, `email`, `billing_address`, `billing_city`, `billing_region`, `billing_country`, `billing_phone`, `billing_postcode`, `shipping_address`, `shipping_city`, `shipping_region`, `shipping_country`, `shipping_phone`, `shipping_postcode`) VALUES
(1, 1, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(2, 2, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(3, 3, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(4, 4, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(5, 5, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(6, 6, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(7, 7, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(8, 8, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(9, 9, 5, 'maddy@gmail.com', '234 Walnut St', 'Anytown', 1, 1, '9876543210', 23456, '876 Birch St', 'Anytown', 1, 1, '0123456789', 0),
(10, 10, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010, 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010),
(11, 11, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010, 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010),
(12, 12, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010, 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010),
(13, 14, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010, 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, '23456789', 370010),
(14, 16, 5, 'maddy@gmail.com', ' B/H, Itc Narmada, B-305, The First, Vastrapur, Ahmedabad, Gujarat 380015', 'Ahmedabad', 1, 0, '7096329756', 380015, 'Savaj PG, Nehrunagar Circle, Near Tagor Park.', 'Ahmedabad', 1, 0, '7096329756', 380015),
(15, 17, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010, 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010),
(16, 29, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010, 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010),
(17, 30, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010, 'Near Rajput samajwadi', 'bhuj', 12, 91, '7096329756', 370010);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

CREATE TABLE `sales_order_item` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `row_total` decimal(12,2) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_item`
--

INSERT INTO `sales_order_item` (`item_id`, `order_id`, `product_id`, `price`, `qty`, `row_total`, `product_name`, `product_color`) VALUES
(1, 1, 2, 324.00, 1, 324.00, '', ''),
(2, 1, 3, 324.00, 1, 324.00, '', ''),
(3, 8, 1, 324.00, 1, 324.00, '', ''),
(4, 9, 1, 324.00, 1, 324.00, '', ''),
(5, 10, 1, 324.00, 1, 324.00, '', ''),
(6, 11, 1, 324.00, 1, 324.00, '', ''),
(7, 12, 1, 324.00, 1, 324.00, '', ''),
(8, 15, 1, 324.00, 1, 324.00, '', ''),
(9, 15, 2, 324.00, 1, 324.00, '', ''),
(10, 16, 26, 1500.00, 1, 1500.00, '', ''),
(11, 17, 19, 890.00, 1, 890.00, '', ''),
(12, 29, 9, 465.00, 1, 465.00, 'Flaze Mode', 'rsfsd'),
(13, 29, 18, 876.00, 1, 876.00, 'Nike Air Max Solo', 'kjh'),
(14, 30, 19, 890.00, 1, 890.00, 'Forum 84 Low Shoes', 'iuo');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_payment_method`
--

CREATE TABLE `sales_order_payment_method` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `card_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_payment_method`
--

INSERT INTO `sales_order_payment_method` (`payment_id`, `order_id`, `payment_method`, `card_number`) VALUES
(1, 1, 'Credit Card', '4567387465782974');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_shipping_method`
--

CREATE TABLE `sales_order_shipping_method` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_shipping_method`
--

INSERT INTO `sales_order_shipping_method` (`shipping_id`, `order_id`, `shipping_method`) VALUES
(1, 1, 'Express');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_history`
--

CREATE TABLE `sales_order_status_history` (
  `history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `from_status` varchar(11) NOT NULL,
  `to_status` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `action_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order_status_history`
--

INSERT INTO `sales_order_status_history` (`history_id`, `order_id`, `from_status`, `to_status`, `date`, `action_by`) VALUES
(1, 1, 'pending', 'shipped', '2024-03-21', 'admin'),
(2, 1, 'shipped', 'completed', '2024-03-21', 'admin'),
(3, 2, 'pending', 'declined', '2024-03-21', 'admin'),
(4, 2, 'declined', 'pending', '2024-03-21', 'admin'),
(5, 2, 'pending', 'shipped', '2024-03-21', 'admin'),
(6, 2, 'shipped', 'pending', '2024-03-21', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sales_quote`
--

CREATE TABLE `sales_quote` (
  `quote_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tax_percent` int(11) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_quote`
--

INSERT INTO `sales_quote` (`quote_id`, `customer_id`, `tax_percent`, `grand_total`, `order_id`, `payment_id`, `shipping_id`) VALUES
(1, 0, 7, 693.36, 1, 1, 1),
(2, 0, 7, 0.00, 2, 2, 2),
(3, 0, 7, 0.00, 3, 3, 3),
(4, 0, 7, 0.00, 4, 4, 4),
(5, 0, 7, 0.00, 5, 5, 5),
(6, 0, 7, 0.00, 6, 6, 6),
(7, 0, 7, 0.00, 7, 7, 7),
(8, 0, 7, 346.68, 8, 8, 0),
(9, 0, 7, 346.68, 9, 9, 0),
(10, 0, 7, 346.68, 10, 10, 0),
(11, 0, 7, 346.68, 11, 11, 0),
(12, 0, 7, 346.68, 12, 12, 0),
(14, 5, 7, 693.36, 15, 15, 0),
(15, 5, 7, 1605.00, 16, 16, 0),
(16, 5, 7, 1889.62, 0, 0, 0),
(17, 0, 7, 952.30, 17, 17, 0),
(18, 0, 7, 346.68, 0, 0, 0),
(19, 3, 7, 1434.87, 29, 29, 0),
(20, 3, 7, 952.30, 30, 32, 32),
(21, 0, 7, 4798.94, 0, 0, 0),
(22, 0, 7, 0.00, 0, 0, 0),
(23, 0, 7, 214.00, 0, 0, 0),
(24, 4, 7, 346.68, 0, 0, 0),
(25, 0, 7, 7149.74, 0, 0, 0),
(26, 0, 7, 321.00, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_quote_customer`
--

CREATE TABLE `sales_quote_customer` (
  `quote_customer_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_region` int(11) NOT NULL,
  `billing_postcode` int(11) NOT NULL,
  `billing_country` int(11) NOT NULL,
  `billing_phone` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_region` int(11) NOT NULL,
  `shipping_country` int(11) NOT NULL,
  `shipping_postcode` int(11) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_quote_customer`
--

INSERT INTO `sales_quote_customer` (`quote_customer_id`, `quote_id`, `customer_id`, `email`, `billing_address`, `billing_city`, `billing_region`, `billing_postcode`, `billing_country`, `billing_phone`, `shipping_address`, `shipping_city`, `shipping_region`, `shipping_country`, `shipping_postcode`, `shipping_phone`) VALUES
(1, 11, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 370010, 91, '23456789', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, 370010, '23456789'),
(2, 12, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 370010, 91, '23456789', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, 370010, '23456789'),
(3, 13, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 370010, 91, '23456789', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, 370010, '23456789'),
(4, 13, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 370010, 91, '23456789', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, 370010, '23456789'),
(5, 14, 5, 'maddy@gmail.com', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 370010, 91, '23456789', 'Junavas Madhapar BHUJ-KUTCH', 'BHUJ', 12, 91, 370010, '23456789'),
(6, 15, 5, 'maddy@gmail.com', ' B/H, Itc Narmada, B-305, The First, Vastrapur, Ahmedabad, Gujarat 380015', 'Ahmedabad', 1, 380015, 0, '7096329756', 'Savaj PG, Nehrunagar Circle, Near Tagor Park.', 'Ahmedabad', 1, 0, 380015, '7096329756'),
(7, 17, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(8, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(9, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(10, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(11, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(12, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(13, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(14, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(15, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(16, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(17, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(18, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(19, 19, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(20, 20, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(21, 20, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756'),
(22, 20, 3, '', 'Near Rajput samajwadi', 'bhuj', 12, 370010, 91, '7096329756', 'Near Rajput samajwadi', 'bhuj', 12, 91, 370010, '7096329756');

-- --------------------------------------------------------

--
-- Table structure for table `sales_quote_item`
--

CREATE TABLE `sales_quote_item` (
  `item_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `row_total` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_quote_item`
--

INSERT INTO `sales_quote_item` (`item_id`, `quote_id`, `customer_id`, `product_id`, `price`, `qty`, `row_total`) VALUES
(1, 25, 0, 2, 983.00, 3, 2949.00),
(4, 25, 0, 1, 887.00, 2, 1774.00),
(5, 10, 0, 1, 324.00, 1, 324.00),
(6, 11, 0, 1, 324.00, 1, 324.00),
(7, 12, 0, 1, 324.00, 1, 324.00),
(10, 14, 5, 1, 324.00, 1, 324.00),
(11, 14, 5, 2, 324.00, 1, 324.00),
(20, 16, 5, 18, 876.00, 1, 876.00),
(22, 24, 0, 3, 324.00, 1, 324.00),
(23, 19, 3, 9, 465.00, 1, 465.00),
(24, 19, 3, 18, 876.00, 1, 876.00),
(28, 21, 3, 32, 94.99, 1, 94.99),
(40, 23, 0, 22, 200.00, 1, 200.00),
(42, 26, 0, 25, 300.00, 1, 300.00),
(46, 25, 0, 7, 1959.00, 1, 1959.00);

-- --------------------------------------------------------

--
-- Table structure for table `sales_quote_payment_method`
--

CREATE TABLE `sales_quote_payment_method` (
  `payment_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `card_number` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_quote_payment_method`
--

INSERT INTO `sales_quote_payment_method` (`payment_id`, `quote_id`, `payment_method`, `card_number`) VALUES
(1, 1, 'Phone Order', '0'),
(2, 2, 'Phone Order', '0'),
(3, 3, 'Phone Order', '0'),
(4, 4, 'Phone Order', '0'),
(5, 5, 'Phone Order', '0'),
(6, 6, 'Phone Order', '0'),
(7, 7, 'Phone Order', '0'),
(8, 8, 'Cash on Delivery', '0'),
(9, 9, 'Cash on Delivery', '0'),
(10, 10, 'Phone Order', '0'),
(11, 11, 'Phone Order', '0'),
(12, 12, 'Cash on Delivery', '0'),
(13, 13, 'Cash on Delivery', '0'),
(14, 13, 'Cash on Delivery', '0'),
(15, 14, 'Cash on Delivery', '0'),
(16, 15, 'Cash on Delivery', '0'),
(17, 17, 'Cash on Delivery', '0'),
(18, 19, 'Phone Order', '0'),
(19, 19, 'Phone Order', '0'),
(20, 19, 'Phone Order', '0'),
(21, 19, 'Phone Order', '0'),
(22, 19, 'Phone Order', '0'),
(23, 19, 'Phone Order', '0'),
(24, 19, 'Phone Order', '0'),
(25, 19, 'Phone Order', '0'),
(26, 19, 'Phone Order', '0'),
(27, 19, 'Phone Order', '0'),
(28, 19, 'Phone Order', '0'),
(29, 19, 'Phone Order', '0'),
(30, 20, 'Cash on Delivery', '0'),
(31, 20, 'Cash on Delivery', '0'),
(32, 20, 'Phone Order', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sales_quote_shipping_method`
--

CREATE TABLE `sales_quote_shipping_method` (
  `shipping_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `shipping_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_quote_shipping_method`
--

INSERT INTO `sales_quote_shipping_method` (`shipping_id`, `quote_id`, `shipping_method`) VALUES
(1, 1, 'Freight'),
(2, 2, 'Freight'),
(3, 3, 'Freight'),
(4, 4, 'Freight'),
(5, 5, 'Freight'),
(6, 6, 'Freight'),
(7, 7, 'Freight'),
(8, 8, 'Express'),
(9, 9, 'Freight'),
(10, 10, 'Standard'),
(11, 11, 'Freight'),
(12, 12, 'Standard'),
(13, 13, 'Express'),
(14, 13, 'Express'),
(15, 14, 'Express'),
(16, 15, 'Freight'),
(17, 17, 'Express'),
(18, 19, 'Standard'),
(19, 19, 'Standard'),
(20, 19, 'Standard'),
(21, 19, 'Standard'),
(22, 19, 'Standard'),
(23, 19, 'Express'),
(24, 19, 'Express'),
(25, 19, 'Express'),
(26, 19, 'Express'),
(27, 19, 'Express'),
(28, 19, 'Express'),
(29, 19, 'Express'),
(30, 20, 'Standard'),
(31, 20, 'Standard'),
(32, 20, 'Standard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`),
  ADD UNIQUE KEY `banner_title` (`banner_title`);

--
-- Indexes for table `catalog_category`
--
ALTER TABLE `catalog_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD UNIQUE KEY `sku_2` (`sku`);

--
-- Indexes for table `ccc_category`
--
ALTER TABLE `ccc_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `ccc_license_request`
--
ALTER TABLE `ccc_license_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ccc_mfr`
--
ALTER TABLE `ccc_mfr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ccc_product`
--
ALTER TABLE `ccc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ccc_state`
--
ALTER TABLE `ccc_state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mfr_id` (`mfr_id`);

--
-- Indexes for table `ccc_statewise_license_rate`
--
ALTER TABLE `ccc_statewise_license_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `import_data`
--
ALTER TABLE `import_data`
  ADD PRIMARY KEY (`import_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sales_order_customer`
--
ALTER TABLE `sales_order_customer`
  ADD PRIMARY KEY (`order_customer_id`);

--
-- Indexes for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `sales_order_payment_method`
--
ALTER TABLE `sales_order_payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `sales_order_shipping_method`
--
ALTER TABLE `sales_order_shipping_method`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `sales_quote`
--
ALTER TABLE `sales_quote`
  ADD PRIMARY KEY (`quote_id`);

--
-- Indexes for table `sales_quote_customer`
--
ALTER TABLE `sales_quote_customer`
  ADD PRIMARY KEY (`quote_customer_id`);

--
-- Indexes for table `sales_quote_item`
--
ALTER TABLE `sales_quote_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `sales_quote_payment_method`
--
ALTER TABLE `sales_quote_payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `sales_quote_shipping_method`
--
ALTER TABLE `sales_quote_shipping_method`
  ADD PRIMARY KEY (`shipping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catalog_category`
--
ALTER TABLE `catalog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catalog_product`
--
ALTER TABLE `catalog_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ccc_category`
--
ALTER TABLE `ccc_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ccc_license_request`
--
ALTER TABLE `ccc_license_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `ccc_mfr`
--
ALTER TABLE `ccc_mfr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ccc_product`
--
ALTER TABLE `ccc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ccc_state`
--
ALTER TABLE `ccc_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `import_data`
--
ALTER TABLE `import_data`
  MODIFY `import_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales_order_customer`
--
ALTER TABLE `sales_order_customer`
  MODIFY `order_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales_order_payment_method`
--
ALTER TABLE `sales_order_payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_order_shipping_method`
--
ALTER TABLE `sales_order_shipping_method`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales_quote`
--
ALTER TABLE `sales_quote`
  MODIFY `quote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sales_quote_customer`
--
ALTER TABLE `sales_quote_customer`
  MODIFY `quote_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales_quote_item`
--
ALTER TABLE `sales_quote_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sales_quote_payment_method`
--
ALTER TABLE `sales_quote_payment_method`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sales_quote_shipping_method`
--
ALTER TABLE `sales_quote_shipping_method`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ccc_state`
--
ALTER TABLE `ccc_state`
  ADD CONSTRAINT `ccc_state_ibfk_1` FOREIGN KEY (`mfr_id`) REFERENCES `ccc_mfr` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
