-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 21 jan. 2024 à 11:45
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
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `appcard`
--

INSERT INTO `appcard` (`ID`, `nom`, `categorie`, `imglink`, `description`) VALUES
(1, 'Procreate', 'design', '../images/Apps/procreate.svg', 'Procreate est une application de dessin et de peinture numérique conçue spécifiquement pour les artistes et les illustrateurs. Elle offre une gamme d\'outils et de fonctionnalités pour créer des œuvres d\'art numériques de haute qualité.'),
(2, 'Figma', 'design', '../images/Apps/Figma.svg', 'Figma est une plateforme de conception d\'UI et d’UX . C\'est un outil collaboratif utilisé pour créer, prototyper et collaborer sur des projets de conception.'),
(4, 'Intellij', 'code', '../images/Apps/intellij.svg', 'IntelliJ est un IDE puissant, conçu pour les développeurs. Il offre des fonctionnalités avancées telles que la navigation intelligente dans le code, la refactorisation, le débogage et la prise en charge de multiples langages de programmation.'),
(5, 'Notion', 'notes', '../images/Apps/Notion.svg', 'Notion est une application de prise de notes et de gestion de projet qui offre une approche flexible et collaborative pour l\'organisation et la documentation d\'informations. Elle combine des fonctionnalités de traitement de texte, de tableur, de base de données, de gestion de tâches et d’IA.'),
(6, 'Arc', 'web', '../images/Apps/Arc.svg', 'ARC est un navigateur Web qui renforce la productivité par des fonctions esthétique organisationnelles.  '),
(7, 'Zabbix', 'supervision', '../images/Apps/zabbix.svg', 'ZABBIX est un outil open source de surveillance réseau qui permet de surveiller de gérer et d\'analyser les performances des équipements réseau, des serveurs, des applications et d\'autres ressources informatiques.'),
(8, 'Word', 'notes', '../images/Apps/Word.svg', 'Microsoft Word est un logiciel de traitement de texte qui permet de créer, éditer et formater des documents textuels'),
(9, 'VSCode', 'code', '../images/Apps/VSCode.svg', 'Visual Studio Code est un éditeur de code conçu pour être léger, rapide et hautement configurable.'),
(10, 'Thread', 'social', '../images/Apps/Thread.svg', 'Thread est une plateforme de médias sociaux développé par Meta qui permet aux utilisateurs de partager des messages courts. Ces messages peuvent contenir du texte, des images, des enregistrements audio, des liens et des vidéos.'),
(11, 'Shortcut', 'code', '../images/Apps/Shortcut.svg', 'Shortcuts d\'Apple est une application qui permet aux utilisateurs de créer des automatisations personnalisées sur leurs appareils iOS. Avec Shortcuts, vous pouvez regrouper plusieurs actions en une seule commande, simplifiant ainsi l\'exécution de tâches répétitives.'),
(12, 'PRTG', 'supervision', '../images/Apps/PRTG.svg', 'PRTG est un outil de surveillance réseau qui permet de surveiller de gérer et d\'analyser les performances des équipements réseau, des serveurs, des applications et d\'autres ressources informatiques.'),
(13, 'PremierePro', 'design', '../images/Apps/PremierPro.svg', 'PremierePro un logiciel de montage vidéo professionnel développé par Adobe, qui offre des fonctionnalités avancées pour l\'édition, le montage et la production vidéo.'),
(14, 'Powerpoint', 'presentation', '../images/Apps/Powerpoint.svg', 'PowerPoint est une application de création de présentations développée par Microsoft. PowerPoint permet de concevoir des diaporamas visuels avec des diapositives contenant du texte, des images, des graphiques et des vidéos.'),
(15, 'PhpStorm', 'code', '../images/Apps/PhpStorm.svg', 'PhpStorm est un IDE spécifiquement conçu pour le langage de programmation PHP. Il propose des fonctionnalités avancées telles que la navigation intelligente dans le code, le débogage, la complétion automatique et l\'intégration avec des outils de gestion de versions. '),
(16, 'Photoshop', 'photo', '../images/Apps/Photoshop.svg', 'Photoshop est une application de retouche d\'image puissante développé par Adobe, utilisée pour l\'édition de photos, la création graphique et la conception.'),
(17, 'Outook', 'mail', '../images/Apps/Outook.svg', 'Outlook est un logiciel de gestion des e-mails et de calendrier développé par Microsoft. Outlook offre des fonctionnalités avancées pour la gestion des courriels, la planification des réunions, la gestion des contacts et des tâches.'),
(18, 'OneNote', 'note', '../images/Apps/OneNote.svg', 'OneNote est une application de prise de notes développée par Microsoft. OneNote permet aux utilisateurs de créer des blocs-notes numériques où ils peuvent organiser et capturer des idées sous forme de notes, dessins, captures d\'écran et enregistrements audio.'),
(19, 'MRmoteNG', 'supervision', '../images/Apps/MRmoteNG.svg', 'mRemoteNG est une application de gestion de connexions à distance. Elle permet aux utilisateurs de se connecter et de gérer plusieurs sessions à distance vers des serveurs, des machines virtuelles, des équipements réseau et d\'autres ressources à partir d\'une seule interface.'),
(20, 'Milanote', 'note', '../images/Apps/Milanote.svg', 'MilaNote est une application de prise de notes visuelles qui permet de créer des notes, des diagrammes, des organigrammes et d\'autres éléments visuels pour organiser et structurer leurs idées.'),
(21, 'Lightroom', 'design', '../images/Apps/Lightroom.svg', 'Lightroom est une application de retouche photo développée par Adobe. Elle offre des outils puissants pour l\'édition et l\'organisation des images.'),
(22, 'Greylog', 'supervision', '../images/Apps/Greylog.svg', 'SIEM GreyLog est une solution de gestion des informations et des événements de sécurité qui permet aux organisations de collecter, d\'analyser et de gérer les journaux et les données d\'événements provenant de diverses sources, telles que les systèmes, les applications, les pare-feu, les serveurs et les appareils réseau.'),
(23, 'GLPI', 'supervision', '../images/Apps/GLPI.svg', 'GLPI 2.0 est une solution de gestion des services informatiques, des actifs et des tickets. C\'est une application web qui permet aux organisations de gérer efficacement leur parc informatique, leurs ressources matérielles, leurs logiciels et leurs services.'),
(24, 'Gitlab', 'code', '../images/Apps/Gitlab.svg', 'GitLab est une plateforme de gestion de projet basée sur Git qui offre des fonctionnalités de gestion de code source, de suivi des problèmes, de déploiement continu et de collaboration pour les équipes de développement. Elle permet aux développeurs de travailler ensemble de manière transparente, de gérer le cycle de vie du code source, et de suivre l\'avancement des projets. '),
(25, 'Github', 'code', '../images/Apps/Github.svg', 'GitHub est une plateforme de développement de logiciels basée sur le cloud, utilisé pour la gestion de versions, la collaboration et le suivi des projets de développement de logiciels.'),
(26, 'Exel', 'calcul', '../images/Apps/Exel.svg', ''),
(27, 'Cyberwatch', 'supervision', '../images/Apps/Cyberwatch.svg', ''),
(28, 'Canva', 'design', '../images/Apps/Canva.svg', ''),
(29, 'Anydesk', 'supervision', '../images/Apps/Anydesk.svg', ''),
(30, 'Ilustrator', 'design', '../images/Apps/AdobeIlustrator.svg', ''),
(31, 'Acrobat', 'design', '../images/Apps/AdobeAcrobat.svg', ''),
(32, '3cx', 'social', '../images/Apps/3cx.svg', ''),
(33, 'Keynote', 'presentation', '../images/Apps/Keynote.svg', 'Keynote est une application de présentation développée par Apple. Elle offre des fonctionnalités avancées pour créer des diaporamas interactifs, des présentations visuelles et des animations.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
