-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2019 at 01:32 PM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 7.2.17-1+0~20190412070953.20+jessie~1.gbp23a36d

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebDiP2018x149`
--

-- --------------------------------------------------------

--
-- Table structure for table `dnevnk_rada`
--

CREATE TABLE `dnevnk_rada` (
  `id` int(11) NOT NULL,
  `datum_vrijeme` datetime NOT NULL,
  `sql_upit` varchar(45) DEFAULT NULL,
  `ip_adresa` varchar(45) DEFAULT NULL,
  `opsi` varchar(45) DEFAULT NULL,
  `korisnik` varchar(50) NOT NULL,
  `pomak` int(11) NOT NULL,
  `skripta` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dnevnk_rada`
--

INSERT INTO `dnevnk_rada` (`id`, `datum_vrijeme`, `sql_upit`, `ip_adresa`, `opsi`, `korisnik`, `pomak`, `skripta`) VALUES
(1, '2019-05-26 05:07:20', '', '193.198.27.60', 'Korisnik se odjavio', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(2, '2019-05-26 05:07:36', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(3, '2019-05-26 05:09:43', '', '193.198.27.60', 'Korisnik se odjavio', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(4, '2019-05-26 05:09:55', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(5, '2019-05-26 15:15:23', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(6, '2019-05-26 15:15:25', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(7, '2019-05-26 15:15:53', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(8, '2019-05-26 15:15:55', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(9, '2019-05-26 15:17:51', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(10, '2019-05-26 15:17:52', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(11, '2019-05-26 17:21:00', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(12, '2019-05-26 17:22:10', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(13, '2019-05-26 17:27:02', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(14, '2019-05-26 17:28:15', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(15, '2019-05-26 17:30:58', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(16, '2019-05-26 17:31:35', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(17, '2019-05-26 18:00:52', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(18, '2019-05-26 18:01:17', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(19, '2019-05-26 18:01:32', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(20, '2019-05-26 18:03:50', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(21, '2019-05-30 02:22:08', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '109.60.69.128', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'uzkzkfvhjbn', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(22, '2019-05-30 02:22:48', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '109.60.69.128', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'xfchgvjhbknm,', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(23, '2019-05-30 02:39:57', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(24, '2019-05-30 02:51:13', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(25, '2019-05-30 02:52:35', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '109.60.69.128', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(26, '2019-05-30 14:37:56', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(27, '2019-05-30 14:39:28', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(28, '2019-05-30 14:56:23', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(29, '2019-05-30 14:57:35', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(30, '2019-05-30 15:12:08', 'UPDATE-korisnik-SET-status-aktiviran-token--W', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(31, '2019-05-30 15:13:16', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(32, '2019-05-30 15:13:29', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(33, '2019-05-30 15:14:29', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(34, '2019-05-30 15:14:56', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(35, '2019-05-30 16:01:27', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(36, '2019-05-30 16:25:11', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mjurisic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(37, '2019-05-30 16:45:01', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(38, '2019-05-30 16:46:35', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(39, '2019-05-30 16:47:47', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(40, '2019-05-30 16:48:00', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(41, '2019-05-30 16:48:51', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '109.60.69.128', 'Uspješna registracija', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(42, '2019-05-30 16:49:41', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '109.60.69.128', 'uspjesna aktivacija korisnickog racuna', 'mmrki', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(43, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '88.207.97.188', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(44, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '88.207.97.188', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(45, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.58', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(46, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(47, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(48, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(49, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(50, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(51, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(52, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(53, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(54, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(55, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(56, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(57, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(58, '0000-00-00 00:00:00', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(59, '2019-06-05 17:50:53', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(60, '2019-06-05 17:52:02', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(61, '2019-06-05 17:54:30', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(62, '2019-06-05 17:57:14', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(63, '2019-06-05 18:02:44', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(64, '2019-06-05 18:03:03', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(65, '2019-06-05 18:09:57', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(66, '2019-06-05 18:10:52', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(67, '2019-06-05 18:11:24', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmata', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(68, '2019-06-05 18:11:36', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(69, '2019-06-05 18:12:14', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(70, '2019-06-05 18:12:22', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(71, '2019-06-05 18:12:23', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(72, '2019-06-05 18:12:25', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(73, '2019-06-05 18:12:26', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(74, '2019-06-05 18:12:27', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(75, '2019-06-05 18:12:30', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mmate', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(76, '2019-06-05 20:43:02', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(77, '2019-06-05 20:43:53', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(78, '2019-06-05 20:44:30', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(79, '2019-06-05 20:45:16', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(80, '2019-06-05 20:50:53', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(81, '2019-06-06 16:20:35', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Quart1955', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(82, '2019-06-06 16:21:53', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Quart1955', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(83, '2019-06-06 16:22:53', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Quart1955', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(84, '2019-06-06 16:23:40', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthown', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(85, '2019-06-06 16:29:02', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Quart19553256', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(86, '2019-06-06 16:29:40', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasd', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(87, '2019-06-06 16:30:09', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(88, '2019-06-06 16:37:16', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(89, '2019-06-06 16:43:04', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(90, '2019-06-06 16:46:07', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(91, '2019-06-06 16:49:25', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(92, '2019-06-06 16:54:10', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(93, '2019-06-06 16:55:35', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(94, '2019-06-06 17:13:40', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(95, '2019-06-06 17:14:33', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(96, '2019-06-06 17:14:58', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(97, '2019-06-06 17:17:16', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(98, '2019-06-06 17:24:33', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadas', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(99, '2019-06-06 17:25:12', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthowndasddsadasda', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(100, '2019-06-06 19:43:52', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Forthown', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(101, '2019-06-06 19:44:18', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Forthown', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(102, '2019-06-06 23:15:53', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(103, '2019-06-06 23:16:07', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(104, '2019-06-06 23:18:37', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(105, '2019-06-06 23:18:53', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(106, '2019-06-07 00:53:07', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(107, '2019-06-07 00:53:13', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(108, '2019-06-07 00:53:55', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(109, '2019-06-07 00:53:59', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(110, '2019-06-07 00:54:27', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(111, '2019-06-07 00:54:29', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(112, '2019-06-07 00:54:46', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(113, '2019-06-07 00:54:49', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(114, '2019-06-07 00:54:52', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(115, '2019-06-07 00:54:55', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(116, '2019-06-07 01:01:55', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(117, '2019-06-07 01:02:03', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(118, '2019-06-07 01:02:09', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(119, '2019-06-07 01:04:16', 'UPDATE-korisnik-SET-lozinka-58ig3jnt32-lozink', '193.198.27.60', 'Korisnik je promjenio lozinku', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/reset.ph'),
(120, '2019-06-07 01:05:05', 'UPDATE-korisnik-SET-lozinka-t2t9z4tj5n-lozink', '193.198.27.60', 'Korisnik je promjenio lozinku', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/reset.ph'),
(121, '2019-06-07 01:06:39', 'UPDATE-korisnik-SET-lozinka-g3z4tn92t9-lozink', '193.198.27.60', 'Korisnik je promjenio lozinku', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/reset.ph'),
(122, '2019-06-07 01:07:30', 'UPDATE-korisnik-SET-lozinka-nvti99842n-lozink', '193.198.27.60', 'Korisnik je promjenio lozinku', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/reset.ph'),
(123, '2019-06-07 01:07:44', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(124, '2019-06-07 01:07:46', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(125, '2019-06-07 01:09:52', 'UPDATE-korisnik-SET-lozinka-n89g483ztt-lozink', '193.198.27.60', 'Korisnik je promjenio lozinku', '', 1, '/WebDiP/2018_projekti/WebDiP2018x149/reset.ph'),
(126, '2019-06-07 01:10:03', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(127, '2019-06-07 01:10:05', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(128, '2019-06-07 01:44:36', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(129, '2019-06-07 01:58:50', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(130, '2019-06-07 01:58:54', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(131, '2019-06-07 03:16:25', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(132, '2019-06-07 03:28:10', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(133, '2019-06-07 03:30:42', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(134, '2019-06-07 08:47:44', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(135, '2019-06-07 08:48:07', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(136, '2019-06-07 09:40:25', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(137, '2019-06-07 09:44:51', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(138, '2019-06-07 09:45:23', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(139, '2019-06-07 13:36:26', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(140, '2019-06-07 13:37:59', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(141, '2019-06-07 13:39:59', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(142, '2019-06-07 13:46:46', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(143, '2019-06-07 13:47:51', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(144, '2019-06-07 14:02:52', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(145, '2019-06-07 14:04:52', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(146, '2019-06-07 14:05:18', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(147, '2019-06-07 14:06:47', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(148, '2019-06-07 14:07:26', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(149, '2019-06-07 14:08:20', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(150, '2019-06-07 14:14:47', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(151, '2019-06-07 14:16:03', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(152, '2019-06-07 14:16:52', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(153, '2019-06-07 14:16:54', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(154, '2019-06-07 14:16:56', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(155, '2019-06-07 14:16:57', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(156, '2019-06-07 14:17:35', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(157, '2019-06-07 14:17:37', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(158, '2019-06-07 14:18:46', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(159, '2019-06-07 14:18:59', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(160, '2019-06-07 14:19:57', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(161, '2019-06-07 14:19:59', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(162, '2019-06-07 14:20:05', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(163, '2019-06-07 14:24:48', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(164, '2019-06-07 14:24:51', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(165, '2019-06-07 14:31:25', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(166, '2019-06-07 14:49:24', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(167, '2019-06-07 15:18:38', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(168, '2019-06-07 15:18:46', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(169, '2019-06-07 15:18:53', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(170, '2019-06-07 15:58:12', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(171, '2019-06-07 17:13:22', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(172, '2019-06-07 18:25:39', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(173, '2019-06-07 18:26:26', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(174, '2019-06-07 20:40:31', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(175, '2019-06-08 20:01:53', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(176, '2019-06-08 20:35:57', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(177, '2019-06-08 20:36:21', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(178, '2019-06-08 22:49:03', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(179, '2019-06-09 01:21:03', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(180, '2019-06-09 03:28:09', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(181, '2019-06-09 08:57:05', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(182, '2019-06-09 13:29:37', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(183, '2019-06-09 13:30:13', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(184, '2019-06-09 13:31:40', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(185, '2019-06-09 18:20:00', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(186, '2019-06-10 11:36:58', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(187, '2019-06-10 14:10:05', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(188, '2019-06-10 14:45:28', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(189, '2019-06-10 14:45:47', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(190, '2019-06-10 14:49:20', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(191, '2019-06-10 14:52:39', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(192, '2019-06-10 14:53:08', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(193, '2019-06-10 14:57:02', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(194, '2019-06-10 14:57:12', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(195, '2019-06-10 14:57:25', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(196, '2019-06-10 14:59:15', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(197, '2019-06-10 14:59:21', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(198, '2019-06-10 14:59:32', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(199, '2019-06-10 14:59:53', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(200, '2019-06-10 15:02:30', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(201, '2019-06-10 15:02:42', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'brunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(202, '2019-06-10 15:03:07', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(203, '2019-06-10 15:41:18', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(204, '2019-06-10 15:41:34', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(205, '2020-06-04 15:42:27', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(206, '2020-06-04 15:43:15', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(207, '2020-06-04 15:50:28', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(208, '2020-06-04 15:51:07', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(209, '2019-06-10 16:54:24', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(210, '2019-06-10 16:54:33', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(211, '2019-06-25 19:01:11', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(212, '2019-06-25 21:24:02', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(213, '2019-06-26 01:15:34', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(214, '2019-06-26 01:34:37', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(215, '2019-06-26 01:34:43', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(216, '2019-06-26 02:28:28', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(217, '2019-06-26 04:38:57', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(218, '2019-06-26 04:43:40', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(219, '2019-06-26 05:01:18', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(220, '2019-06-26 05:01:41', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(221, '2019-06-26 05:23:37', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(222, '2019-06-26 05:29:40', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Trang1990', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(223, '2019-06-26 05:30:05', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Trang1990', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(224, '2019-06-26 05:30:43', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Hankicht', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(225, '2019-06-26 05:31:01', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Hisclowed', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(226, '2019-06-26 05:31:23', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Andids', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(227, '2019-06-26 05:31:54', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Poved1953', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(228, '2019-06-26 05:34:18', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Tooke1940', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(229, '2019-06-26 05:34:36', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Fromete1966', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(230, '2019-06-26 05:34:51', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Strah1973', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(231, '2019-06-26 05:35:04', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Ecastiou', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(232, '2019-06-26 05:35:32', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Wornat', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(233, '2019-06-26 05:35:47', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Tinur1989', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(234, '2019-06-26 05:36:03', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Lieve1959', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(235, '2019-06-26 05:36:34', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Fehe1954', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(236, '2019-06-26 05:36:48', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Hatiquieving', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(237, '2019-06-26 05:37:02', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Agave1997', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(238, '2019-06-26 05:37:18', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Fratte52', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(239, '2019-06-26 05:37:31', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Solow1987', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(240, '2019-06-26 05:37:47', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Twonen', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(241, '2019-06-26 05:38:04', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Unfinamess', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(242, '2019-06-26 05:38:24', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Grecond', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(243, '2019-06-26 05:39:08', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Wherfuld', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(244, '2019-06-26 05:39:21', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Puressinger', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(245, '2019-06-26 05:39:35', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Tweranneirs85', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(246, '2019-06-26 05:39:51', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Theryiewer', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(247, '2019-06-26 05:40:10', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Tinto1979', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(248, '2019-06-26 05:40:22', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Agend1977', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(249, '2019-06-26 05:40:35', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Mightforanis', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(250, '2019-06-26 05:41:15', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Proke1933', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(251, '2019-06-26 05:41:32', 'INSERT-INTO-korisnikime-prezime-korime-lozink', '193.198.27.60', 'Uspješna registracija', 'Whons1949', 1, '/WebDiP/2018_projekti/WebDiP2018x149/registra'),
(252, '2019-06-26 06:00:44', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Hankicht', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(253, '2019-06-26 06:00:54', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Hisclowed', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(254, '2019-06-26 06:01:12', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Andids', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(255, '2019-06-26 06:01:19', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Poved1953', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(256, '2019-06-26 06:01:29', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Tooke1940', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(257, '2019-06-26 06:01:37', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Fromete1966', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(258, '2019-06-26 06:01:41', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Strah1973', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(259, '2019-06-26 06:01:45', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Ecastiou', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(260, '2019-06-26 06:01:49', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Wornat', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(261, '2019-06-26 06:01:52', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Tinur1989', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(262, '2019-06-26 06:01:55', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Lieve1959', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(263, '2019-06-26 06:01:59', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Fehe1954', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(264, '2019-06-26 06:02:05', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Hatiquieving', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(265, '2019-06-26 06:02:26', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Agave1997', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(266, '2019-06-26 06:02:30', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Fratte52', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(267, '2019-06-26 06:02:35', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Solow1987', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(268, '2019-06-26 06:02:37', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Twonen', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(269, '2019-06-26 06:02:39', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Unfinamess', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(270, '2019-06-26 06:02:42', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Grecond', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(271, '2019-06-26 06:02:44', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Wherfuld', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(272, '2019-06-26 06:02:46', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Puressinger', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(273, '2019-06-26 06:02:48', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Tweranneirs85', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(274, '2019-06-26 06:02:50', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Theryiewer', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(275, '2019-06-26 06:02:51', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Tinto1979', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR');
INSERT INTO `dnevnk_rada` (`id`, `datum_vrijeme`, `sql_upit`, `ip_adresa`, `opsi`, `korisnik`, `pomak`, `skripta`) VALUES
(276, '2019-06-26 06:02:53', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Agend1977', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(277, '2019-06-26 06:02:54', 'UPDATE-korisnik-SET-statusaktiviran-token-tok', '193.198.27.60', 'uspjesna aktivacija korisnickog racuna', 'Mightforanis', 1, '/WebDiP/2018_projekti/WebDiP2018x149/potvrdaR'),
(278, '2019-06-26 06:05:24', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(279, '2019-06-26 06:05:25', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(280, '2019-06-26 06:06:33', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'Hisclowed', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(281, '2019-06-26 06:06:35', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(282, '2019-06-26 06:06:36', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(283, '2019-06-26 06:06:50', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(284, '2019-06-26 06:09:22', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(285, '2019-06-26 06:09:33', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(286, '2019-06-26 06:09:38', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(287, '2019-06-26 06:10:03', 'UPDATE-korisnik-SET-brojpokusaja--brojpokusaj', '193.198.27.60', 'Neuspjela prijava', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(288, '2019-06-26 06:10:09', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(289, '2019-06-26 06:10:22', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(290, '2019-06-26 06:11:30', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(291, '2019-06-11 07:18:55', 'UPDATE-korisnik-SET-statusblokiran-WHERE-idko', '193.198.27.60', 'Promjenjen status korisnika', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(292, '2019-06-11 07:19:10', 'UPDATE-korisnik-SET-statusaktiviran-WHERE-idk', '193.198.27.60', 'Promjenjen status korisnika', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(293, '2019-06-11 07:23:09', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(294, '2019-06-11 08:14:34', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(295, '2019-06-11 08:15:17', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(296, '2019-06-11 08:17:24', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(297, '2019-06-11 08:17:44', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(298, '2019-06-11 08:19:09', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(299, '2019-06-11 08:20:09', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(300, '2019-06-11 08:21:10', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(301, '2019-06-11 08:22:27', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(302, '2019-06-11 08:42:55', 'DELETE-FROM-ponuda-WHERE-idponude--11', '193.198.27.60', 'Ponuda izbrisana', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(303, '2019-06-11 08:43:12', 'DELETE-FROM-ponuda-WHERE-idponude--11', '193.198.27.60', 'Ponuda izbrisana', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(304, '2019-06-11 08:44:24', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(305, '2019-06-11 08:52:10', 'UPDATE-ponuda-SET-naziv--Ponuda-za-materijal-', '193.198.27.60', 'Ponuda azurirana', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(306, '2019-06-11 08:53:05', 'UPDATE-ponuda-SET-naziv--Ponuda-za-materijal-', '193.198.27.60', 'Ponuda azurirana', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(307, '2019-06-11 08:55:34', 'UPDATE-ponuda-SET-naziv--Ponuda-za-materijal-', '193.198.27.60', 'Ponuda azurirana', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(308, '2019-05-27 08:02:38', 'INSERT-INTO-zalbenaziv-opis-status-korisnikid', '193.198.27.60', 'Kreriana žalba', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/zal'),
(309, '2019-05-27 08:05:08', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(310, '2019-05-27 08:06:15', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(311, '2019-05-27 08:06:27', '', '193.198.27.60', 'Korisnik se odjavio', 'mesetaner', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(312, '2019-05-27 08:06:46', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(313, '2019-05-27 08:08:53', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(314, '2019-05-27 08:13:21', 'UPDATE-ponuda-SET-naziv--Ponuda-na-natjecaj-z', '193.198.27.60', 'Ponuda azurirana', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(315, '2019-05-27 08:21:01', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(316, '2019-06-26 08:22:47', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(317, '2019-06-11 08:25:57', 'UPDATE-ponuda-SET-naziv--Natjeaj-za-nabavku-m', '193.198.27.60', 'Ponuda azurirana', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(318, '2019-06-26 08:33:47', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(319, '2019-06-26 08:34:03', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(320, '2019-06-26 08:54:20', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-a-1', '193.198.27.60', 'Spremljena ponuda', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(321, '2019-06-26 09:23:54', 'UPDATE-obrt-SET-nazivKamion-doo-korisnikid-1-', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(322, '2019-06-26 09:24:23', 'UPDATE-obrt-SET-nazivKamion-doo-korisnikid-97', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(323, '2019-06-26 09:35:34', 'DELETE-FROM-obrt-WHERE-idobrt--1', '193.198.27.60', 'Obrt izbrisana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(324, '2019-06-26 09:36:43', 'UPDATE-korisnik-SET-statusblokiran-WHERE-idko', '193.198.27.60', 'Promjenjen status korisnika', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(325, '2019-06-26 09:36:44', 'UPDATE-korisnik-SET-statusaktiviran-WHERE-idk', '193.198.27.60', 'Promjenjen status korisnika', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(326, '2019-06-26 10:05:03', 'UPDATE-vrstanatjecaja-SET-vrsta--nabavaaaa-WH', '193.198.27.60', 'Ažurirana vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(327, '2019-06-26 10:05:27', 'UPDATE-vrstanatjecaja-SET-vrsta--nabava-WHERE', '193.198.27.60', 'Ažurirana vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(328, '2019-06-26 10:09:31', 'UPDATE-vrstanatjecaja-SET-vrsta--nabava-WHERE', '193.198.27.60', 'Ažurirana vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(329, '2019-06-26 10:11:08', 'DELETE-FROM-vrstanatjecaja-WHERE-idvrstanatje', '193.198.27.60', 'Obrisana vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(330, '2019-06-26 10:11:10', 'DELETE-FROM-vrstanatjecaja-WHERE-idvrstanatje', '193.198.27.60', 'Obrisana vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(331, '2019-06-26 10:11:10', 'DELETE-FROM-vrstanatjecaja-WHERE-idvrstanatje', '193.198.27.60', 'Obrisana vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(332, '2019-06-26 10:25:01', 'INSERT-INTO-vrstanatjecajavrsta-VALUES-sadas', '193.198.27.60', 'Kreirana nova vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(333, '2019-06-26 10:25:09', 'INSERT-INTO-vrstanatjecajavrsta-VALUES-sadas', '193.198.27.60', 'Kreirana nova vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(334, '2019-06-26 10:26:24', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(335, '2019-06-26 10:30:05', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(336, '2019-06-26 10:38:05', '', '193.198.27.60', 'Korisnik se odjavio', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(337, '2019-06-26 10:38:20', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(338, '2019-06-26 10:42:37', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(339, '2019-06-26 11:21:29', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(340, '2019-06-26 11:21:50', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova vrsta natjecaja', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(341, '2019-06-26 11:22:57', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(342, '2019-06-26 11:23:03', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(343, '2019-06-26 11:23:36', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(344, '2019-06-26 11:23:59', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(345, '2019-06-26 11:40:58', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Graa-', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(346, '2019-06-26 11:41:16', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Gradi', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(347, '2019-06-26 11:41:30', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-ljep-', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(348, '2019-06-26 11:42:10', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Dalek', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(349, '2019-06-26 11:42:25', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Kamgr', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(350, '2019-06-26 11:42:41', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Parko', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(351, '2019-06-26 11:42:53', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Tehni', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(352, '2019-06-26 11:43:13', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-GP-Kr', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(353, '2019-06-26 11:43:20', 'UPDATE-obrt-SET-nazivPrijevoz-gudle-korisniki', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(354, '2019-06-26 11:43:24', 'UPDATE-obrt-SET-nazivKopnja-korisnikid-97-WHE', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(355, '2019-06-26 11:43:27', 'UPDATE-obrt-SET-nazivGraa-korisnikid-1-WHERE-', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(356, '2019-06-26 11:43:36', 'UPDATE-obrt-SET-nazivTehnika-korisnikid-108-W', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(357, '2019-06-26 11:43:39', 'UPDATE-obrt-SET-nazivljep-korisnikid-98-WHERE', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(358, '2019-06-26 11:43:44', 'UPDATE-obrt-SET-nazivKamgrad-korisnikid-104-W', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(359, '2019-06-26 11:43:50', 'UPDATE-obrt-SET-nazivGradimoSvasta-korisnikid', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(360, '2019-06-26 11:43:56', 'UPDATE-obrt-SET-nazivDalekovod-korisnikid-103', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(361, '2019-06-26 11:44:03', 'UPDATE-obrt-SET-nazivParkovi-korisnikid-107-W', '193.198.27.60', 'Obrt azurirana', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(362, '2019-06-26 11:45:55', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Data-', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(363, '2019-06-26 11:46:05', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Buhin', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(364, '2019-06-26 11:46:26', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-D--A-', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(365, '2019-06-26 11:46:38', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Aless', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(366, '2019-06-26 11:46:50', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-B--B-', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(367, '2019-06-26 11:47:02', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Balta', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(368, '2019-06-26 11:47:14', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Clean', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(369, '2019-06-26 11:47:26', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Euro-', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(370, '2019-06-26 11:48:48', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Lupro', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(371, '2019-06-26 11:48:55', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Lo-Bo', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(372, '2019-06-26 11:49:12', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Velko', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(373, '2019-06-26 11:49:19', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Urban', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(374, '2019-06-26 11:53:37', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Alarm', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(375, '2019-06-26 11:53:46', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Rovok', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(376, '2019-06-26 11:53:54', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Renes', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(377, '2019-06-26 11:54:11', 'INSERT-INTO-obrtnaziv-korisnikid-VALUES-Punek', '193.198.27.60', 'Kreiran obrt', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(378, '2019-06-26 12:31:11', 'UPDATE-korisnik-SET-ulogaiduloga--1-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(379, '2019-06-26 12:32:45', 'UPDATE-korisnik-SET-ulogaiduloga--1-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(380, '2019-06-26 12:33:00', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(381, '2019-06-26 12:35:02', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(382, '2019-06-26 12:35:32', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(383, '2019-06-26 12:35:37', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(384, '2019-06-26 12:35:44', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(385, '2019-06-26 12:35:48', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(386, '2019-06-26 12:35:53', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(387, '2019-06-26 12:35:57', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(388, '2019-06-26 12:36:01', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(389, '2019-06-26 12:36:07', 'UPDATE-korisnik-SET-ulogaiduloga--2-WHERE-idk', '193.198.27.60', 'Uloga promjenjena', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/kor'),
(390, '2019-06-26 12:36:28', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(391, '2019-06-26 12:36:35', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(392, '2019-06-26 12:36:41', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(393, '2019-06-26 12:36:52', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(394, '2019-06-26 12:37:00', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(395, '2019-06-26 12:37:07', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(396, '2019-06-26 12:37:19', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(397, '2019-06-26 12:37:27', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(398, '2019-06-26 12:37:32', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(399, '2019-06-26 12:37:36', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(400, '2019-06-26 12:37:41', 'INSERT-INTO-moderatorobrtaobrtid-korisnikid-V', '193.198.27.60', 'Kreirana nova moderator obrta', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/obr'),
(401, '2019-06-26 12:44:00', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(402, '2019-06-26 12:46:21', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(403, '2019-06-26 12:47:29', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(404, '2019-06-26 12:52:17', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(405, '2019-06-26 12:53:42', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(406, '2019-06-26 12:55:08', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(407, '2019-06-26 12:55:48', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(408, '2019-06-26 12:56:44', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(409, '2019-06-26 12:57:04', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(410, '2019-06-26 12:58:06', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(411, '2019-06-26 12:59:05', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(412, '2019-06-26 12:59:37', 'INSERT-INTO-natjecajnaziv-opis-ponudeod-ponud', '193.198.27.60', 'Kreiraj novi natjecaj', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(413, '2019-06-26 13:00:35', '', '193.198.27.60', 'Korisnik se odjavio', 'avulic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(414, '2019-06-26 13:00:57', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'Hankicht', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(415, '2019-06-26 13:04:19', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'Hankicht', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(416, '2019-06-26 13:05:02', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'Hankicht', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(417, '2019-06-26 13:05:30', '', '193.198.27.60', 'Korisnik se odjavio', 'Hankicht', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(418, '2019-06-26 13:06:09', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'Poved1953', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(419, '2019-06-26 13:06:59', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'Poved1953', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(420, '2019-06-26 13:08:47', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'Poved1953', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon'),
(421, '2019-06-26 13:18:29', '', '193.198.27.60', 'Korisnik se odjavio', 'Poved1953', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(422, '2019-06-26 13:18:44', 'UPDATE-korisnik-SET-status--blokiran-WHERE-ko', '193.198.27.60', 'Korisnik blokiran, nakon 3 neuspjele prijave', 'avuli', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(423, '2019-06-26 13:19:01', 'SELECT-korisnikidkorisnik-korisnikime-korisni', '193.198.27.60', 'Korisnik se prijavio u sustav', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/prijava.'),
(424, '2019-06-26 13:22:38', 'UPDATE-natjecaj-SET-zakljucan--1-WHERE-idnatj', '193.198.27.60', 'Promjenjen status natjecaja', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(425, '2019-06-26 13:22:39', 'UPDATE-natjecaj-SET-zakljucan--0-WHERE-idnatj', '193.198.27.60', 'Promjenjen status natjecaja', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/nat'),
(426, '2019-06-26 13:24:52', 'INSERT-INTO-ponudanaziv-natjeajid-korisnikid-', '193.198.27.60', 'Spremljena ponuda', 'bbrunic', 1, '/WebDiP/2018_projekti/WebDiP2018x149/data/pon');

-- --------------------------------------------------------

--
-- Table structure for table `dobitnici_natjecaja`
--

CREATE TABLE `dobitnici_natjecaja` (
  `id` int(11) NOT NULL,
  `natjecaj_id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `ponuda_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `idkorisnik` int(11) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `kor_ime` varchar(45) NOT NULL,
  `lozinka` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `token` varchar(45) NOT NULL,
  `lozinka_kriptirana` varchar(45) NOT NULL,
  `vrijeme_registracije` datetime NOT NULL,
  `broj_pokusaja` int(11) NOT NULL DEFAULT '3',
  `status` varchar(45) NOT NULL,
  `uloga_iduloga` int(11) NOT NULL,
  `slika_url` varchar(45) DEFAULT NULL,
  `token_rok` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idkorisnik`, `ime`, `prezime`, `kor_ime`, `lozinka`, `email`, `token`, `lozinka_kriptirana`, `vrijeme_registracije`, `broj_pokusaja`, `status`, `uloga_iduloga`, `slika_url`, `token_rok`) VALUES
(1, 'Ante', 'Vulić', 'avulic', 'n89g483ztt', 'avulic@foi.hr', '', 'f4356feb61e891232c4bdcbdc9da122a37498cb0', '2019-06-06 23:15:53', 2, 'aktiviran', 1, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(97, 'Bruno', 'Brunić', 'bbrunic', '1234567', 'avulic@foi.hr', '', '460babc39ad4260ec538d23c708fec10ee786a3b', '2019-06-06 23:18:37', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(98, 'Meštar', 'Meštrović', 'mesetaner', '1234567', 'avulic@foi.hr', '', '460babc39ad4260ec538d23c708fec10ee786a3b', '2019-06-07 08:47:44', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(100, 'Andrea', 'Brajković', 'Trang1990', 'pohth8Xaic0', 'brudli.113@gmail.com', 'g2t87j923n', '0f887c263ace3040023c3d8d8ad990db9e337036', '2019-06-26 05:30:05', 3, 'neaktiviran', 4, 'slike/avatar-default.png', '2019-06-26 12:30:05'),
(101, 'Niko', 'Hrvat', 'Hankicht', 'Uujohqu6ie', 'avulic@foi.hr', '', '1dc6b6688693a6d9655d8403eb1cc16240a2749e', '2019-06-26 05:30:43', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(102, 'Cvitko ', 'Posavec', 'Hisclowed', 'eich7Za4jei', 'avulic@foi.hr', '', '12dd064ac9be37e44bfabe080dfeb8fdef0cf721', '2019-06-26 05:31:01', 2, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(103, 'Silvija ', 'Stojanović', 'Andids', 'Quee6laize', 'avulic@foi.hr', '', 'fb477f964908395b5d74013b5aa7ca37d0453554', '2019-06-26 05:31:23', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(104, 'Dario ', 'Marjanović', 'Poved1953', 'icheap2Oosh', 'avulic@foi.hr', '', '5941e9f6ee7ad34d3b4072bb28dfb95c710e1d72', '2019-06-26 05:31:54', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(105, 'Herceg', 'Jasminka ', 'Tooke1940', 'ool8oof0Hohs', 'avulic@foi.hr', '', '86b766b96f8584bedec7026f1fdb297f550ba220', '2019-06-26 05:34:18', 3, 'aktiviran', 2, 'slike/logo.png', '0000-00-00 00:00:00'),
(106, 'Radojka ', 'Tomić', 'Fromete1966', 'ieFoov6iP0', 'avulic@foi.hr', '', '6ff10638547bd8af5a15a1239f65fa2257eee2bf', '2019-06-26 05:34:36', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(107, 'Sunčana ', 'Babić', 'Strah1973', 'Chahphim3Qu', 'avulic@foi.hr', '', '292dc707f312b9bc030c7ca796dc3fd1e0a6c040', '2019-06-26 05:34:51', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(108, 'Pero ', 'Varga', 'Ecastiou', 'Aixoh7ooch', 'avulic@foi.hr', '', '5dbf73e812e6c2776d89fc30b16ea8c3d278b733', '2019-06-26 05:35:04', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(109, 'Edi ', 'Barić', 'Wornat', 'Iev1geir', 'avulic@foi.hr', '', '6fe3e19a2ae167de50e8d36829f7ca12ef671f3c', '2019-06-26 05:35:32', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(110, 'Grubišić', 'Jasna ', 'Tinur1989', 'Jai9Iet8yei', 'avulic@foi.hr', '', 'cdb45d9e1d7bb1265b9b3bef6700c499ff4136fa', '2019-06-26 05:35:47', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(111, 'Šime', 'Bašić', 'Lieve1959', 'Iej0Ahj4bae', 'avulic@foi.hr', '', '400f6a433a053fc5eb5a5e7dfb748e6ff63b5d77', '2019-06-26 05:36:03', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(112, 'Senad ', 'Stipanov', 'Fehe1954', 'iWoov5Ohr1b', 'avulic@foi.hr', '', 'a96add04c244fe3e4d064dd81f9a53d89999951c', '2019-06-26 05:36:34', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(113, 'Lovre ', 'Horvat', 'Hatiquieving', 'Oochahfe5', 'avulic@foi.hr', '', '1f83907a08f5eca02079a10cc3779f541f24f37a', '2019-06-26 05:36:48', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(114, 'Miljenko ', 'Pavičić', 'Agave1997', 'feH8FahThie', 'avulic@foi.hr', '', '8471851b1d40904a2a1786dcdaa404b3756906f5', '2019-06-26 05:37:02', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(115, 'Nikša ', 'Jozić', 'Fratte52', 'Iqu4phih0Gae', 'avulic@foi.hr', '', '6cfd40fe34a73e9bc8329c7b99e3920dd61f10b6', '2019-06-26 05:37:18', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(116, 'Dubravko ', 'Horvat', 'Solow1987', 'liSei6ooy', 'avulic@foi.hr', '', '0eff3d7e1ad678eb39f25c01d489a30f5a8ff9dd', '2019-06-26 05:37:31', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(117, 'Julijana ', 'Marjanović', 'Twonen', 'biuKeesi0', 'avulic@foi.hr', '', 'ef99a1a4daf5e8cf43b07439e4155d0de382858f', '2019-06-26 05:37:47', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(118, 'Marijana ', 'Barić', 'Unfinamess', 'AhG8obaem', 'avulic@foi.hr', '', 'e6eaa807c405cd4725a40a856a8cd65ede520fa7', '2019-06-26 05:38:04', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(119, 'Vito ', 'Dujmović', 'Grecond', 'ohtha0Xa', 'avulic@foi.hr', '', '7a0d77efd9951f5d4fd51f61824fa2efc490ea4a', '2019-06-26 05:38:24', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(120, 'Budimir ', 'Anić', 'Wherfuld', 'ooqu0Cei8Aa', 'avulic@foi.hr', '', '5e69314ac452d5e4df29ec32a12ec7415369b46a', '2019-06-26 05:39:08', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(121, 'Nikolina ', 'Horvatinčić', 'Puressinger', 'vaeYie5ei', 'avulic@foi.hr', '', 'ef36beb0e0973a2cb8c00e1ac3144c38fbe7a77a', '2019-06-26 05:39:21', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(122, 'Branimira ', 'Kovačić', 'Tweranneirs85', 'ao9Yahphoo', 'avulic@foi.hr', '', '1c08dedc976d47500a45a0e578bc99392f7a6046', '2019-06-26 05:39:35', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(123, 'Martin ', 'Janković', 'Theryiewer', 'Hah6dahsh', 'avulic@foi.hr', '', 'ffdb3e889ea51aa8552e8f2a6cef1696485407cf', '2019-06-26 05:39:51', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(124, 'Blaženka ', 'Varga', 'Tinto1979', 'Yeet1xei0hoh', 'avulic@foi.hr', '', 'ca76eeb450e6bff06d0f4e40e85dc3c556a65989', '2019-06-26 05:40:10', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(125, 'Borislava ', 'Babić', 'Agend1977', 'AiLai3aiQu', 'avulic@foi.hr', '', '7af6bb37875d5b97e7caea7fd65a76af6f2d9139', '2019-06-26 05:40:22', 3, 'aktiviran', 2, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(126, 'Fran ', 'Poljak', 'Mightforanis', 'EHooPa1i', 'avulic@foi.hr', '', '0948ba70333bd7e620967aac9643af235577993f', '2019-06-26 05:40:35', 3, 'aktiviran', 3, 'slike/avatar-default.png', '0000-00-00 00:00:00'),
(127, 'Loohn1933', 'Rukavina', 'Proke1933', 'oW5EiPh6gei', 'avulic@foi.hr', 'n4jt329tgn', '57f6d2c4e9174f574d82057f8a80c466717eddab', '2019-06-26 05:41:15', 3, 'neaktiviran', 4, 'slike/avatar-default.png', '2019-06-26 12:41:15'),
(128, 'Ena ', 'Katić', 'Whons1949', 'Watusul6wo', 'avulic@foi.hr', 'n97g9jj83t', '699a6c442f7d8302a67d4ac31dcb34bfa81945d9', '2019-06-26 05:41:32', 3, 'neaktiviran', 4, 'slike/avatar-default.png', '2019-06-26 12:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `moderator_natječaja`
--

CREATE TABLE `moderator_natječaja` (
  `id` varchar(45) NOT NULL,
  `natjecaj_id` int(11) NOT NULL,
  `korisnik_idkorisnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moderator_natječaja`
--

INSERT INTO `moderator_natječaja` (`id`, `natjecaj_id`, `korisnik_idkorisnik`) VALUES
('', 9, 97);

-- --------------------------------------------------------

--
-- Table structure for table `moderator_obrta`
--

CREATE TABLE `moderator_obrta` (
  `id` int(45) NOT NULL,
  `obrt_id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moderator_obrta`
--

INSERT INTO `moderator_obrta` (`id`, `obrt_id`, `korisnik_id`) VALUES
(10, 2, 97),
(11, 3, 98),
(12, 5, 105),
(13, 6, 105),
(14, 7, 106),
(15, 9, 109),
(16, 10, 115),
(17, 14, 120),
(18, 18, 125),
(19, 22, 122),
(20, 22, 115),
(21, 27, 115);

-- --------------------------------------------------------

--
-- Table structure for table `natjecaj`
--

CREATE TABLE `natjecaj` (
  `idnatjecaj` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `opis` varchar(200) NOT NULL,
  `ponude_od` datetime NOT NULL,
  `ponude_do` datetime NOT NULL,
  `vrsta_natjecaja_id` int(11) NOT NULL,
  `broj_dobitnika` int(11) DEFAULT NULL,
  `zalbe_od` datetime NOT NULL,
  `zalbe_do` datetime NOT NULL,
  `zakljucan` tinyint(4) NOT NULL,
  `obrt_id` int(11) NOT NULL,
  `moderator_natjecaja` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `natjecaj`
--

INSERT INTO `natjecaj` (`idnatjecaj`, `naziv`, `opis`, `ponude_od`, `ponude_do`, `vrsta_natjecaja_id`, `broj_dobitnika`, `zalbe_od`, `zalbe_do`, `zakljucan`, `obrt_id`, `moderator_natjecaja`) VALUES
(9, 'Natječaj za kupnju kamiona', 'Kupujemo kamion za preijevoz', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 1, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 2, NULL),
(10, 'Natječaj za nabavku cementa', 'Treba nama cemeneta', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 1, 1, '2019-06-13 00:00:00', '2019-06-12 00:00:00', 0, 5, NULL),
(11, 'NAtječaj za nabavu kamiona', 'Kupujemo kamion za preijevoz', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 1, 1, '2019-06-13 00:00:00', '2019-06-12 00:00:00', 0, 6, NULL),
(12, 'Ntječaj za posao', 'Tražim,o sposobnu osobu za vožnju kamiona', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 2, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 9, NULL),
(13, 'Natječaj za radno mjesto', 'Tražimo sposobnu osobu za upravjanje viličarem', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 2, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 12, NULL),
(14, 'Natječaj za radno mjesto', 'Tražimo sposobnu osobu za upravjanje bagerom', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 2, 1, '2019-06-14 00:00:00', '2019-06-14 00:00:00', 0, 17, NULL),
(15, 'NAtječaj izgradenj visoko stambene zgrade', 'Izrađujemo zgradu', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 7, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 12, NULL),
(16, 'Natječaj za nabavku cementa', 'Treba nama cemeneta', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 1, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 20, NULL),
(17, 'Natječaj za radno mjesto', 'Treba nama sposoban osoba za prijevoz tereta', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 2, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 26, NULL),
(18, 'Natječaj za odvoz šute', 'Odvozimo šutu', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 6, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 2, NULL),
(19, 'Natječaj za zidanje kuća', 'Zidamo iskostambene kuće', '2019-06-12 00:00:00', '2019-06-13 00:00:00', 6, 1, '2019-06-15 00:00:00', '2019-06-14 00:00:00', 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obrt`
--

CREATE TABLE `obrt` (
  `idobrt` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `korisnik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `obrt`
--

INSERT INTO `obrt` (`idobrt`, `naziv`, `korisnik_id`) VALUES
(2, 'Prijevoz gudle', 97),
(3, 'Kopnja', 97),
(5, 'Građa', 1),
(6, 'GradimoSvasta', 97),
(7, 'Šljep', 98),
(8, 'Dalekovod', 103),
(9, 'Kamgrad', 104),
(10, 'Parkovi', 107),
(11, 'Tehnika', 108),
(12, 'GP Krk', 1),
(13, 'Data', 113),
(14, 'Buhin Gradnja', 112),
(15, 'D & A građa', 114),
(16, 'Alessi', 106),
(17, 'B & B', 126),
(18, 'Baltazar', 124),
(19, 'Clean Energy', 1),
(20, 'Euro-Line', 100),
(21, 'Luprom', 116),
(22, 'Lo-Bo', 122),
(23, 'Velkom', 121),
(24, 'Urban', 100),
(25, 'Alarm', 128),
(26, 'Rovokop', 124),
(27, 'Renesansa', 110),
(28, 'Punek Gradnja', 117);

-- --------------------------------------------------------

--
-- Table structure for table `pomak_vremena`
--

CREATE TABLE `pomak_vremena` (
  `id` int(11) NOT NULL,
  `pomak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pomak_vremena`
--

INSERT INTO `pomak_vremena` (`id`, `pomak`) VALUES
(1, 360);

-- --------------------------------------------------------

--
-- Table structure for table `ponuda`
--

CREATE TABLE `ponuda` (
  `idponude` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `natječaj_id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `opis` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponuda`
--

INSERT INTO `ponuda` (`idponude`, `naziv`, `natječaj_id`, `korisnik_id`, `status`, `opis`) VALUES
(23, 'Ponuda za radno mjesto', 17, 101, 'poslana', 'Prijavljujem se na radno mjesto'),
(24, 'Ponuda za radno mejsto', 14, 101, 'poslana', 'Prijavljujem se na ponuda za radno mejsto'),
(25, 'Ponuda za natječaj radno mjest', 13, 104, 'poslana', 'Šaljem svoju ponudu na natječa za radno mjest'),
(26, 'Ponuda za natječaj nabave kamiona', 11, 104, 'poslana', 'Šaljem svoju ponudu'),
(27, 'Ponuda za izgradnju zidova kuće', 19, 97, 'poslana', 'Javljam se na natjećaj zidanja kuća');

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--

CREATE TABLE `uloga` (
  `iduloga` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`iduloga`, `naziv`) VALUES
(1, 'administrator'),
(2, 'moderator'),
(3, 'registriran'),
(4, 'neregistriran');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_natjecaja`
--

CREATE TABLE `vrsta_natjecaja` (
  `idvrsta_natjecaja` int(11) NOT NULL,
  `vrsta` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vrsta_natjecaja`
--

INSERT INTO `vrsta_natjecaja` (`idvrsta_natjecaja`, `vrsta`) VALUES
(1, 'nabava'),
(2, 'radno_mjesto'),
(6, 'niskogradnja'),
(7, 'visokogradnja');

-- --------------------------------------------------------

--
-- Table structure for table `zalbe`
--

CREATE TABLE `zalbe` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `opis` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `datum_odobrenja/odijanja` datetime DEFAULT NULL,
  `korisnik_id` int(11) NOT NULL,
  `ponuda_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dnevnk_rada`
--
ALTER TABLE `dnevnk_rada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dobitnici_natjecaja`
--
ALTER TABLE `dobitnici_natjecaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_natjecaj_has_korisnik_korisnik1_idx` (`korisnik_id`),
  ADD KEY `fk_natjecaj_has_korisnik_natjecaj1_idx` (`natjecaj_id`),
  ADD KEY `fk_ponuda_id` (`ponuda_id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`idkorisnik`),
  ADD KEY `fk_korisnik_uloga1_idx` (`uloga_iduloga`);

--
-- Indexes for table `moderator_natječaja`
--
ALTER TABLE `moderator_natječaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_natječaj_has_korisnik_korisnik1_idx` (`korisnik_idkorisnik`),
  ADD KEY `fk_natječaj_has_korisnik_natječaj1_idx` (`natjecaj_id`);

--
-- Indexes for table `moderator_obrta`
--
ALTER TABLE `moderator_obrta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_obrt_has_korisnik_korisnik1_idx` (`korisnik_id`),
  ADD KEY `fk_obrt_has_korisnik_obrt1_idx` (`obrt_id`);

--
-- Indexes for table `natjecaj`
--
ALTER TABLE `natjecaj`
  ADD PRIMARY KEY (`idnatjecaj`),
  ADD KEY `fk_natječaj_vrsta_natječaja1_idx` (`vrsta_natjecaja_id`),
  ADD KEY `fk_natjecaj_obrt1_idx` (`obrt_id`),
  ADD KEY `fk_natjecaj_moderator_obrta1_idx` (`moderator_natjecaja`);

--
-- Indexes for table `obrt`
--
ALTER TABLE `obrt`
  ADD PRIMARY KEY (`idobrt`),
  ADD KEY `fk_korisnik_id` (`korisnik_id`) USING BTREE;

--
-- Indexes for table `pomak_vremena`
--
ALTER TABLE `pomak_vremena`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ponuda`
--
ALTER TABLE `ponuda`
  ADD PRIMARY KEY (`idponude`),
  ADD KEY `fk_ponude_natječaj1_idx` (`natječaj_id`),
  ADD KEY `fk_ponude_korisnik1_idx` (`korisnik_id`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`iduloga`);

--
-- Indexes for table `vrsta_natjecaja`
--
ALTER TABLE `vrsta_natjecaja`
  ADD PRIMARY KEY (`idvrsta_natjecaja`);

--
-- Indexes for table `zalbe`
--
ALTER TABLE `zalbe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnik_id` (`korisnik_id`),
  ADD KEY `ponuda_id` (`ponuda_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dnevnk_rada`
--
ALTER TABLE `dnevnk_rada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
--
-- AUTO_INCREMENT for table `dobitnici_natjecaja`
--
ALTER TABLE `dobitnici_natjecaja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `idkorisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `moderator_obrta`
--
ALTER TABLE `moderator_obrta`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `natjecaj`
--
ALTER TABLE `natjecaj`
  MODIFY `idnatjecaj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `obrt`
--
ALTER TABLE `obrt`
  MODIFY `idobrt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pomak_vremena`
--
ALTER TABLE `pomak_vremena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ponuda`
--
ALTER TABLE `ponuda`
  MODIFY `idponude` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `uloga`
--
ALTER TABLE `uloga`
  MODIFY `iduloga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vrsta_natjecaja`
--
ALTER TABLE `vrsta_natjecaja`
  MODIFY `idvrsta_natjecaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `zalbe`
--
ALTER TABLE `zalbe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dobitnici_natjecaja`
--
ALTER TABLE `dobitnici_natjecaja`
  ADD CONSTRAINT `fk_natjecaj_has_korisnik_natjecaj1` FOREIGN KEY (`natjecaj_id`) REFERENCES `natjecaj` (`idnatjecaj`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_natjecaj_has_korisnik_korisnik1` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ponuda_id` FOREIGN KEY (`ponuda_id`) REFERENCES `ponuda` (`idponude`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_korisnik_uloga1` FOREIGN KEY (`uloga_iduloga`) REFERENCES `uloga` (`iduloga`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `moderator_natječaja`
--
ALTER TABLE `moderator_natječaja`
  ADD CONSTRAINT `fk_natječaj_has_korisnik_korisnik1` FOREIGN KEY (`korisnik_idkorisnik`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_natječaj_has_korisnik_natječaj1` FOREIGN KEY (`natjecaj_id`) REFERENCES `natjecaj` (`idnatjecaj`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moderator_obrta`
--
ALTER TABLE `moderator_obrta`
  ADD CONSTRAINT `fk_obrt_has_korisnik_obrt1` FOREIGN KEY (`obrt_id`) REFERENCES `obrt` (`idobrt`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_obrt_has_korisnik_korisnik1` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `natjecaj`
--
ALTER TABLE `natjecaj`
  ADD CONSTRAINT `fk_natječaj_vrsta_natječaja1` FOREIGN KEY (`vrsta_natjecaja_id`) REFERENCES `vrsta_natjecaja` (`idvrsta_natjecaja`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_natjecaj_moderator_obrta1` FOREIGN KEY (`moderator_natjecaja`) REFERENCES `moderator_natječaja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_natjecaj_obrt1` FOREIGN KEY (`obrt_id`) REFERENCES `obrt` (`idobrt`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obrt`
--
ALTER TABLE `obrt`
  ADD CONSTRAINT `fk_korisnik_id` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ponuda`
--
ALTER TABLE `ponuda`
  ADD CONSTRAINT `fk_ponude_natječaj1` FOREIGN KEY (`natječaj_id`) REFERENCES `natjecaj` (`idnatjecaj`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ponude_korisnik1` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zalbe`
--
ALTER TABLE `zalbe`
  ADD CONSTRAINT `korisnik_id` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`idkorisnik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ponuda` FOREIGN KEY (`ponuda_id`) REFERENCES `ponuda` (`idponude`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
