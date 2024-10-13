-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 29, 2024 at 04:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmassist`
--

-- --------------------------------------------------------

--
-- Table structure for table `agricultures`
--

CREATE TABLE `agricultures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cropactivities`
--

CREATE TABLE `cropactivities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crop` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cropactivities`
--

INSERT INTO `cropactivities` (`id`, `crop`, `activity`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'rice', 'Field Preparation', '0 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(2, 'rice', 'Transplanting', '15 days', '25 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(3, 'rice', 'Irrigation', '25 days', '70 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(4, 'rice', 'Fertilization', '70 days', '100 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(5, 'rice', 'Harvesting', '100 days', '130 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(6, 'cotton', 'Soil Tillage', '0 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(7, 'cotton', 'Planting', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(8, 'cotton', 'Fertilization', '30 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(9, 'cotton', 'Pest Management', '60 days', '120 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(10, 'cotton', 'Harvesting', '150 days', '180 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(11, 'wheat', 'Soil Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(12, 'wheat', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(13, 'wheat', 'Irrigation', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(14, 'wheat', 'Weeding', '30 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(15, 'wheat', 'Harvesting', '100 days', '120 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(16, 'corn', 'Soil Tillage', '0 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(17, 'corn', 'Planting', '15 days', '25 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(18, 'corn', 'Fertilization', '25 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(19, 'corn', 'Pest Management', '45 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(20, 'corn', 'Harvesting', '120 days', '150 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(21, 'soybeans', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(22, 'soybeans', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(23, 'soybeans', 'Weeding', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(24, 'soybeans', 'Pest Management', '30 days', '70 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(25, 'soybeans', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(26, 'barley', 'Soil Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(27, 'barley', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(28, 'barley', 'Irrigation', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(29, 'barley', 'Fertilization', '30 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(30, 'barley', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(31, 'oats', 'Soil Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(32, 'oats', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(33, 'oats', 'Irrigation', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(34, 'oats', 'Fertilization', '30 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(35, 'oats', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(36, 'sorghum', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(37, 'sorghum', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(38, 'sorghum', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(39, 'sorghum', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(40, 'sorghum', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(41, 'sorghum', 'Harvesting', '100 days', '120 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(42, 'maize', 'Field Preparation', '0 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(43, 'maize', 'Sowing', '15 days', '25 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(44, 'maize', 'Irrigation', '25 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(45, 'maize', 'Fertilization', '50 days', '70 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(46, 'maize', 'Weeding', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(47, 'maize', 'Harvesting', '110 days', '130 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(48, 'sugarcane', 'Field Preparation', '0 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(49, 'sugarcane', 'Planting', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(50, 'sugarcane', 'Irrigation', '30 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(51, 'sugarcane', 'Fertilization', '60 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(52, 'sugarcane', 'Weeding', '90 days', '120 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(53, 'sugarcane', 'Harvesting', '300 days', '330 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(54, 'peanut', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(55, 'peanut', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(56, 'peanut', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(57, 'peanut', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(58, 'peanut', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(59, 'peanut', 'Harvesting', '110 days', '130 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(60, 'sunflower', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(61, 'sunflower', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(62, 'sunflower', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(63, 'sunflower', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(64, 'sunflower', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(65, 'sunflower', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(66, 'potato', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(67, 'potato', 'Planting', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(68, 'potato', 'Irrigation', '20 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(69, 'potato', 'Fertilization', '35 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(70, 'potato', 'Weeding', '50 days', '70 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(71, 'potato', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(72, 'tomato', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(73, 'tomato', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(74, 'tomato', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(75, 'tomato', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(76, 'tomato', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(77, 'tomato', 'Harvesting', '75 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(78, 'carrot', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(79, 'carrot', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(80, 'carrot', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(81, 'carrot', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(82, 'carrot', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(83, 'carrot', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(84, 'onion', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(85, 'onion', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(86, 'onion', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(87, 'onion', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(88, 'onion', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(89, 'onion', 'Harvesting', '100 days', '120 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(90, 'strawberry', 'Field Preparation', '0 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(91, 'strawberry', 'Transplanting', '15 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(92, 'strawberry', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(93, 'strawberry', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(94, 'strawberry', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(95, 'strawberry', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(96, 'grape', 'Field Preparation', '0 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(97, 'grape', 'Planting', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(98, 'grape', 'Irrigation', '30 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(99, 'grape', 'Fertilization', '50 days', '70 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(100, 'grape', 'Weeding', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(101, 'grape', 'Harvesting', '150 days', '180 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(102, 'pepper', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(103, 'pepper', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(104, 'pepper', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(105, 'pepper', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(106, 'pepper', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(107, 'pepper', 'Harvesting', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(108, 'spinach', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(109, 'spinach', 'Sowing', '7 days', '14 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(110, 'spinach', 'Irrigation', '14 days', '28 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(111, 'spinach', 'Fertilization', '28 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(112, 'spinach', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(113, 'spinach', 'Harvesting', '50 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(114, 'eggplant', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(115, 'eggplant', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(116, 'eggplant', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(117, 'eggplant', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(118, 'eggplant', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(119, 'eggplant', 'Harvesting', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(120, 'garlic', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(121, 'garlic', 'Planting', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(122, 'garlic', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(123, 'garlic', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(124, 'garlic', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(125, 'garlic', 'Harvesting', '100 days', '120 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(126, 'pumpkin', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(127, 'pumpkin', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(128, 'pumpkin', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(129, 'pumpkin', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(130, 'pumpkin', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(131, 'pumpkin', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(132, 'zucchini', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(133, 'zucchini', 'Transplanting', '7 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(134, 'zucchini', 'Irrigation', '10 days', '25 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(135, 'zucchini', 'Fertilization', '25 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(136, 'zucchini', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(137, 'zucchini', 'Harvesting', '50 days', '65 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(138, 'cabbage', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(139, 'cabbage', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(140, 'cabbage', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(141, 'cabbage', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(142, 'cabbage', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(143, 'cabbage', 'Harvesting', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(144, 'cauliflower', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(145, 'cauliflower', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(146, 'cauliflower', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(147, 'cauliflower', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(148, 'cauliflower', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(149, 'cauliflower', 'Harvesting', '75 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(150, 'broccoli', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(151, 'broccoli', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(152, 'broccoli', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(153, 'broccoli', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(154, 'broccoli', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(155, 'broccoli', 'Harvesting', '70 days', '85 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(156, 'cucumber', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(157, 'cucumber', 'Transplanting', '7 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(158, 'cucumber', 'Irrigation', '10 days', '25 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(159, 'cucumber', 'Fertilization', '25 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(160, 'cucumber', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(161, 'cucumber', 'Harvesting', '50 days', '65 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(162, 'kale', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(163, 'kale', 'Transplanting', '7 days', '14 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(164, 'kale', 'Irrigation', '14 days', '28 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(165, 'kale', 'Fertilization', '28 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(166, 'kale', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(167, 'kale', 'Harvesting', '50 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(168, 'radish', 'Field Preparation', '0 days', '5 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(169, 'radish', 'Sowing', '5 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(170, 'radish', 'Irrigation', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(171, 'radish', 'Fertilization', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(172, 'radish', 'Weeding', '30 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(173, 'radish', 'Harvesting', '50 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(174, 'beet', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(175, 'beet', 'Sowing', '7 days', '14 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(176, 'beet', 'Irrigation', '14 days', '28 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(177, 'beet', 'Fertilization', '28 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(178, 'beet', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(179, 'beet', 'Harvesting', '60 days', '75 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(180, 'asparagus', 'Field Preparation', '0 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(181, 'asparagus', 'Planting', '20 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(182, 'asparagus', 'Irrigation', '30 days', '50 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(183, 'asparagus', 'Fertilization', '50 days', '70 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(184, 'asparagus', 'Weeding', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(185, 'asparagus', 'Harvesting', '365 days', '395 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(186, 'watermelon', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(187, 'watermelon', 'Sowing', '10 days', '20 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(188, 'watermelon', 'Irrigation', '20 days', '40 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(189, 'watermelon', 'Fertilization', '40 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(190, 'watermelon', 'Weeding', '60 days', '80 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(191, 'watermelon', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(192, 'lettuce', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(193, 'lettuce', 'Transplanting', '7 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(194, 'lettuce', 'Irrigation', '10 days', '25 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(195, 'lettuce', 'Fertilization', '25 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(196, 'lettuce', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(197, 'lettuce', 'Harvesting', '50 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(198, 'pea', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(199, 'pea', 'Sowing', '7 days', '14 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(200, 'pea', 'Irrigation', '14 days', '28 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(201, 'pea', 'Fertilization', '28 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(202, 'pea', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(203, 'pea', 'Harvesting', '60 days', '75 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(204, 'bell pepper', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(205, 'bell pepper', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(206, 'bell pepper', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(207, 'bell pepper', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(208, 'bell pepper', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(209, 'bell pepper', 'Harvesting', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(210, 'celery', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(211, 'celery', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(212, 'celery', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(213, 'celery', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(214, 'celery', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(215, 'celery', 'Harvesting', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(216, 'sweet potato', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(217, 'sweet potato', 'Planting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(218, 'sweet potato', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(219, 'sweet potato', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(220, 'sweet potato', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(221, 'sweet potato', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(222, 'chili pepper', 'Field Preparation', '0 days', '10 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(223, 'chili pepper', 'Transplanting', '10 days', '15 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(224, 'chili pepper', 'Irrigation', '15 days', '30 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(225, 'chili pepper', 'Fertilization', '30 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(226, 'chili pepper', 'Weeding', '45 days', '60 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(227, 'chili pepper', 'Harvesting', '70 days', '90 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(228, 'onions', 'Field Preparation', '0 days', '7 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(229, 'onions', 'Transplanting', '7 days', '14 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(230, 'onions', 'Irrigation', '14 days', '28 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(231, 'onions', 'Fertilization', '28 days', '35 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(232, 'onions', 'Weeding', '35 days', '45 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(233, 'onions', 'Harvesting', '90 days', '110 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(234, 'apples', 'Field Preparation', '0 days', '14 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(235, 'apples', 'Planting', '14 days', '28 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(236, 'apples', 'Pruning', '28 days', '42 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(237, 'apples', 'Fertilization', '42 days', '56 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51'),
(238, 'apples', 'Harvesting', '180 days', '200 days', '2024-07-18 03:44:51', '2024-07-18 03:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `cropdatas`
--

CREATE TABLE `cropdatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crop` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `type_of_planting` varchar(255) NOT NULL,
  `growth_period` varchar(255) NOT NULL,
  `soil_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cropdatas`
--

INSERT INTO `cropdatas` (`id`, `crop`, `activity`, `start_date`, `end_date`, `type_of_planting`, `growth_period`, `soil_type`, `created_at`, `updated_at`) VALUES
(1, 'soybeans', 'Soil Preparation', '0 days', '10 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(2, 'soybeans', 'Seed Sowing', '11 days', '20 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(3, 'soybeans', 'Irrigation', '21 days', '30 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(4, 'soybeans', 'Weeding', '31 days', '40 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(5, 'soybeans', 'Fertilization', '41 days', '50 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(6, 'soybeans', 'Pest and Disease Control', '51 days', '70 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(7, 'soybeans', 'Harvesting', '81 days', '110 days', 'Direct Seeding', '3 to 4 months', 'Light', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(8, 'corn', 'Soil Preparation', '0 days', '10 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(9, 'corn', 'Seed Sowing', '11 days', '20 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(10, 'corn', 'Irrigation', '21 days', '30 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(11, 'corn', 'Weeding', '31 days', '40 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(12, 'corn', 'Fertilization', '41 days', '50 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(13, 'corn', 'Pest and Disease Control', '51 days', '70 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(14, 'corn', 'Harvesting', '71 days', '90 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(15, 'wheat', 'Soil Preparation', '0 days', '10 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(16, 'wheat', 'Seed Sowing', '11 days', '20 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(17, 'wheat', 'Irrigation', '21 days', '30 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(18, 'wheat', 'Weeding', '31 days', '40 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(19, 'wheat', 'Fertilization', '41 days', '50 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(20, 'wheat', 'Pest and Disease Control', '51 days', '70 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(21, 'wheat', 'Harvesting', '71 days', '120 days', 'Direct Seeding', '4 to 5 months', 'Heavy', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(22, 'tomatoes', 'Soil Preparation', '0 days', '10 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(23, 'tomatoes', 'Seed Sowing', '11 days', '20 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(24, 'tomatoes', 'Irrigation', '21 days', '30 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(25, 'tomatoes', 'Weeding', '31 days', '40 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(26, 'tomatoes', 'Fertilization', '41 days', '50 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(27, 'tomatoes', 'Pest and Disease Control', '51 days', '70 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(28, 'tomatoes', 'Harvesting', '71 days', '100 days', 'Transplanting', '3 to 4 months', 'Medium', '2024-08-25 10:59:21', '2024-08-25 10:59:21'),
(29, 'barley', 'Soil Preparation', '0 days', '10 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(30, 'barley', 'Seed Sowing', '11 days', '20 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(31, 'barley', 'Irrigation', '21 days', '30 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(32, 'barley', 'Weeding', '31 days', '40 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(33, 'barley', 'Fertilization', '41 days', '50 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(34, 'barley', 'Pest and Disease Control', '51 days', '70 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(35, 'barley', 'Harvesting', '71 days', '100 days', 'Direct Seeding', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(36, 'potatoes', 'Soil Preparation', '0 days', '10 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(37, 'potatoes', 'Seed Sowing', '11 days', '20 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(38, 'potatoes', 'Irrigation', '21 days', '30 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(39, 'potatoes', 'Weeding', '31 days', '40 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(40, 'potatoes', 'Fertilization', '41 days', '50 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(41, 'potatoes', 'Pest and Disease Control', '51 days', '70 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(42, 'potatoes', 'Harvesting', '71 days', '100 days', 'Vegetative Propagation', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-08-25 11:01:37', '2024-09-26 01:05:01'),
(43, 'peanuts', 'Soil Preparation', '0 days', '10 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(44, 'peanuts', 'Seed Sowing', '11 days', '20 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(45, 'peanuts', 'Irrigation', '21 days', '30 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(46, 'peanuts', 'Weeding', '31 days', '40 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(47, 'peanuts', 'Fertilization', '41 days', '50 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(48, 'peanuts', 'Pest and Disease Control', '51 days', '70 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(49, 'peanuts', 'Harvesting', '71 days', '120 days', 'Direct Seeding', '4 to 5 months', 'Light', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(50, 'cucumbers', 'Soil Preparation', '0 days', '10 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(51, 'cucumbers', 'Seed Sowing', '11 days', '20 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(52, 'cucumbers', 'Irrigation', '21 days', '30 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(53, 'cucumbers', 'Weeding', '31 days', '40 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(54, 'cucumbers', 'Fertilization', '41 days', '50 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(55, 'cucumbers', 'Pest and Disease Control', '51 days', '70 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(56, 'cucumbers', 'Harvesting', '71 days', '90 days', 'Direct Seeding', '2 to 3 months', 'Medium', '2024-08-25 11:01:37', '2024-08-25 11:01:37'),
(57, 'onions', 'Soil Preparation', '0 days', '10 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(58, 'onions', 'Seed Sowing', '11 days', '20 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(59, 'onions', 'Irrigation', '21 days', '30 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(60, 'onions', 'Weeding', '31 days', '40 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(61, 'onions', 'Fertilization', '41 days', '50 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(62, 'onions', 'Pest and Disease Control', '51 days', '70 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(63, 'onions', 'Harvesting', '71 days', '120 days', 'Fluid Drilling (Gel Seeding)', '4 to 5 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(64, 'carrots', 'Soil Preparation', '0 days', '10 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(65, 'carrots', 'Seed Sowing', '11 days', '20 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(66, 'carrots', 'Irrigation', '21 days', '30 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(67, 'carrots', 'Weeding', '31 days', '40 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(68, 'carrots', 'Fertilization', '41 days', '50 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(69, 'carrots', 'Pest and Disease Control', '51 days', '70 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(70, 'carrots', 'Harvesting', '71 days', '100 days', 'Seed Tape', '3 to 4 months', 'Medium Soil (Loamy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(71, 'cover crops', 'Soil Preparation', '0 days', '10 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(72, 'cover crops', 'Seed Sowing', '11 days', '20 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(73, 'cover crops', 'Irrigation', '21 days', '30 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(74, 'cover crops', 'Weeding', '31 days', '40 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(75, 'cover crops', 'Fertilization', '41 days', '50 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(76, 'cover crops', 'Pest and Disease Control', '51 days', '70 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(77, 'cover crops', 'Harvesting', '71 days', '100 days', 'Aerial Seeding', '3 to 4 months', 'Light Soil (Sandy Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(78, 'rice', 'Soil Preparation', '0 days', '10 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(79, 'rice', 'Seed Sowing', '11 days', '20 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(80, 'rice', 'Irrigation', '21 days', '30 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(81, 'rice', 'Weeding', '31 days', '40 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(82, 'rice', 'Fertilization', '41 days', '50 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(83, 'rice', 'Pest and Disease Control', '51 days', '70 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01'),
(84, 'rice', 'Harvesting', '71 days', '100 days', 'Nursery Seeding', '3 to 4 months', 'Heavy Soil (Clayey Soil)', '2024-09-26 01:05:01', '2024-09-26 01:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `crop_name` varchar(255) NOT NULL,
  `soil_type` enum('Heavy','Medium','Light') NOT NULL,
  `planting_type` enum('Seeding','Transplanting') NOT NULL,
  `activity` varchar(255) NOT NULL,
  `activity_start_days` int(11) NOT NULL,
  `activity_end_days` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `crop_name`, `soil_type`, `planting_type`, `activity`, `activity_start_days`, `activity_end_days`, `created_at`, `updated_at`) VALUES
(1, 'Soybean', 'Medium', 'Seeding', 'Pest Control', 20, 40, '2024-08-22 10:52:54', '2024-08-22 10:52:54'),
(2, 'Wheat', 'Heavy', 'Transplanting', 'Fertilizing', 30, 60, '2024-08-22 11:08:00', '2024-08-22 11:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_expenses` varchar(255) DEFAULT NULL,
  `farm_expense_belongs` varchar(255) DEFAULT NULL,
  `expense_amount_spend` varchar(255) DEFAULT NULL,
  `expense_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `type_expenses`, `farm_expense_belongs`, `expense_amount_spend`, `expense_date`, `created_at`, `updated_at`) VALUES
(1, 'purchase', '1', '200', '2024-08-04', '2024-08-04 08:22:28', '2024-08-04 08:22:28'),
(2, 'purchase', '3', '2000', '2024-08-04', '2024-08-04 10:04:50', '2024-08-04 10:04:50'),
(3, 'purchase', '1', '500', '2003-11-12', '2024-08-07 04:32:15', '2024-08-07 04:32:15'),
(5, 'purchase', '2', '4000', '2024-11-12', '2024-08-07 04:44:09', '2024-08-07 04:44:09'),
(8, 'purchase', '2', '100', '2024-08-28', '2024-08-28 23:47:33', '2024-08-28 23:47:33'),
(13, 'purchase', 'wheat', '200', '8/29/2024', '2024-08-29 00:32:40', '2024-08-29 00:32:40'),
(14, 'purchase', '4', '50', '2024-08-29', '2024-08-29 11:13:21', '2024-08-29 11:13:21'),
(15, 'purchase', '2', '500', '2024-08-29', '2024-08-29 11:15:44', '2024-08-29 11:15:44'),
(16, 'purchase', '2', '500', '2024-09-02', '2024-09-01 22:10:49', '2024-09-01 22:10:49'),
(17, 'purchase', '2', '500', '2024-09-09', '2024-09-09 01:15:21', '2024-09-09 01:15:21'),
(18, 'purchase', '7', '4000', '2024-09-07', '2024-09-20 01:32:10', '2024-09-20 01:32:10'),
(19, 'purchase', '4', '50000', '2024-09-16', '2024-09-20 01:34:44', '2024-09-20 01:34:44'),
(20, 'sale', 'ghee', '1000', '9/24/24', '2024-09-23 23:57:42', '2024-09-23 23:57:42'),
(21, 'purchase', '4', '3000', '2024-09-24', '2024-09-24 00:02:51', '2024-09-24 00:02:51'),
(22, 'purchase', '4', '2000', '2024-09-26', '2024-09-26 03:18:35', '2024-09-26 03:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmsetups`
--

CREATE TABLE `farmsetups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_product` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmsetups`
--

INSERT INTO `farmsetups` (`id`, `name_of_product`, `created_at`, `updated_at`, `quantity`) VALUES
(1, 'milk', '2024-08-04 08:13:18', '2024-08-04 08:13:18', ''),
(2, 'Ghee', '2024-08-04 08:23:06', '2024-08-04 08:23:06', ''),
(3, 'wheat', '2024-08-04 10:03:03', '2024-08-04 10:03:03', ''),
(4, 'barley', '2024-08-28 02:56:43', '2024-08-28 02:56:43', ''),
(5, 'peanut', '2024-08-28 22:23:47', '2024-08-28 22:23:47', ''),
(6, 'SHDJDJWW', '2024-09-01 22:11:14', '2024-09-01 22:11:14', ''),
(7, 'corn', '2024-09-20 01:31:15', '2024-09-20 01:31:15', ''),
(8, 'cows', '2024-09-27 05:11:31', '2024-09-27 05:11:31', '10');

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE `finances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `source_of_income` varchar(255) DEFAULT NULL,
  `farm_income_belong` varchar(255) DEFAULT NULL,
  `income_amount` varchar(255) DEFAULT NULL,
  `income_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `source_of_income`, `farm_income_belong`, `income_amount`, `income_date`, `created_at`, `updated_at`) VALUES
(1, 'sale', '3', '500', '2024-08-05', '2024-08-04 07:26:44', '2024-08-04 07:26:44'),
(2, 'sale', '1', '500', '2024-08-04', '2024-08-04 08:21:51', '2024-08-04 08:21:51'),
(3, 'sale', '3', '5400', '2024-08-04', '2024-08-04 10:03:51', '2024-08-04 10:03:51'),
(4, NULL, NULL, '1000', '2002-11-12', '2024-08-07 04:32:01', '2024-08-07 04:32:01'),
(5, 'sale', '3', '1000', '2024-11-12', '2024-08-07 04:43:39', '2024-08-07 04:43:39'),
(6, 'sale', '1', '5000', '2024-08-26', '2024-08-25 10:35:36', '2024-08-25 10:35:36'),
(7, 'sale', 'undefined', '500', '2024-09-03', '2024-08-28 10:58:19', '2024-08-28 10:58:19'),
(8, 'sale', '2', '500', '2024-08-29', '2024-08-28 22:36:37', '2024-08-28 22:36:37'),
(9, 'sale', '2', '200', '2024-08-29', '2024-08-28 23:36:20', '2024-08-28 23:36:20'),
(10, 'sale', 'gheee', '500', '8/29/2024', '2024-08-29 00:31:21', '2024-08-29 00:31:21'),
(11, 'sale', '2', '1000', '2024-09-02', '2024-09-01 22:10:31', '2024-09-01 22:10:31'),
(12, 'sale', '2', '2000', '2024-09-02', '2024-09-01 22:13:42', '2024-09-01 22:13:42'),
(13, 'sale', '2', '1000', '2024-09-09', '2024-09-09 01:15:01', '2024-09-09 01:15:01'),
(14, 'milk', 'product', '5000', '9/9/2024', '2024-09-09 09:45:58', '2024-09-09 09:45:58'),
(15, 'milk', 'null', '2000', '9/12/2024', '2024-09-12 11:39:50', '2024-09-12 11:39:50'),
(16, 'sale', '7', '10000', '2024-09-07', '2024-09-20 01:31:38', '2024-09-20 01:31:38'),
(17, 'sale', '3', '100000', '2024-10-03', '2024-09-20 01:35:05', '2024-09-20 01:35:05'),
(18, 'purchase', 'ghee', '2000', '9/24/24', '2024-09-23 23:57:04', '2024-09-23 23:57:04'),
(19, 'sale', '4', '5000', '2024-09-24', '2024-09-24 00:02:31', '2024-09-24 00:02:31'),
(20, 'sale', '5', '5000', '2024-09-26', '2024-09-26 03:15:59', '2024-09-26 03:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livestocks`
--

CREATE TABLE `livestocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `vaccinated_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `feeding_time` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `vaccinated` varchar(255) DEFAULT 'no',
  `doctor_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livestocks`
--

INSERT INTO `livestocks` (`id`, `name`, `birthdate`, `color`, `vaccinated_date`, `image`, `feeding_time`, `gender`, `vaccinated`, `doctor_name`, `created_at`, `updated_at`) VALUES
(1, 'cow', '7/7/2007', 'black', '8/8/2007', 'images/image.png', '9:27PM', 'male', 'no', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livetocks`
--

CREATE TABLE `livetocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `vaccinated_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `feeding_time` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `vaccinated` varchar(255) DEFAULT 'no',
  `doctor_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prescription` varchar(255) DEFAULT NULL,
  `report_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetocks`
--

INSERT INTO `livetocks` (`id`, `name`, `birthdate`, `color`, `vaccinated_date`, `image`, `feeding_time`, `gender`, `vaccinated`, `doctor_name`, `created_at`, `updated_at`, `prescription`, `report_date`) VALUES
(1, 'goat', '2024-06-03', '#523333', '2024-09-08', 'images/1727616681.jpeg', '08:06', 'female', 'yes', 'akash', '2024-09-09 08:05:05', '2024-09-29 08:01:41', 'ajbdbdedejdn', '2024-09-16'),
(2, 'sudhar', '9/16/24', 'black', NULL, 'livestock_animal_images/1726500374.jpeg', '8:55 AM', 'male', 'no', NULL, '2024-09-16 09:56:14', '2024-09-16 09:56:14', NULL, NULL),
(3, 'sudhar', '9/16/24', 'black', NULL, 'livestock_animal_images/1726500469.jpeg', '8:55 AM', 'male', 'no', NULL, '2024-09-16 09:57:49', '2024-09-16 09:57:49', NULL, NULL),
(4, 'sudhar', '2024-09-23', '#000000', '2024-09-29', 'images/1727616959.png', '08:06', 'male', 'yes', 'okn', '2024-09-16 09:59:30', '2024-09-29 08:06:23', 'urzxfgutrdxcgvhj', '2024-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `marketprices`
--

CREATE TABLE `marketprices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_02_135950_create_weather_table', 1),
(6, '2024_07_02_161408_create_crops_table', 1),
(7, '2024_07_05_151713_create_cropactivities_table', 1),
(8, '2024_07_15_090839_create_insurances_table', 1),
(9, '2024_07_17_031429_create_livetocks_table', 1),
(10, '2024_07_23_085101_add_vaccinated_to_vacc__table', 2),
(11, '2024_07_23_135329_add_image_to_livetcks__table', 3),
(12, '2024_07_28_154511_create_agricultures_table', 4),
(13, '2024_07_29_054254_create_marketprices_table', 4),
(14, '2024_08_03_030432_create_finances_table', 4),
(15, '2024_08_03_031045_create_finances_table', 5),
(16, '2024_08_04_125403_create_incomes_table', 6),
(17, '2024_08_04_125757_create_expenses_table', 7),
(18, '2024_08_04_134127_create_farmsetups_table', 8),
(19, '2024_08_18_064816_add_prescription_to_livestock_table', 9),
(20, '2024_08_22_045726_add_columns_to_livetocks', 10),
(21, '2024_08_22_155253_create_crops_table', 11),
(22, '2024_08_25_155506_create_cropdatas_table', 12),
(23, '2024_08_29_032934_create_finances_table', 13),
(24, '2024_08_29_154800_create_livestocks_table', 13),
(25, '2024_09_09_133131_create_livetocks_table', 14),
(26, '2024_09_09_133843_add_column_livestoks_to_table_name', 15),
(27, '2024_09_27_103712_add_quantity_table', 16),
(28, '2024_09_29_132109_add_report_date_to_livestock_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dhatchu', 'dhatchuma1810@gmail.com', 'user', NULL, '$2y$10$A9RstocacJgjDrKnmX/TouYzPCpqKGE9UhqWyCIf/VUTvGdTntys6', NULL, '2024-07-18 03:44:12', '2024-07-18 03:44:12'),
(2, 'sudhar', 'sudhar@gmail.com', 'user', NULL, '$2y$10$PNHouW/Acnzfcrt4UEe5yu/7LIjY9lrkn4JtWE2ZCeeH8wUUGSljG', NULL, '2024-07-31 08:54:24', '2024-07-31 08:54:24'),
(3, 'ad', 'ad@gmail.com', 'user', NULL, '$2y$10$Lu4s4lxDlbRq..DzCLq6zOV.QA68ejUOxT1dkBVXIt53mDpO5jmR6', NULL, '2024-09-09 09:39:58', '2024-09-09 09:39:58'),
(4, 'rams', 'rams@gmail.com', 'user', NULL, '$2y$10$gIAACi5HJB7Kgl9W5Ut4zOALXMD3UyEbLzrQ4lcKMDk2TwhgIFTXq', NULL, '2024-09-12 11:35:28', '2024-09-12 11:35:28'),
(5, 'vivek', 'vivek@gmail.com', 'user', NULL, '$2y$10$US2jFiXjoJkWMUC7aeNpxuQR27Z.F1NDgdOz3R14SE6r1GLGZvWHe', NULL, '2024-09-24 05:00:52', '2024-09-24 05:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agricultures`
--
ALTER TABLE `agricultures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cropactivities`
--
ALTER TABLE `cropactivities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cropdatas`
--
ALTER TABLE `cropdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farmsetups`
--
ALTER TABLE `farmsetups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livestocks`
--
ALTER TABLE `livestocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetocks`
--
ALTER TABLE `livetocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketprices`
--
ALTER TABLE `marketprices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agricultures`
--
ALTER TABLE `agricultures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cropactivities`
--
ALTER TABLE `cropactivities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `cropdatas`
--
ALTER TABLE `cropdatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmsetups`
--
ALTER TABLE `farmsetups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livestocks`
--
ALTER TABLE `livestocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `livetocks`
--
ALTER TABLE `livetocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marketprices`
--
ALTER TABLE `marketprices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
