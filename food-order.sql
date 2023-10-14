-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 13 oct. 2023 à 21:25
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `food-order`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', 'admin'),
(13, 'Dhiren Rathod', 'dhiren.rathod', 'ed4227734ed75d343320b6a5fd16ce57'),
(14, 'Yash Ghelani', 'yash.ghelani', '3999f2d98e2ee06ea4332582d3b79191'),
(15, 'سعيد نعمار', 'telecom', '$2y$10$wLjEPF2GpLNqZYJyCBoee.Yy5bGZ732saxpE7AhCgq7WcAi3OXn9C');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(16, 'shoes', 'Food_Category_210.jpeg', 'Yes', 'Yes'),
(17, 'electronique', 'Food_Category_260.jpeg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Rathod Dhirenkumar Mohanbhai', 'dhiren.m.rathod@gmail.com', 'Appriciation', 'Hello Dhiren Your Work is Greate..!'),
(2, 'Yash Ghelani', 'yash@gmail.com', 'jay ho', 'moje moj..');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(36, 'adidas', 'produit original et classe \r\ngarantie2 ans', 1570.00, 'Food-Name-4654.jpeg', 16, 'Yes', 'Yes'),
(37, 'samsung', 'neuf et garantie', 52000.00, '', 17, 'Yes', 'Yes'),
(38, 'samsung', 'neuf et garantie', 52000.00, '', 17, 'Yes', 'Yes'),
(39, 'acer', 'bien\r\nsolid', 27000.00, 'Food-Name-3323.jpeg', 17, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(4, 'simple samosa', 10.00, 2, 20.00, '2021-06-27 06:47:18', 'Delivered', 'Rathod Dhirenkumar Mohanbhai', '7016566323', 'dhiren.m.rathod@gmail.com', 'Near pandya seri, Nadoda vas, Baspa, taluka - sami, Dist - Patan'),
(5, 'adidas', 1500.00, 1, 1500.00, '2023-10-07 11:12:02', 'Ordered', 'mohateb', '0540338274', 'admin@mail.com', 'tizighenif'),
(6, 'dahipuri', 15.00, 1, 15.00, '2023-10-13 04:18:28', 'Ordered', 'mohateb', '0540338274', 'admin@mail.com', 'tizighenif'),
(7, 'dahipuri', 15.00, 2, 30.00, '2023-10-13 04:18:51', 'Ordered', 'moamed tebbal', '0540338274', 'alexjin1999alex@gmail.com', 'alger'),
(8, 'oil dabeli', 7.00, 1, 7.00, '2023-10-13 04:20:39', 'Ordered', 'moamed tebbal', '0540338274', 'alexjin1999alex@gmail.com', 'alger'),
(9, 'oil dabeli', 7.00, 1, 7.00, '2023-10-13 04:26:25', 'Ordered', 'moamed tebbal', '0540338274', 'alexjin1999alex@gmail.com', 'alger'),
(10, 'oil dabeli', 7.00, 10, 70.00, '2023-10-13 04:26:49', 'Ordered', 'moamed tebbal', '0540338274', 'alexjin1999alex@gmail.com', 'alger'),
(11, 'dahipuri', 50000000.00, 10, 99999999.99, '2023-10-13 04:48:43', 'Ordered', 'moamed tebbal', '0540338274', 'alexjin1999alex@gmail.com', 'alger'),
(12, 'تلفاز', 50000000.00, 123, 99999999.99, '2023-10-13 04:50:17', 'Ordered', 'moamed سضهي', '0584033225', 'alexjin1999alex@gmail.com', 'alger'),
(13, 'تلفاز', 50000000.00, 123, 99999999.99, '2023-10-13 05:19:50', 'Ordered', 'moamed سضهي', '0584033225', 'alexjin1999alex@gmail.com', 'alger'),
(14, 'adidas', 1570.00, 1, 1570.00, '2023-10-13 06:59:15', 'Ordered', 'mohateb', '0584033225', '', 'alger'),
(15, 'adidas', 1570.00, 1, 1570.00, '2023-10-13 07:00:31', 'Ordered', 'dgsd', 'sdgdg', '', 'gsdfgd');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
