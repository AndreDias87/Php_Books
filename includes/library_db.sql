-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 19 Mars 2017 à 15:05
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `library_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `Book_ID` int(11) NOT NULL,
  `Title` varchar(60) NOT NULL,
  `Authors` varchar(100) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Image` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `book`
--

INSERT INTO `book` (`Book_ID`, `Title`, `Authors`, `Category_ID`, `Status`, `Image`) VALUES
(1, 'Beginning Programming with Java For Dummies', 'Authors: Barry A. Burd\r\n', 4, 'Available', 'Book1.jpg'),
(2, 'Beginning Java Programming', 'Authors: Iducate Learning Technologies\r\n', 4, 'Available', 'Book2.jpg'),
(3, 'Learning Java: A Bestselling Hands-On Java Tutorial', 'Authors: Patrick Niemeyer and Daniel Leuck\r\n', 4, 'Rented', 'Book3.jpg'),
(4, 'Java Cookbook: Solutions and Examples for Java Developers', 'Authors: Ian F. Darwin\r\n', 4, 'Available', 'Book4.jpg'),
(5, 'C# Programming: From Problem Analysis to Program Design', 'Author:Barbara Doyle\r\n', 4, 'Available', 'Book5.jpg'),
(6, 'Essential Engineering Mathematics', 'Author: Michael Batty', 2, 'Available', 'Book6.jpg'),
(7, 'Mathematics for Computer Scientists', 'Authors: Gareth J. Janacek , Mark Lemmon Close', 2, 'Available', 'Book7.jpg'),
(8, 'An Introduction to Matlab', 'Author: Krister Ahlersten', 2, 'Reserved', 'Book8.jpg'),
(9, 'Refresher Course in Mathematics', 'Author:Frank Werner', 2, 'Available', 'Book9.jpg'),
(10, 'Electricity, Magnetism, Optics and Modern Physics', 'Author: Daniel Gebreselasie', 3, 'Available', 'Book10.jpg'),
(11, 'Foundation of Physics for Scientists and Engineers', 'Author:Ali R. Fazely', 3, 'Available', 'Book11.jpg'),
(12, 'Chemistry for Chemical Engineers', 'Authors: Dr. Ashleigh J. Fletcher', 1, 'Rented', 'Book12.jpg'),
(13, 'Chemical Engineering Vocabulary: Bilingual', 'Author: Maximilian Lackner', 1, 'Available', 'Book13.jpg'),
(14, 'Chemical Thermodynamics', 'Author: Leo Lue', 1, 'Available', 'Book14.jpg'),
(15, 'The C++ Programming Language', 'Author: Bjarne Stroustrup', 4, 'Available', 'Book15.jpg'),
(16, 'Programming: Principles and Practice Using C++', 'Author: Bjarne Stroustrup', 4, 'Rented', 'Book16.jpg'),
(17, 'Microsoft Visual C# Step by Step', 'Author: John Sharp', 4, 'Rented', 'Book17.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `book_category`
--

CREATE TABLE `book_category` (
  `Category_ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `book_category`
--

INSERT INTO `book_category` (`Category_ID`, `Name`) VALUES
(1, 'Chemistry'),
(2, 'Math'),
(3, 'Physics'),
(4, 'Programming');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Index pour la table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
