-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 20 jan. 2024 à 22:39
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portefoliocshdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `appcard`
--

DROP TABLE IF EXISTS `appcard`;
CREATE TABLE IF NOT EXISTS `appcard` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `categorie` varchar(60) NOT NULL,
  `imglink` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `appcard`
--

INSERT INTO `appcard` (`ID`, `nom`, `categorie`, `imglink`) VALUES
(1, 'Procreate', 'design', '../images/Apps/procreate.svg'),
(2, 'Figma', 'design', '../images/Apps/Figma.svg'),
(4, 'Intellij', 'code', '../images/Apps/intellij.svg'),
(5, 'Notion', 'notes', '../images/Apps/Notion.svg'),
(6, 'Arc', 'web', '../images/Apps/Arc.svg'),
(7, 'Zabbbix', 'supervision', '../images/Apps/zabbbix.svg'),
(8, 'Word', 'notes', '../images/Apps/Word.svg'),
(9, 'VSCode', 'code', '../images/Apps/VSCode.svg'),
(10, 'Thread', 'social', '../images/Apps/Thread.svg'),
(11, 'Shortcut', 'code', '../images/Apps/Shortcut.svg'),
(12, 'PRTG', 'supervision', '../images/Apps/PRTG.svg'),
(13, 'PremierPro', 'design', '../images/Apps/PremierPro.svg'),
(14, 'Powerpoint', 'presentation', '../images/Apps/Powerpoint.svg'),
(15, 'PhpStorm', 'code', '../images/Apps/PhpStorm.svg'),
(16, 'Photoshop', 'photo', '../images/Apps/Photoshop.svg'),
(17, 'Outook', 'mail', '../images/Apps/Outook.svg'),
(18, 'OneNote', 'note', '../images/Apps/OneNote.svg'),
(19, 'MRmoteNG', 'supervision', '../images/Apps/MRmoteNG.svg'),
(20, 'Milanote', 'note', '../images/Apps/Milanote.svg'),
(21, 'Lightroom', 'design', '../images/Apps/Lightroom.svg'),
(22, 'Greylog', 'supervision', '../images/Apps/Greylog.svg'),
(23, 'GLPI', 'supervision', '../images/Apps/GLPI.svg'),
(24, 'Gitlab', 'code', '../images/Apps/Gitlab.svg'),
(25, 'Github', 'code', '../images/Apps/Github.svg'),
(26, 'Exel', 'calcul', '../images/Apps/Exel.svg'),
(27, 'Cyberwatch', 'supervision', '../images/Apps/Cyberwatch.svg'),
(28, 'Canva', 'design', '../images/Apps/Canva.svg'),
(29, 'Anydesk', 'supervision', '../images/Apps/Anydesk.svg'),
(30, 'Ilustrator', 'design', '../images/Apps/AdobeIlustrator.svg'),
(31, 'Acrobat', 'design', '../images/Apps/AdobeAcrobat.svg'),
(32, '3cx', 'social', '../images/Apps/3cx.svg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
