-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 08 juil. 2022 à 13:50
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chiffrage`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessoirearticle`
--

CREATE TABLE `accessoirearticle` (
  `idArticle` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `accessoirearticle`
--

INSERT INTO `accessoirearticle` (`idArticle`, `nom`, `description`) VALUES
(358, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(358, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(358, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(358, 'Capot BT	1 capt BT plombable	', ''),
(358, 'Relais de protection	1 relais DMCR', ''),
(359, 'Nom	Description	Supprimer', ''),
(359, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(359, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(359, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(359, 'Capot BT	1 capt BT plombable	', ''),
(359, 'Relais de protection	1 relais DMCR', ''),
(360, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(360, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(360, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(360, 'Capot BT	1 capt BT plombable	', ''),
(360, 'Relais de protection	1 relais DMCR', ''),
(361, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(361, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(361, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(361, 'Capot BT	1 capt BT plombable	', ''),
(361, 'Relais de protection	1 relais DMCR', ''),
(362, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(362, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(362, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(362, 'Capot BT	1 capt BT plombable	', ''),
(362, 'Relais de protection	1 relais DMCR', ''),
(363, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(363, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(363, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(363, 'Capot BT	1 capt BT plombable	', ''),
(363, 'Relais de protection	1 relais DMCR', ''),
(364, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(364, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(364, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(364, 'Capot BT	1 capt BT plombable	', ''),
(364, 'Relais de protection	1 relais DMCR', ''),
(365, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(365, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(365, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(365, 'Capot BT	1 capt BT plombable	', ''),
(365, 'Relais de protection	1 relais DMCR', ''),
(366, '4 galets de roulement orientables latéralement et longitudinalement		', ''),
(366, 'Système de vidange	Bouchon de vidange DIN type A22 C2–EN 50216-4	', ''),
(366, 'Verrouillage des traversées embrochables	Sans serrures	', ''),
(366, 'Capot BT	1 capt BT plombable	', ''),
(366, 'Relais de protection	1 relais DMCR', '');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `idFournisseur` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin DEFAULT NULL,
  `descriptif` text COLLATE utf8_bin DEFAULT NULL,
  `img` text COLLATE utf8_bin DEFAULT NULL,
  `prix` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `idFournisseur`, `nom`, `description`, `descriptif`, `img`, `prix`) VALUES
(1, 1, 'Transformateur 160KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral.\r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance.\r\nEn conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 0),
(2, 1, 'Transformateur 250KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral.\r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.	', NULL, 'transformateur', 8250),
(3, 1, 'Transformateur 400KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral.\r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 9590),
(4, 1, 'Transformateur 630KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral.\r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 12530),
(5, 1, 'Transformateur 800KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral.\r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 14880),
(6, 1, 'Transformateur 1000KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral. Les transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 17750),
(7, 1, 'Transformateur 1250KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral. \r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques', NULL, 'transformateur', 19550),
(8, 1, 'Transformateur 1600KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral. \r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 22310),
(9, 1, 'Transformateur 2000KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral. \r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 22500),
(10, 1, 'Transformateur 2500KVA', 'Fourniture et pose d\'un transformateur immergé dans l’huile à refroidissement ONAN, étanche, à remplissage intégral. \r\n\r\nLes transformateurs objets de notre offre sont assujettis au règlement Erp EcoDesign français n° 548/2014 de la Commission de régulation européenne du 21 mai 2014 en application de la Directive 2009/125/CE du Parlement Européen et du Conseil en ce qui concerne les transformateurs de faible, moyenne et grande puissance. En conséquence, tous les transformateurs dont la mise en service s\'effectuera à partir du 1er Juillet 2021 doivent impérativement se conformer aux exigences de ce règlement, notamment en terme de seuils de niveaux (AA0Ak jusqu’à 3150kVA inclus, et PEI =99.532% jusqu’à 4000KVA) et de tolérances de pertes électriques.', NULL, 'transformateur', 26100),
(11, 1, 'Transformateur auxiliaire 10KVA', 'Fourniture d’un transformateur BT/BT de 10 kVA pour les auxiliaires du poste qui sera\r\naccordé en amont du Disjoncteur Général Basse Tension.', '', 'transformateuraux10', 540),
(12, 1, 'Transformateur auxiliaire 8KVA', 'Fourniture d’un transformateur HTA/BT de 8 kVA pour les auxiliaires du poste qui sera\r\naccordé en aval d’une cellule HTA inter/fusible', NULL, 'transformateuraux8', 3500),
(13, 1, 'Transformateur à commission', 'Fourniture et raccordement  d’un transformateur HTA/BT de xxx kVA dont les caractéristiques techniques sont les suivantes :', NULL, NULL, 0),
(14, 1, 'CAMARGUE', '', NULL, '', 0),
(15, 1, 'VENTOUX', '', NULL, '', 0),
(16, 1, 'LARZAC', '', NULL, '', 0),
(17, 1, 'VACCARES (Hors T&D avec Intégration matériels)', '', NULL, 'vaccares', 9525),
(18, 1, 'SML (Hors T&D avec Intégration matériels)', '', NULL, 'sml', 13215),
(19, 1, 'BURZET', '', NULL, '', 0),
(163, 1, 'RM6 IQI C13100, MX 220 sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-400A-12,5kA, type IQI C13100 non extensible constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande CIT manuelle\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis)\r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1186mm x P=710mm x H=1142mm', 'cellulehta', 5936),
(164, 1, 'RM6 IQI C13100, Cde Elec type 2 sur Fcts I, MX 220 sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-400A-12,5kA, type IQI C13100 non extensible constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande motorisée CIT  48VCC  « type 2 Enedis »  comprenant :\r\n          o 1 Interrupteur de Neutralisation de la cde à distance\r\n          o 1 Liaison  pour  coffret  ITI/PASA avec connecteur  (L=10m)\r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV) \r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage \r\n    • 3 traversées embrochables fixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B  et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis)\r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou \r\n       droit (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1186mm x P=710mm x H=1142mm\r\n\r\nITI-PASA :\r\nEquipement pour  téléconduite de réseau comprenant :\r\n   • 1 Coffret Easergy  ITI-PASA 2 voies avec détection de défaut Ampéremétrique/Directionnelle conforme à la spécification Enedis HN 64-S-44 version F, en acier inoxydable, équipé de :\r\n      • 2 cartes mesure/détection de défaut \r\n      • 1 carte mesure de tension\r\n      • 1 modem Radio\r\n      • 1 batterie 12V 38Ah pour l’alim. secourue\r\n      • 2 connecteurs pour la liaison avec les commandes électriques des interrupteurs HTA arrivées réseau.\r\nDimensions :  H660mm x P350mm x L220mm \r\n   • 2 Jeux de 3 tores  phases ouvrants 500/1\r\n   • 2 Câbles de liaison tores L=10m\r\nprise de potentiel amovible pour connecteur séparable (PPACS) avec câble de liaison tension de 10m (raccordement sur coffret ITI)', 'cellulehta', 8435),
(165, 1, 'RM6 IQI C13100, Cde élec type 3 sur fcts I, MX 220 sur fct Q ', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-400A-12,5kA, type IQI C13100 non extensible constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande motorisée CIT  48VCC  « type 3 Enedis » (réseau en double dérivation) comprenant :\r\n          o 1 Interrupteur de Neutralisation de la cde à distance\r\n          o 1 Relais de détection de tension IPT22\r\n          o 1 Liaison  pour  coffret  ITI/PASA avec connecteur  (L=10m)\r\n    • 3 indicateurs de présence de tension (VPIS_VO 10,1 à 20KV)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage   \r\n    • 3 traversées embrochablesfixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1186mm x P=710mm x H=1142mm\r\n\r\nITI-PASA :\r\nEquipement pour  téléconduite de réseau comprenant :\r\n   • 1 Coffret Easergy  ITI-PASA 2 voies avec détection de défaut Ampéremétrique/Directionnelle conforme à la spécification Enedis HN 64-S-44 version F, en acier inoxydable, équipé de :\r\n      • 2 cartes mesure/détection de défaut \r\n      • 1 carte mesure de tension\r\n      • 1 modem Radio\r\n      • 1 batterie 12V 38Ah pour l’alim. secourue\r\n      • 2 connecteurs pour la liaison avec les commandes électriques des interrupteurs HTA arrivées réseau.\r\nDimensions :  H660mm x P350mm x L220mm \r\n   • 2 Jeux de 3 tores  phases ouvrants 500/1\r\n   • 2 Câbles de liaison tores L=10m\r\nprise de potentiel amovible pour connecteur séparable (PPACS) avec câble de liaison tension de 10m (raccordement sur coffret ITI)', 'cellulehta', 9100),
(167, 1, 'Cellule Siemens comptage BT', 'Fourniture et raccordement d’un Tableau HTA constitué de cellules modulaires de marque SIEMENS pour un comptage BT comprenant :', 'Unité Fonctionnelle Arrivée Interrupteur AI (R)\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 400 A, et dispositif de\r\nverrouillage (cadenas).\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n- 1 câble par phase (max 240 mm2), étrier de serrage en bas de compartiment. par l’avant.\r\n- de type « B » embrochable 400 A, selon la norme EN 50181.\r\n- Système d’indicateur de présence de tension WEGA zéro.\r\n- Dimensions et poids :\r\n- Largeur UF : 310 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm\r\n\r\nUnité Fonctionnelle Interrupteur Fusibles Combinés - IFC(T)\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, à\r\n- Commande manuelle, et dispositif de verrouillage (cadenas)\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- 1 bobine de déclenchement à émission 230VAC pour l’interrupteur fusible\r\n- 1 dispositif d’ouverture de l’interrupteur sur fusion de l’un des fusibles\r\n- Avec signalisation mécanique \"Fusible MT déclenché\"\r\n- Inter verrouillage HTA/TR/BT RONIS type C4, avec cylindre RONIS,\r\n- Raccordement câbles MT :\r\n- 1 câble par phase, étrier de serrage en bas de compartiment\r\n- par l’avant\r\n- de type « A » embrochable 250 A selon la norme EN 50181.\r\n- Système détecteur de tension WEGA zéro.\r\n- Dimensions et poids :\r\n- Largeur UF : 430 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur hors tout : 1535mm.\r\n- Poids : 160 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 420 mm\r\nContact de postions 1NO+1NC+ 2INV (interrupteur et sectionneur de terre)\r\nContact fusion fusibles : 1 NO.', 'cellulehtasie', 6620),
(169, 1, 'RM6 RE-QI C13100, MX 220Vca sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-QI C13100  extensible à droite  constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n1  Fonction Interrupteur (I) équipée  de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande manuel\r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage    \r\n    • 3 traversées embrochablesfixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis)\r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=829+30mm x P=710mm x H=1142mm', 'cellulehta', 5724),
(170, 1, 'RM6 RE-QI C13100, Cts aux. sur fct I, MX 220 sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-QI C13100  extensible à droite constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n1  Fonction Interrupteur (I) équipée  de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande manuel\r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)    \r\n    • 3 traversées embrochablesfixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=829+30mm x P=710mm x H=1142mm', 'cellulehta', 6075),
(171, 1, 'RM6 RE-QI C13100, Cts aux. sur fct I, MX 48 sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-QI C13100  extensible à droite  constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n1  Fonction Interrupteur (I) équipée  de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande manuel\r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)    \r\n    • 3 traversées embrochablesfixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 48Vcc\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis)\r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=829+30mm x P=710mm x H=1142mm', 'cellulehta', 6140),
(173, 1, 'RM6 RE-IQI C13100, MX 220Vca sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-IQI C13100  extensible à droite constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande CIT manuelle\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1186+30mm x P=710mm x H=1142mm', 'cellulehta', 7058),
(174, 1, 'RM6 RE-IQI C13100, Cts aux. sur fcts I, MX 220 sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-IQI C13100  extensible à droite constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1186+30mm x P=710mm x H=1142mm', 'cellulehta', 7490),
(175, 1, 'RM6 RE-IQI C13100, Cts aux. sur fcts I, MX 48Vcc sur fct Q', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-IQI C13100  extensible à droite constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes  400A  pour connecteurs séparables équerre  \r\n       (CSE) type B et câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 48Vcc\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1186+30mm x P=710mm x H=1142mm', 'cellulehta', 7543),
(176, 1, 'RM6 DE-Q C13100, Cts aux., MX 220Vca', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type DE-Q C13100  extensible à gauche et à droite constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 kit d\'extensibilité pour module 1 fonction L472mm\r\n1 levier de manoeuvre\r\nDim :  L=472+30mm x P=710mm x H=1142mm', 'cellulehta', 4316),
(177, 1, 'RM6 DE-Q C13100, Cts aux., MX 48Vcc', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Unité Fonctionnelle RM6 24KV-12,5kA, type DE-Q C13100  extensible à gauche et à droite constitué de : \r\n1  Jeu de barres tripolaire : 400A\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle\r\n    • 1 déclencheur d\'ouverture à émission MX 48Vcc\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles UTE type Soléfuse \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS 10,1 à 20KV)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n      (CSE ou CSD)  type A 250A  et câbles unipolaires <= 95mm2\r\n1 kit d\'extensibilité pour module 1 fonction L472mm\r\nDim :  L=472+30mm x P=710mm x H=1142mm', 'cellulehta', 4316),
(178, 1, 'RM6 RE-II C13100 400A, Cdes manuelles', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module Fonctionnel RM6 24KV-12,5kA, type RE-II 400A C13100  extensible uniquement à droite  (2 Arrivées réseau) constitué de :\r\n1 Jeu de barres tripolaire : 400A\r\n2 Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 commande manuelle CIT  \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes 400A  pour connecteurs séparables équerre (CSE) type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=829+30mm x P=710mm x H=1190mm', 'cellulehta', 4547),
(179, 1, 'RM6 RE-II C13100 400A, Cdes manuelles et Cts Aux.', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-II 400A C13100  extensible uniquement à droite  (2 Arrivées réseau) constitué de :\r\n1 Jeu de barres tripolaire : 400A\r\n2 Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 commande manuelle CIT  \r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes 400A  pour connecteurs séparables équerre (CSE) type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=829+30mm x P=710mm x H=1190mm', 'cellulehta', 5122),
(180, 1, 'RM6 RE-II C13100 400A, Cdes motorisées Type 2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5kA, type RE-II 400A C13100  extensible uniquement à droite  (2 Arrivées réseau) constitué de :\r\n1 Jeu de barres tripolaire : 400A\r\n2 Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 1 commande motorisée CIT  48VCC  « type 2 Enedis »  comprenant :\r\n          o 1 Interrupteur de Neutralisation de la cde à distance\r\n          o 1 Liaison  pour  coffret  ITI/PASA avec connecteur  (L=10m)\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage  \r\n    • 3 traversées embrochables fixes 400A  pour connecteurs séparables équerre (CSE)  type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=829+30mm x P=710mm x H=1190mm\r\n\r\nITI-PASA :\r\nEquipement pour  téléconduite de réseau comprenant :\r\n   • 1 Coffret Easergy  ITI-PASA 2 voies avec détection de défaut Ampéremétrique/Directionnelle conforme à la spécification Enedis HN 64-S-44 version F, en acier inoxydable, équipé de :\r\n      • 2 cartes mesure/détection de défaut \r\n      • 1 carte mesure de tension\r\n      • 1 modem Radio\r\n      • 1 batterie 12V 38Ah pour l’alim. secourue\r\n      • 2 connecteurs pour la liaison avec les commandes électriques des interrupteurs HTA arrivées réseau.\r\nDimensions :  H660mm x P350mm x L220mm \r\n   • 2 Jeux de 3 tores  phases ouvrants 500/1\r\n   • 2 Câbles de liaison tores L=10m\r\nprise de potentiel amovible pour connecteur séparable (PPACS) avec câble de liaison tension de 10m (raccordement sur coffret ITI)', 'cellulehta', 6952),
(181, 1, 'RM6 RE-II C13100 400A, Cdes motorisées Type 3', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module Fonctionnel RM6 24KV-12,5kA, type RE-II 400A C13100  extensible uniquement à droite  (2 Arrivées réseau) constitué de :\r\n1 Jeu de barres tripolaire : 400A\r\n2 Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 1 commande motorisée CIT  48VCC  « type 3 Enedis » (réseau en double dérivation) comprenant :\r\n          o 1 Relais de détection de tension \r\n          o 1 Interrupteur de Neutralisation de la cde à distance\r\n          o 1 Liaison  pour  coffret  ITI/PASA avec connecteur  (L=10m)\r\n    • 3 indicateurs de présence de tension (VPIS_VO)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage  \r\n    • 3 traversées embrochables fixes 400A  pour connecteurs séparables équerre (CSE) type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=829+30mm x P=710mm x H=1190mm\r\n\r\nITI-PASA :\r\nEquipement pour  téléconduite de réseau comprenant :\r\n   • 1 Coffret Easergy  ITI-PASA 2 voies avec détection de défaut Ampéremétrique/Directionnelle conforme à la spécification Enedis HN 64-S-44 version F, en acier inoxydable, équipé de :\r\n      • 2 cartes mesure/détection de défaut \r\n      • 1 carte mesure de tension\r\n      • 1 modem Radio\r\n      • 1 batterie 12V 38Ah pour l’alim. secourue\r\n      • 2 connecteurs pour la liaison avec les commandes électriques des interrupteurs HTA arrivées réseau.\r\nDimensions :  H660mm x P350mm x L220mm \r\n   • 2 Jeux de 3 tores  phases ouvrants 500/1\r\n   • 2 Câbles de liaison tores L=10m\r\nprise de potentiel amovible pour connecteur séparable (PPACS) avec câble de liaison tension de 10m (raccordement sur coffret ITI)', 'cellulehta', 7777),
(182, 1, 'RM6 DE-I C13100 400A, Cde manuelle (sans kit d\'ext)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module Fonctionnel RM6 24KV-12,5kA, type DE-I 400A C13100 extensible à gauche et à droite  (Arrivée réseau) constitué de :\r\n1 Jeu de barres tripolaire : 400A\r\n1 Fonction Interrupteur (I) équipée  de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 commande manuelle CIT  \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage  \r\n    • 3 traversées embrochables fixes 400A pour connecteurs séparables équerre (CSE)  type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=472+30mm x P=710mm x H=1190mm', 'cellulehta', 3148),
(183, 1, 'RM6 DE-I C13100 400A, Cde manuelle et Cts Aux. (sans kit d\'ext)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle RM6 24KV-12,5kA, type DE-I 400A C13100  extensible à gauche et à droite  (Arrivée réseau) constituée de :\r\n1 Jeu de barres tripolaire : 400A\r\n1 Fonction Interrupteur (I) équipée  de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 commande manuelle CIT\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes 400A pour connecteurs séparables équerre (CSE)  type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=472+30mm x P=710mm x H=1190mm', 'cellulehta', 3479),
(184, 1, 'RM6 DE-I C13100 400A, Cde motorisée Type 2 (sans kit d\'ext)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Unité Fonctionnelle RM6 24KV-12,5kA, type DE-I 400A C13100  extensible à gauche et à droite  (Arrivée réseau) constituée de :\r\n1 Jeu de barres tripolaire : 400A\r\n1 Fonction Interrupteur (I) équipée  de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 1 commande motorisée CIT  48VCC  « type 2 Enedis »  comprenant :\r\n          o 1 Interrupteur de Neutralisation de la cde à distance\r\n          o 1 Liaison  pour  coffret  ITI/PASA avec connecteur  (L=10m)\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes 400A pour connecteurs séparables équerre (CSE) type B  \r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=472+30mm x P=710mm x H=1190mm', 'cellulehta', 4334),
(185, 1, 'RM6 2 x DE-I C13100 400A, Cdes motorisées Type 3 ', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '2 Unités Fonctionnelles RM6 24KV-12,5kA, type DE-I 400A C13100   extensibles à gauche et à droite  (Arrivée réseau) constituées chacune de :\r\n1 Jeu de barres tripolaire : 400A\r\n1 Fonction Interrupteur (I) équipée  de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 jeu de contacts auxiliaires comprenant : 2O+2F/Interrupteur & 1OF/smalt\r\n    • 1 commande motorisée CIT  48VCC  « type 3 Enedis » (réseau en double dérivation) comprenant :\r\n          o 1 Relais de détection de tension \r\n          o 1 Interrupteur de Neutralisation de la cde à distance\r\n          o 1 Liaison  pour  coffret  ITI/PASA avec connecteur  (L=10m)\r\n    • 3 indicateurs de présence de tension (VPIS_VO)\r\n    • 1 compartiment à câbles et porte amovible avec système de verrouillage\r\n    • 3 traversées embrochables fixes 400A pour connecteurs séparables équerre (CSE) type B\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim :  L=(2x472)+43mm x P=710mm x H=1190mm\r\n1 Kit d\'extensibilité pour module DE-I C13100\r\n\r\nITI-PASA :\r\nEquipement pour  téléconduite de réseau comprenant :\r\n   • 1 Coffret Easergy  ITI-PASA 2 voies avec détection de défaut Ampéremétrique/Directionnelle conforme à la spécification Enedis HN 64-S-44 version F, en acier inoxydable, équipé de :\r\n      • 2 cartes mesure/détection de défaut \r\n      • 1 carte mesure de tension\r\n      • 1 modem Radio\r\n      • 1 batterie 12V 38Ah pour l’alim. secourue\r\n      • 2 connecteurs pour la liaison avec les commandes électriques des interrupteurs HTA arrivées réseau.\r\nDimensions :  H660mm x P350mm x L220mm \r\n   • 2 Jeux de 3 tores  phases ouvrants 500/1\r\n   • 2 Câbles de liaison tores L=10m\r\nprise de potentiel amovible pour connecteur séparable (PPACS) avec câble de liaison tension de 10m (raccordement sur coffret ITI)', 'cellulehta', 9778);
INSERT INTO `article` (`id`, `idFournisseur`, `nom`, `description`, `descriptif`, `img`, `prix`) VALUES
(186, 1, 'RM6 T , TP 20KV 2x15VA Cl0,2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle  RM6 24KV-12,5KA, type T  transformateur de potentiel (Comptage) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 sectionneur et sectionneur de terre,  liés avec les sectionneurs BT situés en aval\r\n    • 1 commande manuelle\r\n    • 3 puits fusibles UTE étanches   \r\n    • 3 fusibles UTE type Soléfuse 6,3A (fourniture en séparé)\r\n    • 3 transformateurs de potentiel :  20KV/v3    100/v3-100/v3   15VA Cl. 0,2-15VA Cl. 0,2 \r\n    • 1 compartiment BT  intégrant : \r\n              • 1 sectionneur des circuits BT avec protection fusibles (circuit comptage)\r\n              • 1 sectionneur des circuits BT avec protection fusibles (circuit relais protection)\r\n    • 1 kit d\'extensibilité droite & gauche pour Module Fonctionnel T\r\nDim :  L=(472+43)mm x P=1030mm x H=1566mm', 'cellulehta', 8554),
(187, 1, 'RM6 T , TP 15KV 2x15VA Cl0,2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle RM6 24KV-12,5KA, type T  transformateur de potentiel (Comptage) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 sectionneur et sectionneur de terre,  liés avec les sectionneurs BT situés en aval\r\n    • 1 commande manuelle\r\n    • 3 puits fusibles UTE étanches   \r\n    • 3 fusibles UTE type Soléfuse 6,3A (fourniture en séparé)\r\n    • 3 transformateurs de potentiel :  15KV/v3    100/v3-100/v3   15VA Cl. 0,2-15VA Cl. 0,2 \r\n    • 1 compartiment BT  intégrant : \r\n              • 1 sectionneur des circuits BT avec protection fusibles (circuit comptage)\r\n              • 1 sectionneur des circuits BT avec protection fusibles (circuit relais protection)\r\n    • 1 kit d\'extensibilité droite & gauche pour Module Fonctionnel T\r\nDim :  L=(472+43)mm x P=1030mm x H=1566mm', 'cellulehta', 8554),
(188, 1, 'RM6 T , TP 15-20KV 1x15VA Cl0,2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle  RM6 24KV-12,5KA, type T  transformateur de potentiel (Comptage) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 sectionneur et sectionneur de terre,  liés avec les sectionneurs BT situés en aval\r\n    • 1 commande manuelle\r\n    • 3 puits fusibles UTE étanches   \r\n    • 3 fusibles UTE type Soléfuse 6,3A (fourniture en séparé)\r\n    • 3 transformateurs de potentiel :  15-20KV/v3   100/v3  15VA Cl. 0,2\r\n    • 1 compartiment BT  intégrant : \r\n              • 1 sectionneur des circuits BT avec protection fusibles (circuit comptage)\r\n    • 1 kit d\'extensibilité droite & gauche pour Module Fonctionnel T\r\nDim :  L=(472+43)mm x P=1030mm x H=1566mm', 'cellulehta', 8554),
(189, 1, 'RM6 D2S Droite 400A, 2 xTC M&P 100-200A, Sepam S48 E13', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle RM6 24KV-12,5KA, type D2S droite 400A, disjoncteur double sectionnement, \r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 disjoncteur  de calibre 400A à commande CI2 manuelle\r\n    • 1 déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 jeu de  transformateurs de courant : 100-200A /1A  1VA 5P30 - 2VA 5P30 (protection)\r\n    • 1 jeu de transformateurs de courant : 100-200A /5A  5VA cl0.2S  (comptage)\r\n    • 1 caisson basse tension intégrant :\r\n              • 1 Relais de protection  Sepam S48 E13  C13.100 (Régime NI ou NC) - Alim.   48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 module 10 entrées / 4 sorties logiques  [MES114] :\r\n              • 1 Tore CSH30\r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité\r\n              • 1 disjoncteurs  BT C60H-DC (alim. Sepam)\r\n    • 1 Kit d\'extensibilité pour  Module Fonctionnel D2S\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 14956),
(190, 1, 'RM6 D2S Droite 400A, 2 xTC M&P 200-400A, Sepam S48 E13', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Unité Fonctionnelle RM6 24KV-12,5KA, type D2S droite 400A, disjoncteur double sectionnement,\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 disjoncteur  de calibre 400A à commande CI2 manuelle\r\n    • 1 déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 jeu de  transformateurs de courant : 200-400A /1A  1VA 5P30 - 2VA 5P30 (protection)\r\n    • 1 jeu de transformateurs de courant : 200-400A /5A  5VA cl0.2S  (comptage)\r\n    • 1 caisson basse tension intégrant :\r\n              • 1 Relais de protection  Sepam S48 E13  C13.100 (Régime NI ou NC) - Alim.   48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 module 10 entrées / 4 sorties logiques  [MES114] :\r\n              • 1 Tore CSH30\r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité\r\n              • 1 disjoncteurs  BT C60H-DC (alim. Sepam)\r\n    • 1 Kit d\'extensibilité pour  Module Fonctionnel D2S\r\n    • 2 Leviers de manoeuvre : standard RM6 et spécifique D2S \r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 14514),
(192, 1, 'RM6 D2S Gauche  400A, 2 xTC M&P 100-200A, Sepam S48 E13', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Unité Fonctionnelle RM6 24KV-12,5KA, type D2S gauche 400A, disjoncteur double sectionnement,\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 disjoncteur  de calibre 400A à commande CI2 manuelle\r\n    • 1 déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 jeu de  transformateurs de courant : 100-200A /1A  1VA 5P30 - 2VA 5P30 (protection)\r\n    • 1 jeu de transformateurs de courant : 100-200A /5A  5VA cl0.2S  (comptage)\r\n    • 1 caisson basse tension intégrant :\r\n              • 1 Relais de protection  Sepam S48 E13  C13.100 (Régime NI ou NC) - Alim.   48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 module 10 entrées / 4 sorties logiques  [MES114] :\r\n              • 1 Tore CSH30\r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité\r\n              • 1 disjoncteurs  BT C60H-DC (alim. Sepam)\r\n    • 1 Kit d\'extensibilité pour  Module Fonctionnel D2S\r\n    • 2 Leviers de manoeuvre : standard RM6 et spécifique D2S\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 14956),
(193, 1, 'RM6 D2S Gauche  400A, 2 xTC M&P 200-400A, Sepam S48 E13', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Unité Fonctionnelle RM6 24KV-12,5KA, type D2S gauche 400A, disjoncteur double sectionnement,\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 disjoncteur  de calibre 400A à commande CI2 manuelle\r\n    • 1 déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 jeu de  transformateurs de courant : 200-400A /1A  1VA 5P30 - 2VA 5P30 (protection)\r\n    • 1 jeu de transformateurs de courant : 200-400A /5A  5VA cl0.2S  (comptage)\r\n    • 1 caisson basse tension intégrant :\r\n              • 1 Relais de protection  Sepam S48 E13  C13.100 (Régime NI ou NC) - Alim.   48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 module 10 entrées / 4 sorties logiques  [MES114] :\r\n              • 1 Tore CSH30\r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité\r\n              • 1 disjoncteurs  BT C60H-DC (alim. Sepam)\r\n    • 1 Kit d\'extensibilité pour  Module Fonctionnel D2S\r\n    • 2 Leviers de manoeuvre : standard RM6 et spécifique D2S\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 14514),
(195, 1, 'RM6 DE-I , Cts Aux, Verr R2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle RM6  24KV-12,5KA, type DE-I  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction Interrupteur (I), équipée  de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n 1 Kit d\'extensibilité pour module 1 Fonction\r\nDim :  L=472+30mm x P=710mm x H=1142mm', 'cellulehta', 3290),
(196, 1, 'RM6 DE-II , Cts Aux. , Verr R2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module  Fonctionnel RM6  24KV-12,5KA, type DE-II  constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2 fonctions Interrupteur (I), équipées chacune de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Kit d\'extensibilité pour module 2 Fonctions (Free Comb)\r\nDim :  L=1052+30mm x P=710mm x H=1142mm', 'cellulehta', 6080),
(197, 1, 'RM6 RE-II , Cts Aux , Verr R2', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6  24KV-12,5KA, type RE-II extensible à droite  constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2 fonctions Interrupteur (I), équipées chacune de :\r\n    • 1 interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Levier de manoeuvre\r\nDim :  L=829+30mm x P=710mm x H=1142mm', 'cellulehta', 5715),
(198, 1, 'RM6 DE-Q , Cts Aux, Verr R8', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle RM6 24KV-12,5KA, type DE-Q  extensible à gauche et à droite constitué de :\r\n1 Jeu de barres tripolaire 630A\r\n1 Fonctions Interrupteur-Fusibles combinés (Q) équipée  de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz \r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)      \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour module 1 Fonction\r\nDim :  L=472+30mm x P=710mm x H=1142mm', 'cellulehta', 4289),
(199, 1, 'RM6 DE-QQ , Cts Aux, Verr R8', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module fonctionnel RM6 24KV-12,5KA, type DE-QQ extensible à gauche et à droite constitué de :\r\n1 Jeu de barres tripolaire 630A\r\n2 Fonctions Interrupteur-Fusibles combinés (Q) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz \r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)         \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour module 2 Fonctions (Free comb)\r\nDim :  L=1052+30mm x P=710mm x H=1142mm', 'cellulehta', 7484),
(200, 1, 'RM6 DE-QQQ , Cts Aux, Verr R8', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type DE-QQQ extensible à gauche et à droite constitué de :\r\n1 Jeu de barres tripolaire 630A\r\n3 Fonctions Interrupteur-Fusibles combinés (Q) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz \r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)         \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour module 3 Fonctions (Free comb)\r\nDim :  L=1532+30mm x P=710mm x H=1142mm', 'cellulehta', 11581),
(201, 1, 'RM6 DE-D, VIP45, Cts aux., Verr R8', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Unité Fonctionnelle RM6  24KV-12,5KA, type DE-D  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction disjoncteur (D) 200A équipée de :\r\n    • 1 disjoncteur 200A avec commande CI1 manuelle  \r\n    • 1 déclencheur d\'ouverture à émission de tension MX 220Vca\r\n    • 1 jeu de  contacts auxiliaires comprenant : 2O+2F/disjoncteur &  1O+1F/smalt\r\n    • 1 sectionneur de terre\r\n    • 1 Relais de protection autonome VIP 45  de 5 à 200A :\r\n                 - protection max I et homopolaire (codes ANSI : 50-51 / 51N)\r\n                 - contact auxiliaire de déclenchement sur défaut\r\n    • 1 déclencheur Mitop\r\n    • 1 bloc de 3 transformateurs  de courant  LPCT type CUa 150mV - 5 à 200A 5P30\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Disjoncteur\r\n    • 1 verrouillage HT/BT/transfo  type R8  à clé  tubulaire \r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre (CSE) type A 250A\r\n1 kit d\'extensibilité pour module 1 fonction\r\nDim :  L=572+30mm x P=710mm x H=1544mm', 'cellulehta', 7281),
(202, 1, 'RM6 DE-DD , VIP45, Cts aux. , Verr R8', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module Fonctionnel RM6  24KV-12,5KA, type DE-DD  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n2 Fonctions disjoncteur (D) 200A équipées chacune de :\r\n    • 1 disjoncteur 200A avec commande CI1 manuelle  \r\n    • 1 déclencheur d\'ouverture à émission de tension MX 220Vca\r\n    • 1 jeu de  contacts auxiliaires comprenant : 2O+2F/disjoncteur &  1O+1F/smalt\r\n    • 1 sectionneur de terre\r\n    • 1 Relais de protection autonome VIP 45  de 5 à 200A :\r\n                 - protection max I et homopolaire (codes ANSI : 50-51 / 51N)\r\n                 - contact auxiliaire de déclenchement sur défaut\r\n    • 1 déclencheur Mitop\r\n    • 1 bloc de 3 transformateurs  de courant  LPCT type CUa 150mV - 5 à 200A 5P30\r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Disjoncteur\r\n    • 1 verrouillage HT/BT/transfo  type R8  à clé  tubulaire \r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre (CSE) type A 250A \r\n1 kit d\'extensibilité pour module 2 fonctions (Free comb)\r\nDim :  L=1052+30mm x P=710mm x H=1544mm', 'cellulehta', 12863),
(203, 1, 'RM6 NE-QI , Cts aux. et Verr R8 sur fct Q , Cts aux et Verr R2 sur fct I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type NE-QI non extensible constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1  Fonction Interrupteur (I) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Levier de manoeuvre standard RM6 \r\nDim :  L=829mm x P=710mm x H=1142mm', 'cellulehta', 6492),
(204, 1, 'RM6 NE-IQI , Cts aux. et Verr R8 sur fct Q , Cts aux et Verr R2 sur fcts I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 , type NE-IQI  constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)   \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n 1 Levier de manoeuvre standard RM6 \r\nDim :  L=1186mm x P=710mm x H=1142mm', 'cellulehta', 7626),
(205, 1, 'RM6 NE-QIQI , Cts aux. et Verr R8 sur fcts Q , Cts aux et Verr R2 sur fcts I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type NE-QIQI non extensible constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2 Fonctions Interrupteur-Fusibles combinés  (Q) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis) \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Levier de manoeuvre standard RM6 \r\nDim :  L=1619mm x P=710mm x H=1142mm', 'cellulehta', 10523),
(206, 1, 'RM6 DE-IQI , Cts aux. et Verr R8 sur fct Q , Cts aux et Verr R2 sur fcts I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'Module Fonctionnel RM6 24KV-12,5KA, type DE-IQI extensible à gauche et à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)  \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour module 3 Fonctions Std\r\nDim :  L=1186+30mm x P=710mm x H=1142mm', 'cellulehta', 8360),
(207, 1, 'RM6 DE-IQI , Cts aux. et Verr R8 sur fct Q , Cde motor et Verr R2 sur fcts I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type DE-IQI extensible à gauche et à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT motorisée 48Vcc  (sans BP ni commut L/D en façade)\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)  \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour module 3 Fonctions Std\r\nDim :  L=1186+30mm x P=710mm x H=1142mm', 'cellulehta', 9436),
(208, 1, 'RM6 DE-QI , Cts aux. et Verr R8 sur fct Q , Cts aux et Verr R2 sur fct I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type DE-QI extensible à gauche et à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)     \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1  Fonction Interrupteur (I) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Kit d\'extensibilité pour module 2 Fonctions (Free Comb)\r\nDim :  L=1052+30mm x P=710mm x H=1142mm', 'cellulehta', 6822),
(209, 1, 'RM6 DE-QI , Cts aux. et Verr R8 sur fct Q , Cde motor et Verr R2 sur fct I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type DE-QI extensible à gauche et à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)     \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1  Fonction Interrupteur (I) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT motorisée 48Vcc  (sans BP ni commut L/D en façade)\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Kit d\'extensibilité pour module 2 Fonctions (Free Comb)\r\nDim :  L=1052+30mm x P=710mm x H=1142mm', 'cellulehta', 7655),
(210, 1, 'RM6 DE-IQ , Cts aux. et Verr R8 sur fct Q , Cts aux et Verr R2 sur fct I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type DE-IQ extensible à gauche et à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1  Fonction Interrupteur (I) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)     \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour module 2 Fonctions (Free Comb)\r\nDim :  L=1052+30mm x P=710mm x H=1142mm', 'cellulehta', 6822),
(213, 1, 'RM6 RE-IIQ , Cts aux. et Verr R8 sur fct Q , Cts aux et Verr R2 sur fcts I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type RE-IIQ extensible uniquement à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2  Fonctions Interrupteur (I) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)    \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Levier de manoeuvre\r\nDim :  L=1532+30mm x P=710mm x H=1142mm', 'cellulehta', 8679),
(216, 1, 'RM6 DE-QQI , Cts aux. et Verr R8 sur fcts Q , Cts aux et Verr R2 sur fct I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', 'Module Fonctionnel RM6 24KV-12,5KA, type DE-QQI extensible à gauche et à droite constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2 Fonctions Interrupteur-Fusibles combinés (Q) équipées chacune de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 commande CI1 manuelle    \r\n    • 1 déclencheur d\'ouverture à émission MX 220Vca 50Hz\r\n    • 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)    \r\n    • 1 Contact Fusion Fusible\r\n    • 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1  Fonction Interrupteur (I) équipée de :\r\n    • 1 interrupteur-sectionneur et sectionneur de terre, 630A\r\n    • 1 commande CIT manuelle\r\n    • 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 verrouillage de boucle  type R2  ,   à clé  tubulaire \r\n    • 3 indicateurs de présence de tension (VPIS)\r\n    • 1 compartiment à câbles standard et porte amovible avec interverrouillage  Smalt & Interrupteur\r\n    • 3 traversées déconnectables fixes 630A  pour connecteurs séparables type C\r\n    • 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n1 Kit d\'extensibilité pour module 3 Fonctions (Free Comb)\r\nDim :  L=1532+30mm x P=710mm x H=1142mm', 'cellulehta', 9862),
(217, 1, 'Teleaction pour decouplage H4', 'Fourniture et raccordement d’une TAC (Télé-Action) de marque MADE ou\r\néquivalent (Découplage H4) comprenant :\r\n1 x Liaison TAC-TPU-1 Mono Ordre Ethernet sur support IP (ZIV/DIMAT)\r\n1 x Coffret Mural 6U (Dimension L x P x H : 590 x 336,7 x 500mm)\r\n1 x Pré-câblage bornier face avant\r\n1 x Une journée de mise en service sur site en présence d\'Enedis', NULL, 'cellulehta', 10115),
(218, 1, 'HTA de 3 x1 x 50mm² Aluminium', 'Fourniture et raccordement d’une liaison HTA de 3 x1 x 50mm² Aluminium', NULL, 'cellulehta', 800),
(219, 1, 'HTA de 3 x1 x 95mm² Aluminium', 'Fourniture et raccordement d’une liaison HTA de 3 x1 x 95mm² Aluminium', NULL, 'cellulehta', 1000),
(220, 1, 'HTA à commission', 'Fourniture et raccordement d’une liaison HTA à commission', NULL, 'cellulehta', 0),
(221, 1, 'BT de 4 x 4 x 300 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 4 x 300 mm²Cuivre SIFPOL', NULL, 'cellulehta', 1120),
(222, 1, 'BT de 4 x 4 x 240 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 4 x 240 mm²Cuivre SIFPOL', NULL, 'cellulehta', 820),
(223, 1, 'BT de 4 x 2 x 240 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 2 x 240 mm²Cuivre SIFPOL', NULL, 'cellulehta', 410),
(224, 1, 'BT de 4 x 1 x 240 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 1 x 240 mm²Cuivre SIFPOL', NULL, 'cellulehta', 210),
(225, 1, 'BT de 4 x 1 x 95 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 1 x 95 mm²Cuivre SIFPOL', NULL, 'cellulehta', 85),
(226, 1, 'BT de 4 x 4 x 240 mm²Aluminium', 'Fourniture et raccordement d’une liaison BT de 4 x 4 x 240 mm²Aluminium U 1000 AR2V.', NULL, 'cellulehta', 100),
(227, 1, 'BT de 4 x 2 x 240 mm²Aluminium', 'Fourniture et raccordement d’une liaison BT de 4 x 2 x 240 mm²Aluminium U 1000 AR2V.', NULL, 'cellulehta', 80),
(228, 1, 'BT de 4 x 1 x 240 mm²Aluminium', 'Fourniture et raccordement d’une liaison BT de 4 x 1 x 240 mm²Aluminium U 1000 AR2V.', NULL, 'cellulehta', 50),
(229, 1, 'Détecteur de fumée', 'Fourniture et pose d’un détecteur de fumée', NULL, 'cellulehta', 150),
(230, 1, 'Contact de porte', 'Un contact de porte', NULL, 'cellulehta', 150),
(231, 1, 'Arrêt d\\\'urgence extérieur', 'Un arrêt d\'urgence extérieur brise glace', NULL, 'cellulehta', 250),
(232, 1, 'ENERIS 445 48 05 07 C V2 B', 'Bloc d\'énergie en coffret avec afficheur conforme NF-C 13 100 (avec réarmement manuel) pour poste MT -\r\nAlimentation 230Vac\r\n48Vcc 5A 7Ah\r\n', NULL, 'cellulehta', 865.39),
(233, 1, 'ENERIS 445 48 10 14 C V2 B', 'Bloc d\'énergie en coffret avec afficheur conforme NF-C 13 100 (avec réarmement manuel) pour poste MT\r\nAlimentation 230Vac\r\n48Vcc 10A 14Ah\r\n', NULL, 'cellulehta', 1052.35);
INSERT INTO `article` (`id`, `idFournisseur`, `nom`, `description`, `descriptif`, `img`, `prix`) VALUES
(234, 1, 'ENERIS 645P 48 15 24 C V2 B', 'Bloc d\'énergie en coffret avec afficheur conforme NF-C 13 100 (avec réarmement manuel) pour poste MT -\r\nAlimentation 230Vac\r\n48Vcc 15A 24Ah\r\n', NULL, 'cellulehta', 1425.06),
(235, 1, 'POWERIS 645 24 10 48 platine', 'Bloc d\'énergie version platine 24Vcc 10A / capacité batterie : 48Ah / Alim mono 230Vac\r\nSur platine', NULL, 'cellulehta', 831.89),
(236, 1, 'Coffret IP31 POWERIS (Hors VISU)', 'Coffret mural IP31 RAL 7035 avec fermeture par loquet.\r\nATTENTION : Cette option n\'inclue pas la visualisation.\r\n(Serrure à clé : option S)', NULL, 'cellulehta', 75.52),
(237, 1, 'Afficheur sur coffret POWERIS', 'Cet afficheur monté en face avant des coffrets, permet l’affichage des grandeurs de sortie\r\n(tension et courant) ainsi que la température.\r\nIl possède également 3 LED qui affichent synthétiquement l’état de l’alimentation.\r\nEnfin, en cas de défaut, il affiche le code défaut et facilite ainsi le diagnostic.\r\nOption sur coffret (option V2) ou déporté (option V1).', NULL, 'cellulehta', 112.67),
(238, 1, 'Autre autonomie pour ENERIS', '1/3/4h etc ... jusquà 12 h (heures entières)\r\n(attention vérifier que la capacité de la batterie est bien en adéquation avec l\'autonomie souhaitée)', NULL, 'cellulehta', 32.4),
(239, 1, 'Relance par bouton poussoir extérieur', '2 Bornes à disposition pour réarmement à distance par un contact sec libre de potentiel.', NULL, 'cellulehta', 24.5),
(240, 1, 'Distribution 4 départs disjoncteurs POWERIS/ENERIS', '4 départs disjoncteurs', NULL, 'cellulehta', 125.45),
(241, 1, 'Diode de couplage POWERIS/ENERIS <30A', 'Permet de mettre en parallèle deux blocs d’énergie soit pour assurer une redondance entre les deux\r\nblocs soit pour augmenter la puissance disponible pour l’utilisation.\r\n(Prévoir une option diode par blocs).', NULL, 'cellulehta', 63.34),
(242, 1, 'DE-I C13100 400A avec cts aux.', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle Interrupteur RM6  type DE-I C13100 constituée de : \r\n1 Jeu de barres tripolaire 400A \r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 Commande CIT manuelle    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 3 Indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles  HN 64-S-52\r\n    • 1 Porte du compartiment à câble amovible cadenassable\r\n    • 3 Traversées embrochables fixes 400A pour connecteurs séparables  équerre (CSE) \r\n         type B 400A \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 240mm2\r\nDim :  L=(472+43)mm x P=710mm x H=1142mm', 'cellulehta', 3479),
(243, 1, 'DE-I C13100 630A avec cts aux.', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Unité Fonctionnelle Interrupteur RM6  type DE-I C13100 constituée de : \r\n1 Jeu de barres tripolaire 630A \r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 3 Indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles  HN 64-S-52\r\n    • 1 Porte du compartiment à câble amovible cadenassable\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) ou \r\n          en \"T\" (CST) type C  630A\r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 240mm2\r\nDim :  L=(472+43)mm x P=710mm x H=1142mm', 'cellulehta', 3659),
(244, 1, 'RE-II C13100 400A avec cts aux.', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel RM6 extensible à droite type RE-II C13100 constitué de : \r\n1 Jeu de barres tripolaire 400A \r\n2 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 400A \r\n    • 1 Commande CIT manuelle\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 3 Indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles  HN 64-S-52\r\n    • 1 Porte du compartiment à câble amovible cadenassable\r\n    • 3 Traversées embrochables fixes 400A pour connecteurs séparables  équerre (CSE) \r\n         type B 400A \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 240mm2\r\nDim :  L=(829+43)mm x P=710mm x H=1142mm', 'cellulehta', 5122),
(245, 1, 'RE-II C13100 630A avec cts aux.', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel RM6 extensible à droite type RE-II C13100 constitué de : \r\n1 Jeu de barres tripolaire 630A \r\n2 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 3 Indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles  HN 64-S-52\r\n    • 1 Porte du compartiment à câble amovible cadenassable\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) ou \r\n          en \"T\" (CST) type C  630A\r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 240mm2\r\nDim :  L=(829+43)mm x P=710mm x H=1142mm', 'cellulehta', 5498),
(246, 1, 'T 20KV Producteur avec 2 compartiments BT et  1 jeu de fusibles 6,3A UTE', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Unité Fonctionnelle transformateur de potentiel RM6, type T (Comptage) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Sectionneur et Sectionneur de terre,  liés avec les sectionneurs BT situés en aval\r\n    • 1 Commande manuelle\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/sectionneur\r\n    • 3 Puits fusibles UTE étanches  format UTE\r\n    • 3 Fusibles UTE type Soléfuse 6,3A (fourniture en séparé) \r\n    • 3 Transformateurs de potentiel :  20KV/√3    100/√3-100/√3   15VA Cl. 0,2-15VA Cl. 0,2 \r\n    • 1 Coffret BT  à 2 compartiments séparés intégrant respectivement : \r\n              1er compartiment :\r\n                     • 1 sectionneur des circuits BT avec protection fusibles (circuit comptage)\r\n                     • 1 sectionneur des circuits BT avec protection fusibles (circuit relais protection)\r\n              2ème compartiment :\r\n                     • 4 sectionneurs des circuits BT avec protection fusibles BT tétra (circuits \"client\" : ref tension, ,....)\r\n    • 1 Kit d\'extensibilité droite & gauche pour Unité Fonctionnelle T\r\nDim :  L=(472+43)mm x P=1030mm x H=1566mm', 'cellulehta', 10174),
(247, 1, 'T 15KV Producteur avec 2 compartiments BT et  1 jeu de fusibles 6,3A UTE', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle transformateur de potentiel RM6, type T (Comptage) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Sectionneur et Sectionneur de terre,  liés avec les sectionneurs BT situés en aval\r\n    • 1 Commande manuelle\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/sectionneur\r\n    • 3 Puits fusibles UTE étanches  format UTE\r\n    • 3 Fusibles UTE type Soléfuse 6,3A (fourniture en séparé) \r\n    • 3 Transformateurs de potentiel :  20KV/√3    100/√3-100/√3   15VA Cl. 0,2-15VA Cl. 0,2 \r\n    • 1 Coffret BT  à 2 compartiments séparés intégrant respectivement : \r\n              1er compartiment :\r\n                     • 1 sectionneur des circuits BT avec protection fusibles (circuit comptage)\r\n                     • 1 sectionneur des circuits BT avec protection fusibles (circuit relais protection)\r\n              2ème compartiment :\r\n                     • 4 sectionneurs des circuits BT avec protection fusibles BT tétra (circuits \"client\" : ref tension, ,....)\r\n    • 1 Kit d\'extensibilité droite & gauche pour Unité Fonctionnelle T\r\nDim :  L=(472+43)mm x P=1030mm x H=1566mm', 'cellulehta', 10174),
(248, 1, 'D2S 400A motorisée, S48E13 & P923 + 3 jeux TC 100-200 : Protect/Cptage Cl0,2s/Mesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite 400A\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 400A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 100-200A /1A  1VA 5P30 - 2VA 5P30 \r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 100-200A /5A  5VA cl0.2S \r\n    • 1 Jeu de transformateurs de courant \"mesure\" : 100-200A /5A  5-10VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E13  C13.100 (Régime NI ou NC) - Alim. 48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30     \r\n              • 1 Relais de protection Micom P923 - protection de découplage H3.1 - Alim. 48Vcc\r\n              • 1 Relais bistable 48Vcc pour fonction RSE \r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 20073),
(249, 1, 'D2S 400A motorisée, S48E23 + 3 jeux TC 100-200 : Protect/Cptage Cl0,2s/Mesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite 400A\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 400A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 100-200A /1A  1VA 5P30 - 2VA 5P30 \r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 100-200A /5A  5VA cl0.2S \r\n    • 1 Jeu de transformateurs de courant \"mesure\" : 100-200A /5A  5-10VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 19341),
(250, 1, 'D2S 400A motorisée, S48E23 + 3 jeux TC 200-400 : Protect/Cptage Cl0,2s/Mesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite 400A\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 400A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de transformateurs de courant \"protection\" : 200-400A /1A  1VA 5P30 - 2VA 5P30 \r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 200-400A /5A  5VA cl0.2S  \r\n    • 1 Jeu de transformateurs de courant \"mesure\" : 200-400A /5A  10-20VA cl0.5 \r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 18346),
(251, 1, 'D2S 630A motorisée, S48E23 + 3 jeux TC 300-600 : Protect/Cptage Cl0,2s/Mesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite 630A\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 630A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 300-600A /1A  1VA 5P30 - 2,5VA 5P30\r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 300-600A /5A  5VA cl0.2S\r\n    • 1 Jeu de transformateurs de courant \"mesure\" : 300-600A /5A  15-30VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 22015),
(252, 1, 'D2S 400A motorisée, S48E13 & P923 + 4 jeux TC 100-200 : Protect/Cptage Cl0,2s/2xMesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite 630A\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 400A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 100-200A /1A  1VA 5P30 - 2VA 5P30 \r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 100-200A /5A  5VA cl0.2S \r\n    • 2 Jeux de transformateurs de courant \"mesure\" : 100-200A /5A  5-10VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E13  C13.100 (Régime NI ou NC) - Alim. 48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30     \r\n              • 1 Relais de protection Micom P923 - protection de découplage H3.1 - Alim. 48Vcc\r\n              • 1 Relais bistable 48Vcc pour fonction RSE \r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 22325),
(253, 1, 'D2S 400A motorisée, S48E23 + 4 jeux TC 100-200 : Protect/Cptage Cl0,2s/2xMesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite 400A\r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 400A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 100-200A /1A  1VA 5P30 - 2VA 5P30 \r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 100-200A /5A  5VA cl0.2S \r\n    • 2 Jeux de transformateurs de courant \"mesure\" : 100-200A /5A  5-10VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 21593),
(254, 1, 'D2S 400A motorisée, S48E23 + 4 jeux TC 200-400 : Protect/Cptage Cl0,2s/2xMesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite \r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 400A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 400A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de transformateurs de courant \"protection\" : 200-400A /1A  1VA 5P30 - 2VA 5P30 \r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 200-400A /5A  5VA cl0.2S  \r\n    • 2 Jeux de transformateurs de courant \"mesure\" : 200-400A /5A  10-20VA cl0.5 \r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 20598),
(255, 1, 'D2S 630A motorisée, S48E23 + 4 jeux TC 300-600 : Protect/Cptage Cl0,2s/2xMesure Cl0,5', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite \r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 630A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 300-600A /1A  1VA 5P30 - 2,5VA 5P30\r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 300-600A /5A  5VA cl0.2S\r\n    • 2 Jeux de transformateurs de courant \"mesure\" : 300-600A /5A  15-30VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 24717),
(256, 1, 'DE-I', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle disjoncteur double sectionnement RM6, type D2S Droite \r\n(Protection Générale C13100) équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre amont\r\n    • 1 Disjoncteur  de calibre 630A à commande CI2 motorisée 48Vcc\r\n    • 1 Déclencheur à ouverture MX à émission 48Vcc\r\n    • 1 Déclencheur à fermeture XF à émission 48Vcc\r\n    • 1 Jeu de contacts auxiliaires :2O+1F/Disj\r\n    • 1 Déclencheur d\'ouverture MN à manque de tension 48Vcc\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre aval\r\n    • 1 Interverrouillage type R50\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Jeu de  transformateurs de courant \"protection\" : 300-600A /1A  1VA 5P30 - 2,5VA 5P30\r\n    • 1 Jeu de transformateurs de courant \"comptage\" : 300-600A /5A  5VA cl0.2S\r\n    • 2 Jeux de transformateurs de courant \"mesure\" : 300-600A /5A  15-30VA cl0.5\r\n    • 1 Caisson basse tension agrandi  intégrant :\r\n              • 1 Relais de protection  Sepam S48 E23 C13100  & protection de découplage  H1, H2, H4 ou H5,\r\n                 (Régime de neutre NI ou NC) - Alim.48Vcc \r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 Module Fonctionnel 10 entrées / 4 sorties logiques  [MES114] et liaison [CCA770]\r\n                    • 1 interface de communication Modbus RTU - RS485 2 fils [ACE949-2]\r\n              • 1 Tore CSH30\r\n              • 1 Relais bistable pour fonction RSE\r\n              • 1 Commutateur RSE 3 positions à clé N°455 avec contacts aux. 3NO/3NF\r\n              • 2 Relais  temporisés 2OF pour fonction : présence tension / relance chargeur\r\n              • 2 BP Décl/Encl  (Rouge/Vert)  \r\n              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455       \r\n              • 3 Boitiers Essais : Intensité, Tension, Polarité     \r\n              • 2 Disjoncteurs  BT C60H-DC + Contacts Aux. OF (alim. Relais protection et motorisation)\r\n    • 1 Kit d\'extensibilité pour  Unité Fonctionnelle D2S\r\n    • 1 Levier de manœuvre RM6 long \r\n    • 1 Levier de manœuvre spécifique disjoncteur de la fonction D2S\r\n    • 1 Notice d\'installation en français des fonctions RM6 C13100 français\r\n    • 1 Notice d\'utilisation en français des fonction RM6 C13100 en français\r\nDim :  L=(1532+43)mm x P=710mm x H=1742mm', 'cellulehta', 3290),
(258, 1, 'DE-I motorisée (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle  Interrupteur RM6, type DE-I   équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc  (sans BP ni commut  L/D en façade)\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n    • 1 Kit d\'extensibilité pour Module Fonctionnel 1 Fonction\r\nDim :  L=(472+43)mm x P=710mm x H=1142mm', 'cellulehta', 4077),
(259, 1, 'DE-QI, Fct I motorisée (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Module Fonctionnel  Free Comb. RM6, type DE-QI  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX48Vcc \r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)   \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc  (sans BP ni commut  L/D en façade)\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 2 Fonctions Free Comb.\r\nDim :  L=(1052+43)mm x P=710mm x H=1142mm', 'cellulehta', 7655),
(260, 1, 'DE-IQI, 2 Fcts I motorisées (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6  type DE-IQI constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc  (sans BP ni commut  L/D en façade)\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX 48Vcc\r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)    \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 3 Fonctions Standard\r\nDim :  L=(1186+43)mm x P=710mm x H=1142mm', 'cellulehta', 9436),
(261, 1, 'DE-QII, 2 Fcts I motorisées', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel RM6  type DE-QII constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX 48Vcc \r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)   \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n2 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 3 Fonctions Free Comb.\r\nDim :  L=(1532+43)mm x P=710mm x H=1142mm', 'cellulehta', 10768);
INSERT INTO `article` (`id`, `idFournisseur`, `nom`, `description`, `descriptif`, `img`, `prix`) VALUES
(262, 1, 'DE-IIQI, 3 Fcts I motorisées (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6  type DE-IIQI constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n3 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)  \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX 48Vcc \r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)   \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 3 Fonctions Standard\r\nDim :  L=(1619+43)mm x P=710mm x H=1142mm', 'cellulehta', 12060),
(263, 1, 'DE-DI, Fct D VIP45, Fct I motorisée', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Free Comb.  RM6, type DE-DI  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction disjoncteur (D),  équipée de :\r\n    • 1 Disjoncteur 200A avec commande CI1 manuelle      \r\n    • 1 Déclencheur d\'ouverture à émission  MX 48Vcc    \r\n    • 1 Jeu de  contacts auxiliaires comprenant : 2O+2F/disjoncteur &  1O+1F/smalt\r\n    • 1 Sectionneur de terre\r\n    • 1 Relais de protection autonome VIP 45 (regl : 5 à 200A) :\r\n                 - protection max I et homopolaire (codes ANSI : 50-51 / 51N)\r\n                 - contact auxiliaire de déclenchement sur défaut\r\n    • 1 Déclencheur Mitop\r\n    • 3 Transformateurs de courant tores LPCT  type Cuar  5 à 200A 5P30 Cl.1\r\n       (installation sur traversées)\r\n    • 1 Verrouillage HT/BT/Tr par serrure type R8  à clé  tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 1 Compartiment à câbles standard \r\n    • 1 Porte du compartiment câbles amovible avec interverrouillage  smalt & disjoncteur\r\n    • 3 Traversées embrochabless fixes 200A pour connecteurs séparables équerre (CSE) \r\n          250A type A\r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 2 Fonctions Free Comb.\r\nDim :  L=(1052+43)mm x P=710mm x H=1142mm', 'cellulehta', 11197),
(264, 1, 'DE-IDI, Fct D VIP45, 2 Fcts I motorisées', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6 non extensible type DE-IDI constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n2 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction disjoncteur (D),  équipée de :\r\n    • 1 Disjoncteur 200A avec commande CI1 manuelle      \r\n    • 1 Déclencheur d\'ouverture à émission  MX 48Vcc    \r\n    • 1 Jeu de  contacts auxiliaires comprenant : 2O+2F/disjoncteur &  1O+1F/smalt\r\n    • 1 Sectionneur de terre\r\n    • 1 Relais de protection autonome VIP 45 (regl : 5 à 200A) :\r\n                 - protection max I et homopolaire (codes ANSI : 50-51 / 51N)\r\n                 - contact auxiliaire de déclenchement sur défaut\r\n    • 1 Déclencheur Mitop\r\n    • 3 Transformateurs de courant tores LPCT  type Cuar  5 à 200A 5P30 Cl.1\r\n       (installation sur traversées)\r\n    • 1 Verrouillage HT/BT/Tr par serrure type R8  à clé  tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 1 Compartiment à câbles standard \r\n    • 1 Porte du compartiment câbles amovible avec interverrouillage  smalt & disjoncteur\r\n    • 3 Traversées embrochabless fixes 200A pour connecteurs séparables équerre (CSE) \r\n          250A type A\r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 3 Fonctions Standard\r\nDim :  L=(1186+43)mm x P=710mm x H=1142mm', 'cellulehta', 13089),
(265, 1, 'DE-I, Verr filtre amont', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Unité Fonctionnelle  Interrupteur RM6, type DE-I   équipée de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage filtre spécifique par serrure type R2+R7 amont, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n    • 1 Kit d\'extensibilité pour Module Fonctionnel 1 Fonction\r\nDim :  L=(472+43)mm x P=710mm x H=1142mm', 'cellulehta', 3722),
(266, 1, 'DE-QI, Fct I Verr filtre amont (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel  Free Comb. RM6, type DE-QI  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX 48Vcc \r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)   \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle\r\n    • 1 Verrouillage filtre spécifique par serrure type R2+R7 amont, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Kit d\'extensibilité pour Module Fonctionnel 2 Fonctions Free Comb.\r\nDim :  L=(1052+43)mm x P=710mm x H=1142mm', 'cellulehta', 7814),
(267, 1, 'RE-II, 1 Fct I Verr filtre aval, 1 Fct I motorisée', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6, type RE-II uniquement extensible(s) à droite  constitué de :\r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage filtre  spécifique par serrure type R2+R7 aval, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\nDim :  L=(829+43)mm x P=710mm x H=1142mm', 'cellulehta', 5426),
(268, 1, 'NE-III, 1 Fct I Verr filtre aval, 2 Fcts I motorisées', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6  non extensible type NE-III constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle\r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage filtre  spécifique par serrure type R2+R7 aval, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n2 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Levier de manœuvre standard\r\n1 Notice d\'installation en français\r\n1 Notice d\'utilisation en français\r\nDim :  L=1186mm x P=710mm x H=1142mm', 'cellulehta', 6523),
(269, 1, 'NE-IIII, 1 Fct I Verr filtre aval, 3 Fcts I motorisées', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6 non extensible type NE-IIII constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage filtre  spécifique par serrure type R2+R7 aval, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n3 Fonctions interrupteur (I),  équipées chacune de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Levier de manœuvre standard\r\n1 Notice d\'installation en français\r\n1 Notice d\'utilisation en français\r\nDim :  L=1619mm x P=710mm x H=1142mm', 'cellulehta', 9071),
(270, 1, 'NE-IQI, 1 Fct I Verr filtre aval, 1 Fct I motorisée (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6 non extensible type NE-IQI constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage filtre  spécifique par serrure type R2+R7 aval, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX 48Vcc \r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)     \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade) \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Levier de manœuvre standard\r\n1 Notice d\'installation en français\r\n1 Notice d\'utilisation en français\r\nDim :  L=1186mm x P=710mm x H=1142mm', 'cellulehta', 7443),
(271, 1, 'NE-IIQI, 1 Fct I Verr filtre aval, 2 Fcts I motorisées (*)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '1 Module Fonctionnel Standard RM6 non extensible type NE-IIQI constitué de : \r\n1 Jeu de barres tripolaire : 630A\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT manuelle    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage filtre  spécifique par serrure type R2+R7 aval, à clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc (sans BP ni commut  L/D en façade)   \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Fonction interrupteur-fusibles combinés (Q),  équipée de :\r\n    • 1 Interrupteur-sectionneur et sectionneur de terre, 200A\r\n    • 1 Commande CI1 manuelle    \r\n    • 1 Déclencheur d\'ouverture à émission MX 48Vcc \r\n    • 1 Jeu de contacts auxiliaires 2O+2F/interrupteur\r\n    • 3 Puits fusibles étanches pour fusibles DIN L=442mm type Fusarc (fusibles non fournis)     \r\n    • 1 Contact Fusion Fusible\r\n    • 1 Sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n    • 1 Verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire \r\n    • 3 Indicateurs de présence de tension VPIS 10,1 à 24kV [VPI62407] \r\n    • 3 Traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit \r\n          (CSE ou CSD)  type A 250A et câbles unipolaires <= 95mm2\r\n1 Fonction interrupteur (I),  équipée de :\r\n    • 1 Interrupteur-Sectionneur et Sectionneur de Terre, 630A \r\n    • 1 Commande CIT motorisée 48Vcc    \r\n    • 1 Jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n    • 1 Verrouillage de boucle  par serrure type R2, à  clé tubulaire\r\n    • 3 indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Compartiment à câbles standard\r\n    • 1 Porte du compartiment à câble amovible avec interverrouillage  smalt & interrupteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph <= 300mm2\r\n1 Levier de manœuvre standard\r\n1 Notice d\'installation en français\r\n1 Notice d\'utilisation en français\r\nDim :  L=1619mm x P=710mm x H=1142mm', 'cellulehta', 9991),
(272, 1, 'Plus Value 2 BP Encl/Decl + Commut L/D sur 1 Fct I motorisée', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '    • 1 Goulotte basse tension (H=164mm) intégrant :\r\n              • 1 Sectionneur fusibles BT 2P (alim. motorisation)\r\n              • 2 BP  Enclenchement/Déclenchement (Vert/Rouge)\r\n              • 1 Commutateur Local/Distance 2 positions à clé N°455', 'cellulehta', 631),
(273, 1, 'Plus Value 2 voyants M/A sur Fct I motorisée', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '              • 2 Voyants lumineux DEL Marche/Arrêt  (Blanc/Vert) intégré dans la goulotte BT (H164mm)', 'cellulehta', 113),
(274, 1, 'RM6 DE-B, Cde Manu, MX48VCC, Sepam S41, TC Protect AOT1 (départ ligne)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Unité Fonctionnelle Disjoncteur RM6, type DE-B  équipée(s) de :\r\n    • 1 Jeu de barres tripolaire : 630A\r\n    • 1 Disjoncteur 630A avec commande CI1 manuelle      \r\n    • 1 Déclencheur d\'ouverture à émission  MX 48Vcc    \r\n    • 1 Jeu de  contacts auxiliaires comprenant : 2O+2F/disjoncteur &  1O+1F/smalt\r\n    • 1 Sectionneur de terre\r\n    • 1 Caisson basse tension (H=402mm) intégrant :\r\n              • 1 Relais de protection numérique Sepam S41, tension Alim. :48Vcc\r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 module 10 Entrées/4 sorties logiques  [MES114] et liaison [CCA770] \r\n              • 2 Boîtes à bornes essais : I &  U\r\n              • 1 Disj. protection BT (alim relais protect.)\r\n    • 1 Jeu de 3 transformateurs de courant tores AOT1 200-400A/1A 1VA 5P30-2VA 5P30 (protection)\r\n       (installation sur traversées)\r\n    • 3 Indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Verrouillage de boucle  par serrure type R2  à clé  tubulaire \r\n    • 1 Compartiment à câbles standard \r\n    • 1 Porte du compartiment câbles amovible avec interverrouillage  smalt & disjoncteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph ≤ 300mm2\r\n     • 1 Tore homopolaire CSH120 (fourniture en séparée , à installer sur les câbles)\r\n    • 1 Kit d\'extensibilité pour module 1 Fonction\r\nDim :  L=(572+43)mm x P=710mm x H=1544mm', 'cellulehta', 0),
(275, 1, 'RM6 DE-BB, Cde Manu, MX48VCC, Sepam S41, TC Protect AOT1 (départ ligne)', 'Fourniture d\'un Tableau HTA Compact EIS de la gamme RM6 de Schneider Electric pour poste à comptage BT C13100.\r\n\r\nRM6-EIS regroupe dans un ensemble compact toutes les fonctions HTA de branchement, d’alimentation et de protection de\r\ntransformateurs. Cette gamme a été développée pour les postes clients, abonnés à comptage BT, raccordés au réseau de\r\ndistribution publique HTA. Elle répond à la spécification technique EDF HN64S52 qui caractérise l’appareillage insensible à son\r\nenvironnement sous enveloppe métallique.', '\'1 Module Fonctionnel Free Comb. RM6 type DE-BB constitué(s) de :\r\n1 Jeu de barres tripolaire : 630A\r\n2 Fonctions disjoncteur (B),  équipées chacune de :\r\n    • 1 Disjoncteur 630A avec commande CI1 manuelle      \r\n    • 1 Déclencheur d\'ouverture à émission  MX 48Vcc    \r\n    • 1 Jeu de  contacts auxiliaires comprenant : 2O+2F/disjoncteur &  1O+1F/smalt\r\n    • 1 Sectionneur de terre\r\n    • 1 Caisson basse tension (H=402mm) intégrant :\r\n              • 1 Relais de protection numérique Sepam S41, tension Alim. :48Vcc\r\n                    •  1 ensemble de connecteurs pour Sepam : [CCA620], [CCA630] & [CCA626]\r\n                    •  1 module 10 Entrées/4 sorties logiques  [MES114] et liaison [CCA770] \r\n              • 2 Boîtes à bornes essais : I &  U\r\n              • 1 Disj. protection BT (alim relais protect.)\r\n    • 1 Jeu de 3 transformateurs de courant tores AOT1 200-400A/1A 1VA 5P30-2VA 5P30 (protection)\r\n       (installation sur traversées)\r\n    • 3 Indicateurs de présence de tension VPIS  10,1 à 24kV [VPI62407]\r\n    • 1 Verrouillage de boucle  par serrure type R2  à clé  tubulaire \r\n    • 1 Compartiment à câbles standard \r\n    • 1 Porte du compartiment câbles amovible avec interverrouillage  smalt & disjoncteur\r\n    • 3 Traversées déconnectables fixes 630A pour connecteurs séparables vissés équerre (CSE) \r\n          ou en \"T\" (CST) type C \r\n    • 1 Système de bridage pour 3 x1 câbles unipolaires/Ph ≤ 300mm2\r\n     • 1 Tore homopolaire CSH120 (fourniture en séparée , à installer sur les câbles)\r\n1 Kit d\'extensibilité pour module 2 Fonctions Free Comb.\r\nDim :  L=(1052+43)mm x P=710mm x H=1544mm', 'cellulehta', 0),
(276, 1, 'Coffret Protection Téléphonique (BHRD)', '', NULL, NULL, 1400),
(277, 1, 'Coffret Frontière DEIE', '', NULL, NULL, 300),
(278, 1, 'REP', '', NULL, NULL, 0),
(279, 1, 'Peinta', '', NULL, NULL, 0),
(280, 1, 'CAMARGUE 2.86', '', '', '', 0),
(281, 1, 'GARONS', '', '', '', 0),
(282, 1, 'VACCARES 2.86', '', '', '', 0),
(283, 1, 'BURZET 2.86', '', '', '', 0),
(284, 1, 'BURZET 3.01', '', '', '', 0),
(285, 1, 'BURZET 3.43', '', '', '', 0),
(286, 1, 'VERCORS', '', '', '', 0),
(287, 1, 'ARMORACC 2.86', '', '', 'armoracc', 0),
(288, 1, 'ARMORACC 3.01', '', '', '', 0),
(289, 1, 'ARMORACC 3.43', '', '', '', 0),
(290, 1, 'MEZENC', '', '', '', 0),
(291, 1, 'CARRY', '', '', '', 0),
(292, 1, 'ARMORIQUE', '', '', '', 0),
(293, 1, 'ARMORIQUE 3,01', '', '', '', 0),
(294, 1, 'ARMORIQUE 3.43', '', '', '', 0),
(295, 1, 'CARRY 7.00', '', '', '', 0),
(296, 1, 'REDONNE', '', '', '', 0),
(297, 1, 'MERCANTOUR', '', '', '', 0),
(298, 1, 'MERCANTOUR 3,01', '', '', '', 0),
(299, 1, 'MERCANTOUR 3.43', '', '', '', 0),
(300, 1, 'BEAUDUC', '', '', '', 0),
(301, 1, 'QUEYRAS', '', '', '', 0),
(302, 1, 'QUEYRAS 3,01', '', '', '', 0),
(303, 1, 'QUEYRAS 3.43', '', '', '', 0),
(304, 1, 'SALERS', '', '', '', 0),
(305, 1, 'JURANCON', '', '', '', 0),
(306, 1, 'JURANCON 3,01', '', '', '', 0),
(307, 1, 'JURANCON 3.43', '', '', '', 0),
(308, 1, 'CHABLIS', '', '', '', 0),
(309, 1, 'CHABLIS 3.43', '', '', '', 0),
(310, 1, 'CHABLIS 3,01', '', '', '', 0),
(311, 1, 'Cellule Siemens comptage HTA TC 50-100', 'Fourniture et raccordement d’un Tableau HTA constitué de cellules modulaires de marque SIEMENS pour un comptage HTA comprenant :', 'Unité Fonctionnelle Interrupteur d’arrivée AI (R) – JZ01\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 400 A\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n	- 1 câble par phase (max 240 mm2), étrier de serrage en bas de compartiment.\r\n	- par l’avant.\r\n	- de type « B » embrochable 400 A, selon la norme EN 50181.\r\n	- Système d’indicateur de présence de tension WEGA zéro.\r\n\r\nPAS DE COFFRET BT\r\n\r\nDimensions et poids :\r\n- Largeur UF : 310 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm\r\nContact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\n\r\nUnité Fonctionnelle Transformateur de tension TT (M) – JZ02\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 200 A\r\n- 3 Transformateurs de tension\r\n- Enroulement mesure\r\n	20 KV 100 /v3 15VA Class 0,5\r\n- Enroulement protection 100 /V3 15VA Class 0,5\r\n- Puits fusible comprenant 6 fusibles UTE 6,3A\r\n- Système détecteur de tension capacitive type WEGA ZÉRO, avec indicateur\r\nLe caisson basse tension H200mm se compose de :\r\n- 1 sectionneur fusible pour enroulement protection avec verrouillage par serrure ELP1\r\n- 1 sectionneur fusible pour enroulement comptage\r\n(Livré avec 6 fusibles 10A format 10,3x38)\r\n\r\nDimensions et poids :\r\n- Largeur UF : 430 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 270 Kg.\r\n\r\nUnité Fonctionnelle Disjoncteur départ barre (DDB) – JZ03\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 disjoncteur à commande MANUEL avec contacts de position,\r\n- 1 bobine de déclenchement à manque de tension 48VCC\r\n- Deux sectionneurs à coupure dans le SF6 à commande manuelle, avec\r\ninterverrouillage avec le disjoncteur HTA.\r\n- 3 transformateurs de courant à double enroulement mesure & protection\r\n- TC 50-100A\r\n- Enroulement mesure\r\n- 5A Class 0,2FS10 7,5VA\r\n- Enroulement protection\r\n- 1A 5P20\r\nOption\r\nContact de position disjoncteur 1NO+3NC+2 INV. (6NO+6NC) ramenés sur borne\r\nLe caisson basse tension H600mm se compose de :\r\n- Un relais numérique SIPROTEC 7SJ803 C13100 (pour réseau neutre compensé).\r\n7SJ8032-1ED00-1FH0\r\n- 3 Boites d’essai courant (1), tension (1) et polarité (1)\r\n- 1 disjoncteur 2P6A + aux (alim relais)\r\n- 3 entrées binaires + 5 sorties binaires\r\n- Fonctions AINSI\r\n\r\n· C13100 : 50/51, 50N/51N, 74TC, 46, 86\r\n· PWH : 47, 67Ns, 27R, 59R, 81R\r\n\r\nDimensions et poids :\r\n- Largeur UF : 620 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 425 Kg.', 'cellulehtasie', 29898),
(312, 1, 'Cellule Siemens comptage HTA TC 100-200', 'Fourniture et raccordement d’un Tableau HTA constitué de cellules modulaires de marque SIEMENS pour un comptage HTA comprenant :', 'Unité Fonctionnelle Interrupteur d’arrivée AI (R) – JZ01\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 400 A\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n	- 1 câble par phase (max 240 mm2), étrier de serrage en bas de compartiment.\r\n	- par l’avant.\r\n	- de type « B » embrochable 400 A, selon la norme EN 50181.\r\n	- Système d’indicateur de présence de tension WEGA zéro.\r\n\r\nPAS DE COFFRET BT\r\n\r\nDimensions et poids :\r\n- Largeur UF : 310 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm\r\nContact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\n\r\nUnité Fonctionnelle Transformateur de tension TT (M) – JZ02\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 200 A\r\n- 3 Transformateurs de tension\r\n- Enroulement mesure\r\n	20 KV 100 /v3 15VA Class 0,5\r\n- Enroulement protection 100 /V3 15VA Class 0,5\r\n- Puits fusible comprenant 6 fusibles UTE 6,3A\r\n- Système détecteur de tension capacitive type WEGA ZÉRO, avec indicateur\r\nLe caisson basse tension H200mm se compose de :\r\n- 1 sectionneur fusible pour enroulement protection avec verrouillage par serrure ELP1\r\n- 1 sectionneur fusible pour enroulement comptage\r\n(Livré avec 6 fusibles 10A format 10,3x38)\r\n\r\nDimensions et poids :\r\n- Largeur UF : 430 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 270 Kg.\r\n\r\nUnité Fonctionnelle Disjoncteur départ barre (DDB) – JZ03\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 disjoncteur à commande MANUEL avec contacts de position,\r\n- 1 bobine de déclenchement à manque de tension 48VCC\r\n- Deux sectionneurs à coupure dans le SF6 à commande manuelle, avec\r\ninterverrouillage avec le disjoncteur HTA.\r\n- 3 transformateurs de courant à double enroulement mesure & protection\r\n- TC 100-200A\r\n- Enroulement mesure\r\n- 5A Class 0,2FS10 7,5VA\r\n- Enroulement protection\r\n- 1A 5P20\r\nOption\r\nContact de position disjoncteur 1NO+3NC+2 INV. (6NO+6NC) ramenés sur borne\r\nLe caisson basse tension H600mm se compose de :\r\n- Un relais numérique SIPROTEC 7SJ803 C13100 (pour réseau neutre compensé).\r\n7SJ8032-1ED00-1FH0\r\n- 3 Boites d’essai courant (1), tension (1) et polarité (1)\r\n- 1 disjoncteur 2P6A + aux (alim relais)\r\n- 3 entrées binaires + 5 sorties binaires\r\n- Fonctions AINSI\r\n\r\n· C13100 : 50/51, 50N/51N, 74TC, 46, 86\r\n· PWH : 47, 67Ns, 27R, 59R, 81R\r\n\r\nDimensions et poids :\r\n- Largeur UF : 620 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 425 Kg.', 'cellulehtasie', 30405),
(313, 1, 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) + Verrouillage P1', '', 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) – JZ04\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 630 A\r\n- 1 Interrupteur/sectionneur 3 positions à commande MANUELLE\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n- 1 câble par phase (max 240 mm2), étrier de serrage en bas de\r\ncompartiment.\r\n- par l’avant.\r\n- de type « C » embrochable 630 A, selon la norme EN 50181.\r\n\r\n- Système d’indicateur de présence de tension WEGA 1.2C.\r\n- Un inter verrouillage de boucle de type P1\r\n- Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\nPAS DE CAISSON BT\r\n\r\n- Dimensions et poids :\r\n- Largeur UF : 310 mm.\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm.', NULL, 2938),
(314, 1, 'Unité Fonctionnelle Interrupteur Fusibles – IFC (T)', '', 'Unité Fonctionnelle Interrupteur Fusibles – IFC (T) – JZ05\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 630 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, à\r\ncommande MANUELLE, et dispositif de verrouillage (cadenas)\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- 1 bobine de déclenchement à émission de tension en 230VAC\r\n- 1 dispositif d’ouverture de l’interrupteur sur fusion de l’un des fusibles\r\navec signalisation mécanique \"Fusible MT déclenché\"\r\n- Inter verrouillage HTA/TR/BT RONIS type C4, HT/BT/TR\r\n- Raccordement câbles MT :\r\n- 1 câble par phase, étrier de serrage en bas de compartiment\r\n- par l’avant\r\n- de type « A » embrochable 250 A selon la norme EN 50181.\r\n- Système détecteur de tension WEGA 1.2C\r\n- Contact de postion SL & ST 1NO+1NC+ 2INV\r\n- Contact fusion fusibles : 1 NO.\r\nPAS DE CAISSON BT\r\n\r\nDimensions et poids :\r\n- Largeur UF : 430 mm.\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm. (hors coffret )\r\n- Poids : 145 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 420 mm.', NULL, 4004),
(315, 1, 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) + Verrouillage C4', '', 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) – JZ04\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 630 A\r\n- 1 Interrupteur/sectionneur 3 positions à commande MANUELLE\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n- 1 câble par phase (max 240 mm2), étrier de serrage en bas de\r\ncompartiment.\r\n- par l’avant.\r\n- de type « C » embrochable 630 A, selon la norme EN 50181.\r\n\r\n- Système d’indicateur de présence de tension WEGA 1.2C.\r\n- Inter verrouillage HTA/TR/BT RONIS type C4\r\n- Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\nPAS DE CAISSON BT\r\n\r\n- Dimensions et poids :\r\n- Largeur UF : 310 mm.\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm.', NULL, 3238),
(316, 1, 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) + Verrouillage P1 + Motorisation 48Vcc', '', 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) – JZ04\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 630 A\r\n- 1 Interrupteur/sectionneur 3 positions à commande Motorisée 48 Vcc\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n- 1 câble par phase (max 240 mm2), étrier de serrage en bas de\r\ncompartiment.\r\n- par l’avant.\r\n- de type « C » embrochable 630 A, selon la norme EN 50181.\r\n\r\n- Système d’indicateur de présence de tension WEGA 1.2C.\r\n- Un inter verrouillage de boucle de type P1\r\n- Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\nPAS DE CAISSON BT\r\n\r\n- Dimensions et poids :\r\n- Largeur UF : 310 mm.\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm.', NULL, 4373),
(317, 1, 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) + Verrouillage C4 + Motorisation 48Vcc', '', 'Unité Fonctionnelle Arrivée / Départ Interrupteur AI (R) – JZ04\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 630 A\r\n- 1 Interrupteur/sectionneur 3 positions à commande Motorisée 48 Vcc\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n- 1 câble par phase (max 240 mm2), étrier de serrage en bas de\r\ncompartiment.\r\n- par l’avant.\r\n- de type « C » embrochable 630 A, selon la norme EN 50181.\r\n\r\n- Système d’indicateur de présence de tension WEGA 1.2C.\r\n- Inter verrouillage HTA/TR/BT RONIS type C4\r\n- Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\nPAS DE CAISSON BT\r\n\r\n- Dimensions et poids :\r\n- Largeur UF : 310 mm.\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm.', NULL, 4673),
(318, 1, 'BT de 4 x 1 x 240 mm²Cuivre', 'Fourniture et raccordement d’une liaison BT de 4 x 1 x 240 mm²Cuivre U 1000 R2V.', NULL, NULL, 480),
(319, 1, 'BT de 4 x 2 x 240 mm²Cuivre', 'Fourniture et raccordement d’une liaison BT de 4 x 2 x 240 mm²Cuivre U 1000 R2V.', NULL, NULL, 960),
(320, 1, 'BT de 4 x 4 x 240 mm²Cuivre', 'Fourniture et raccordement d’une liaison BT de 4 x 4 x 240 mm²Cuivre U 1000 R2V.', NULL, NULL, 1920),
(321, 1, 'BT de 4 x 1 x 150 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 1 x 150 mm²Cuivre SIFPOL', NULL, NULL, 145),
(322, 1, 'BT de 4 x 2 x 150 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 2 x 150 mm²Cuivre SIFPOL', NULL, NULL, 290),
(323, 1, 'BT de 4 x 3 x 150 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 3 x 150 mm²Cuivre SIFPOL', NULL, NULL, 435),
(324, 1, ' BT de 4 x 4 x 150 mm²Cuivre SIFPOL', 'Fourniture et raccordement d’une liaison BT de 4 x 4 x 150 mm²Cuivre SIFPOL', NULL, NULL, 580),
(325, 1, 'Détection Défauts Homopolaire HTA', 'Fourniture et pose détecteur de défaut homopolaire :\r\n- 1 relais de Détection Défaut directionnel avec tores', NULL, NULL, 400),
(326, 1, 'SANCY (Hors T&D avec Intégration matériels)', '', NULL, 'sancy', 8150),
(327, 1, 'Sous-traitance contrôle du poste', '', NULL, NULL, 1100),
(328, 1, 'Main d oeuvre bureau d études', '', NULL, NULL, 50),
(329, 1, 'Main d oeuvre équipement', '', NULL, NULL, 50),
(330, 1, 'Main d oeuvre chef de projet', '', NULL, NULL, 50),
(332, 1, 'TGBT', '', NULL, NULL, 0),
(335, 1, 'Coffret BT des auxiliaires', '', NULL, NULL, 0),
(336, 1, 'Disjoncteur débrochable sur chassis + auxiliaire du poste 250 KVA TNC 400A', '', 'Descriptif :\r\n	- Fourniture et pose d\'un Disjoncteur sur châssis 400A à coupure visible, 3 pôles, bobine mx 230VAC, verrouillage C4 (HTA/BT/Transfo), contact OF et SD\r\n	- différentiel, à déclenchement réglable et temporisé\r\n	- coffret des auxiliaire du poste fixé sur Le châssis.\r\n	- Liaison basse tension prévue : 2 câbles/ph de 240mm2 Cu\r\n	- Epanouisseurs amont -Capot IP\r\n	- Epanouisseurs aval\r\n\r\nPlan d\'encombrement :', 'bt', 2500),
(337, 1, 'Disjoncteur débrochable sur chassis + auxiliaire du poste 400 KVA TNC 630A', '', 'Descriptif :\r\n	- Fourniture et pose d\'un Disjoncteur sur châssis 630A à coupure visible, 3 pôles, bobine mx 230VAC, verrouillage C4 (HTA/BT/Transfo), contact OF et SD\r\n	- différentiel, à déclenchement réglable et temporisé\r\n	- coffret des auxiliaire du poste fixé sur Le châssis.\r\n	- Liaison basse tension prévue : 2 câbles/ph de 240mm2 Cu\r\n	- Epanouisseurs amont -Capot IP\r\n	- Epanouisseurs aval\r\n\r\nPlan d\'encombrement :', 'bt', 2800),
(338, 1, 'Disjoncteur débrochable sur chassis + auxiliaire du poste 630 KVA TNS 1000A', '', 'Descriptif :\r\n	- Fourniture et pose d\'un Disjoncteur sur châssis 1000A à coupure visible, 4 pôles, bobine mx 230VAC, verrouillage C4 (HTA/BT/Transfo), contact OF et SD\r\n	- différentiel, à déclenchement réglable et temporisé\r\n	- coffret des auxiliaire du poste fixé sur Le châssis.\r\n	- Liaison basse tension prévue : 2 câbles/ph de 240mm2 Cu\r\n	- Epanouisseurs amont -Capot IP\r\n	- Epanouisseurs aval\r\n\r\nPlan d\'encombrement :', 'bt', 5500);
INSERT INTO `article` (`id`, `idFournisseur`, `nom`, `description`, `descriptif`, `img`, `prix`) VALUES
(339, 1, 'Disjoncteur débrochable sur chassis + auxiliaire du poste 1000 KVA TNS 1600A', NULL, 'Descriptif :\r\n	- Fourniture et pose d\'un Disjoncteur sur châssis 1600A à coupure visible, 4 pôles, bobine mx 230VAC, verrouillage C4 (HTA/BT/Transfo), contact OF et SD\r\n	- différentiel, à déclenchement réglable et temporisé\r\n	- coffret des auxiliaire du poste fixé sur Le châssis.\r\n	- Liaison basse tension prévue : 2 câbles/ph de 240mm2 Cu\r\n	- Epanouisseurs amont -Capot IP\r\n	- Epanouisseurs aval\r\n\r\nPlan d\'encombrement :', 'bt', 6500),
(340, 1, 'TGBT 1000kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel', '', 'L\'enveloppe sera conforme aux caractéristiques suivantes :\r\n- Type : Rittal VX25 Ri4Power.\r\n- Matière : Tôlerie acier électrozingué.\r\n- Revêtement extérieur : Peinture RAL7035.\r\n- Dimensions prévisionnelles : L1210xH2010xP610mm.\r\n- IP : 31.\r\n- IK : 10.\r\n- Cloisonnement interne : 2B.\r\n- Indice de service sur l\'arrivée : IS332.\r\n- Indice de service sur les départs : IS111.\r\n- Disposition : Avant.\r\n- Réserve disponible : Selon implantation.\r\n- Possibillité d\'extension : Non applicable.\r\n- Dispositif de piétement : Non applicable.\r\n- Dispositif de toit : Anneaux de levage.\r\n- Dispositif d\'accessibilité avant : Portillons pleins.\r\n- Dispositif d\'introduction des câbles : Plaques pleines.\r\n- Dispositif de cheminement interne dans les gaines à câbles : Cablofil latéral.\r\n- Dispositif de ventilation : Convection naturelle.\r\nLe câblage et le repérage seront conformes aux caractéristiques suivantes :\r\n- Typologie de câblage interne : BSI / H.V2-K.\r\n- Typologie des terminaisons internes : Cosses tubulaires / Embouts.\r\n- Typologie de repérage des fils : Bagues imperdables & repères blancs.\r\n- Typologie de repérage externe : Etiquettes gravées.\r\nLes raccordements sont prévus de la sorte :\r\n- Dispositif de raccordement sur l\'appareillage de puissance : Plages cuivres.\r\n- Dispositif de raccordement sur l\'appareillage modulaire : Borniers push-in.\r\n- Raccordement des arrivées : Par le haut.\r\n- Raccordement des départs : Par le bas.\r\n\r\nArrivée générale : 1.00\r\n- Disjoncteur boitier ouvert SIEMENS : 3WA 1600A 3P LSI 55kA.\r\n- Chariot débrochable : 1600A.\r\n- Verrouillage position ouvert : Ronis.\r\n- Déclencheur auxiliaire à emission : 230Vca.\r\n- Report d\'état : OF / SD.\r\n\r\nRépartition de puissance: 1.00\r\n- Jeu de barres : Cuivre électrolytique ETP 1600A / 55kArms 1s.\r\n- Régime de neutre: TNC vers TNS en aval de l\'arrivée générale / 3P+N+PE.\r\n- Tension nominale : 400Vca 50Hz.\r\n- Tension d\'isolement : 1000V.\r\n\r\nSignalisation et contrôle :\r\n- Relais de découplage : DGPT2. 1.00\r\n\r\nDistribution de puissance 230Vca :\r\n- Disjoncteur modulaire : 2P C25 + 300mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16 + 30mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16. 1.00\r\n- Disjoncteur modulaire : 2P C10. 3.00\r\n- Disjoncteur modulaire : 2P C6. 1.00\r\n- Disjoncteur modulaire : 2P C2. 1.00\r\n- Prise modulaire : 2P+T. 2.00', NULL, 8475),
(341, 1, 'TGBT 1250kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel', '', 'L\'enveloppe sera conforme aux caractéristiques suivantes :\r\n- Type : Rittal VX25 Ri4Power.\r\n- Matière : Tôlerie acier électrozingué.\r\n- Revêtement extérieur : Peinture RAL7035.\r\n- Dimensions prévisionnelles : L1610xH2010xP610mm.\r\n- IP : 31.\r\n- IK : 10.\r\n- Cloisonnement interne : 2B.\r\n- Indice de service sur l\'arrivée : IS332.\r\n- Indice de service sur les départs : IS111.\r\n- Disposition : Avant.\r\n- Réserve disponible : Selon implantation.\r\n- Possibillité d\'extension : Non applicable.\r\n- Dispositif de piétement : Non applicable.\r\n- Dispositif de toit : Anneaux de levage.\r\n- Dispositif d\'accessibilité avant : Portillons pleins.\r\n- Dispositif d\'introduction des câbles : Plaques pleines.\r\n- Dispositif de cheminement interne dans les gaines à câbles : Cablofil latéral.\r\n- Dispositif de ventilation : Convection naturelle.\r\nLe câblage et le repérage seront conformes aux caractéristiques suivantes :\r\n- Typologie de câblage interne : BSI / H.V2-K.\r\n- Typologie des terminaisons internes : Cosses tubulaires / Embouts.\r\n- Typologie de repérage des fils : Bagues imperdables & repères blancs.\r\n- Typologie de repérage externe : Etiquettes gravées.\r\nLes raccordements sont prévus de la sorte :\r\n- Dispositif de raccordement sur l\'appareillage de puissance : Plages cuivres.\r\n- Dispositif de raccordement sur l\'appareillage modulaire : Borniers push-in.\r\n- Raccordement des arrivées : Par le haut.\r\n- Raccordement des départs : Par le bas.\r\n\r\nArrivée générale : 1.00\r\n- Disjoncteur boitier ouvert SIEMENS : 3WA 2000A 3P LSI 66kA.\r\n- Chariot débrochable : 2000A.\r\n- Verrouillage position ouvert : Ronis.\r\n- Déclencheur auxiliaire à emission : 230Vca.\r\n- Report d\'état : OF / SD.\r\n\r\nRépartition de puissance: 1.00\r\n- Jeu de barres : Cuivre électrolytique ETP 2000A / 66kArms 1s.\r\n- Régime de neutre: TNC vers TNS en aval de l\'arrivée générale / 3P+N+PE.\r\n- Tension nominale : 400Vca 50Hz.\r\n- Tension d\'isolement : 1000V.\r\n\r\nSignalisation et contrôle :\r\n- Relais de découplage : DGPT2. 1.00\r\n\r\nDistribution de puissance 230Vca :\r\n- Disjoncteur modulaire : 2P C25 + 300mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16 + 30mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16. 1.00\r\n- Disjoncteur modulaire : 2P C10. 3.00\r\n- Disjoncteur modulaire : 2P C6. 1.00\r\n- Disjoncteur modulaire : 2P C2. 1.00\r\n- Prise modulaire : 2P+T. 2.00', NULL, 11560),
(342, 1, 'TGBT 1600kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel', '', 'L\'enveloppe sera conforme aux caractéristiques suivantes :\r\n- Type : Rittal VX25 Ri4Power.\r\n- Matière : Tôlerie acier électrozingué.\r\n- Revêtement extérieur : Peinture RAL7035.\r\n- Dimensions prévisionnelles : L1610xH2010xP610mm.\r\n- IP : 31.\r\n- IK : 10.\r\n- Cloisonnement interne : 2B.\r\n- Indice de service sur l\'arrivée : IS332.\r\n- Indice de service sur les départs : IS111.\r\n- Disposition : Avant.\r\n- Réserve disponible : Selon implantation.\r\n- Possibillité d\'extension : Non applicable.\r\n- Dispositif de piétement : Non applicable.\r\n- Dispositif de toit : Anneaux de levage.\r\n- Dispositif d\'accessibilité avant : Portillons pleins.\r\n- Dispositif d\'introduction des câbles : Plaques pleines.\r\n- Dispositif de cheminement interne dans les gaines à câbles : Cablofil latéral.\r\n- Dispositif de ventilation : Convection naturelle.\r\nLe câblage et le repérage seront conformes aux caractéristiques suivantes :\r\n- Typologie de câblage interne : BSI / H.V2-K.\r\n- Typologie des terminaisons internes : Cosses tubulaires / Embouts.\r\n- Typologie de repérage des fils : Bagues imperdables & repères blancs.\r\n- Typologie de repérage externe : Etiquettes gravées.\r\nLes raccordements sont prévus de la sorte :\r\n- Dispositif de raccordement sur l\'appareillage de puissance : Plages cuivres.\r\n- Dispositif de raccordement sur l\'appareillage modulaire : Borniers push-in.\r\n- Raccordement des arrivées : Par le haut.\r\n- Raccordement des départs : Par le bas.\r\n\r\nArrivée générale : 1.00\r\n- Disjoncteur boitier ouvert SIEMENS : 3WA 2500A 3P LSI 66kA.\r\n- Chariot débrochable : 2500A.\r\n- Verrouillage position ouvert : Ronis.\r\n- Déclencheur auxiliaire à emission : 230Vca.\r\n- Report d\'état : OF / SD.\r\n\r\n\r\nRépartition de puissance: 1.00\r\n- Jeu de barres : Cuivre électrolytique ETP 2500A / 66kArms 1s.\r\n- Régime de neutre: TNC vers TNS en aval de l\'arrivée générale / 3P+N+PE.\r\n- Tension nominale : 400Vca 50Hz.\r\n- Tension d\'isolement : 1000V.\r\n\r\nSignalisation et contrôle :\r\n- Relais de découplage : DGPT2. 1.00\r\n\r\nDistribution de puissance 230Vca :\r\n- Disjoncteur modulaire : 2P C25 + 300mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16 + 30mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16. 1.00\r\n- Disjoncteur modulaire : 2P C10. 3.00\r\n- Disjoncteur modulaire : 2P C6. 1.00\r\n- Disjoncteur modulaire : 2P C2. 1.00\r\n- Prise modulaire : 2P+T. 2.00', NULL, 12910),
(343, 1, 'TGBT 2000kVA 400Vca pour borne de recharge + emplacement pour matériel de com éventuel', '', 'L\'enveloppe sera conforme aux caractéristiques suivantes :\r\n- Type : Rittal VX25 Ri4Power.\r\n- Matière : Tôlerie acier électrozingué.\r\n- Revêtement extérieur : Peinture RAL7035.\r\n- Dimensions prévisionnelles : L1610xH2010xP610mm.\r\n- IP : 31.\r\n- IK : 10.\r\n- Cloisonnement interne : 2B.\r\n- Indice de service sur l\'arrivée : IS332.\r\n- Indice de service sur les départs : IS111.\r\n- Disposition : Avant.\r\n- Réserve disponible : Selon implantation.\r\n- Possibillité d\'extension : Non applicable.\r\n- Dispositif de piétement : Non applicable.\r\n- Dispositif de toit : Anneaux de levage.\r\n- Dispositif d\'accessibilité avant : Portillons pleins.\r\n- Dispositif d\'introduction des câbles : Plaques pleines.\r\n- Dispositif de cheminement interne dans les gaines à câbles : Cablofil latéral.\r\n- Dispositif de ventilation : Convection naturelle.\r\nLe câblage et le repérage seront conformes aux caractéristiques suivantes :\r\n- Typologie de câblage interne : BSI / H.V2-K.\r\n- Typologie des terminaisons internes : Cosses tubulaires / Embouts.\r\n- Typologie de repérage des fils : Bagues imperdables & repères blancs.\r\n- Typologie de repérage externe : Etiquettes gravées.\r\nLes raccordements sont prévus de la sorte :\r\n- Dispositif de raccordement sur l\'appareillage de puissance : Plages cuivres.\r\n- Dispositif de raccordement sur l\'appareillage modulaire : Borniers push-in.\r\n- Raccordement des arrivées : Par le haut.\r\n- Raccordement des départs : Par le bas.\r\n\r\nArrivée générale : 1.00\r\n- Disjoncteur boitier ouvert SIEMENS : 3WA 3200A 3P LSI 66kA.\r\n- Chariot débrochable : 3200A.\r\n- Verrouillage position ouvert : Ronis.\r\n- Déclencheur auxiliaire à emission : 230Vca.\r\n- Report d\'état : OF / SD.\r\n\r\nRépartition de puissance : 1.00\r\n- Jeu de barres : Cuivre électrolytique ETP 3200A / 66kArms 1s.\r\n- Régime de neutre: TNC vers TNS en aval de l\'arrivée générale / 3P+N+PE.\r\n- Tension nominale : 400Vca 50Hz.\r\n- Tension d\'isolement : 1000V.\r\n\r\nSignalisation et contrôle :\r\n- Relais de découplage : DGPT2. 1.00\r\n\r\nDistribution de puissance 230Vca :\r\n- Disjoncteur modulaire : 2P C25 + 300mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16 + 30mA AC. 1.00\r\n- Disjoncteur modulaire : 2P C16. 1.00\r\n- Disjoncteur modulaire : 2P C10. 3.00\r\n- Disjoncteur modulaire : 2P C6. 1.00\r\n- Disjoncteur modulaire : 2P C2. 1.00\r\n- Prise modulaire : 2P+T. 2.00', NULL, 14825),
(344, 1, 'Unité fonctionnelle départ borne 300kW 4P 400Vca', '', 'Fourniture d\'une unité fonctionnelle IS111 forme 2B incluant :\r\n- Disjoncteur SIEMENS : 3VA 4P 630A LSI 55kA.\r\n- Liaison de puissance isolée amont 4P 630A.\r\n- Etriers raccordement cables aval : 2x240mm2 / phase.\r\n- Platine prémontée.', NULL, 1455),
(345, 1, 'Emballage et livraison pour TGBT', '', 'Notre prestation répondra aux modalités suivantes :\r\n- Emballage routier France.\r\n- Mise à disposition selon incoterms 2020 DAP EPCO.', NULL, 192.5),
(346, 1, 'Transformateur huile de mobilité 630kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem630', 15996),
(347, 1, 'Transformateur huile de mobilité 800kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem800', 19900),
(348, 1, 'Transformateur huile de mobilité 1000kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem1000', 22600),
(349, 1, 'Transformateur huile de mobilité 1250kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem1250', 24900),
(350, 1, 'Transformateur huile de mobilité 1600kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem1600', 30400),
(351, 1, 'Transformateur huile de mobilité 2000kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem2000', 33900),
(352, 1, 'Transformateur huile de mobilité 2500kVA 20kV 410V ou 480V ECODESIGN 2021', '', NULL, 'tfoem2500', 37900),
(353, 1, 'Transformateur de distribution ECODESIGN 2021 250kVA 20kV 410V', '', NULL, 'tfoed250', 9920),
(354, 1, 'Transformateur de distribution ECODESIGN 2021 400kVA 20kV 410V', '', NULL, 'tfoed400', 12500),
(355, 1, 'Transformateur de distribution ECODESIGN 2021 630kVA 20kV 410V', '', NULL, 'tfoed630', 15400),
(356, 1, 'Transformateur de distribution ECODESIGN 2021 800kVA 20kV 410V', '', NULL, 'tfoed800', 19900),
(357, 1, 'Transformateur de distribution ECODESIGN 2021 1000kVA 20kV 410V', '', NULL, 'tfoed1000', 21900),
(358, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 250KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 10860),
(359, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 400KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 12460),
(360, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 630KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 16384),
(361, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 800KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 19365),
(362, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 1000KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 23230),
(363, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 1250KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 25549),
(364, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 1600KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 29023),
(365, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 2000KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 34499),
(366, 1, 'TRANSFORMATEUR MINERA ABAISSEUR HTA/BT 2500KVA 20KV/410V PERTES NIVEAU AAoAk', 'Transformateur de distribution HTA/BT de type CABINE étanche à remplissage total,immergé dans l\'huile minérale, à\r\nrefroidissement naturel ( ONAN ), pour installation intérieure,\r\nCes transformateurs sont conformes au règlement EcoDesign n° 548/2014 de la Commission de régulation européenne du 21\r\nmai 2014 en application de la Directive 2009/125/CE puis de l’amendement du 1 octobre 2019 (UE 2019/1783) du Parlement et\r\ndu Conseil Européen en ce qui concerne les transformateurs de faible, moyenne et grande puissance\r\nSelon norme NF EN 50588-1 (puissance inférieure ou égale à 3150kVA)', NULL, 'transformateur', 41188),
(367, 1, 'TGBT application photovoltaique', '', NULL, '', 0),
(368, 1, 'Départ interrupteur sectionneur fusible', '', NULL, '', 0),
(369, 1, 'Transformateur sec distribution électrique 630kVA 20kV 410V', '', NULL, 'tfoedip630', 14800),
(370, 1, 'Transformateur sec distribution électrique 630kVA 15-20kV 410V', '', NULL, 'tfoedip630', 15689.8),
(371, 1, 'Transformateur sec distribution électrique 800kVA 20kV 410V', '', NULL, 'tfoedip800', 17750),
(372, 1, 'Transformateur sec distribution électrique 800kVA 15-20kV 410V', '', NULL, 'tfoedip800', 18817),
(373, 1, 'Transformateur sec distribution électrique 1000kVA 20kV 410V', '', NULL, 'tfoedip1000', 20480),
(374, 1, 'Transformateur sec distribution électrique 1000kVA 15-20kV 410V', '', NULL, 'tfoedip1000', 21719),
(375, 1, 'Transformateur sec distribution électrique 1250kVA 20kV 410V', '', NULL, 'tfoedip1250', 23755),
(376, 1, 'Transformateur sec distribution électrique 1250kVA 15-20kV 410V', '', NULL, 'tfoedip1250', 24944),
(377, 1, 'Transformateur sec distribution électrique 1600kVA 20kV 410V', '', NULL, 'tfoedip1600', 28650),
(378, 1, 'Transformateur sec distribution électrique 1600kVA 15-20kV 410V', '', NULL, 'tfoedip1600', 30347),
(379, 1, 'Transformateur sec distribution électrique 2000kVA 20kV 410V', '', NULL, 'tfoedip2000', 32600),
(380, 1, 'Transformateur sec distribution électrique 2000kVA 15-20kV 410V', '', NULL, 'tfoedip2000', 34634),
(381, 1, 'Transformateur sec distribution électrique 2500kVA 20kV 410V', '', NULL, 'tfoedip2500', 37190),
(382, 1, 'Transformateur sec distribution électrique 2500kVA 15-20kV 410V', '', NULL, 'tfoedip2500', 39492),
(383, 1, 'Transformateur sec mobilité électrique 800kVA 20kV 410V ou 480V', '', NULL, 'tfoemip800', 18800),
(384, 1, 'Transformateur sec mobilité électrique 800kVA 15-20kV 410V ou 480V', '', NULL, 'tfoemip800', 19867),
(385, 1, 'Transformateur sec mobilité électrique 1000kVA 20kV 410V ou 480V', '', NULL, 'tfoemip1000', 21580),
(386, 1, 'Transformateur sec mobilité électrique 1000kVA 15-20kV 410V ou 480V', '', NULL, 'tfoemip1000', 22819),
(387, 1, 'Transformateur sec mobilité électrique 1250kVA 20kV 410V ou 480V', '', NULL, 'tfoemip1250', 24885),
(388, 1, 'Transformateur sec mobilité électrique 1250kVA 15-20kV 410V ou 480V', '', NULL, 'tfoemip1250', 26325),
(389, 1, 'Transformateur sec mobilité électrique 1600kVA 20kV 410V ou 480V', '', NULL, 'tfoemip1600', 29750),
(390, 1, 'Transformateur sec mobilité électrique 1600kVA 15-20kV 410V ou 480V', '', NULL, 'tfoemip1600', 31447),
(391, 1, 'Transformateur sec mobilité électrique 2000kVA 20kV 410V ou 480V', '', NULL, 'tfoemip2000', 33700),
(392, 1, 'Transformateur sec mobilité électrique 2000kVA 15-20kV 410V ou 480V', '', NULL, 'tfoemip2000', 35734),
(393, 1, 'Transformateur sec mobilité électrique 2500kVA 20kV 410V ou 480V', '', NULL, 'tfoemip2500', 37800),
(394, 1, 'Transformateur sec mobilité électrique 2500kVA 15-20kV 410V ou 480V', '', NULL, 'tfoemip2500', 40102),
(395, 1, 'Fourniture et pose d’un éclairage par Fluos (2 x 36W)', 'Fourniture et pose d’un éclairage par Fluos (2 x 36W)', '', '', 50),
(396, 1, 'Fourniture et pose d’un contact de porte de porte avec report d’information sur la supervision', 'Fourniture et pose d’un contact de porte de porte avec report d’information sur la Supervision de fo', '', '', 15),
(397, 1, 'Fourniture et pose d’un ensemble interrupteur / prise 2 pôles + terre sur goulotte(s)', 'Fourniture et pose d’un ensemble interrupteur / prise 2 pôles + terre sur goulotte(s)', '', '', 30),
(398, 1, 'Fourniture et pose d’un éclairage de secours fixe sur mur (BAES)', 'Fourniture et pose d’un éclairage de secours Fixes sur mur (BAES)', '', '', 60),
(400, 1, 'Fourniture et pose d’un extincteur CO2 - 2 Kg - Classe ABC', 'Fourniture et pose d’un extincteur CO2 - 2 Kg - Classe ABC', NULL, '', 70),
(401, 1, 'Fourniture et pose d’une boîte à gants + gants', 'Fourniture et pose d’une boîte à gants + gants', NULL, '', 95),
(402, 1, 'Fourniture et pose d’une perche à corps', 'Fourniture et pose d’une perche à corps', NULL, '', 90),
(403, 1, 'Fourniture et pose d’un râtelier pour fusibles de rechange', 'Fourniture et pose d’un râtelier pour fusibles de rechange', NULL, '', 95),
(404, 1, 'Fourniture d’un tabouret pour manœuvres', 'Fourniture d’un tabouret pour manœuvres', NULL, '', 150),
(405, 1, 'Fourniture et pose d’un détecteur de fumée', 'Fourniture et pose d’un détecteur de fumée', NULL, '', 70),
(406, 1, 'Fourniture et pose d’un éclairage de secours portatif (BAPI)', 'Fourniture et pose d’un éclairage de secours portatif (BAPI)', NULL, '', 80),
(407, 1, 'Emplacement comptage avec câbles U et I', 'Emplacement comptage avec câbles U et I', NULL, '', 30),
(408, 1, 'Fourniture, pose et raccordement d’un circuit de terre intérieur au poste (barrette de terre fournie', 'Fourniture, pose et raccordement d’un circuit de terre intérieur au poste (barrette de terre fournie avec 4 emplacements disponibles pour le client)', NULL, '', 250),
(410, 1, 'Tableau Siemens comptage HTA pour véhicule électrique', '', '2 Unités Fonctionnelles Interrupteur d’arrivée AI (R) – JZ01\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 400 A\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n	- 1 câble par phase (max 240 mm2), étrier de serrage en bas de compartiment.\r\n	- par l’avant.\r\n	- de type « B » embrochable 400 A, selon la norme EN 50181.\r\n	- Système d’indicateur de présence de tension WEGA zéro.\r\n\r\nPAS DE COFFRET BT\r\n\r\nDimensions et poids :\r\n- Largeur UF : 310 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm\r\nContact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\n\r\nUnité Fonctionnelle Transformateur de tension TT (M) – JZ02\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 Interrupteur/sectionneur de mise à la terre à trois positions, 200 A\r\n- 3 Transformateurs de tension\r\n- Enroulement mesure\r\n	20 KV 100 /v3 15VA Class 0,5\r\n- Enroulement protection\r\n    100 /V3 15VA Class 0,5\r\n- Puits fusible comprenant 6 fusibles UTE 6,3A\r\n- Système détecteur de tension capacitive type WEGA ZÉRO, avec indicateur\r\nLe caisson basse tension H200mm se compose de :\r\n- 1 sectionneur fusible pour enroulement protection avec verrouillage par serrure ELP1\r\n- 1 sectionneur fusible pour enroulement comptage\r\n(Livré avec 6 fusibles 10A format 10,3x38)\r\n\r\nDimensions et poids :\r\n- Largeur UF : 430 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 270 Kg.\r\n\r\nUnité Fonctionnelle Disjoncteur départ barre (DDB) – JZ03\r\n\r\nL’équipement de la cellule se compose de :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 400 A\r\n- 1 disjoncteur à commande MANUEL avec contacts de position,\r\n- 1 bobine de déclenchement à manque de tension 48VCC\r\n- Deux sectionneurs à coupure dans le SF6 à commande manuelle, avec\r\ninterverrouillage avec le disjoncteur HTA.\r\n- 3 transformateurs de courant à double enroulement mesure & protection\r\n- TC 50-100A\r\n- Enroulement mesure\r\n- 5A Class 0,2FS10 7,5VA\r\n- Enroulement protection\r\n- 1A 5P20\r\nOption\r\nContact de position disjoncteur 1NO+3NC+2 INV. (6NO+6NC) ramenés sur borne\r\nLe caisson basse tension H600mm se compose de :\r\n- Un relais numérique SIPROTEC 7SJ803 C13100 (pour réseau neutre compensé).\r\n7SJ8032-1ED00-1FH0\r\n- 3 Boites d’essai courant (1), tension (1) et polarité (1)\r\n- 1 disjoncteur 2P6A + aux (alim relais)\r\n- 3 entrées binaires + 5 sorties binaires\r\n- Fonctions AINSI\r\n\r\n· C13100 : 50/51, 50N/51N, 74TC, 46, 86\r\n· PWH : 47, 67Ns, 27R, 59R, 81R\r\n\r\nDimensions et poids :\r\n- Largeur UF : 620 mm\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 425 Kg.\r\n\r\nUnité Fonctionnelle Arrivée / Départ Interrupteur AI (R) – JZ04\r\n\r\nComposition de l’équipement HTA :\r\n- 1 Enveloppe en acier inoxydable étanche, soudé sans joint, remplie de SF6\r\n- 1 Jeu de barres cuivre, isolé par du caoutchouc silicone, 630 A\r\n- 1 Interrupteur/sectionneur 3 positions à commande MANUELLE\r\n- 1 verrouillage mécanique interrupteur / sectionneur de terre / capot avant.\r\n- Raccordement câbles MT :\r\n- 1 câble par phase (max 240 mm2), étrier de serrage en bas de\r\ncompartiment.\r\n- par l’avant.\r\n- de type « C » embrochable 630 A, selon la norme EN 50181.\r\n\r\n- Système d’indicateur de présence de tension WEGA 1.2C.\r\n- Inter verrouillage HTA/TR/BT RONIS type C4\r\n- Contact de position SL & ST 1NO+1NC+2INV ramenés sur bornes\r\nPAS DE CAISSON BT\r\n\r\n- Dimensions et poids :\r\n- Largeur UF : 310 mm.\r\n- Profondeur au sol : 715 mm (hors tout : 775 mm).\r\n- Hauteur : 1400mm.\r\n- Poids : 110 Kg.\r\n- Hauteur de raccordement connecteurs HTA : 860 mm.', 'cellulehtasie', 34816),
(411, 1, 'ARMORACC 2.86 Tesla sec (Hors T&D avec Intégration matériels)', '', NULL, 'armoracc', 26287),
(412, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 800KVA - 20KV/410V - IP00', '', NULL, 'tfotri800kva20kv410v', 21010),
(413, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1000KVA - 20KV/410V - IP00', '', NULL, 'tfotri1000kva20kv410v', 24360),
(414, 1, 'Transformateur TRIHAL - Eco D 2021 AA0AK - 1250KVA - 20KV/410V - IP00', '', NULL, 'tfotri1250kva20kv410v', 28160),
(415, 1, ' Transformateurs TRIHAL - Eco D 2021 AA0AK - 1600KVA - 20KV/410V - IP00', '', NULL, 'tfotri1600kva20kv410v', 33760),
(416, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2000KVA - 20KV/410V - IP00', '', NULL, 'tfotri2000kva20kv410v', 38390),
(417, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2500KVA - 20KV/410V - IP00', '', NULL, 'tfotri2500kva20kv410v', 45390),
(418, 1, ' Transformateurs TRIHAL - Eco D 2021 AA0AK - 800KVA - 20KV/480V - IP00', '', NULL, 'tfotri800kva20kv480v', 23120),
(419, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1000KVA - 20KV/480V - IP00', '', NULL, 'tfotri1000kva20kv480v', 27350),
(420, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1250KVA - 20KV/480V - IP00', '', NULL, 'tfotri1250kva20kv480v', 31300),
(421, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1600KVA - 20KV/480V - IP00', '', NULL, 'tfotri1600kva20kv480v', 35450),
(422, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2000KVA - 20KV/480V - IP00', '', NULL, 'tfotri2000kva20kv480v', 40350),
(423, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2500KVA - 20KV/480V - IP00', '', NULL, 'tfotri2500kva20kv480v', 46330),
(424, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 800KVA - 15-20KV/410V - IP00', '', NULL, 'tfotri800kva15-20kv410v', 20070),
(425, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1000KVA - 15-20KV/410V - IP00', '', NULL, 'tfotri1000kva15-20kv410v', 22730),
(426, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1250KVA - 15-20KV/410V - IP00', '', NULL, 'tfotri1250kva15-20kv410v', 28360),
(427, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1600KVA - 15-20KV/410V - IP00', '', NULL, 'tfotri1600kva15-20kv410v', 31260),
(428, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2000KVA - 15-20KV/410V - IP00', '', NULL, 'tfotri2000kva15-20kv410v', 39360),
(429, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2500KVA - 15-20KV/410V - IP00', '', NULL, 'tfotri2500kva15-20kv410v', 47720),
(430, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 800KVA - 15-20KV/480V - IP00', '', NULL, 'tfotri800kva15-20kv480v', 23350),
(431, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1000KVA - 15-20KV/480V - IP00', '', NULL, 'tfotri1000kva15-20kv480v', 39360),
(432, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1250KVA - 15-20KV/480V - IP00', '', NULL, 'tfotri1250kva15-20kv480v', 28890),
(433, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 1600KVA - 15-20KV/480V - IP00', '', NULL, 'tfotri1600kva15-20kv480v', 35760),
(434, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2000KVA - 15-20KV/480V', '', NULL, 'tfotri2000kva15-20kv480v', 43890),
(435, 1, 'Transformateurs TRIHAL - Eco D 2021 AA0AK - 2500KVA - 15-20KV/480V - IP00', '', NULL, 'tfotri2500kva15-20kv480v', 51390),
(436, 1, 'RM6 RE-QI+T 400KVA', '', '1 module RM6 , type RE-QI+T C13100 (*) constitué de :\r\n1 Jeux de barres tripolaire : 400A\r\n\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n• 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n• 1 commande CI1 manuelle\r\n• 1 déclencheur à émission type MX 48Vcc\r\n• 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n• 3 puits fusibles étanches pour fusibles UTE type Soléfuse\r\n• 3 fusibles UTE type Soléfuse 43A ( Fusibles de rechange Hors fourniture)\r\n• 1 Contact Fusion Fusible\r\n• 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n• 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire\r\n• 3 indicateurs de présence de tension (VPIS)\r\n• 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n(CSE ou CSD) type A 250A et câbles unipolaires <= 95mm2\r\n\r\n1 Fonction Interrupteur (I) équipée de :\r\n• 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n• 1 commande CIT manuelle\r\n• 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n• 3 indicateurs de présence de tension (VPIS)\r\n• 3 traversées embrochables fixes 400A pour connecteurs séparables équerre (CSE) type B\r\n• 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\nDim : L=(829+43)mm x P=710mm x H=1142mm\r\n(*) module extensible vers la droite\r\n\r\n1 Unité Fonctionnelle transformateur de potentiel RM6, type T équipée de :\r\n• 1 Jeux de barres tripolaire : 400A\r\n• 1 sectionneur et sectionneur de terre, liés avec les sectionneurs BT situés en aval\r\n• 1 commande manuelle\r\n• 1 jeu de contacts auxiliaires : 2O+2F/sectionneur\r\n• 3 puits fusibles UTE étanches pour fusibles UTE type Soléfuse\r\n• 3 fusibles UTE type Soléfuse 6,3A ( Fusibles de rechange Hors fourniture)\r\n• 3 transformateurs de potentiel : 20KV/v3 100/v3-100/v3 15VA Cl. 0,2-15VA Cl. 0,2\r\n• 1 caisson BT avec 1 compartiment ENEDIS et 1 compartiment client intégrant :\r\n• 2 sectionneurs des circuits BT avec protection fusibles\r\n• 1 relais de protection de découplage MICOM P923\r\n• 2 boites à bornes essais : Tension, Polarité\r\n• 1 relais auxiliaire instantané 4O/F\r\n• 1 relais bistable pour fonction RSE & commutateur RSE\r\n• 1 disjoncteur BT C60H DC 2P 6A +contacts O/F&SD\r\n• 1 disjoncteur BT iC60N 4P 4A +contacts O/F&SD\r\n• 1 kit d\'extensibilité droite & gauche pour Unité Fonctionnelle T\r\nDim : L=(472+30)mm x P=1030mm x H=1900mm\r\n\r\n1 Lot(s) accessoires de tableau comprenant :\r\n• 1 levier de manoeuvre RM6 standard\r\n• 1 levier de manoeuvre RM6 très long\r\n• 1 notice d\'installation en français\r\n• 1 notice d\'utilisation en français', '', 24124),
(437, 1, 'RM6 RE-IQI+T 400KVA', '', '1 module RM6 , type RE-IQI+T C13100 (*) constitué de :\r\n1 Jeux de barres tripolaire : 400A\r\n\r\n2 Fonctions Interrupteur (I) équipée chacune de :\r\n• 1 interrupteur-sectionneur et sectionneur de terre, 400A\r\n• 1 commande CIT manuelle\r\n• 1 jeu de contacts auxiliaires : 2O+2F/interrupteur & 10+1F/smalt\r\n• 3 indicateurs de présence de tension (VPIS)\r\n• 3 traversées embrochables fixes 400A pour connecteurs séparables équerre (CSE) type B\r\n• 1 système de bridage pour 3 câbles unipolaires <= 240mm2\r\n\r\n1 Fonction Interrupteur-Fusibles combinés (Q) équipée de :\r\n• 1 interrupteur-sectionneur et sectionneur de terre, 200A\r\n• 1 commande CI1 manuelle\r\n• 1 déclencheur à émission type MX 48Vcc\r\n• 1 jeu de contacts auxiliaires 2O+2F/interrupteur\r\n• 3 puits fusibles étanches pour fusibles UTE type Soléfuse\r\n• 3 fusibles UTE type Soléfuse 43A ( Fusibles de rechange Hors fourniture)\r\n• 1 Contact Fusion Fusible\r\n• 1 sectionneur de terre en aval des fusibles, lié au sectionneur de terre amont\r\n• 1 verrouillage par serrure HT/BT/TR Type R8 à clé tubulaire\r\n• 3 indicateurs de présence de tension (VPIS)\r\n• 3 traversées embrochables fixes 200A pour connecteurs séparables équerre ou droit\r\n(CSE ou CSD) type A 250A et câbles unipolaires <= 95mm2\r\nDim : L=(1186+43)mm x P=710mm x H=1142mm\r\n(*) module extensible vers la droite\r\n\r\n1 Unité Fonctionnelle transformateur de potentiel RM6, type T équipée de :\r\n• 1 Jeux de barres tripolaire : 400A\r\n• 1 sectionneur et sectionneur de terre, liés avec les sectionneurs BT situés en aval\r\n• 1 commande manuelle\r\n• 1 jeu de contacts auxiliaires : 2O+2F/sectionneur\r\n• 3 puits fusibles UTE étanches pour fusibles UTE type Soléfuse\r\n• 3 fusibles UTE type Soléfuse 6,3A ( Fusibles de rechange Hors fourniture)\r\n• 3 transformateurs de potentiel : 20KV/v3 100/v3-100/v3 15VA Cl. 0,2-15VA Cl. 0,2\r\n• 1 caisson BT avec 1 compartiment ENEDIS et 1 compartiment client intégrant :\r\n• 2 sectionneurs des circuits BT avec protection fusibles\r\n• 1 relais de protection de découplage MICOM P923\r\n• 2 boites à bornes essais : Tension, Polarité\r\n• 1 relais auxiliaire instantané 4O/F\r\n• 1 relais bistable pour fonction RSE & commutateur RSE\r\n• 1 disjoncteur BT C60H DC 2P 6A +contacts O/F&SD\r\n• 1 disjoncteur BT iC60N 4P 4A +contacts O/F&SD\r\n• 1 kit d\'extensibilité droite & gauche pour Unité Fonctionnelle T\r\nDim : L=(472+30)mm x P=1030mm x H=1900mm\r\n\r\n1 Lot(s) accessoires de tableau comprenant :\r\n• 1 levier de manoeuvre RM6 standard\r\n• 1 levier de manoeuvre RM6 très long\r\n• 1 notice d\'installation en français\r\n• 1 notice d\'utilisation en français', '', 25235),
(438, 1, 'Câbles BT', '', NULL, '', 500),
(439, 1, 'Jeux de fusibles HTA', '', NULL, '', 250),
(440, 1, 'Etiquettes et divers', '', NULL, '', 150),
(441, 1, 'Risque pour provision', '', NULL, '', 1),
(442, 1, 'Mise en service DEIE', '', NULL, '', 0),
(443, 1, 'Mise en sevice C13100', '', NULL, '', 0),
(444, 1, 'Recette usine', '', NULL, '', 0),
(445, 1, 'Transport et déchargement', '', NULL, '', 0),
(446, 1, 'Fourniture et pose d’un convecteur 750 W', 'Fourniture et pose d’un convecteur 750$ W', NULL, '', 90),
(447, 1, 'Fourniture et pose d’un convecteur 1500 W', 'Fourniture et pose d’un convecteur 1500 W', NULL, '', 90);

-- --------------------------------------------------------

--
-- Structure de la table `caracteristiquearticle`
--

CREATE TABLE `caracteristiquearticle` (
  `idArticle` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `caracteristiquearticle`
--

INSERT INTO `caracteristiquearticle` (`idArticle`, `nom`, `description`) VALUES
(167, 'Tension assignée 24.0 kV', ''),
(167, 'Tension de service 20.0 kV', ''),
(167, 'Tension assignée de tenue à fréquence industrielle de courte durée 50 kV', ''),
(167, 'Tension assignée de tenue aux chocs de foudre 125 kV', ''),
(167, 'Fréquence assignée 50 Hz', ''),
(167, 'Courant assigné de courte durée Ik 12,5 kA', ''),
(167, 'Durée assignée de court-circuit 0,7 s', ''),
(167, 'Courant de choc assigné Ip 31,5kA', ''),
(167, 'Courant de service assigné du jeu de barres 400 A', ''),
(167, 'Courant de service assigné de l’interrupteur-sectionneur à trois positions 400 A', ''),
(167, 'à température ambiante 40 °C', ''),
(167, 'Indice de protection pour le tableau de distribution, enveloppe IP 2X', ''),
(167, 'Indice de protection pour l\'armoire basse tension IP 3X', ''),
(167, 'Distance tableau / mur arrière 100mm', ''),
(167, 'Distance tableau / mur latéral 50mm', ''),
(167, 'Classification arc interne avec échappement des surpressions par le bas.', ''),
(167, 'Couleur standard gris clair (SN700).', ''),
(326, 'Dimensions Extérieure', '3,69 x 2,16 x 3,18 m (Longueur x Largeur x Hauteur)	'),
(326, 'Dimensions Intérieure', '3,53 x 2 x 2,19 m (Longueur x Largeur x Hauteur Sous Plafond)	'),
(326, 'Hauteur sous plancher', '0,62'),
(326, 'Masse approximative (hors toiture régionale)', '14 Tonnes'),
(167, 'Tension assignée 24.0 kV', ''),
(167, 'Tension de service 20.0 kV', ''),
(167, 'Tension assignée de tenue à fréquence industrielle de courte durée 50 kV', ''),
(167, 'Tension assignée de tenue aux chocs de foudre 125 kV', ''),
(167, 'Fréquence assignée 50 Hz', ''),
(167, 'Courant assigné de courte durée Ik 12,5 kA', ''),
(167, 'Durée assignée de court-circuit 0,7 s', ''),
(167, 'Courant de choc assigné Ip 31,5kA', ''),
(167, 'Courant de service assigné du jeu de barres 400 A', ''),
(167, 'Courant de service assigné de l’interrupteur-sectionneur à trois positions 400 A', ''),
(167, 'à température ambiante 40 °C', ''),
(167, 'Indice de protection pour le tableau de distribution, enveloppe IP 2X', ''),
(167, 'Indice de protection pour l\'armoire basse tension IP 3X', ''),
(167, 'Distance tableau / mur arrière 100mm', ''),
(167, 'Distance tableau / mur latéral 50mm', ''),
(167, 'Classification arc interne avec échappement des surpressions par le bas.', ''),
(167, 'Couleur standard gris clair (SN700).', ''),
(326, 'Dimensions Extérieure', '3,69 x 2,16 x 3,18 m (Longueur x Largeur x Hauteur)	'),
(326, 'Dimensions Intérieure', '3,53 x 2 x 2,19 m (Longueur x Largeur x Hauteur Sous Plafond)	'),
(326, 'Hauteur sous plancher', '0,62'),
(326, 'Masse approximative (hors toiture régionale)', '14 Tonnes'),
(411, 'Dimensions Extérieure', '5,26 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	'),
(411, 'Dimensions Intérieure', '5,1 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	'),
(411, 'Hauteur sous plancher', '0,62'),
(411, 'Masse approximative (hors toiture régionale)', '35 Tonnes'),
(411, 'La toiture est amovible afin de sortir le transformateur.', ''),
(436, 'Tension assignée Un', '24kV'),
(436, 'Tension de service', '20KV'),
(436, 'Courant de courte durée admissible', '12,5 kA 1sec'),
(436, 'Courant assigné', '400A'),
(436, 'Fréquence', '50Hz'),
(436, 'Tension de choc', '125 kV crête'),
(436, 'Tenue crête', '31,5 kA crête'),
(436, 'Degré de protection enveloppe', 'IP 67'),
(436, 'Degré de protection mécanisme de fonctionnement', 'IP 2XC'),
(436, 'Type d’enveloppe', 'LSC2A-PM'),
(436, 'Température ambiante de fonctionnement', '-25°C à +40°C'),
(436, 'Peinture enveloppe métallique', 'RAL 7030'),
(436, 'Peinture plaque avant', 'RAL 9003'),
(436, 'Cuve enveloppe', 'INOX'),
(436, 'Recommandations', 'CEI 62271-200, 62271-1, 62271-100, 62271-102, 62271-105, 60265-1'),
(436, 'Normes UTE', 'NFC 13 100, 13 200'),
(436, 'Spécifications Enedis', 'HN 64-S52, HN 64-S43'),
(437, 'Tension assignée Un', '24kV'),
(437, 'Tension de service', '20KV'),
(437, 'Courant de courte durée admissible', '12,5 kA 1sec'),
(437, 'Courant assigné', '400A'),
(437, 'Fréquence', '50Hz'),
(437, 'Tension de choc', '125 kV crête'),
(437, 'Tenue crête', '31,5 kA crête'),
(437, 'Degré de protection enveloppe', 'IP 67'),
(437, 'Degré de protection mécanisme de fonctionnement', 'IP 2XC'),
(437, 'Type d’enveloppe', 'LSC2A-PM'),
(437, 'Température ambiante de fonctionnement', '-25°C à +40°C'),
(437, 'Peinture enveloppe métallique', 'RAL 7030'),
(437, 'Peinture plaque avant', 'RAL 9003'),
(437, 'Cuve enveloppe', 'INOX'),
(437, 'Recommandations', 'CEI 62271-200, 62271-1, 62271-100, 62271-102, 62271-105, 60265-1'),
(437, 'Normes UTE', 'NFC 13 100, 13 200'),
(437, 'Spécifications Enedis', 'HN 64-S52, HN 64-S43'),
(17, 'Dimensions Extérieure', '3,26 x 2,48 x 3,49 m (Longueur x Largeur x Hauteur)'),
(17, 'Dimensions Intérieure', '3,10 x 2,32 x 2,47 m (Longueur x Largeur x Hauteur Sous Plafond)'),
(17, 'Hauteur sous plancher', '0,62'),
(17, 'Masse approximative (hors toiture régionale)', '14 Tonnes'),
(18, 'Dimensions Extérieure', '4,20 x 2,48 x 3,31 m (Longueur x Largeur x Hauteur)'),
(18, 'Dimensions Intérieure', '4,04 x 2,32 x 2,35 m (Longueur x Largeur x Hauteur Sous Plafond)'),
(18, 'Hauteur sous plancher', '0,62'),
(18, 'Masse approximative (hors toiture régionale)', '15 Tonnes'),
(311, 'Tension assignée 24.0 kV', ''),
(311, 'Tension de service 20.0 kV	', ''),
(311, 'Tension assignée de tenue à fréquence industrielle de courte durée 50 kV', ''),
(311, 'Tension assignée de tenue aux chocs de foudre 125 kV', ''),
(311, 'Fréquence assignée 50 Hz', ''),
(311, 'Courant assigné de courte durée Ik 12,5 kA', ''),
(311, 'Durée assignée de court-circuit 0,7 s', ''),
(311, 'Courant de choc assigné Ip 31,5kA', ''),
(311, 'Courant de service assigné du jeu de barres 400 A', ''),
(311, 'Courant de service assigné de l’interrupteur-sectionneur à trois positions 400 A', ''),
(311, 'à température ambiante 40 °C', ''),
(311, 'Indice de protection pour le tableau de distribution, enveloppe IP 2X', ''),
(311, 'Indice de protection pour l\'armoire basse tension IP 3X	', ''),
(311, 'Distance tableau / mur arrière 100mm', ''),
(311, 'Distance tableau / mur latéral 50mm', ''),
(312, 'Tension assignée 24.0 kV kV	', ''),
(312, 'Tension de service 20.0 kV', ''),
(312, 'Tension assignée de tenue à fréquence industrielle de courte durée 50 kV', ''),
(312, 'Tension assignée de tenue aux chocs de foudre 125 kV', ''),
(312, 'Fréquence assignée 50 Hz', ''),
(312, 'Courant assigné de courte durée Ik 12,5 kA', ''),
(312, 'Durée assignée de court-circuit 0,7 s', ''),
(312, 'Courant de choc assigné Ip 31,5kA', ''),
(312, 'Courant de service assigné du jeu de barres 400 A', ''),
(312, 'Courant de service assigné de l’interrupteur-sectionneur à trois positions 400 A', ''),
(312, 'à température aIndice de protection pour le tableau de distribution, enveloppe IP 2X	mbiante 40 °C', ''),
(312, 'Indice de protection pour l\'armoire basse tension IP 3X	', ''),
(312, 'Distance tableau / mur arrière 100mm', ''),
(312, 'Distance tableau / mur arrière 100mm', ''),
(12, 'Moulé', ''),
(12, 'Bornes embrochables type A', ''),
(12, 'Puissance Apparente', '8 kVa'),
(12, 'Tension Primaire', '20,5 KV	'),
(12, 'Tension Secondaire', '230 Vac	'),
(12, 'Dimensions ', '640 x 380 x 636mm (L x P x H)'),
(11, 'Type', 'Sec'),
(11, 'Puissance Apparente', '10 kVA	'),
(11, 'Tension Primaire', '800Vac	'),
(11, 'Tension Secondaire', '230 Vac	'),
(11, 'Peinture RAL 7035 cuite au four	', ''),
(11, 'Dimensions ', '500 x 460 x 530mm (L x P x H)'),
(2, 'Tension secondaire assignée (à vide)	410V	', ''),
(2, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(2, 'Niveau d\'isolement assigné	24kV	', ''),
(2, 'Couplage	Dyn11	', ''),
(2, 'Niveau de pertes	AA0Ak	', ''),
(2, 'Système de vidange	Vanne A22	', ''),
(2, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(2, '1 Capot BT plombable		', ''),
(2, '1 Relais de protection DMCR		', ''),
(2, 'Puissance du Transformateur	250 kVA	', ''),
(2, 'Tension primaire	20 kV', ''),
(3, 'Tension secondaire assignée (à vide)	410V	', ''),
(3, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(3, 'Niveau d\'isolement assigné	24kV	', ''),
(3, 'Couplage	Dyn11	', ''),
(3, 'Niveau de pertes	AA0Ak	', ''),
(3, 'Système de vidange	Vanne A22	', ''),
(3, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(3, '1 Capot BT plombable		', ''),
(3, '1 Relais de protection DMCR		', ''),
(3, 'Puissance du Transformateur	400 kVA	', ''),
(3, 'Tension primaire	20 kV', ''),
(4, 'Tension secondaire assignée (à vide)	410V	', ''),
(4, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(4, 'Niveau d\'isolement assigné	24kV	', ''),
(4, 'Couplage	Dyn11	', ''),
(4, 'Niveau de pertes	AA0Ak	', ''),
(4, 'Système de vidange	Vanne A22	', ''),
(4, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(4, '1 Capot BT plombable		', ''),
(4, '1 Relais de protection DMCR		', ''),
(4, 'Puissance du Transformateur	630 kVA	', ''),
(4, 'Tension primaire	20 kV', ''),
(5, 'Tension secondaire assignée (à vide)	410V	', ''),
(5, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(5, 'Niveau d\'isolement assigné	24kV	', ''),
(5, 'Couplage	Dyn11	', ''),
(5, 'Niveau de pertes	AA0Ak	', ''),
(5, 'Système de vidange	Vanne A22	', ''),
(5, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(5, '1 Capot BT plombable		', ''),
(5, '1 Relais de protection DMCR		', ''),
(5, 'Puissance du Transformateur	800 kVA	', ''),
(5, 'Tension primaire	20 kV', ''),
(6, 'Puissance du Transformateur	1000 kVA	', ''),
(6, 'Tension secondaire assignée (à vide)	410V	', ''),
(6, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(6, 'Niveau d\'isolement assigné	24kV	', ''),
(6, 'Couplage	Dyn11	', ''),
(6, 'Niveau de pertes	AA0Ak	', ''),
(6, 'Système de vidange	Vanne A22	', ''),
(6, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(6, '1 Capot BT plombable		', ''),
(6, '1 Relais de protection DMCR		', ''),
(6, 'Tension primaire	20 kV', ''),
(7, 'Tension secondaire assignée (à vide)	410V	', ''),
(7, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(7, 'Niveau d\'isolement assigné	24kV	', ''),
(7, 'Couplage	Dyn11	', ''),
(7, 'Niveau de pertes	AA0Ak	', ''),
(7, 'Système de vidange	Vanne A22	', ''),
(7, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(7, '1 Capot BT plombable		', ''),
(7, '1 Relais de protection DMCR		', ''),
(7, 'Puissance du Transformateur	1250 kVA	', ''),
(7, 'Tension primaire	20 kV', ''),
(8, 'Tension secondaire assignée (à vide)	410V	', ''),
(8, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(8, 'Niveau d\'isolement assigné	24kV	', ''),
(8, 'Couplage	Dyn11	', ''),
(8, 'Niveau de pertes	AA0Ak	', ''),
(8, 'Système de vidange	Vanne A22	', ''),
(8, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(8, '1 Capot BT plombable		', ''),
(8, '1 Relais de protection DMCR		', ''),
(8, 'Puissance du Transformateur	1600 kVA	', ''),
(8, 'Tension primaire	20 kV', ''),
(9, 'Tension secondaire assignée (à vide)	410V	', ''),
(9, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(9, 'Niveau d\'isolement assigné	24kV	', ''),
(9, 'Couplage	Dyn11	', ''),
(9, 'Niveau de pertes	AA0Ak	', ''),
(9, 'Système de vidange	Vanne A22	', ''),
(9, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(9, '1 Capot BT plombable		', ''),
(9, '1 Relais de protection DMCR		', ''),
(9, 'Puissance du Transformateur	2000 kVA	', ''),
(9, 'Tension primaire	20 kV', ''),
(10, 'Tension secondaire assignée (à vide)	410V	', ''),
(10, 'Réglage par commutateur hors tension	+-2,5% et +-5%	', ''),
(10, 'Niveau d\'isolement assigné	24kV	', ''),
(10, 'Couplage	Dyn11	', ''),
(10, 'Niveau de pertes	AA0Ak	', ''),
(10, 'Système de vidange	Vanne A22	', ''),
(10, 'Verrouillage des traversées embrochables	Sans serrure	', ''),
(10, '1 Capot BT plombable		', ''),
(10, '1 Relais de protection DMCR		', ''),
(10, 'Puissance du Transformateur	2500 kVA	', ''),
(10, 'Tension primaire	20 kV', ''),
(280, 'Dimensions Extérieure	2,86 x 1,70 x 3,49 m (Longueur x Largeur x Hauteur)	', ''),
(280, 'Dimensions Intérieure	2,70 x 1,54 x 2,47 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(280, 'Hauteur sous plancher	0,62	', ''),
(280, 'Masse approximative (hors toiture régionale)	10 Tonnes', ''),
(281, 'Dimensions Extérieure	3,12 x 2,31 x 3,25 m (Longueur x Largeur x Hauteur)	', ''),
(281, 'Dimensions Intérieure	2,96 x 2,15 x 2,32 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(281, 'Hauteur sous plancher	0,57	', ''),
(281, 'Masse approximative (hors toiture régionale)	10,5 Tonnes', ''),
(282, 'Dimensions Extérieure	3,26 x 2,86 x 3,49 m (Longueur x Largeur x Hauteur)	', ''),
(282, 'Dimensions Intérieure	3,10 x 2,70 x 2,47 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(282, 'Hauteur sous plancher	0,62	', ''),
(282, 'Masse approximative (hors toiture régionale)	15 Tonnes', ''),
(283, 'Dimensions Extérieure	4,20 x 2,86 x 3,55 m (Longueur x Largeur x Hauteur)	', ''),
(283, 'Dimensions Intérieure	4,04 x 2,70 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(283, 'Hauteur sous plancher	0,62	', ''),
(283, 'Masse approximative (hors toiture régionale)	17 Tonnes', ''),
(284, 'Dimensions Extérieure	4,20 x 3,01 x 3,55 m (Longueur x Largeur x Hauteur)	', ''),
(284, 'Dimensions Intérieure	4,04 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(284, 'Hauteur sous plancher	0,62	', ''),
(284, 'Masse approximative (hors toiture régionale)	17 Tonnes', ''),
(285, 'Dimensions Extérieure	4,20 x 3,43 x 3,55 m (Longueur x Largeur x Hauteur)	', ''),
(285, 'Dimensions Intérieure	4,04 x 3,23 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(285, 'Hauteur sous plancher	0,62	', ''),
(285, 'Masse approximative (hors toiture régionale)	17 Tonnes', ''),
(286, 'Dimensions Extérieure	5,26 x 2,48 x 3,55 m (Longueur x Largeur x Hauteur)	', ''),
(286, 'Dimensions Intérieure	5,1 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(286, 'Hauteur sous plancher	0,62	', ''),
(286, 'Masse approximative (hors toiture régionale)	21 Tonnes', ''),
(287, 'Dimensions Extérieure	5,26 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(287, 'Dimensions Intérieure	5,1 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(287, 'Hauteur sous plancher	0,62	', ''),
(287, 'Masse approximative (hors toiture régionale)	21 Tonnes', ''),
(288, 'Dimensions Extérieure	5,26 x 3,01 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(288, 'Dimensions Intérieure	5,1 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(288, 'Hauteur sous plancher	0,62	', ''),
(288, 'Masse approximative (hors toiture régionale)	21 Tonnes', ''),
(289, 'Dimensions Extérieure	5,26 x 3,43 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(289, 'Dimensions Intérieure	5,1 x 3,23 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(289, 'Hauteur sous plancher	0,62	', ''),
(289, 'Masse approximative (hors toiture régionale)	21 Tonnes', ''),
(290, 'Dimensions Extérieure	6,26 x 2,48 x 3,55 m (Longueur x Largeur x Hauteur)	', ''),
(290, 'Dimensions Intérieure	6,1 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(290, 'Hauteur sous plancher	0,62	', ''),
(290, 'Masse approximative (hors toiture régionale)	24 Tonnes', ''),
(291, 'Dimensions Extérieure	6,43 x 2,48 x 3,45 m (Longueur x Largeur x Hauteur)	', ''),
(291, 'Dimensions Intérieure	6,27 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(291, 'Hauteur sous plancher	0,62	', ''),
(291, 'Masse approximative (hors toiture régionale)	19 Tonnes', ''),
(292, 'Dimensions Extérieure	6,43 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(292, 'Dimensions Intérieure	6,27 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(292, 'Hauteur sous plancher	0,62	', ''),
(292, 'Masse approximative (hors toiture régionale)	23 Tonnes', ''),
(293, 'Dimensions Extérieure	6,43 x 3,01 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(293, 'Dimensions Intérieure	6,27 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(293, 'Hauteur sous plancher	0,62	', ''),
(293, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(294, 'Dimensions Extérieure	6,43 x 3,43 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(294, 'Dimensions Intérieure	6,27 x 3,23 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(294, 'Hauteur sous plancher	0,62	', ''),
(294, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(295, 'Dimensions Extérieure	7 x 2,48 x 3,45 m (Longueur x Largeur x Hauteur)	', ''),
(295, 'Dimensions Intérieure	6,84 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(295, 'Hauteur sous plancher	0,62	', ''),
(295, 'Masse approximative (hors toiture régionale)	23 Tonnes', ''),
(296, 'Dimensions Extérieure	7,52 x 2,48 x 3,45 m (Longueur x Largeur x Hauteur)	', ''),
(296, 'Dimensions Intérieure	7,36 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(296, 'Hauteur sous plancher	0,62	', ''),
(296, 'Masse approximative (hors toiture régionale)	21 Tonnes', ''),
(297, 'Dimensions Extérieure	7,52 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(297, 'Dimensions Intérieure	7,36 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(297, 'Hauteur sous plancher	0,62	', ''),
(297, 'Masse approximative (hors toiture régionale)	26,5 Tonnes', ''),
(298, 'Dimensions Extérieure	7,52 x 3,01 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(298, 'Dimensions Intérieure	7,36 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(298, 'Hauteur sous plancher	0,62	', ''),
(298, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(299, 'Dimensions Extérieure	7,52 x 3,43 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(299, 'Dimensions Intérieure	7,36 x 3,23 x2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(299, 'Hauteur sous plancher	0,62	', ''),
(299, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(300, 'Dimensions Extérieure	8,61 x 2,48 x 3,45 m (Longueur x Largeur x Hauteur)	', ''),
(300, 'Dimensions Intérieure	8,45 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(300, 'Hauteur sous plancher	0,62	', ''),
(300, 'Masse approximative (hors toiture régionale)	23,5 T Tonnes', ''),
(301, 'Dimensions Extérieure	8,61 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(301, 'Dimensions Intérieure	8,45 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(301, 'Hauteur sous plancher	0,62	', ''),
(301, 'Masse approximative (hors toiture régionale)	29,5 Tonnes', ''),
(302, 'Dimensions Extérieure	8,61 x 3,01 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(302, 'Dimensions Intérieure	8,45 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(302, 'Hauteur sous plancher	0,62	', ''),
(302, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(303, 'Dimensions Extérieure	8,61 x 3,43 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(303, 'Dimensions Intérieure	8,45 x 3,23 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(303, 'Hauteur sous plancher	0,62	', ''),
(303, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(304, 'Dimensions Extérieure	9,26 x 2,48 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(304, 'Dimensions Intérieure	9,1 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(304, 'Hauteur sous plancher	0,62	', ''),
(304, 'Masse approximative (hors toiture régionale)	30,5 Tonnes', ''),
(305, 'Dimensions Extérieure	9,7 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(305, 'Dimensions Intérieure	9,54 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(305, 'Hauteur sous plancher	0,62	', ''),
(305, 'Masse approximative (hors toiture régionale)	31,5 Tonnes', ''),
(306, 'Dimensions Extérieure	9,7 x 3,01 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(306, 'Dimensions Intérieure	9,54 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(306, 'Hauteur sous plancher	0,62	', ''),
(306, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(307, 'Dimensions Extérieure	9,7 x 3,43 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(307, 'Dimensions Intérieure	9,54 x 3,23 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(307, 'Hauteur sous plancher	0,62	', ''),
(307, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(308, 'Dimensions Extérieure	10,79 x 2,86 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(308, 'Dimensions Intérieure	10,63 x 2,7 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(308, 'Hauteur sous plancher	0,62	', ''),
(308, 'Masse approximative (hors toiture régionale)	34 Tonnes', ''),
(309, 'Dimensions Extérieure	10,79 x 3,43 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(309, 'Dimensions Intérieure	10,63 x 3,23 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(309, 'Hauteur sous plancher	0,62	', ''),
(309, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(310, 'Dimensions Extérieure	10,79 x 3,01 x 3,51 m (Longueur x Largeur x Hauteur)	', ''),
(310, 'Dimensions Intérieure	10,63 x 2,85 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(310, 'Hauteur sous plancher	0,62	', ''),
(310, 'Masse approximative (hors toiture régionale)	SUR MESURE', ''),
(358, 'Quantité	1	', ''),
(358, 'Gamme	MINERA EcoDesign	', ''),
(358, 'Type de fonctionnement	ABAISSEUR	', ''),
(358, 'Refroidissement	ONAN	', ''),
(358, 'Installation	Intérieure	', ''),
(358, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(358, 'Altitude maximum	1000m	', ''),
(358, 'Puissance assignée	250kVA	', ''),
(358, 'Tension primaire assignée	20000V	', ''),
(358, 'Tension secondaire assignée (à vide)	410V	', ''),
(358, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(358, 'Niveau d\'isolement assigné	24kV	', ''),
(358, 'Symbole de couplage	Dyn 11	', ''),
(358, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(358, 'Fréquence	50 Hz	', ''),
(358, 'Classification de pertes (EN 50588)		', ''),
(358, 'Tolérance	Sans dépassement de pertes	', ''),
(358, 'Pertes à vide	270W	', ''),
(358, 'Pertes en charge à 75°C	2350W	', ''),
(358, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(358, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(358, 'Transport	France Métropole	', ''),
(358, 'Teinte Peinture	Gris RAL7033	', ''),
(358, 'Transformateur déchargé au pied de camion	Compris	', ''),
(358, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(359, 'Quantité	1	', ''),
(359, 'Gamme	MINERA EcoDesign	', ''),
(359, 'Type de fonctionnement	ABAISSEUR	', ''),
(359, 'Refroidissement	ONAN	', ''),
(359, 'Installation	Intérieure	', ''),
(359, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(359, 'Altitude maximum	1000m	', ''),
(359, 'Puissance assignée	400kVA	', ''),
(359, 'Tension primaire assignée	20000V	', ''),
(359, 'Tension secondaire assignée (à vide)	410V	', ''),
(359, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(359, 'Niveau d\'isolement assigné	24kV	', ''),
(359, 'Symbole de couplage	Dyn 11	', ''),
(359, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(359, 'Fréquence	50 Hz	', ''),
(359, 'Classification de pertes (EN 50588)		', ''),
(359, 'Tolérance	Sans dépassement de pertes	', ''),
(359, 'Pertes à vide	270W	', ''),
(359, 'Pertes en charge à 75°C	2350W	', ''),
(359, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(359, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(359, 'Transport	France Métropole	', ''),
(359, 'Teinte Peinture	Gris RAL7033	', ''),
(359, 'Transformateur déchargé au pied de camion	Compris	', ''),
(359, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(360, 'Quantité	1	', ''),
(360, 'Gamme	MINERA EcoDesign	', ''),
(360, 'Type de fonctionnement	ABAISSEUR	', ''),
(360, 'Refroidissement	ONAN	', ''),
(360, 'Installation	Intérieure	', ''),
(360, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(360, 'Altitude maximum	1000m	', ''),
(360, 'Puissance assignée	630kVA	', ''),
(360, 'Tension primaire assignée	20000V	', ''),
(360, 'Tension secondaire assignée (à vide)	410V	', ''),
(360, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(360, 'Niveau d\'isolement assigné	24kV	', ''),
(360, 'Symbole de couplage	Dyn 11	', ''),
(360, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(360, 'Fréquence	50 Hz	', ''),
(360, 'Classification de pertes (EN 50588)		', ''),
(360, 'Tolérance	Sans dépassement de pertes	', ''),
(360, 'Pertes à vide	270W	', ''),
(360, 'Pertes en charge à 75°C	2350W	', ''),
(360, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(360, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(360, 'Transport	France Métropole	', ''),
(360, 'Teinte Peinture	Gris RAL7033	', ''),
(360, 'Transformateur déchargé au pied de camion	Compris	', ''),
(360, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(361, 'Quantité	1	', ''),
(361, 'Gamme	MINERA EcoDesign	', ''),
(361, 'Type de fonctionnement	ABAISSEUR	', ''),
(361, 'Refroidissement	ONAN	', ''),
(361, 'Installation	Intérieure	', ''),
(361, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(361, 'Altitude maximum	1000m	', ''),
(361, 'Puissance assignée	800kVA	', ''),
(361, 'Tension primaire assignée	20000V	', ''),
(361, 'Tension secondaire assignée (à vide)	410V	', ''),
(361, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(361, 'Niveau d\'isolement assigné	24kV	', ''),
(361, 'Symbole de couplage	Dyn 11	', ''),
(361, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(361, 'Fréquence	50 Hz	', ''),
(361, 'Classification de pertes (EN 50588)		', ''),
(361, 'Tolérance	Sans dépassement de pertes	', ''),
(361, 'Pertes à vide	270W	', ''),
(361, 'Pertes en charge à 75°C	2350W	', ''),
(361, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(361, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(361, 'Transport	France Métropole	', ''),
(361, 'Teinte Peinture	Gris RAL7033	', ''),
(361, 'Transformateur déchargé au pied de camion	Compris	', ''),
(361, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(362, 'Quantité	1	', ''),
(362, 'Gamme	MINERA EcoDesign	', ''),
(362, 'Type de fonctionnement	ABAISSEUR	', ''),
(362, 'Refroidissement	ONAN	', ''),
(362, 'Installation	Intérieure	', ''),
(362, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(362, 'Altitude maximum	1000m	', ''),
(362, 'Puissance assignée	1000kVA	', ''),
(362, 'Tension primaire assignée	20000V	', ''),
(362, 'Tension secondaire assignée (à vide)	410V	', ''),
(362, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(362, 'Niveau d\'isolement assigné	24kV	', ''),
(362, 'Symbole de couplage	Dyn 11	', ''),
(362, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(362, 'Fréquence	50 Hz	', ''),
(362, 'Classification de pertes (EN 50588)		', ''),
(362, 'Tolérance	Sans dépassement de pertes	', ''),
(362, 'Pertes à vide	270W	', ''),
(362, 'Pertes en charge à 75°C	2350W	', ''),
(362, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(362, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(362, 'Transport	France Métropole	', ''),
(362, 'Teinte Peinture	Gris RAL7033	', ''),
(362, 'Transformateur déchargé au pied de camion	Compris	', ''),
(362, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(363, 'Quantité	1	', ''),
(363, 'Gamme	MINERA EcoDesign	', ''),
(363, 'Type de fonctionnement	ABAISSEUR	', ''),
(363, 'Refroidissement	ONAN	', ''),
(363, 'Installation	Intérieure	', ''),
(363, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(363, 'Altitude maximum	1000m	', ''),
(363, 'Puissance assignée	1250kVA	', ''),
(363, 'Tension primaire assignée	20000V	', ''),
(363, 'Tension secondaire assignée (à vide)	410V	', ''),
(363, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(363, 'Niveau d\'isolement assigné	24kV	', ''),
(363, 'Symbole de couplage	Dyn 11	', ''),
(363, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(363, 'Fréquence	50 Hz	', ''),
(363, 'Classification de pertes (EN 50588)		', ''),
(363, 'Tolérance	Sans dépassement de pertes	', ''),
(363, 'Pertes à vide	270W	', ''),
(363, 'Pertes en charge à 75°C	2350W	', ''),
(363, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(363, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(363, 'Transport	France Métropole	', ''),
(363, 'Teinte Peinture	Gris RAL7033	', ''),
(363, 'Transformateur déchargé au pied de camion	Compris	', ''),
(363, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(364, 'Quantité	1	', ''),
(364, 'Gamme	MINERA EcoDesign	', ''),
(364, 'Type de fonctionnement	ABAISSEUR	', ''),
(364, 'Refroidissement	ONAN	', ''),
(364, 'Installation	Intérieure	', ''),
(364, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(364, 'Altitude maximum	1000m	', ''),
(364, 'Puissance assignée	1600kVA	', ''),
(364, 'Tension primaire assignée	20000V	', ''),
(364, 'Tension secondaire assignée (à vide)	410V	', ''),
(364, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(364, 'Niveau d\'isolement assigné	24kV	', ''),
(364, 'Symbole de couplage	Dyn 11	', ''),
(364, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(364, 'Fréquence	50 Hz	', ''),
(364, 'Classification de pertes (EN 50588)		', ''),
(364, 'Tolérance	Sans dépassement de pertes	', ''),
(364, 'Pertes à vide	270W	', ''),
(364, 'Pertes en charge à 75°C	2350W	', ''),
(364, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(364, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(364, 'Transport	France Métropole	', ''),
(364, 'Teinte Peinture	Gris RAL7033	', ''),
(364, 'Transformateur déchargé au pied de camion	Compris	', ''),
(364, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(365, 'Quantité	1	', ''),
(365, 'Gamme	MINERA EcoDesign	', ''),
(365, 'Type de fonctionnement	ABAISSEUR	', ''),
(365, 'Refroidissement	ONAN	', ''),
(365, 'Installation	Intérieure	', ''),
(365, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(365, 'Altitude maximum	1000m	', ''),
(365, 'Puissance assignée	2000kVA	', ''),
(365, 'Tension primaire assignée	20000V	', ''),
(365, 'Tension secondaire assignée (à vide)	410V	', ''),
(365, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(365, 'Niveau d\'isolement assigné	24kV	', ''),
(365, 'Symbole de couplage	Dyn 11	', ''),
(365, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(365, 'Fréquence	50 Hz	', ''),
(365, 'Classification de pertes (EN 50588)		', ''),
(365, 'Tolérance	Sans dépassement de pertes	', ''),
(365, 'Pertes à vide	270W	', ''),
(365, 'Pertes en charge à 75°C	2350W	', ''),
(365, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(365, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(365, 'Transport	France Métropole	', ''),
(365, 'Teinte Peinture	Gris RAL7033	', ''),
(365, 'Transformateur déchargé au pied de camion	Compris	', ''),
(365, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(366, 'Quantité	1	', ''),
(366, 'Gamme	MINERA EcoDesign	', ''),
(366, 'Type de fonctionnement	ABAISSEUR	', ''),
(366, 'Refroidissement	ONAN	', ''),
(366, 'Installation	Intérieure	', ''),
(366, 'T° max (moyenne journalière/annuelle)/min	40°C (30°C/20°C) / -25°C	', ''),
(366, 'Altitude maximum	1000m	', ''),
(366, 'Puissance assignée	2500kVA	', ''),
(366, 'Tension primaire assignée	20000V	', ''),
(366, 'Tension secondaire assignée (à vide)	410V	', ''),
(366, 'Réglage par commutateur hors tension	+/- 2,5% +/- 5%	', ''),
(366, 'Niveau d\'isolement assigné	24kV	', ''),
(366, 'Symbole de couplage	Dyn 11	', ''),
(366, 'Tension C/C	4% (standard)(+/- 10% conforme à la norme)	', ''),
(366, 'Fréquence	50 Hz	', ''),
(366, 'Classification de pertes (EN 50588)		', ''),
(366, 'Tolérance	Sans dépassement de pertes	', ''),
(366, 'Pertes à vide	270W	', ''),
(366, 'Pertes en charge à 75°C	2350W	', ''),
(366, 'Raccordement primaire partie fixe	3 traversées embro. 250A 24kV type HN 52 S 61	', ''),
(366, 'Raccordement secondaire partie fixe	4 traversées BT passe barre	', ''),
(366, 'Transport	France Métropole	', ''),
(366, 'Teinte Peinture	Gris RAL7033	', ''),
(366, 'Transformateur déchargé au pied de camion	Compris	', ''),
(366, 'Dimensions et poids vous seront confirmés à la livraison des plans.', ''),
(1, 'Tension secondaire assignée (à vide) 410V		', ''),
(1, 'Réglage par commutateur hors tension +-2,5% et +-5%		', ''),
(1, 'Niveau d\'isolement assigné 24kV		', ''),
(1, 'Couplage Dyn11		', ''),
(1, 'Niveau de pertes AA0Ak		', ''),
(1, 'Système de vidange Vanne A22		', ''),
(1, 'Verrouillage des traversées embrochables Sans serrure		', ''),
(1, '1 Capot BT plombable		', ''),
(1, '1 Relais de protection DMCR		', ''),
(1, 'Puissance du Transformateur 160 kVA		', ''),
(1, 'Tension primaire', ''),
(19, 'Dimensions Extérieure	4,20 x 2,48 x 3,55 m (Longueur x Largeur x Hauteur)	', ''),
(19, 'Dimensions Intérieure	4,04 x 2,32 x 2,49 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(19, 'Hauteur sous plancher	0,62	', ''),
(19, 'Masse approximative (hors toiture régionale)	17 Tonnes', ''),
(16, 'Dimensions Extérieure	2,86 x 2,48 x 3,49 m (Longueur x Largeur x Hauteur)	', ''),
(16, 'Dimensions Intérieure	2,70 x 2,32 x 2,47 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(16, 'Hauteur sous plancher	0,62	', ''),
(16, 'Masse approximative (hors toiture régionale)	13 Tonnes', ''),
(14, 'Dimensions Extérieure	4,22 x 2,48 x 1,70 m (Longueur x Largeur x Hauteur)	', ''),
(14, 'Dimensions Intérieure	2,32 x 1,54 x 2,47 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(14, 'Hauteur sous plancher	0,62	', ''),
(14, 'Masse approximative (hors toiture régionale)	8,5 Tonnes', ''),
(15, 'Dimensions Extérieure	2,48 x 2,48 x 3,49 m (Longueur x Largeur x Hauteur)	', ''),
(15, 'Dimensions Intérieure	2,32 x 2,32 x 2,47 m (Longueur x Largeur x Hauteur Sous Plafond)	', ''),
(15, 'Hauteur sous plancher	0,62	', ''),
(15, 'Masse approximative (hors toiture régionale)	10 Tonnes', '');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom_societe` varchar(50) COLLATE utf8_bin NOT NULL,
  `adresse` varchar(150) COLLATE utf8_bin NOT NULL,
  `cp` int(11) NOT NULL,
  `ville` varchar(50) COLLATE utf8_bin NOT NULL,
  `groupe` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `nom_societe`, `adresse`, `cp`, `ville`, `groupe`) VALUES
(1, 'RamClient', '35c Quai François Galliot', 21000, 'Paris', 'RamGroupe'),
(2, 'EIFFAGE ENERGIE SYSTEMES', '130 rue Pierre Gilles de Gennes', 54710, 'Ludres', 'EIFFAGE'),
(5, 'PICOTY', 'Rue André et Guy Picoty', 23300, 'La souterraine', '');

-- --------------------------------------------------------

--
-- Structure de la table `contactclient`
--

CREATE TABLE `contactclient` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  `genre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel_fixe` varchar(25) COLLATE utf8_bin NOT NULL,
  `tel_portable` varchar(25) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `fonction` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `contactclient`
--

INSERT INTO `contactclient` (`idClient`, `nom`, `prenom`, `genre`, `tel_fixe`, `tel_portable`, `email`, `fonction`) VALUES
(1, 'Ramassamy', 'Théo', 'Monsieur', '', '0781715747', 'ramassamy.dev21@gmail.com', 'WebMaster'),
(5, 'VIDAL', 'Thibault', 'M', '05 55 89 68 69', '06 71 55 22 54', 't.vidal@picoty.fr', '');

-- --------------------------------------------------------

--
-- Structure de la table `contactfournisseur`
--

CREATE TABLE `contactfournisseur` (
  `idFournisseur` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  `genre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tel_fixe` bigint(20) NOT NULL,
  `tel_portable` bigint(20) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `fonction` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `contactfournisseur`
--

INSERT INTO `contactfournisseur` (`idFournisseur`, `nom`, `prenom`, `genre`, `tel_fixe`, `tel_portable`, `email`, `fonction`) VALUES
(1, 'Ramassamy', 'Théo', NULL, 781715747, 781715747, 'ramassamy.dev21@gmail.com', 'Dev'),
(1, 'Ramassamy', 'Théo', NULL, 781715747, 781715747, 'ramassamy.dev21@gmail.com', 'Dev');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`id`, `nom`) VALUES
(345, 'sdf');

-- --------------------------------------------------------

--
-- Structure de la table `devisclient`
--

CREATE TABLE `devisclient` (
  `idDevis` int(11) NOT NULL,
  `idClient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `devisclient`
--

INSERT INTO `devisclient` (`idDevis`, `idClient`) VALUES
(345, 1);

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `famille`
--

INSERT INTO `famille` (`id`, `nom`) VALUES
(1, 'Type de poste'),
(3, 'Transformateur de puissance'),
(4, 'Transformateur auxiliaire'),
(5, 'Cellule HTA consommateur RM6'),
(6, 'Cellule HTA consommateur SM6'),
(7, 'Cellule HTA poste producteur'),
(8, 'Cellule HTA SIEMENS'),
(9, 'Téléaction'),
(10, 'Liaison câble HTA'),
(11, 'Liaison câble BT'),
(12, 'Divers et Accessoires'),
(13, 'Auxiliaire électrique'),
(14, 'Coffret ENR'),
(15, 'Entreprise'),
(16, 'Cellule SIEMENS C13200'),
(18, 'Main d oeuvre'),
(19, 'Basse tension'),
(20, 'Transformateur abaisseur mobilite electrique Eletrafo'),
(21, 'Transformateur abaisseur distribution Eletrafo'),
(22, 'Transformateur abaisseur Schneider electric'),
(23, 'Transformateur abaisseur sec IP00 distribution Eletrafo'),
(24, 'Transformateur abaisseur sec IP00 mobilité électrique Eletrafo'),
(25, 'Transformateur abaisseur sec IP00 Schneider electric'),
(26, 'Prestation');

-- --------------------------------------------------------

--
-- Structure de la table `famillearticle`
--

CREATE TABLE `famillearticle` (
  `idFamille` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `famillearticle`
--

INSERT INTO `famillearticle` (`idFamille`, `idArticle`) VALUES
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 280),
(1, 281),
(1, 282),
(1, 283),
(1, 284),
(1, 285),
(1, 286),
(1, 287),
(1, 288),
(1, 289),
(1, 290),
(1, 291),
(1, 292),
(1, 293),
(1, 294),
(1, 295),
(1, 296),
(1, 297),
(1, 298),
(1, 299),
(1, 300),
(1, 301),
(1, 302),
(1, 303),
(1, 304),
(1, 305),
(1, 306),
(1, 307),
(1, 308),
(1, 309),
(1, 310),
(1, 326),
(1, 411),
(1, 445),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 13),
(4, 11),
(4, 12),
(5, 163),
(5, 164),
(5, 165),
(5, 169),
(5, 170),
(5, 171),
(5, 173),
(5, 174),
(5, 175),
(5, 176),
(5, 177),
(5, 178),
(5, 179),
(5, 180),
(5, 181),
(5, 182),
(5, 183),
(5, 184),
(5, 185),
(5, 186),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 192),
(5, 193),
(5, 195),
(5, 196),
(5, 197),
(5, 198),
(5, 199),
(5, 200),
(5, 201),
(5, 202),
(5, 203),
(5, 204),
(5, 205),
(5, 206),
(5, 207),
(5, 208),
(5, 209),
(5, 210),
(5, 213),
(5, 216),
(7, 242),
(7, 243),
(7, 244),
(7, 245),
(7, 246),
(7, 247),
(7, 248),
(7, 249),
(7, 250),
(7, 251),
(7, 252),
(7, 253),
(7, 254),
(7, 255),
(7, 256),
(7, 258),
(7, 259),
(7, 260),
(7, 261),
(7, 262),
(7, 263),
(7, 264),
(7, 265),
(7, 266),
(7, 267),
(7, 268),
(7, 269),
(7, 270),
(7, 271),
(7, 272),
(7, 273),
(7, 436),
(7, 437),
(8, 167),
(8, 311),
(8, 312),
(8, 410),
(9, 217),
(10, 218),
(10, 219),
(10, 220),
(11, 221),
(11, 222),
(11, 223),
(11, 224),
(11, 225),
(11, 226),
(11, 227),
(11, 228),
(11, 318),
(11, 319),
(11, 320),
(11, 321),
(11, 322),
(11, 323),
(11, 324),
(12, 229),
(12, 230),
(12, 231),
(12, 400),
(12, 401),
(12, 402),
(12, 403),
(12, 404),
(12, 405),
(12, 406),
(12, 407),
(12, 408),
(12, 438),
(12, 439),
(12, 440),
(12, 441),
(12, 446),
(12, 447),
(13, 232),
(13, 233),
(13, 234),
(13, 235),
(13, 236),
(13, 237),
(13, 238),
(13, 239),
(13, 240),
(13, 241),
(13, 325),
(13, 395),
(13, 396),
(13, 397),
(13, 398),
(14, 276),
(14, 277),
(15, 278),
(15, 279),
(16, 313),
(16, 314),
(16, 315),
(16, 316),
(16, 317),
(18, 327),
(18, 328),
(18, 329),
(18, 330),
(19, 332),
(19, 335),
(19, 336),
(19, 337),
(19, 338),
(19, 339),
(19, 340),
(19, 341),
(19, 342),
(19, 343),
(19, 344),
(19, 345),
(19, 367),
(19, 368),
(20, 346),
(20, 347),
(20, 348),
(20, 349),
(20, 350),
(20, 351),
(20, 352),
(21, 353),
(21, 354),
(21, 355),
(21, 356),
(21, 357),
(21, 435),
(22, 358),
(22, 359),
(22, 360),
(22, 361),
(22, 362),
(22, 363),
(22, 364),
(22, 365),
(22, 366),
(23, 369),
(23, 370),
(23, 371),
(23, 372),
(23, 373),
(23, 374),
(23, 375),
(23, 376),
(23, 377),
(23, 378),
(23, 379),
(23, 380),
(23, 381),
(23, 382),
(24, 383),
(24, 384),
(24, 385),
(24, 386),
(24, 387),
(24, 388),
(24, 389),
(24, 390),
(24, 391),
(24, 392),
(24, 393),
(24, 394),
(25, 412),
(25, 413),
(25, 414),
(25, 415),
(25, 416),
(25, 417),
(25, 418),
(25, 419),
(25, 420),
(25, 421),
(25, 422),
(25, 423),
(25, 424),
(25, 425),
(25, 426),
(25, 427),
(25, 428),
(25, 429),
(25, 430),
(25, 431),
(25, 432),
(25, 433),
(25, 434),
(26, 442),
(26, 443),
(26, 444);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL,
  `nom_societe` varchar(50) COLLATE utf8_bin NOT NULL,
  `adresse` varchar(150) COLLATE utf8_bin NOT NULL,
  `cp` int(11) NOT NULL,
  `ville` varchar(50) COLLATE utf8_bin NOT NULL,
  `groupe` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `nom_societe`, `adresse`, `cp`, `ville`, `groupe`) VALUES
(1, 'RamFournisseur', '35c Quai François Galliot', 21000, 'Dijon', 'RamGroupe');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'plop', 'plop');

-- --------------------------------------------------------

--
-- Structure de la table `normearticle`
--

CREATE TABLE `normearticle` (
  `idArticle` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `normearticle`
--

INSERT INTO `normearticle` (`idArticle`, `nom`, `description`) VALUES
(167, 'HN 64 S 52', 'matériel insensible à l’environnement.'),
(167, 'NFC 13 100', 'tarif vert.'),
(167, 'HN 64 S 43 ', 'commande indépendante électrique.'),
(167, 'IEC 62 271-1', 'composant de mécanisme de commande sans entretien.'),
(167, 'IEC 62 271- 200', 'système à pression scellé (étanchéité à vie).'),
(167, 'IEC 60694', 'clauses communes pour les normes de tableaux à haute tension.'),
(167, 'IEC 62 271- 102', 'sectionneurs de mise à la terre.'),
(167, 'IEC 60 265- 1', 'interrupteurs.'),
(167, 'IEC 62 271 – 105', 'interrupteurs fusibles associés.'),
(167, 'IEC 60 282 – 1 et UTE C 64 210', 'fusibles à haute tension.'),
(167, 'IEC 61 958', 'système de détection de tension.'),
(167, 'IEC 60 529', 'degré de protection des enveloppes.'),
(167, 'HN 64 S 52', 'matériel insensible à l’environnement.'),
(167, 'NFC 13 100', 'tarif vert.'),
(167, 'HN 64 S 43 ', 'commande indépendante électrique.'),
(167, 'IEC 62 271-1', 'composant de mécanisme de commande sans entretien.'),
(167, 'IEC 62 271- 200', 'système à pression scellé (étanchéité à vie).'),
(167, 'IEC 60694', 'clauses communes pour les normes de tableaux à haute tension.'),
(167, 'IEC 62 271- 102', 'sectionneurs de mise à la terre.'),
(167, 'IEC 60 265- 1', 'interrupteurs.'),
(167, 'IEC 62 271 – 105', 'interrupteurs fusibles associés.'),
(167, 'IEC 60 282 – 1 et UTE C 64 210', 'fusibles à haute tension.'),
(167, 'IEC 61 958', 'système de détection de tension.'),
(167, 'IEC 60 529', 'degré de protection des enveloppes.'),
(311, 'NFC 13 100 : tarif vert.', ''),
(311, 'HN 64 S 43 : commande indépendante électrique.	', ''),
(311, 'IEC 62 271-1 : composant de mécanisme de commande sans entretien.', ''),
(311, 'IEC 62 271- 200 : système à pression scellé (étanchéité à vie).', ''),
(311, 'IEC 60694 : clauses communes pour les normes de tableaux à haute tension.', ''),
(311, 'IEC 62 271- 102 : sectionneurs de mise à la terre.', ''),
(311, 'IEC 60 265- 1 : interrupteurs.', ''),
(311, 'IEC 62 271 – 105 : interrupteurs fusibles associés.', ''),
(311, 'IEC 60 282 – 1 et UTE C 64 210 : fusibles à haute tension.', ''),
(311, 'IEC 61 958 : système de détection de tension.', ''),
(311, 'IEC 60 529 : degré de protection des enveloppes.', ''),
(311, 'HN 64 S 52 : matériel insensible à l’environnement.', ''),
(312, 'HN 64 S 52 : matériel insensible à l’environnement.', ''),
(312, 'NFC 13 100 : tarif vert.', ''),
(312, 'HN 64 S 43 : commande indépendante électrique.', ''),
(312, 'IEC 62 271-1 : composant de mécanisme de commande sans entretien.', ''),
(312, 'IEC 62 271- 200 : système à pression scellé (étanchéité à vie).	', ''),
(312, 'IEC 60694 : clauses communes pour les normes de tableaux à haute tension.', ''),
(312, 'IEC 62 271- 102 : sectionneurs de mise à la terre.', ''),
(312, 'IEC 60 265- 1 : interrupteurs.', ''),
(312, 'IEC 62 271 – 105 : interrupteurs fusibles associés.', ''),
(312, 'IEC 60 282 – 1 et UTE C 64 210 : fusibles à haute tension.', ''),
(312, 'IEC 61 958 : système de détection de tension.', ''),
(312, 'IEC 60 529 : degré de protection des enveloppes.', ''),
(1, 'IEC60076', ''),
(1, 'EN50588-1', ''),
(2, 'IEC60076', ''),
(2, 'EN50588-1', ''),
(3, 'IEC60076', ''),
(3, 'EN50588-1', ''),
(4, 'IEC60076', ''),
(4, 'EN50588-1', ''),
(5, 'IEC60076', ''),
(5, 'EN50588-1', ''),
(6, 'IEC60076', ''),
(6, 'EN50588-1', ''),
(7, 'IEC60076', ''),
(7, 'EN50588-1', ''),
(8, 'IEC60076', ''),
(8, 'EN50588-1', ''),
(9, 'IEC60076', ''),
(9, 'EN50588-1', ''),
(10, 'IEC60076', ''),
(10, 'EN50588-1', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accessoirearticle`
--
ALTER TABLE `accessoirearticle`
  ADD KEY `idArticle` (`idArticle`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idFournisseur` (`idFournisseur`);

--
-- Index pour la table `caracteristiquearticle`
--
ALTER TABLE `caracteristiquearticle`
  ADD KEY `idArticle` (`idArticle`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contactclient`
--
ALTER TABLE `contactclient`
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `contactfournisseur`
--
ALTER TABLE `contactfournisseur`
  ADD KEY `idFournisseur` (`idFournisseur`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `devisclient`
--
ALTER TABLE `devisclient`
  ADD PRIMARY KEY (`idDevis`,`idClient`),
  ADD KEY `idClient` (`idClient`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `famillearticle`
--
ALTER TABLE `famillearticle`
  ADD PRIMARY KEY (`idFamille`,`idArticle`),
  ADD KEY `idArticle` (`idArticle`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `normearticle`
--
ALTER TABLE `normearticle`
  ADD KEY `idArticle` (`idArticle`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT pour la table `famille`
--
ALTER TABLE `famille`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`idFournisseur`) REFERENCES `fournisseur` (`id`);

--
-- Contraintes pour la table `caracteristiquearticle`
--
ALTER TABLE `caracteristiquearticle`
  ADD CONSTRAINT `caracteristiquearticle_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `contactclient`
--
ALTER TABLE `contactclient`
  ADD CONSTRAINT `contactclient_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `contactfournisseur`
--
ALTER TABLE `contactfournisseur`
  ADD CONSTRAINT `contactfournisseur_ibfk_1` FOREIGN KEY (`idFournisseur`) REFERENCES `fournisseur` (`id`);

--
-- Contraintes pour la table `devisclient`
--
ALTER TABLE `devisclient`
  ADD CONSTRAINT `devisclient_ibfk_1` FOREIGN KEY (`idDevis`) REFERENCES `devis` (`id`),
  ADD CONSTRAINT `devisclient_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `famillearticle`
--
ALTER TABLE `famillearticle`
  ADD CONSTRAINT `famillearticle_ibfk_2` FOREIGN KEY (`idFamille`) REFERENCES `famille` (`id`),
  ADD CONSTRAINT `famillearticle_ibfk_3` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `normearticle`
--
ALTER TABLE `normearticle`
  ADD CONSTRAINT `normearticle_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
