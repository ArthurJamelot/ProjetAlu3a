
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 01 Juin 2015 à 10:08
-- Version du serveur: 5.1.67
-- Version de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `u784152348_alu3a`
--

-- --------------------------------------------------------

--
-- Structure de la table `FOURNISSEURS`
--

CREATE TABLE IF NOT EXISTS `FOURNISSEURS` (
  `CODE_FOURN` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_FOURN` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `PAYS` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'France',
  `DESC_FOURN` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`CODE_FOURN`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `FOURNISSEURS`
--

INSERT INTO `FOURNISSEURS` (`CODE_FOURN`, `NOM_FOURN`, `PAYS`, `DESC_FOURN`) VALUES
(7, 'Créal', 'France', 'Spécialiste des menuiseries et fermetures aluminium ou PVC, le groupe Créal offre à ses partenaires installateurs les moyens d’apporter une réponse globale, esthétique et performante aux besoins de l’habitat, du commerce et du secteur tertiaire.'),
(8, 'Aliplast', 'Belgique', 'Aliplast Belgium fait partie du Groupe Corialis de renommée internationale (Core Innovative Aluminium Integrated Solutions), qui représente un chiffre d’affaires d’environ 300 millions d’euros et emploie 1300 personnes.'),
(9, 'Franciaflex', 'France', 'Spécialiste de l’ensemble des équipements de la baie depuis 1961​. Une offre complète et unique :  fenêtres PVC et aluminium, portes d''entrée, volets, portes de garage, stores d’extérieur, stores d''intérieur et automatismes. Des réponses à toutes vos attentes : esthétisme, isolation, protection solaire, sécurité et confort​. Produits fabriqués en France 100% sur mesure avec un souci constant de qualité. Chaque année, 500 000 produits sortent des 5 usines Franciaflex. Des solutions innovantes développées pour répondre aux besoins du marché de l’habitat individuel, des commerces et entreprises et du tertiaire\n​'),
(10, 'Maine Fermetures', 'France', NULL),
(11, 'Cadiou', 'France', 'Nous avons conservé 100 % de notre production ici, en Bretagne, car nous misons sur une fabrication artisanale hors pair, fruit de quarante années d’expérience. Nous croyons qu’il s’agit d’un élément essentiel à l’intégrité de notre gamme de portails et de clôtures sur-mesure, et nous y voyons un gage essentiel de qualité. Nous croyons que personne ne peut faire mieux que nous. Mais il y a plus important encore… …notre climat humide et venteux fait partie intégrante de notre identité de bretons. Il n’y a pas de meilleurs juges de la qualité de nos produits que ceux pour qui ils ont été conçus à l’origine. Nos portails doivent résister aux vents et aux embruns et sont donc conçus pour durer.'),
(12, 'Ferbateq', 'France', 'La société Ferbateq est une entreprise française de fabrication de fermetures en bâtiment installée à Poussan, aux portes de Montpellier.\nFerbateq est une marque française déposée à l’INPI, reconnue par les professionnels pour la qualité et la fiabilité de ses produits. 22 femmes et hommes composent l’équipe Ferbateq. Dynamisme, sérieux et bienveillance sont les Maîtres-mots d’une société grandissante.  Ferbateq a su développer sa gamme de produits en conformité avec les normes européennes (NF EN 13241-1 marquage CE) et les exigences d’un marché très concurrentiel. Avec une surface de fabrication de 2000 m², des machines à la pointe de la technologie et un personnel qualifié, Ferbateq offre une gamme complète de rideaux métalliques, de portes sectionnelles, de fermetures de garages et d’automatismes. La société Ferbateq est aussi réputée pour le « sur-mesure » apporté à chaque réalisation. L’équipe technique et commerciale conseille et accompagne chaque projet depuis sa conception.\n'),
(13, 'Profils Systèmes', 'France', 'Implantée sur la commune de Baillargues (Hérault), dans le sud de la France, Profils Systèmes conçoit et développe depuis plus de vingt cinq ans des profilés aluminium et accessoires destinés au secteur du bâtiment. Filiale française du Groupe CORIALIS®, Profils Systèmes compte aujourd’hui plus de 400 collaborateurs, répartis sur ses sites : industriel, logistique et administratif. Profils Systèmes a su renforcer son dynamisme économique, sa présence sur le marché national et international, tout en conservant son identité, son indépendance et sa personnalité.'),
(14, 'Menuiseries Combes', 'France', 'Depuis 1871, à Millau, dans le Sud Aveyron,\nles Menuiseries Combes conçoivent avec passion, depuis 5 générations, des menuiseries en BOIS, PVC, ALUMINIUM et MIXTE bois/aluminium qui vous protègent et vous protègeront encore longtemps. Plus de 80 personnes y consacrent leur savoir-faire pour satisfaire vos besoins en économies d''énergie et améliorer votre confort.'),
(15, 'Flandria', 'France', 'Depuis plus de 40 ans, Flandria ALUMINIUM maîtrise l’ensemble des étapes de la fabrication des profilés, tout en apportant une réponse personnalisée à chacun de ses clients.');

-- --------------------------------------------------------

--
-- Structure de la table `FOURNISSEURS2`
--

CREATE TABLE IF NOT EXISTS `FOURNISSEURS2` (
  `CODE_FOURN` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_FOURN` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `PAYS` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'France',
  `DESC_FOURN` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`CODE_FOURN`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Déclencheurs `FOURNISSEURS2`
--
DROP TRIGGER IF EXISTS `insertion_fournisseur_ou_update`;
DELIMITER //
CREATE TRIGGER `insertion_fournisseur_ou_update` BEFORE INSERT ON `FOURNISSEURS2`
 FOR EACH ROW BEGIN
	DECLARE FOURNISSEUR VARCHAR(30);
	DECLARE FPAYS VARCHAR(255);
	DECLARE DESCF TEXT;
	
	SELECT NOM_FOURN,PAYS,DESC_FOURN INTO FOURNISSEUR,FPAYS,DESCF FROM FOURNISSEURS WHERE NOM_FOURN=NEW.NOM_FOURN;
	
	IF NEW.PAYS != FPAYS THEN UPDATE FOURNISSEURS SET PAYS=NEW.PAYS WHERE NOM_FOURN=NEW.NOM_FOURN; END IF;
	IF NEW.DESC_FOURN!=DESCF AND NEW.DESC_FOURN IS NOT NULL THEN UPDATE FOURNISSEURS SET DESC_FOURN=NEW.DESC_FOURN WHERE NOM_FOURN=NEW.NOM_FOURN; END IF;
	
	IF FOURNISSEUR IS NULL THEN INSERT INTO FOURNISSEURS VALUES(NULL,NEW.NOM_FOURN,NEW.PAYS,NEW.DESC_FOURN); END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `GALERIE`
--

CREATE TABLE IF NOT EXISTS `GALERIE` (
  `ID_IMG` int(11) NOT NULL AUTO_INCREMENT,
  `LIEN` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID_IMG`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Contenu de la table `GALERIE`
--

INSERT INTO `GALERIE` (`ID_IMG`, `LIEN`) VALUES
(1, 'http://img11.hostingpics.net/pics/630091benitez8.jpg'),
(2, 'http://img11.hostingpics.net/pics/114777benitez5.jpg'),
(3, 'http://img11.hostingpics.net/pics/193045PICT0007.jpg'),
(4, 'http://img11.hostingpics.net/pics/451627PICT0003.jpg'),
(5, 'http://img11.hostingpics.net/pics/507348PICT0097.jpg'),
(6, 'http://img11.hostingpics.net/pics/67302415102008046.jpg'),
(7, 'http://img11.hostingpics.net/pics/757540PICT0025.jpg'),
(8, 'http://img11.hostingpics.net/pics/609822PICT0026.jpg'),
(9, 'http://img11.hostingpics.net/pics/671290PICT0027.jpg'),
(10, 'http://img11.hostingpics.net/pics/456240Alu019.jpg'),
(11, 'http://img11.hostingpics.net/pics/128809Alu.jpg'),
(12, 'http://img11.hostingpics.net/pics/987644Armel.jpg'),
(13, 'http://img11.hostingpics.net/pics/363602PICT0162.jpg'),
(14, 'http://img11.hostingpics.net/pics/172466PICT0002.jpg'),
(15, 'http://img11.hostingpics.net/pics/661664PICT0006.jpg'),
(16, 'http://img11.hostingpics.net/pics/599206PICT0100.jpg'),
(17, 'http://img11.hostingpics.net/pics/706481PICT0101.jpg'),
(18, 'http://img11.hostingpics.net/pics/751315PICT0027.jpg'),
(19, 'http://img11.hostingpics.net/pics/277786PICT0031.jpg'),
(20, 'http://img11.hostingpics.net/pics/655573PICT0032.jpg'),
(21, 'http://img11.hostingpics.net/pics/835060DSC0386.jpg'),
(22, 'http://img11.hostingpics.net/pics/937425MOTIFTRIBAL1.jpg'),
(23, 'http://img11.hostingpics.net/pics/30886419012009125.jpg'),
(24, 'http://img11.hostingpics.net/pics/59271726102009392.jpg'),
(25, 'http://img11.hostingpics.net/pics/405645IMGP4403.jpg'),
(26, 'http://img11.hostingpics.net/pics/368460DSCF2047.jpg'),
(27, 'http://img11.hostingpics.net/pics/36012427072011108.jpg'),
(28, 'http://img11.hostingpics.net/pics/504885DSC0335.jpg'),
(29, 'http://img11.hostingpics.net/pics/133590PICT0041.jpg'),
(30, 'http://img11.hostingpics.net/pics/879104PICT0100.jpg'),
(31, 'http://img11.hostingpics.net/pics/508552Photovrandasaperes007.jpg'),
(32, 'http://img11.hostingpics.net/pics/215525PICT0100.jpg'),
(33, 'http://img11.hostingpics.net/pics/636459PICT0030.jpg'),
(34, 'http://img11.hostingpics.net/pics/849068PICT0083.jpg'),
(35, 'http://img11.hostingpics.net/pics/611762PICT0001.jpg'),
(36, 'http://img11.hostingpics.net/pics/30948325092008030.jpg'),
(37, 'http://img11.hostingpics.net/pics/606609PICT0104.jpg'),
(0, 'http://img11.hostingpics.net/pics/765130benitez7.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `LIEN_PROD_FOURN`
--

CREATE TABLE IF NOT EXISTS `LIEN_PROD_FOURN` (
  `CODE_FOURN` int(11) DEFAULT NULL,
  `REFERENCE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `REFERENCE` (`REFERENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `LIEN_PROD_FOURN`:
--   `CODE_FOURN`
--       `FOURNISSEURS` -> `CODE_FOURN`
--   `REFERENCE`
--       `PRODUITS` -> `REFERENCE`
--

--
-- Contenu de la table `LIEN_PROD_FOURN`
--

INSERT INTO `LIEN_PROD_FOURN` (`CODE_FOURN`, `REFERENCE`) VALUES
(7, 'Coulissant alu'),
(7, 'Coulissant alu1'),
(7, 'Coulissant alu2'),
(7, 'Coulissant alu3'),
(7, 'Coulissant alu4'),
(7, 'Coulissant alu5'),
(7, 'Coulissant alu6'),
(7, 'Coulissant alu7'),
(7, 'Coulissant alu8'),
(7, 'Coulissant alu9'),
(8, 'Exemple véranda'),
(8, 'Exemple véranda2'),
(8, 'Exemple véranda3'),
(8, 'Exemple véranda4'),
(8, 'Exemple véranda5'),
(8, 'Exemple véranda6'),
(8, 'Exemple véranda9'),
(8, 'Exemple véranda7'),
(8, 'Exemple véranda8'),
(9, 'Fenetre alu'),
(9, 'Fenetre alu1'),
(9, 'Fenetre alu2'),
(9, 'Fenetre alu3'),
(9, 'Fenetre alu4'),
(9, 'Fenetre alu5'),
(10, 'Fenetre alu6'),
(10, 'Fenetre alu7'),
(10, 'Fenetre alu8'),
(10, 'Fenetre alu9'),
(11, 'fenetre pvc'),
(12, 'fenetre pvc1'),
(13, 'fenetre pvc3'),
(14, 'fenetre pvc2'),
(14, 'fenetre pvc4'),
(15, 'fenetre pvc5'),
(12, 'fenetre pvc6'),
(8, 'fenetre pvc7'),
(12, 'fenetre pvc8'),
(11, 'fenetre pvc9'),
(12, 'porte de garage'),
(13, 'porte de garage1'),
(14, 'porte de garage2'),
(8, 'porte de garage3'),
(10, 'porte de garage4'),
(15, 'volet roulant8'),
(14, 'porte de garage6'),
(11, 'porte de garage7'),
(9, 'porte de garage8'),
(9, 'porte de garage9'),
(11, 'Porte entrée alu'),
(10, 'Porte entrée alu1'),
(13, 'Porte entrée alu2'),
(13, 'Porte entrée alu3'),
(10, 'Porte entrée alu4'),
(11, 'Porte entrée alu5'),
(10, 'Porte entrée alu6'),
(13, 'Porte entrée alu7'),
(13, 'Porte entrée alu8'),
(10, 'Porte entrée alu9'),
(11, 'porte fenetre pvc'),
(12, 'porte fenetre pvc1'),
(14, 'porte fenetre pvc2'),
(9, 'porte fenetre pvc3'),
(10, 'porte fenetre pvc4'),
(13, 'porte fenetre pvc5'),
(9, 'porte fenetre pvc6'),
(10, 'porte fenetre pvc8'),
(10, 'porte fenetre pvc7'),
(8, 'porte fenetre pvc9'),
(8, 'Porte fenêtre test'),
(12, 'Porte fenêtre test1'),
(12, 'Porte fenêtre test2'),
(13, 'Porte fenêtre test3'),
(10, 'Porte fenêtre test4'),
(12, 'Porte fenêtre test5'),
(12, 'Porte fenêtre test6'),
(13, 'Porte fenêtre test7'),
(14, 'Porte fenêtre test8'),
(15, 'Porte fenêtre test9'),
(10, 'volet roulant9'),
(13, 'porte de garage5'),
(10, 'volet roulant7'),
(11, 'volet roulant6'),
(10, 'volet roulant5'),
(14, 'volet roulant4'),
(11, 'portail alu'),
(10, 'portail alu1'),
(14, 'portail alu2'),
(11, 'portail alu3'),
(12, 'portail alu4'),
(12, 'portail alu5'),
(13, 'portail alu6'),
(14, 'portail alu7'),
(13, 'portail pvc'),
(15, 'portail pvc1'),
(11, 'portail pvc2'),
(15, 'portail pvc3'),
(12, 'portail pvc4'),
(10, 'portail pvc5'),
(13, 'portail pvc6'),
(12, 'portail pvc7'),
(13, 'portail pvc8'),
(9, 'cloture alu'),
(15, 'cloture alu1'),
(13, 'cloture alu2'),
(11, 'cloture alu3'),
(9, 'cloture alu4'),
(9, 'cloture alu5'),
(7, 'cloture alu6'),
(13, 'cloture alu7'),
(8, 'cloture alu8'),
(7, 'volet roulant'),
(8, 'volet roulant1'),
(9, 'volet roulant2'),
(10, 'volet roulant3');

-- --------------------------------------------------------

--
-- Structure de la table `PRODUITS`
--

CREATE TABLE IF NOT EXISTS `PRODUITS` (
  `REFERENCE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESC_PROD` text COLLATE utf8_unicode_ci,
  `CODE_TYPE` int(11) NOT NULL,
  PRIMARY KEY (`REFERENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONS POUR LA TABLE `PRODUITS`:
--   `CODE_TYPE`
--       `TYPE_PRODUIT` -> `CODE_TYPE`
--

--
-- Contenu de la table `PRODUITS`
--

INSERT INTO `PRODUITS` (`REFERENCE`, `IMAGE`, `DESC_PROD`, `CODE_TYPE`) VALUES
('Exemple véranda', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda2', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda3', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda4', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda5', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda6', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda7', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda8', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Exemple véranda9', 'http://www.aliplast.be/images/openimage/211/960/600/1', 'Ceci est un exemple', 1),
('Fenetre alu', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu1', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu2', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu3', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu4', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu5', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu6', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu7', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu8', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Fenetre alu9', 'http://www.aliplast.be/images/openimage/91/960/600/1', 'Exemple de fenetre en alu', 2),
('Porte fenêtre test', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test1', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test2', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test3', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test4', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test5', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test6', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test7', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test8', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte fenêtre test9', 'http://www.alliancechassis.be/images/sites/Chassis_fenetre_alu_aliplast_cintrage_Binche_Mons_Anderlues_La_Louviere_Hainaut_Chapelle.jpg', 'remplissage temporaire', 3),
('Porte entrée alu', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu1', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu2', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu3', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu4', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu5', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu6', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu7', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu8', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Porte entrée alu9', 'http://www.aliplast.be/images/openimage/209/960/600/1', 'remplissage temporaire', 4),
('Coulissant alu', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu1', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu2', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu3', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu4', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu5', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu6', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu7', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu8', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('Coulissant alu9', 'http://www.aliplast.be/images/openimage/111/960/600/1', 'remplissage temporaire', 5),
('fenetre pvc', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc1', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc2', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc3', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc4', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc5', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc6', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc7', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc8', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('fenetre pvc9', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Perfeo/fenetre%20pvc%20perfeo.jpg', 'remplissage temporaire', 6),
('porte fenetre pvc', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc1', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc2', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc3', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc4', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc5', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc6', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc7', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc8', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte fenetre pvc9', 'http://www.franciaflex.com/image/600x600/i/FX-fx/public/Catalogue%20Produits/Photos/Fenetres%20et%20Coulissants/Fenetres%20PVC/Exceo%20heritage/porte%20fenetre%20pvc%20exceo%20heritage.jpg', 'remplissage temporaire', 7),
('porte de garage', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage1', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage2', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage3', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage4', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage5', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage6', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage7', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage8', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('porte de garage9', 'http://www.ferbateq.net/wp-content/uploads/2014/02/portillon.png', 'remplissage temporaire', 8),
('portail alu', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu1', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu2', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu3', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu4', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu5', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu6', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail alu7', 'http://www.cadiou-industrie.com/wp-portails//2012/01/youn-640x202.jpg', 'remplissage temporaire', 9),
('portail pvc', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc1', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc2', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc3', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc4', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc5', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc6', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc7', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('portail pvc8', 'http://www.cadiou-industrie.com/wp-portails//2012/01/riec-1024x337.jpg', 'remplissage temporaire', 10),
('cloture alu', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu1', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu2', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu3', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu4', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu5', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu6', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu7', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('cloture alu8', 'http://www.cadiou-industrie.com/wp-portails//2012/01/barreaudage_raden-640x188.jpg', 'remplissage temporaire', 11),
('volet roulant', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant1', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant2', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant3', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant4', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant5', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant6', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant7', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant8', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12),
('volet roulant9', 'http://www.groupecreal.com/uploads/produits/vr-design.jpg', 'remplissage temporaire', 12);

-- --------------------------------------------------------

--
-- Structure de la table `PRODUITS2`
--

CREATE TABLE IF NOT EXISTS `PRODUITS2` (
  `REFERENCE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESC_PROD` text COLLATE utf8_unicode_ci,
  `CODE_TYPE` int(11) NOT NULL,
  PRIMARY KEY (`REFERENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déclencheurs `PRODUITS2`
--
DROP TRIGGER IF EXISTS `insertion_produit_ou_update`;
DELIMITER //
CREATE TRIGGER `insertion_produit_ou_update` BEFORE INSERT ON `PRODUITS2`
 FOR EACH ROW BEGIN
	DECLARE REFP VARCHAR(20);
	DECLARE IMG VARCHAR(255);
	DECLARE DESCP TEXT;
	
	SELECT REFERENCE,IMAGE,DESC_PROD INTO REFP,IMG,DESCP FROM PRODUITS WHERE REFERENCE=NEW.REFERENCE;
	
	IF NEW.IMAGE!=IMG THEN UPDATE PRODUITS SET IMAGE=NEW.IMAGE WHERE REFERENCE=NEW.REFERENCE; END IF;
	IF NEW.DESC_PROD!=DESCP THEN UPDATE PRODUITS SET DESC_PROD=NEW.DESC_PROD WHERE REFERENCE=NEW.REFERENCE; END IF;
	
	IF REFP IS NULL THEN INSERT INTO PRODUITS VALUES(NEW.REFERENCE,NEW.IMAGE,NEW.DESC_PROD,NEW.CODE_TYPE); END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `TYPE_PRODUIT`
--

CREATE TABLE IF NOT EXISTS `TYPE_PRODUIT` (
  `CODE_TYPE` int(11) NOT NULL AUTO_INCREMENT,
  `LIB_TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CODE_TYPE`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `TYPE_PRODUIT`
--

INSERT INTO `TYPE_PRODUIT` (`CODE_TYPE`, `LIB_TYPE`) VALUES
(1, 'Vérandas'),
(2, 'Fenêtres aluminium'),
(3, 'Portes fenêtres aluminium'),
(4, 'Portes d''entrée aluminium'),
(5, 'Coulissants aluminium'),
(6, 'Fenêtres PVC'),
(7, 'Portes fenêtres PVC'),
(8, 'Portes de garage'),
(9, 'Portails aluminium'),
(10, 'Portails PVC'),
(11, 'Clôtures Aluminium'),
(12, 'Volets roulants');

-- --------------------------------------------------------

--
-- Structure de la table `UTILISATEURS`
--

CREATE TABLE IF NOT EXISTS `UTILISATEURS` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TOKEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_USER`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `UTILISATEURS`
--

INSERT INTO `UTILISATEURS` (`ID_USER`, `USERNAME`, `PASS`, `EMAIL`, `TOKEN`) VALUES
(1, 'alu3a', '$2y$10$hSw0jS8.LiY10lWJrCHN0OzYzcZnB5Itj85bZwLjAAjRxmgS1Q1Ye', 'alu3a@wanadoo.fr', '525593590556b8c0fe825e6.65536996'),
(2, 'françois', '$2y$10$fCGEoq96Bs5l27BCrtGZPuMNRPNITVLwISJM590a2/y27ERxJeGEe', 'alu3a@wanadoo.fr', '1693496796556b98c5b93003.43070155');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
