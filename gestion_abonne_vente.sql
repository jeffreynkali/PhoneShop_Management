-- phpMyAdmin SQL Dump
-- version 3.0.1.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 06 Mars 2013 à 14:12
-- Version du serveur: 5.1.30
-- Version de PHP: 5.2.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `gestion_abonne_vente`
--

-- --------------------------------------------------------
DROP DATABASE IF EXISTS gestion_abonne_vente;

CREATE DATABASE IF NOT EXISTS gestion_abonne_vente;
USE gestion_abonne_vente;


--
-- Structure de la table `abonne`
--

CREATE TABLE `abonne` (
  `numabonne` int(11) NOT NULL AUTO_INCREMENT,
  `cni` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `codepostal` varchar(50) DEFAULT NULL,
  `ville` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`numabonne`),
  UNIQUE KEY `cni` (`cni`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `abonne`
--

INSERT INTO `abonne` (`numabonne`, `cni`, `nom`, `codepostal`, `ville`, `email`) VALUES
(1, 108667316, 'Mpoyo Nkali Glen Jeffrey', '227', 'Douala', 'glen_nkali@yahoo.fr'),
(2, 10, 'Nkali', '227', 'Douala', 'glen_mpoyo@yahoo.fr'),
(3, 100, 'Djape', '227', 'Douala', 'alexpriso@yahoo.fr'),
(4, 1001, 'Priso Alex', '', 'Douala', 'glen@yahoo.fr'),
(5, 1, 'abonne', '', 'Yaounde', 'exemple@exemple.fr'),
(6, 100000, 'simple', '', 'kumba', 'glen@exemple.fr'),
(7, 124796523, 'Monthé Eugénie', '237', 'Dschang', 'm.eugenie@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `postetelephone`
--

CREATE TABLE `postetelephone` (
  `numposte` int(11) NOT NULL AUTO_INCREMENT,
  `numserie` int(11) NOT NULL,
  `prixvente` double NOT NULL,
  `nbpuce` int(11) NOT NULL,
  PRIMARY KEY (`numposte`),
  UNIQUE KEY `numserie` (`numserie`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `postetelephone`
--

INSERT INTO `postetelephone` (`numposte`, `numserie`, `prixvente`, `nbpuce`) VALUES
(1, 1, 15057, 3),
(2, 2, 20000, 2),
(3, 1456, 57500, 4),
(4, 222, 40000, 2),
(5, 152366954, 17000, 3),
(6, 123456789, 150000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `puce`
--

CREATE TABLE `puce` (
  `numpuce` int(11) NOT NULL AUTO_INCREMENT,
  `taillememoire` varchar(10) NOT NULL,
  `numpostetel` int(11) NOT NULL,
  `technologie` varchar(10) NOT NULL,
  `numabonne` int(11) NOT NULL,
  `numtelephone` int(11) NOT NULL,
  PRIMARY KEY (`numpuce`),
  UNIQUE KEY `numtelephone` (`numtelephone`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `puce`
--

INSERT INTO `puce` (`numpuce`, `taillememoire`, `numpostetel`, `technologie`, `numabonne`, `numtelephone`) VALUES
(1, '128K', 2, 'GSM', 1, 96064911),
(2, '256K', 1, 'GSM', 1, 94018012),
(3, '256K', 3, 'CDMA', 3, 33436001);