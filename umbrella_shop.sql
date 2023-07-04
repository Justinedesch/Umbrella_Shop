-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 04 juil. 2023 à 09:40
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
-- Base de données : `umbrella_shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Cat 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vulputate suscipit dolor, nec efficitur arcu commodo vel. Mauris sed dignissim tellus. Donec ac odio sit amet metus facilisis dignissim. Pellentesque bibendum enim pharetra, scelerisque sapien vel, congue sapien. Nunc efficitur leo a nibh blandit ultrices. Nunc id mi aliquet, eleifend est eu, sagittis est. Mauris eget fringilla turpis. Aliquam porta, mi quis faucibus aliquet, metus felis accumsan nisi, at venenatis quam tellus a nisl. Nam accumsan mollis aliquam.'),
(2, 'Cat 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vulputate suscipit dolor, nec efficitur arcu commodo vel. Mauris sed dignissim tellus. Donec ac odio sit amet metus facilisis dignissim. Pellentesque bibendum enim pharetra, scelerisque sapien vel, congue sapien. Nunc efficitur leo a nibh blandit ultrices. Nunc id mi aliquet, eleifend est eu, sagittis est. Mauris eget fringilla turpis. Aliquam porta, mi quis faucibus aliquet, metus felis accumsan nisi, at venenatis quam tellus a nisl. Nam accumsan mollis aliquam.'),
(3, 'Cat 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vulputate suscipit dolor, nec efficitur arcu commodo vel. Mauris sed dignissim tellus. Donec ac odio sit amet metus facilisis dignissim. Pellentesque bibendum enim pharetra, scelerisque sapien vel, congue sapien. Nunc efficitur leo a nibh blandit ultrices. Nunc id mi aliquet, eleifend est eu, sagittis est. Mauris eget fringilla turpis. Aliquam porta, mi quis faucibus aliquet, metus felis accumsan nisi, at venenatis quam tellus a nisl. Nam accumsan mollis aliquam.');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `zip_code` mediumint(11) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `adresse`, `zip_code`, `city`) VALUES
(1, 'Chuck', 'Norris', 'Inconnu', 38000, 'a un endroit'),
(2, 'Charlize', 'theron', 'rue des riches', 7300, 'New-york'),
(3, 'Ryan', 'Gosling', 'rue des pauvres', 38120, 'Las vegas');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `number`, `total`, `date`, `customer_id`) VALUES
(1, 1, 120, '2020-12-11 13:39:04', 1),
(2, 2, 600, '2020-12-01 13:39:04', 1),
(3, 3, 150, '2020-12-01 13:43:03', 2),
(4, 4, 520, '2020-12-01 13:43:03', 2),
(5, 5, 600, '2020-12-11 13:44:20', 2);

-- --------------------------------------------------------

--
-- Structure de la table `order_product`
--

CREATE TABLE `order_product` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `order_product`
--

INSERT INTO `order_product` (`product_id`, `order_id`, `quantity`) VALUES
(2, 1, 1),
(4, 1, 2),
(12, 2, 1),
(11, 2, 2),
(2, 3, 1),
(10, 3, 1),
(5, 4, 2),
(12, 4, 1),
(3, 5, 1),
(13, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` float NOT NULL,
  `weight` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` smallint(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `weight`, `image`, `quantity`, `available`, `categorie_id`) VALUES
(2, 'Adravil', 'Quick & Fast Relief, by Dr.BART', 100, 1000, 'img/Adravil.JPG', 10, 1, 1),
(3, 'AquaCure', 'Escape to Ecstasy - IN STORE NOW', 100, 1000, 'img/AquaCure.JPG', 10, 1, 1),
(4, 'Safsprin', 'The Common Cure - IN STORE NOW', 10, 500, 'img/Safsprin.JPG', 1, 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_id` (`customer_id`);

--
-- Index pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `products_id` (`product_id`),
  ADD KEY `orders_id` (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categories` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `customers_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Contraintes pour la table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `id_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
