-- phpMyAdmin SQL Dump
-- version 3.5.6
-- http://www.phpmyadmin.net
--
-- Machine: 10.3.0.52:3307
-- Genereertijd: 14 feb 2013 om 20:36
-- Serverversie: 5.1.63
-- PHP-versie: 5.3.2-1ubuntu4.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Databank: `activity`
--
CREATE DATABASE `activity` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `activity`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
  `a_id` smallint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `price_1_person` float NOT NULL,
  `price_2_person` float NOT NULL,
  `address` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `zipcode` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `residence` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `notes` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` char(128) COLLATE latin1_general_ci NOT NULL,
  `salt` char(128) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`) VALUES
(1, 'test_user', 'test@example.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `membership_state`
--

DROP TABLE IF EXISTS `membership_state`;
CREATE TABLE IF NOT EXISTS `membership_state` (
  `state_id` tinyint(5) NOT NULL,
  `state` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `p_id` smallint(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `names` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `zipcode` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `residence` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `home_phone` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `mobile_phone` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `birthdate` date NOT NULL,
  `medicine` text COLLATE latin1_general_ci NOT NULL,
  `allergy` text COLLATE latin1_general_ci NOT NULL,
  `emergency_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `emergency_address` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `emergency_zipcode` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `emergency_residence` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `emergency_country` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `emergency_home_phone` int(20) NOT NULL,
  `emergency_mobile_phone` int(20) NOT NULL,
  `membership_payed_until` date NOT NULL,
  `membership_state` tinyint(5) NOT NULL,
  `notes` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `person_activity`
--

DROP TABLE IF EXISTS `person_activity`;
CREATE TABLE IF NOT EXISTS `person_activity` (
  `p_a_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` smallint(11) NOT NULL,
  `activity_id` smallint(11) NOT NULL,
  `payment` int(20) NOT NULL,
  PRIMARY KEY (`p_a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;
