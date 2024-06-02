-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 02 juin 2024 à 12:01
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
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(26, 'Exel', 'calcul', '../images/Apps/Exel.svg', 'Excel est un logiciel de tableur développé par Microsoft. Il offre des fonctionnalités puissantes pour la création, la gestion et l\'analyse de feuilles de calcul. '),
(27, 'Cyberwatch', 'supervision', '../images/Apps/Cyberwatch.svg', 'Cyberwatch est une plateforme de gestion de vulnérabilités pour surveiller et gérer les risques de sécurité informatique. Elle détecte les vulnérabilités, priorise les correctifs et génère des rapports détaillés. Idéal pour renforcer la sécurité des systèmes informatiques.'),
(28, 'Canva', 'design', '../images/Apps/Canva.svg', 'Canva est une plateforme de conception graphique qui permet de créer une grande variété de supports visuels tels que des graphiques, des présentations, des affiches, des logos, des images pour les réseaux sociaux, des cartes, des brochures et bien plus encore.'),
(29, 'Anydesk', 'supervision', '../images/Apps/Anydesk.svg', 'AnyDesk est une application de bureau à distance qui permet aux utilisateurs d\'accéder à un ordinateur à distance à partir d\'un autre appareil.'),
(30, 'Ilustrator', 'design', '../images/Apps/AdobeIlustrator.svg', 'Adobe Illustrator est un logiciel de création graphique vectorielle développé par Adobe. Illustrator permet de créer des illustrations, des logos, des icônes et d\'autres éléments graphiques en utilisant des vecteurs, ce qui garantit une qualité d\'image élevée et une extensibilité sans perte de résolution.'),
(31, 'Acrobat', 'design', '../images/Apps/AdobeAcrobat.svg', 'Adobe Acrobat est un logiciel développé par Adobe qui permet de créer, visualiser, modifier et partager des fichiers au format PDF'),
(32, '3cx', 'social', '../images/Apps/3cx.svg', '3CX est une solution de communication basée sur la VoIP. Elle permet aux entreprises de gérer leurs communications internes et externes de manière efficace, en utilisant des fonctionnalités telles que la téléphonie, la visioconférence, la messagerie instantanée et plus encore. '),
(33, 'Keynote', 'presentation', '../images/Apps/Keynote.svg', 'Keynote est une application de présentation développée par Apple. Elle offre des fonctionnalités avancées pour créer des diaporamas interactifs, des présentations visuelles et des animations.'),
(34, 'OBS', 'video', '../images/Apps/OBS.svg', 'OBS, ou Open Broadcaster Software, est un logiciel open-source utilisé pour la capture vidéo et la diffusion en direct. Il offre des fonctionnalités robustes pour l\'enregistrement de l\'écran, la capture d\'application, la diffusion en continu sur des plateformes telles que Twitch et YouTube, ainsi que la gestion de sources audio et vidéo.'),
(35, 'VMware', 'virtualisation', '../images/Apps/VMware.svg', 'VMware est une société spécialisée dans les technologies de virtualisation et de cloud computing. Elle propose une suite de produits qui permettent aux entreprises de créer, gérer et optimiser des environnements informatiques virtualisés. '),
(36, 'Discord', 'social', '../images/Apps/Discord.svg', 'Discord est une plateforme de communication en ligne, principalement utilisée pour la messagerie instantanée, la voix et la vidéo. '),
(37, 'X', 'social', '../images/Apps/X.svg', 'X, anciennement Twitter, est une plateforme de médias sociaux où les utilisateurs peuvent partager des messages courts, images, et vidéo. '),
(38, 'The Hive', 'sécurité', '../images/Apps/theHive.svg', 'TheHive est une plateforme évolutive de réponse aux incidents de sécurité, étroitement intégrée à MISP (Malware Information Sharing Platform), conçue pour simplifier la vie des SOCs, CSIRTs, CERTs et de tout professionnel de la sécurité de l\'information traitant des incidents de sécurité nécessitant une enquête et une action rapide.'),
(39, 'Proxmox', 'sécurité', '../images/Apps/proxmox.svg', 'Proxmox Mail Gateway est une solution de passerelle de messagerie conçue pour assurer la sécurité des e-mails. Elle intègre des fonctionnalités avancées telles que la protection antivirus, la détection de spams et de phishing, ainsi que la gestion centralisée des politiques de sécurité.');

-- --------------------------------------------------------

--
-- Structure de la table `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `ordre` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cards`
--

INSERT INTO `cards` (`id`, `img`, `titre`, `link`, `ordre`) VALUES
(1, '../img/visionos.png', 'VISION OS', 'https://www.figma.com/community/file/1328464238383806605/research-on-vision-os', 5),
(2, '../img/porsche.png', 'PORSCHE', 'https://www.figma.com/community/file/1335933291566581074/redesign-porsche-taycan', 2),
(3, '../img/crisetool.png', 'CRISETOOL', '', 3),
(4, '../img/bento.png', 'BENTO GRIDS', 'https://www.figma.com/community/file/1353374397392924935/research-on-bento', 4),
(5, '../img/4cf.png', 'COEURCOTEFLEURIE', '', 9),
(6, '../img/404.png', '404 PAGES', 'https://www.figma.com/community/file/1353744962325890487/cool-404-pages', 5),
(7, '../img/portfolio.png', '(old) PORTFOLIO', 'https://www.figma.com/community/file/1349857591277304414/cool-ui-ux-portfolio', 8),
(8, '../img/toggle.png', 'NEO TOGGLE', 'https://www.figma.com/community/file/1335710074562180345/cool-toggle-annimation', 12),
(9, '../img/croissantage.png', 'CROISSANTAGE', 'https://croissantage.com', 6),
(10, '../img/blog.png', 'BLOG', 'https://www.figma.com/community/file/1348774121253901502/cool-clean-blog', 10),
(11, '../img/alpine.png', 'ALPINE A110', 'https://www.figma.com/community/file/1335959683520362852/redesign-alpine-a110', 11),
(12, '../img/emusic.png', 'EMUSIC', 'https://www.figma.com/community/file/1370098717301311092/emusic-application-de-concervatoire-de-musique', 1),
(13, '../img/mail.png', 'MAIL TEMPLATE', 'https://www.figma.com/community/file/1370110750726955644/mail-template', 7);

-- --------------------------------------------------------

--
-- Structure de la table `ecoles`
--

DROP TABLE IF EXISTS `ecoles`;
CREATE TABLE IF NOT EXISTS `ecoles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imglink` varchar(60) NOT NULL,
  `titre` varchar(120) NOT NULL,
  `ecolelink` varchar(250) NOT NULL,
  `ecolenom` varchar(60) NOT NULL,
  `ville` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ecoles`
--

INSERT INTO `ecoles` (`id`, `imglink`, `titre`, `ecolelink`, `ecolenom`, `ville`) VALUES
(1, '../images/Xp/sainte-ursule.png', 'Alternant en BTS Service Informatique aux Organisations, spécialité Solutions Logicielles et Applications Métiers ', 'https://www.caensup.fr', 'CaenSup Sainte-Ursule', 'Caen'),
(2, '../images/Xp/caen-campus-1.png', 'Etudiant en licence de droit à la l’Université de Caen Normandie.', 'https://ufr-droit.unicaen.fr', 'Faculté de Caen', 'Caen'),
(3, '../images/Xp/fremont.png', 'Lycéen en classe Littéraire au Lycée Frémont.', 'https://lyceesfremontlesrosiers.fr', 'Frémont - Les Rosiers', 'Liseux'),
(4, '../images/Xp/gambier.png', 'Collégien en Classe à Horaires Aménagées Musique en collaboration avec le Conservatoire à Rayonnement Départemental de L', 'https://marcel-gambier.lycee.ac-normandie.fr', 'Marcel-Gambier', 'Lisieux');

-- --------------------------------------------------------

--
-- Structure de la table `xpcard`
--

DROP TABLE IF EXISTS `xpcard`;
CREATE TABLE IF NOT EXISTS `xpcard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `linkimg` varchar(60) NOT NULL,
  `categorie` varchar(60) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `liensite` varchar(60) NOT NULL,
  `date` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `xpcard`
--

INSERT INTO `xpcard` (`id`, `linkimg`, `categorie`, `titre`, `liensite`, `date`) VALUES
(2, '../images/Xp/indeauville.svg', 'Relation client', 'Conseillé en séjour en office de tourisme pour « InDeauville ».', 'https://www.indeauville.fr', 'étés  2022-2023'),
(3, '../images/Xp/tradart.svg', 'Vente & estimation', 'Stagiaire dans la SARL « TRADART » auprès du commissaire priseur James Fattori.\r\n', 'https://www.indeauville.fr/boutiques/tradart-deauville', 'Juin 2017'),
(4, '../images/Xp/avocat.svg', 'Assitance, secrétariat', 'Stagiaire au cabinet d’avocat SELARL Jean-Pimor, auprès d’avocats mandataires au tribunal de commerce.', 'https://www.jean-pimor-avocats.fr', 'Octobre  2022'),
(1, '../images/Xp/ccccf.svg', 'Développement, réseaux, support', 'Dev junior et apprentis technicien d’exploitation pour la communauté de commune « Coeur Côte Fleurie ».', 'https://www.coeurcotefleurie.org', 'années 2023-2024');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
