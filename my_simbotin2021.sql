-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mag 28, 2021 alle 03:35
-- Versione del server: 8.0.21
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_simbotin2021`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `addetti`
--

CREATE TABLE IF NOT EXISTS `addetti` (
  `id_addetto` int NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `utente` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_addetto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `addetti`
--

INSERT INTO `addetti` (`id_addetto`, `cognome`, `nome`, `utente`, `password`) VALUES
(16, 'pecorelli', 'piera', 'pecorelli', '9bb468aa3ff952ae2eeda9b8b0f9bddd'),
(17, 'sonego', 'cristiana', 'sonego', 'ed883a75dfe1fd1467219944004705a3'),
(18, 'annunziata', 'vincenzo', 'annunziata', 'a937cc6d5ca2377c292f6a0ae2941de0'),
(19, 'zanellati', 'david', 'zanellati', 'c738d8d8d90207b52a0d3e9dc7181ffb'),
(20, 'morales', 'renzo', 'morales', '7fa8cf82a9d6b14dd1b0d8aa924b89ec'),
(21, 'borosan', 'gianfilippo', 'borosan', '5cf095ec879d3bb7d9423904fc4271e0'),
(22, 'malfa', 'mariella', 'malfa', '7a04310d4dac6351f03e5fb1c0e82b68'),
(23, 'avasiloae', 'tiziana', 'avasiloae', '435b41f1e20a7b381a88af6f156c38b9'),
(24, 'poerio', 'margherita', 'poerio', 'e7ce55845e23d474d03a9e39c1df674e');

-- --------------------------------------------------------

--
-- Struttura della tabella `aeroporti`
--

CREATE TABLE IF NOT EXISTS `aeroporti` (
  `id_aeroporto` varchar(3) NOT NULL,
  `nome_aeroporto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_aeroporto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `aeroporti`
--

INSERT INTO `aeroporti` (`id_aeroporto`, `nome_aeroporto`) VALUES
('000', 'Nessuno'),
('ACE', 'Aeroporto di Lanzarote'),
('AGP', 'Aeroporto di Malaga'),
('ALC', 'Aeroporto di Alicante'),
('AMS', 'Aeroporto di Amsterdam-Schiphol'),
('ARN', 'Aeroporto di Stoccolma-Arlanda'),
('ATH', 'Aeroporto internazionale di Atene'),
('BCN', 'Aeroporto internazionale di Barcellona'),
('BFS', 'Aeroporto di Belfast'),
('BGO', 'Aeroporto di Bergen-Flesland'),
('BGY', 'Aeroporto di Milano-Orio al Serio'),
('BHX', 'Aeroporto di Birmingham'),
('BLQ', 'Aeroporto di Bologna-Borgo Panigale'),
('BOD', 'Aeroporto di Bordeaux-M‚rignac'),
('BRS', 'Aeroporto di Bristol'),
('BRU', 'Aeroporto di Bruxelles-Zaventem'),
('BSL', 'Aeroporto di Basilea-Mulhouse-Friburgo'),
('BUD', 'Aeroporto di Budapest-Ferihegy'),
('CDG', 'Aeroporto di Parigi-Roissy'),
('CGN', 'Aeroporto di Colonia/Bonn'),
('CIA', 'Aeroporto di Roma-Ciampino'),
('CPH', 'Aeroporto di Copenaghen'),
('CRL', 'Aeroporto di Bruxelles-Charleroi'),
('CTA', 'Aeroporto di Catania-Fontanarossa'),
('DME', 'Aeroporto di Mosca-Domodedovo'),
('DUB', 'Aeroporto Internazionale di Dublino'),
('DUS', 'Aeroporto internazionale di Dsseldorf'),
('EDI', 'Aeroporto di Edimburgo'),
('FAO', 'Aeroporto di Faro'),
('FCO', 'Aeroporto di Roma-Fiumicino'),
('FRA', 'Aeroporto di Francoforte sul Meno'),
('FUE', 'Aeroporto di Fuerteventura'),
('GLA', 'Aeroporto di Glasgow'),
('GOT', 'Aeroporto di Goteborg-Landvetter'),
('GVA', 'Aeroporto Internazionale di Ginevra'),
('HAJ', 'Aeroporto di Hannover-Langenhagen'),
('HAM', 'Aeroporto di Amburgo-Fuhlsbttel'),
('HEL', 'Aeroporto di Helsinki-Vantaa'),
('HER', 'Aeroporto Internazionale di Heraklion'),
('IBZ', 'Aeroporto di Ibiza'),
('IST', 'Aeroporto di Istanbul-Atatrk'),
('KBP', 'Aeroporto Internazionale di Boryspil'),
('LCA', 'Aeroporto di Larnaca'),
('LED', 'Aeroporto di San Pietroburgo-Pulkovo'),
('LGW', 'Aeroporto di Londra-Gatwick'),
('LHR', 'Aeroporto di Londra Heathrow'),
('LIN', 'Aeroporto di Milano-Linate'),
('LIS', 'Aeroporto di Lisbona-Portela'),
('LPA', 'Aeroporto Internazionale Gran Canaria'),
('LTN', 'Aeroporto di Londra-Luton'),
('LYS', 'Aeroporto di Lione-Saint'),
('MAD', 'Aeroporto di Madrid-Barajas'),
('MAN', 'Aeroporto di Manchester'),
('MLA', 'Aeroporto di Malta'),
('MRS', 'Aeroporto di Marsiglia-Provence'),
('MUC', 'Aeroporto di Monaco di Baviera'),
('MXP', 'Aeroporto di Milano-Malpensa'),
('NAP', 'Aeroporto di Napoli-Capodichino'),
('NCE', 'Aeroporto di Nizza'),
('OPO', 'Aeroporto di Porto'),
('ORY', 'Aeroporto di Parigi-Orly'),
('OSL', 'Aeroporto di Oslo-Gardermoen'),
('OTP', 'Aeroporto Internazionale Henri Coand'),
('PMI', 'Aeroporto di Palma di Maiorca'),
('PMO', 'Aeroporto di Palermo-Punta Raisi'),
('PRG', 'Aeroporto di Praga-Ruzyn'),
('PSA', 'Aeroporto di Pisa-San Giusto'),
('RHO', 'Aeroporto di Rodi-Diagoras'),
('RIX', 'Aeroporto Internazionale di Riga'),
('SKG', 'Aeroporto internazionale di Salonicco'),
('STN', 'Aeroporto di Londra-Stansted'),
('STR', 'Aeroporto Internazionale di Stoccarda'),
('SVO', 'Aeroporto di Mosca'),
('SXF', 'Aeroporto di Berlino-Schoenefeld'),
('TFS', 'Aeroporto di Tenerife Sur'),
('TLS', 'Aeroporto di Toulouse-Blagnac'),
('TXL', 'Aeroporto di Berlino-Tegel'),
('VCE', 'Aeroporto di Venezia-Tessera'),
('VIE', 'Aeroporto di Vienna'),
('VKO', 'Aeroporto di Mosca-Vnukovo'),
('VLC', 'Aeroporto di Valencia'),
('WAW', 'Aeroporto di Varsavia'),
('ZRH', 'Aeroporto di Zurigo-Kloten');

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie_merci`
--

CREATE TABLE IF NOT EXISTS `categorie_merci` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `categorie_merci`
--

INSERT INTO `categorie_merci` (`id_categoria`, `categoria`) VALUES
(1, 'Abbigliamento'),
(2, 'Farmaci'),
(3, 'Generi alimentari'),
(4, 'Materiale elettronico'),
(5, 'Prezionsi'),
(6, 'Valuta');

-- --------------------------------------------------------

--
-- Struttura della tabella `controlli`
--

CREATE TABLE IF NOT EXISTS `controlli` (
  `id_controllo` int NOT NULL AUTO_INCREMENT,
  `id_pcontrollo` int NOT NULL,
  `id_addetto` int NOT NULL,
  `id_passeg` varchar(10) NOT NULL,
  `data_ora_inizio` datetime NOT NULL,
  `id_aeroporti_provenienza` varchar(3) DEFAULT NULL,
  `id_aeroporti_destinazione` varchar(3) DEFAULT NULL,
  `motivo_viaggio` varchar(50) DEFAULT NULL,
  `temp_corp` double DEFAULT NULL,
  `cert_no_covid` int DEFAULT NULL,
  `data_cert_no_covid` date DEFAULT NULL,
  `cert_vaccinazione` int DEFAULT NULL,
  `id_esito` int NOT NULL,
  `dazio` varchar(50) DEFAULT NULL,
  `note` mediumtext,
  PRIMARY KEY (`id_controllo`) USING BTREE,
  KEY `FK_controlli_punti_controllo` (`id_pcontrollo`) USING BTREE,
  KEY `FK_controlli_passeggeri` (`id_passeg`) USING BTREE,
  KEY `FK_controlli_esiti` (`id_esito`) USING BTREE,
  KEY `FK_controlli_aeroporti` (`id_aeroporti_provenienza`) USING BTREE,
  KEY `FK_controlli_aeroporti_2` (`id_aeroporti_destinazione`) USING BTREE,
  KEY `FK_controlli_addetti` (`id_addetto`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=129 ;

--
-- Dump dei dati per la tabella `controlli`
--

INSERT INTO `controlli` (`id_controllo`, `id_pcontrollo`, `id_addetto`, `id_passeg`, `data_ora_inizio`, `id_aeroporti_provenienza`, `id_aeroporti_destinazione`, `motivo_viaggio`, `temp_corp`, `cert_no_covid`, `data_cert_no_covid`, `cert_vaccinazione`, `id_esito`, `dazio`, `note`) VALUES
(7, 7, 22, 'ao91249pp', '2021-05-08 00:00:00', '000', 'BRS', 'salute', 36.9, 1, '2021-05-08', 0, 1, '', ''),
(8, 8, 17, 'ai6542536', '2021-05-01 20:36:43', '000', 'LTN', 'studio', 36.1, 1, '2021-04-30', 1, 1, '', ''),
(9, 7, 20, 'as81171kt', '2021-05-01 10:32:54', '000', 'STN', 'studio', 36, 1, '2021-04-29', 1, 1, '', ''),
(10, 7, 16, 'zu3585461', '2021-05-01 11:06:49', '000', 'LTN', 'lavoro', 35.9, 1, '2021-04-29', 1, 1, '', ''),
(11, 6, 17, 'zo42994oq', '2021-05-01 15:39:59', '000', 'LGW', 'stage', 36.9, 1, '2021-04-30', 1, 1, '', ''),
(12, 8, 19, 'zm87723hn', '2021-05-01 11:18:22', '000', 'STN', 'lavoro', 36.5, 0, '2021-04-29', 0, 1, '', ''),
(13, 7, 17, 'ze2101879', '2021-05-01 11:21:42', '000', 'LGW', 'studio', 35.4, 1, '2021-04-30', 1, 1, '', ''),
(14, 7, 18, 'zc7674919', '2021-05-01 14:33:12', '000', 'LGW', 'lavoro', 35, 1, '2021-04-29', 1, 1, '', ''),
(15, 7, 17, 'yw9909433', '2021-05-01 14:35:39', '000', 'LTN', 'lavoro', 36, 0, '2021-04-29', 0, 1, '', ''),
(16, 7, 16, 'yq46215sb', '2021-05-07 00:00:00', '000', 'LTN', 'lavoro', 36.7, 1, '2021-05-05', 0, 1, '', ''),
(17, 7, 17, 'yo88500cb', '2021-05-01 00:00:00', '000', 'LGW', 'stage', 35.9, 1, '2021-04-29', 1, 1, '', ''),
(18, 7, 18, 'yl7520707', '2021-05-01 00:00:00', '000', 'STN', 'lavoro', 37.3, 0, NULL, 1, 1, '', ''),
(19, 8, 19, 'yk8858103', '2021-05-10 00:00:00', '000', 'LGW', 'studio', 37.1, 1, '2021-05-09', 1, 1, '', ''),
(20, 7, 20, 'yg7791753', '2021-05-09 00:00:00', '000', 'LTN', 'studio', 37.4, 1, '2021-05-07', 1, 1, '', ''),
(21, 3, 21, 'yc7324826', '2021-05-05 00:00:00', '000', 'LTN', 'lavoro', 35.9, 1, '2021-05-03', 1, 1, '', ''),
(22, 7, 22, 'xu15101vn', '2021-05-01 00:00:00', '000', 'STN', 'lavoro', 36.7, 1, '2021-04-30', 1, 1, '', ''),
(23, 8, 23, 'xp6334748', '2021-05-10 00:00:00', '000', 'LTN', 'lavoro', 36.9, 1, '2021-05-08', 1, 1, '', ''),
(24, 8, 24, 'xn2128665', '2021-05-01 00:00:00', '000', 'STN', 'lavoro', 37, 1, '2021-04-30', 0, 1, '', ''),
(25, 8, 16, 'xm6554641', '2021-05-11 00:00:00', '000', 'LGW', 'studio', 35.8, 1, '2021-05-09', 1, 1, '', ''),
(26, 8, 17, 'xh70515yy', '2021-05-01 00:00:00', '000', 'STN', 'lavoro', 36.3, 1, '2021-05-09', 1, 1, '', ''),
(27, 7, 18, 'xd83664nx', '2021-05-01 00:00:00', '000', 'LTN', 'lavoro', 37, 1, '2021-04-29', 1, 1, '', ''),
(28, 7, 18, 'xb2414055', '2021-05-01 00:00:00', '000', 'LGW', 'lavoro', 36.9, 1, '2021-04-29', 1, 1, '', ''),
(29, 8, 19, 'ww6659202', '2021-05-12 00:00:00', '000', 'STN', 'lavoro', 37.1, 1, '2021-05-09', 1, 1, '', ''),
(30, 8, 20, 'wk53944qr', '2021-05-07 00:00:00', '000', 'LGW', 'lavoro', 37.3, 1, '2021-05-04', 0, 1, '', ''),
(31, 8, 21, 'vq6756748', '2021-05-09 00:00:00', '000', 'STN', 'lavoro', 37, 1, '2021-05-08', 1, 1, '', ''),
(32, 7, 22, 'vf7577525', '2021-05-04 00:00:00', '000', 'STN', 'studio', 36.8, 1, '2021-05-01', 0, 1, '', ''),
(33, 7, 17, 'vd87657ab', '2021-05-04 00:00:00', '000', 'STN', 'studio', 36, 1, '2021-05-02', 1, 1, '', ''),
(34, 8, 23, 'va5102125', '2021-05-03 00:00:00', '000', 'LGW', 'lavoro', 36.9, 0, NULL, 1, 1, '', ''),
(37, 6, 24, 'uz24868bp', '2021-05-10 00:00:00', '000', 'LGW', 'lavoro', 35.9, 1, '2021-05-09', 0, 1, '', ''),
(38, 7, 23, 'ut85094hl', '2021-05-11 00:00:00', '000', 'LTN', 'studio', 36, 1, '2021-05-09', 1, 1, '', ''),
(39, 8, 22, 'ur1246577', '2021-05-12 00:00:00', '000', 'STN', 'stage', 36.3, 1, '2021-05-09', 1, 1, '', ''),
(40, 7, 16, 'uo55337ru', '2021-05-01 10:18:52', '000', 'LHR', 'lavoro', 35.7, 1, '2021-04-29', 1, 1, '', ''),
(41, 6, 17, 'uk2218161', '2021-05-01 10:20:52', '000', 'LHR', 'stage', 37.1, 1, '2021-04-30', 1, 1, '', ''),
(42, 7, 18, 'ui24851mp', '2021-05-01 10:20:51', '000', 'LHR', 'lavoro', 37.2, 1, '2021-04-30', 1, 1, '', ''),
(43, 8, 19, 'ud21332gi', '2021-05-01 10:20:48', '000', 'LHR', 'studio', 37.3, 1, '2021-04-30', 0, 1, '', ''),
(44, 7, 19, 'ty2625364', '2021-05-01 10:25:26', '000', 'LGW', 'lavoro', 37, 1, '2021-04-29', 1, 1, '', ''),
(45, 7, 19, 'tu68808ih', '2021-05-01 10:31:00', '000', 'LHR', 'lavoro', 36, 1, '2021-04-30', 1, 1, '', ''),
(46, 8, 20, 'tr8385330', '2021-05-01 10:30:56', '000', 'LTN', 'lavoro', 36.3, 1, '2021-04-30', 1, 1, '', ''),
(47, 7, 21, 'tq40901qn', '2021-05-01 10:30:55', '000', 'LGW', 'lavoro', 36.5, 1, '2021-04-29', 1, 1, '', ''),
(48, 9, 22, 'tb5999677', '2021-05-01 10:30:54', '000', 'STN', 'lavoro', 36.9, 1, '2021-04-29', 1, 1, '', ''),
(49, 8, 24, 'ql86563wc', '2021-05-01 10:37:38', '000', 'LGW', 'lavoro', 36.3, 1, '2021-04-29', 1, 1, '', ''),
(50, 8, 23, 'sz70626wl', '2021-05-01 10:36:22', '000', 'LTN', 'studio', 36.5, 1, '2021-04-30', 0, 1, '', ''),
(51, 9, 24, 'st8484302', '2021-05-01 10:36:21', '000', 'STN', 'studio', 36.9, 1, '2021-04-29', 1, 1, '', ''),
(52, 8, 22, 'sf3827753', '2021-05-01 10:36:20', '000', 'STN', 'lavoro', 36.7, 1, '2021-04-30', 1, 1, '', ''),
(53, 8, 21, 'qm8665488', '2021-05-01 10:36:19', '000', 'LHR', 'lavoro', 36, 1, '2021-04-30', 1, 1, '', ''),
(54, 7, 21, 'pu1239021', '2021-05-01 10:42:44', '000', 'LGW', 'studio', 36.5, 1, '2021-04-30', 0, 1, '', ''),
(55, 7, 20, 'pt1862370', '2021-05-01 10:42:42', '000', 'LTN', 'studio', 35, 1, '2021-04-29', 1, 1, '', ''),
(56, 7, 19, 'ps69414jq', '2021-05-01 10:42:41', '000', 'LHR', 'studio', 35.8, 1, '2021-04-29', 1, 1, '', ''),
(57, 7, 18, 'pp71627wn', '2021-05-01 10:42:39', '000', 'LTN', 'lavoro', 35.9, 0, NULL, 1, 1, '', ''),
(58, 7, 16, 'pm98165df', '2021-05-01 10:48:36', '000', 'LTN', 'lavoro', 36.2, 1, '2021-04-29', 1, 1, '', ''),
(59, 7, 17, 'pl64251yl', '2021-05-01 10:48:35', '000', 'LGW', 'studio', 36, 1, '2021-04-29', 0, 1, '', ''),
(60, 7, 18, 'pi49049hz', '2021-05-01 10:48:34', '000', 'STN', 'studio', 37, 1, '2021-04-29', 1, 1, '', ''),
(61, 7, 19, 'pf2049639', '2021-05-01 10:48:33', '000', 'STN', 'stage', 35.1, 1, '2021-04-30', 1, 1, '', ''),
(63, 6, 22, 'at67787wm', '2021-05-01 14:35:39', 'ALC', 'LGW', 'salute', 36.3, 1, '2021-04-29', 1, 3, '', ''),
(64, 4, 24, 'aw98933ec', '2021-05-01 14:36:05', 'ATH', '000', 'studio', 36.3, 1, '2021-04-30', 1, 1, '', ''),
(65, 6, 16, 'bf2385254', '2021-05-01 14:36:36', '000', 'BRU', 'studio', 35.9, 1, '2021-04-30', 0, 2, '', ''),
(66, 7, 22, 'bg17512or', '2021-05-01 14:37:15', '000', 'GLA', 'lavoro', 35.9, 1, '2021-04-30', 0, 1, '', ''),
(67, 8, 23, 'bk3361267', '2021-05-01 14:42:21', 'BCN', 'TLS', 'stage', 36.1, 1, '2021-04-29', 0, 3, '', ''),
(68, 1, 17, 'bp29143rr', '2021-05-01 14:42:51', 'MUC', 'BFS', 'lavoro', 36.2, 1, '2021-04-29', 1, 1, '', ''),
(69, 4, 20, 'bx1082467', '2021-05-01 14:44:02', '000', 'HAJ', 'studio', 37.7, 1, '2021-04-30', 1, 5, '', 'Passeggero con temperatura alterata'),
(70, 5, 19, 'cb58097vw', '2021-05-01 19:04:50', '000', 'LGW', 'lavoro', 35.2, 1, '2021-04-29', 1, 1, '', ''),
(71, 5, 19, 'cj8013991', '2021-05-01 19:04:08', '000', 'AMS', 'lavoro', 36, 0, NULL, 1, 4, '', ''),
(72, 5, 19, 'cn8784676', '2021-05-01 19:03:49', '000', 'LHR', 'lavoro', 36.9, 1, '2021-04-29', 1, 1, '', ''),
(73, 7, 21, 'cw9586899', '2021-05-01 19:03:06', '000', 'LGW', 'stage', 35, 1, '2021-04-29', 1, 1, '', ''),
(74, 7, 21, 'db62887th', '2021-05-01 19:02:38', '000', 'LGW', 'lavoro', 36.5, 1, '2021-04-30', 1, 1, '', ''),
(75, 9, 21, 'dc81798tu', '2021-05-01 19:00:37', '000', 'BRU', 'studio', 37.3, 1, '2021-04-30', 1, 1, '', ''),
(76, 9, 16, 'dm96245qj', '2021-05-01 19:00:12', '000', 'LHR', 'studio', 37, 1, '2021-04-30', 1, 1, '', ''),
(77, 2, 16, 'dq58519gd', '2021-05-01 18:59:52', '000', 'STN', 'lavoro', 35.9, 1, '2021-04-29', 1, 1, '', ''),
(78, 6, 16, 'eq9950392', '2021-05-01 18:59:26', '000', 'LHR', 'lavoro', 36.8, 1, '2021-04-30', 1, 1, '', ''),
(79, 4, 17, 'ev37780sg', '2021-05-01 18:59:00', '000', 'LGW', 'lavoro', 36.9, 1, '2021-04-29', 1, 1, '', ''),
(80, 6, 24, 'ex9340869', '2021-05-01 18:58:09', '000', 'LGW', 'lavoro', 37.2, 1, '2021-04-29', 1, 1, '', ''),
(81, 7, 23, 'fr23839zp', '2021-05-01 18:57:42', '000', 'BRS', 'studio', 35.4, 1, '2021-04-30', 1, 1, '', ''),
(82, 8, 23, 'fz8664101', '2021-05-01 18:57:15', '000', 'CPH', 'lavoro', 36.2, 1, '2021-04-30', 1, 1, '', ''),
(83, 1, 22, 'gb68645qz', '2021-05-01 18:56:35', '000', 'GLA', 'lavoro', 36.6, 1, '2021-04-29', 1, 2, '', ''),
(84, 4, 24, 'gd56021zt', '2021-05-01 18:56:03', '000', 'STN', 'lavoro', 36, 1, '2021-04-29', 1, 1, '', ''),
(85, 5, 16, 'gf5227609', '2021-05-01 18:55:05', '000', 'FUE', 'lavoro', 36.7, 1, '2021-04-29', 1, 1, '', ''),
(86, 5, 22, 'gr81469ps', '2021-05-01 18:53:41', '000', 'LHR', 'lavoro', 37.1, 1, '2021-04-30', 1, 4, '', ''),
(87, 5, 23, 'hh36797on', '2021-05-01 18:52:27', '000', 'LHR', 'lavoro', 37, 1, '2021-04-30', 1, 1, '', ''),
(88, 7, 17, 'hq14012wg', '2021-05-01 18:51:58', '000', 'STN', 'studio', 35.9, 1, '2021-04-30', 1, 1, '', ''),
(89, 7, 20, 'hw35553qm', '2021-05-01 18:51:16', '000', 'DUB', 'studio', 36.3, 1, '2021-04-30', 1, 3, '', ''),
(90, 9, 19, 'id5695663', '2021-05-01 19:22:37', '000', 'LHR', 'lavoro', 36.8, 1, '2021-04-30', 1, 1, '', ''),
(91, 9, 19, 'iq7361751', '2021-05-01 19:22:16', '000', 'GLA', 'lavoro', 35, 1, '2021-04-29', 1, 1, '', ''),
(92, 2, 19, 'iv4743252', '2021-05-01 19:21:58', 'ATH', 'BRU', 'studio', 36, 1, '2021-04-30', 1, 1, '', ''),
(93, 6, 21, 'iy73797pr', '2021-05-01 19:20:51', '000', 'ORY', 'stage', 36.2, 1, '2021-04-29', 1, 1, '', ''),
(94, 4, 21, 'jg17512cn', '2021-05-01 19:19:59', '000', 'LTN', 'lavoro', 35.1, 1, '2021-04-30', 1, 4, '', ''),
(95, 6, 21, 'jk9767304', '2021-05-01 19:19:05', 'LIN', 'FCO', 'stage', 37, 1, '2021-04-29', 1, 1, '', ''),
(96, 7, 16, 'jl1912970', '2021-05-01 19:18:32', '000', 'LTN', 'lavoro', 37, 1, '2021-04-30', 1, 1, '', ''),
(97, 8, 16, 'jn8739000', '2021-05-01 19:18:05', '000', 'LGW', 'studio', 37.5, 0, NULL, 1, 5, '', 'Passeggero con temperatura alterata'),
(98, 1, 16, 'ju19214fm', '2021-05-01 19:17:28', 'LTN', 'CRL', 'lavoro', 37, 1, '2021-04-30', 1, 1, '', ''),
(99, 4, 17, 'jv8795475', '2021-05-01 19:16:56', '000', 'LGW', 'lavoro', 35.9, 1, '2021-04-29', 1, 1, '', ''),
(100, 5, 24, 'kb21193bo', '2021-05-01 19:16:30', '000', 'IBZ', 'lavoro', 37.4, 1, '2021-04-29', 1, 6, '', ''),
(101, 5, 23, 'kk61981wu', '2021-05-01 19:15:59', '000', 'LHR', 'lavoro', 36.7, 1, '2021-04-30', 1, 1, '', ''),
(102, 5, 23, 'km8692765', '2021-05-01 19:15:35', '000', 'LTN', 'lavoro', 36, 1, '2021-04-30', 1, 1, '', ''),
(103, 7, 22, 'kp3315125', '2021-05-01 19:15:08', '000', 'GVA', 'lavoro', 36.1, 0, NULL, 1, 1, '', ''),
(104, 7, 24, 'kz5594547', '2021-05-01 19:14:24', 'BHX', 'BFS', 'studio', 35.5, 1, '2021-04-30', 1, 3, '', ''),
(105, 9, 16, 'la6723880', '2021-05-01 19:10:12', 'IBZ', 'LIN', 'studio', 36, 1, '2021-04-30', 1, 1, '', ''),
(106, 9, 22, 'lc11488dp', '2021-05-01 19:09:28', 'BHX', 'BUD', 'lavoro', 37.2, 1, '2021-04-29', 1, 2, '', ''),
(107, 2, 23, 'li54271vz', '2021-05-01 19:08:43', 'ACE', 'GLA', 'lavoro', 36.9, 1, '2021-04-29', 1, 1, '', ''),
(108, 6, 17, 'ln9235199', '2021-05-01 19:08:03', 'CDG', 'LTN', 'studio', 36.8, 1, '2021-04-30', 1, 1, '', ''),
(109, 4, 20, 'lo89625vb', '2021-05-01 19:07:17', '000', 'STN', 'studio', 37.6, 1, '2021-04-30', 1, 5, '', 'Passeggero con temperatura alterata'),
(110, 6, 19, 'mc6907651', '2021-05-01 18:07:57', 'CPH', 'LGW', 'studio', 35.9, 1, '2021-04-29', 1, 2, '', ''),
(111, 7, 19, 'mf87325kk', '2021-05-01 18:09:57', '000', 'DUB', 'lavoro', 35.8, 1, '2021-04-29', 1, 1, '', ''),
(112, 8, 19, 'mi70932su', '2021-05-01 18:09:35', 'IBZ', 'LHR', 'lavoro', 36.3, 1, '2021-04-30', 1, 3, '', 'Dimensione 70 x60'),
(113, 1, 21, 'mj3679534', '2021-05-01 18:12:05', '000', 'LGW', 'studio', 36.8, 0, '2021-04-30', 1, 4, '', 'Non ha il certificato no covid'),
(114, 4, 21, 'mk69307pi', '2021-05-01 18:08:34', '000', 'OSL', 'studio', 37.8, 0, NULL, 1, 5, '', 'Passeggero con temperatura alterata'),
(115, 5, 21, 'mo8846621', '2021-05-01 18:11:16', 'FUE', '000', 'stage', 37.7, 1, '2021-04-29', 1, 5, '', 'Passeggero con temperatura alterata'),
(116, 5, 16, 'mp40965gu', '2021-05-01 18:08:52', '000', 'BSL', 'salute', 36, 1, '2021-04-30', 1, 1, '', ''),
(117, 5, 16, 'ms3527326', '2021-05-01 18:10:18', 'AMS', '000', 'studio', 36, 1, '2021-04-29', 0, 1, '', ''),
(118, 7, 16, 'mt32691hc', '2021-05-01 18:06:53', 'VIE', '000', 'studio', 36, 1, '2021-04-30', 1, 1, '', ''),
(119, 7, 17, 'nh59054tj', '2021-05-01 18:06:33', '000', 'LPA', 'lavoro', 36.4, 1, '2021-04-29', 1, 1, '', ''),
(120, 9, 24, 'ni46798wt', '2021-05-01 18:00:53', 'BHX', 'ORY', 'stage', 35.7, 0, NULL, 1, 1, '', ''),
(121, 9, 23, 'nr93608qv', '2021-05-01 18:00:41', '000', 'LHR', 'lavoro', 36.1, 1, '2021-04-30', 1, 1, '', ''),
(122, 6, 23, 'og90361fn', '2021-05-01 18:00:30', 'EDI', '000', 'studio', 36.4, 1, '2021-04-29', 0, 1, '', ''),
(123, 7, 16, 'ok3198542', '2021-05-01 17:52:19', 'ARN', 'LGW', 'lavoro', 35, 1, '2021-04-29', 1, 1, '', ''),
(124, 7, 20, 'oo37093yz', '2021-05-01 17:51:53', '000', 'LCA', 'lavoro', 35.8, 1, '2021-04-30', 1, 1, '', ''),
(125, 9, 21, 'op4855456', '2021-05-01 14:05:01', 'AGP', 'LTN', 'lavoro', 35.9, 1, '2021-04-30', 1, 1, '', ''),
(126, 9, 21, 'or52827lh', '2021-05-01 14:00:58', '000', 'LHR', 'stage', 35.8, 1, '2021-04-29', 1, 2, '', ''),
(127, 8, 22, 'pb15101ix', '2021-05-01 14:00:12', '000', 'LGW', 'lavoro', 37.7, 1, '2021-04-30', 1, 5, '', 'Passeggero con temperatura alterata'),
(128, 8, 17, 'pd53825xu', '2021-05-01 13:58:33', '000', 'BOD', 'studio', 37, 1, '2021-04-30', 1, 2, '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `cura`
--

CREATE TABLE IF NOT EXISTS `cura` (
  `co_medico` char(15) DEFAULT NULL,
  `co_paziente` char(15) DEFAULT NULL,
  `diagnosi` char(15) DEFAULT NULL,
  `cod_cura` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_cura`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=11 ;

--
-- Dump dei dati per la tabella `cura`
--

INSERT INTO `cura` (`co_medico`, `co_paziente`, `diagnosi`, `cod_cura`) VALUES
('1', '10', 'influenza', 1),
('10', '3', 'influenza', 2),
('3', '8', 'artrite', 3),
('2', '5', 'influenza', 4),
('4', '6', 'rottura', 5),
('5', '7', 'frattura', 6),
('6', '4', 'insufficienza', 7),
('7', '9', 'frattura', 8),
('8', '1', 'influenza', 9),
('9', '2', 'frattura', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `esiti`
--

CREATE TABLE IF NOT EXISTS `esiti` (
  `id_esito` int NOT NULL AUTO_INCREMENT,
  `esito` varchar(50) NOT NULL,
  PRIMARY KEY (`id_esito`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `esiti`
--

INSERT INTO `esiti` (`id_esito`, `esito`) VALUES
(1, 'Nessuna segnalazione'),
(2, 'Merce non consentita'),
(3, 'Peso dimensione bagaglio'),
(4, 'Irreg. cert. no COVID'),
(5, 'Temperatura > 37.5'),
(6, 'Documento scaduto');

-- --------------------------------------------------------

--
-- Struttura della tabella `funzionari`
--

CREATE TABLE IF NOT EXISTS `funzionari` (
  `id_funzionario` int NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `utente` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_funzionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `funzionari`
--

INSERT INTO `funzionari` (`id_funzionario`, `cognome`, `nome`, `utente`, `password`) VALUES
(1, 'odella', 'rita', 'odella', 'c09c8cddf65396afaf5f3a75de154071'),
(2, 'finocchi', 'franco', 'finocchi', '1fd1705f04f5bfe4397e16ed8dbd11a3'),
(3, 'mitu', 'antonino', 'mitu', '666bd6615044a8d6e2b7161467994bd3'),
(4, 'pappone', 'daniele', 'pappone', 'a7c28050c372eb307214a3c919cb133b'),
(5, 'oricco', 'luigi', 'oricco', '0a2375314ceaf8af3b56b9be31eb0353'),
(6, 'fuser', 'elisabetta', 'fuser', '21404fb878132686a2ff8e6cfce1a5f0'),
(7, 'zampini', 'diego', 'zampini', 'b20d5e9b1b277b6757e8a8d9fb797bb5'),
(8, 'glazai', 'dafne', 'glazai', '15e3e9831edd78a2f0605a965bb38094'),
(9, 'canuti', 'iulia', 'canuti', '8a5c74b5ba3ffbda5ea32d2a0b1185cb');

-- --------------------------------------------------------

--
-- Struttura della tabella `medico`
--

CREATE TABLE IF NOT EXISTS `medico` (
  `cognome` char(15) DEFAULT NULL,
  `nome` char(15) DEFAULT NULL,
  `parcella` int DEFAULT NULL,
  `citta` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cod_medico` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_medico`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=11 ;

--
-- Dump dei dati per la tabella `medico`
--

INSERT INTO `medico` (`cognome`, `nome`, `parcella`, `citta`, `cod_medico`) VALUES
('rossi', 'mario', 230, 'milano', 1),
('verdi', 'mario', 15, 'roma', 2),
('viola', 'valerio', 77, 'roma', 3),
('nucci', 'mauro', 22, 'piemonte', 4),
('simone', 'alessio', 55, 'firenze', 5),
('ugolini', 'gianluca', 10, 'udine', 6),
('marzano', 'davide', 23, 'palermo', 7),
('tamouh', 'samuele', 57, 'genova', 8),
('mastroddi', 'valentino', 34, 'aquila', 9),
('marian', 'federico', 230, 'milano', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `merci`
--

CREATE TABLE IF NOT EXISTS `merci` (
  `id_merce` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_controllo` int NOT NULL,
  `descrizione` varchar(50) NOT NULL,
  `quantita` int NOT NULL,
  PRIMARY KEY (`id_merce`),
  KEY `FK_merci_categorie_merci` (`id_categoria`),
  KEY `FK_merci_controlli` (`id_controllo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dump dei dati per la tabella `merci`
--

INSERT INTO `merci` (`id_merce`, `id_categoria`, `id_controllo`, `descrizione`, `quantita`) VALUES
(1, 1, 7, 'Giacche', 5),
(2, 2, 8, 'Ibuprofene', 3),
(3, 3, 9, 'Pasta', 10),
(4, 5, 10, 'Orecchini', 20),
(5, 4, 15, 'Computer', 4),
(6, 4, 17, 'Smartphone', 7),
(7, 5, 19, 'Anelli', 6),
(8, 6, 21, 'Dollari', 10000),
(9, 1, 20, 'pantaloni', 10),
(10, 2, 23, 'Paracetamolo', 5),
(11, 6, 25, 'Sterline', 11000),
(12, 3, 16, 'Pelati', 10),
(13, 4, 12, 'Cellulari', 9),
(14, 2, 13, 'Antibiotici', 20),
(15, 5, 38, 'Orologi', 15),
(16, 3, 42, 'Tonno', 18),
(17, 1, 47, 'Camicie', 25),
(18, 5, 40, 'Bracciali', 30),
(19, 2, 18, 'Antistaminici', 40),
(20, 6, 69, 'Franco', 500);

-- --------------------------------------------------------

--
-- Struttura della tabella `nazione`
--

CREATE TABLE IF NOT EXISTS `nazione` (
  `id_nazione` int NOT NULL AUTO_INCREMENT,
  `nazione` varchar(128) NOT NULL,
  PRIMARY KEY (`id_nazione`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=250 ;

--
-- Dump dei dati per la tabella `nazione`
--

INSERT INTO `nazione` (`id_nazione`, `nazione`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Anguilla'),
(7, 'Antartide'),
(8, 'Antigua e Barbuda'),
(9, 'Arabia Saudita'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaigian'),
(16, 'Bahamas'),
(17, 'Bahrein'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belgio'),
(21, 'Belize'),
(22, 'Benin'),
(23, 'Bermuda'),
(24, 'Bhutan'),
(25, 'Bielorussiai'),
(26, 'Birmania'),
(27, 'Bolivia'),
(28, 'Bosnia ed Erzegovina'),
(29, 'Botswana'),
(30, 'Brasile'),
(31, 'Brunei'),
(32, 'Bulgaria'),
(33, 'Burkina Faso'),
(34, 'Burundi'),
(35, 'Cambogia'),
(36, 'Camerun'),
(37, 'Canada'),
(38, 'Capo Verde'),
(39, 'Ciad'),
(40, 'Cile'),
(41, 'Cina'),
(42, 'Cipro'),
(44, 'Colombia'),
(45, 'Comore'),
(46, 'Corea del Nord'),
(47, 'Corea del Sud'),
(48, 'Costa d''Avorio'),
(49, 'Costa Rica'),
(50, 'Croazia'),
(51, 'Cuba'),
(52, 'Cura'),
(53, 'Danimarca'),
(54, 'Dominica'),
(55, 'Ecuador'),
(56, 'Egitto'),
(57, 'El Salvador'),
(58, 'Emirati Arabi Uniti'),
(59, 'Eritrea'),
(60, 'Estonia'),
(61, 'Etiopia'),
(62, 'Figi'),
(63, 'Filippine'),
(64, 'Finlandia'),
(65, 'Francia'),
(66, 'Gabon'),
(67, 'Gambia'),
(68, 'Georgia'),
(70, 'Germania'),
(71, 'Ghana'),
(72, 'Giamaica'),
(73, 'Giappone'),
(74, 'Gibilterra'),
(75, 'Gibuti'),
(76, 'Giordania'),
(77, 'Grecia'),
(78, 'Grenada'),
(79, 'Groenlandia'),
(80, 'Guadalupa'),
(81, 'Guam'),
(82, 'Guatemala'),
(83, 'Guernsey'),
(84, 'Guinea'),
(85, 'Guinea-Bissau'),
(86, 'Guinea Equatoriale'),
(87, 'Guyana'),
(88, 'Guyana francese'),
(89, 'Haiti'),
(90, 'Honduras'),
(91, 'Hong Kong'),
(92, 'India'),
(93, 'Indonesia'),
(94, 'Iran'),
(95, 'Iraq'),
(96, 'Irlanda'),
(97, 'Islanda'),
(98, 'Isola Bouvet'),
(99, 'Isola di Man'),
(100, 'Isola di Natale'),
(101, 'Isola Norfolk'),
(103, 'Isole BES'),
(104, 'Isole Cayman'),
(105, 'Isole Cocos'),
(106, 'Isole Cook'),
(108, 'Isole Falkland'),
(109, 'Isole Heard e McDonald'),
(110, 'Isole Marianne Settentrionali'),
(111, 'Isole Marshall'),
(113, 'Isole Pitcairn'),
(114, 'Isole Salomone'),
(115, 'Isole Vergini'),
(117, 'Israele'),
(118, 'Italia'),
(119, 'Jersey'),
(120, 'Kazakistan'),
(121, 'Kenya'),
(122, 'Kirghizistan'),
(123, 'Kiribati'),
(124, 'Kuwait'),
(125, 'Laos'),
(126, 'Lesotho'),
(127, 'Lettonia'),
(128, 'Libano'),
(129, 'Liberia'),
(130, 'Libia'),
(131, 'Liechtenstein'),
(132, 'Lituania'),
(133, 'Lussemburgo'),
(134, 'Macao'),
(135, 'Macedonia'),
(136, 'Madagascar'),
(137, 'Malawi'),
(138, 'Malesia'),
(139, 'Maldive'),
(140, 'Mali'),
(141, 'Malta'),
(142, 'Marocco'),
(143, 'Martinica'),
(144, 'Mauritania'),
(145, 'Mauritius'),
(146, 'Mayotte'),
(147, 'Messico'),
(148, 'Micronesia'),
(149, 'Moldavia'),
(150, 'Mongolia'),
(151, 'Montenegro'),
(152, 'Montserrat'),
(153, 'Mozambico'),
(154, 'Namibia'),
(155, 'Nauru'),
(156, 'Nepal'),
(157, 'Nicaragua'),
(158, 'Niger'),
(159, 'Nigeria'),
(160, 'Niue'),
(161, 'Norvegia'),
(162, 'Nuova Caledonia'),
(163, 'Nuova Zelanda'),
(164, 'Oman'),
(165, 'Paesi Bassi'),
(166, 'Pakistan'),
(167, 'Palau'),
(168, 'Palestina'),
(169, 'Panam'),
(170, 'Papua Nuova Guinea'),
(171, 'Paraguay'),
(173, 'Polinesia Francese'),
(174, 'Polonia'),
(175, 'Porto Rico'),
(176, 'Portogallo'),
(177, 'Monaco'),
(178, 'Qatar'),
(179, 'Regno Unito'),
(180, 'RD del Congo'),
(181, 'Rep. Ceca'),
(182, 'Rep. Centrafricana'),
(183, 'Rep. del Congo'),
(184, 'Rep. Dominicana'),
(185, 'Riunione'),
(186, 'Romania'),
(187, 'Ruanda'),
(188, 'Russia'),
(189, 'Sahara Occidentale'),
(190, 'Saint Kitts e Nevis'),
(191, 'Santa Lucia'),
(192, 'Sant''Elena, Ascensione e Tristan da Cunha'),
(193, 'Saint Vincent e Grenadine'),
(194, 'Saint-Barth'),
(195, 'Saint-Martin'),
(196, 'Saint-Pierre e Miquelon'),
(197, 'Samoa'),
(199, 'San Marino'),
(201, 'Senegal'),
(202, 'Serbia'),
(203, 'Seychelles'),
(204, 'Sierra Leone'),
(205, 'Singapore'),
(206, 'Sint Maarten'),
(207, 'Siria'),
(208, 'Slovacchia'),
(209, 'Slovenia'),
(210, 'Somalia'),
(211, 'Spagna'),
(212, 'Sri Lanka'),
(213, 'Stati Uniti'),
(214, 'Sudafrica'),
(215, 'Sudan'),
(216, 'Sudan del Sud'),
(217, 'Suriname'),
(218, 'Svalbard e Jan Mayen'),
(219, 'Svezia'),
(220, 'Svizzera'),
(221, 'Swaziland'),
(222, 'Taiwan'),
(223, 'Tagikistan'),
(224, 'Tanzania'),
(227, 'Thailandia'),
(228, 'Timor Est'),
(229, 'Togo'),
(230, 'Tokelau'),
(231, 'Tonga'),
(232, 'Trinidad e Tobago'),
(233, 'Tunisia'),
(234, 'Turchia'),
(235, 'Turkmenistan'),
(236, 'Turks e Caicos'),
(237, 'Tuvalu'),
(238, 'Ucraina'),
(239, 'Uganda'),
(240, 'Ungheria'),
(241, 'Uruguay'),
(242, 'Uzbekistan'),
(243, 'Vanuatu'),
(244, 'Venezuela'),
(245, 'Vietnam'),
(246, 'Wallis e Futuna'),
(247, 'Yemen'),
(248, 'Zambia'),
(249, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struttura della tabella `passeggeri`
--

CREATE TABLE IF NOT EXISTS `passeggeri` (
  `id_passeg` varchar(10) NOT NULL,
  `tipo_doc` varchar(25) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_nazione` int NOT NULL,
  PRIMARY KEY (`id_passeg`),
  KEY `FK_passeggeri_nazione` (`id_nazione`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `passeggeri`
--

INSERT INTO `passeggeri` (`id_passeg`, `tipo_doc`, `cognome`, `nome`, `id_nazione`) VALUES
('ai6542536', 'passaporto', 'morando', 'alice', 70),
('ao91249pp', 'carta di identita', 'amerio', 'francesca', 118),
('as81171kt', 'carta di identita', 'sinani', 'graziella', 118),
('at67787wm', 'passaporto', 'marmo', 'valentina', 186),
('aw98933ec', 'passaporto', 'bresciani', 'gabriella', 186),
('bf2385254', 'passaporto', 'marku', 'luciano', 65),
('bg17512or', 'passaporto', 'porcellana', 'nicolo''', 211),
('bk3361267', 'passaporto', 'testa', 'carmela', 176),
('bp29143rr', 'carta di identita', 'rosso', 'antonio', 118),
('bx1082467', 'passaporto', 'quaglia', 'eleonora', 211),
('cb58097vw', 'carta di identita', 'maschio', 'enrico', 118),
('cj8013991', 'passaporto', 'carbone', 'rosa', 65),
('cn8784676', 'passaporto', 'sacco', 'margherita', 211),
('cw9586899', 'passaporto', 'avidano', 'giovanna', 176),
('db62887th', 'passaporto', 'forno', 'monica', 186),
('dc81798tu', 'carta di identita', 'risso', 'angela', 118),
('dm96245qj', 'carta di identita', 'valpreda', 'rita', 118),
('dq58519gd', 'passaporto', 'rainero', 'luciana', 186),
('eq9950392', 'passaporto', 'penna', 'stefano', 211),
('ev37780sg', 'carta di identita', 'monticone', 'chiara', 118),
('ex9340869', 'passaporto', 'conti', 'alessandro', 211),
('fr23839zp', 'carta di identita', 'longo', 'daniele', 118),
('fz8664101', 'passaporto', 'valente', 'elisa', 65),
('gb68645qz', 'carta di identita', 'palumbo', 'salvatore', 118),
('gd56021zt', 'carta di identita', 'roasio', 'marina', 118),
('gf5227609', 'passaporto', 'maggiora', 'carla', 176),
('gr81469ps', 'carta di identita', 'morra', 'laura', 118),
('hh36797on', 'passaporto', 'arri', 'stefania', 118),
('hq14012wg', 'passaporto', 'gentile', 'gianluca', 118),
('hw35553qm', 'carta di identita', 'macagno', 'giacomo', 118),
('id5695663', 'passaporto', 'borio', 'angelo', 65),
('iq7361751', 'passaporto', 'ferrero', 'marco', 176),
('iv4743252', 'passaporto', 'nebiolo', 'riccardo', 65),
('iy73797pr', 'carta di identita', 'perosino', 'alberto', 118),
('jg17512cn', 'carta di identita', 'pia', 'cinzia', 118),
('jk9767304', 'passaporto', 'montrucchio', 'simona', 176),
('jl1912970', 'passaporto', 'capra', 'christian', 65),
('jn8739000', 'passaporto', 'graziano', 'mario', 65),
('ju19214fm', 'carta di identita', 'ferraro', 'filippo', 118),
('jv8795475', 'passaporto', 'cavallo', 'piero', 176),
('kb21193bo', 'carta di identita', 'bruno', 'sara', 118),
('kk61981wu', 'carta di identita', 'negro', 'giulia', 118),
('km8692765', 'passaporto', 'giuliano', 'marisa', 65),
('kp3315125', 'passaporto', 'rossi', 'maurizio', 70),
('kz5594547', 'passaporto', 'cotto', 'gabriele', 70),
('la6723880', 'passaporto', 'bassi', 'elisabetta', 65),
('lc11488dp', 'carta di identita', 'perrone', 'gianfranco', 118),
('li54271vz', 'carta di identita', 'giordano', 'antonella', 118),
('ln9235199', 'passaporto', 'gallo', 'giovanni', 176),
('lo89625vb', 'carta di identita', 'bosia', 'franco', 118),
('mc6907651', 'passaporto', 'schillaci', 'patrizia', 118),
('mf87325kk', 'carta di identita', 'raviola', 'paolo', 118),
('mi70932su', 'carta di identita', 'vercelli', 'sergio', 118),
('mj3679534', 'passaporto', 'accornero', 'mauro', 176),
('mk69307pi', 'carta di identita', 'grasso', 'matteo', 186),
('mo8846621', 'passaporto', 'di marco', 'fabrizio', 118),
('mp40965gu', 'carta di identita', 'lamberti', 'irene', 118),
('ms3527326', 'passaporto', 'brignolo', 'federico', 65),
('mt32691hc', 'carta di identita', 'serra', 'vincenzo', 118),
('nh59054tj', 'carta di identita', 'binello', 'lorenzo', 118),
('ni46798wt', 'carta di identita', 'marello', 'simone', 186),
('nr93608qv', 'carta di identita', 'cortese', 'rosanna', 186),
('og90361fn', 'carta di identita', 'cestari', 'barbara', 118),
('ok3198542', 'passaporto', 'biamino', 'federica', 118),
('oo37093yz', 'carta di identita', 'trinchero', 'lucia', 118),
('op4855456', 'passaporto', 'rizzo', 'carlo', 118),
('or52827lh', 'carta di identita', 'romano', 'valeria', 118),
('pb15101ix', 'carta di identita', 'gatti', 'beatrice', 186),
('pd53825xu', 'carta di identita', 'martinengo', 'sabrina', 118),
('pf2049639', 'passaporto', 'fornaca', 'cristina', 65),
('pi49049hz', 'carta di identita', 'saracco', 'giorgio', 118),
('pl64251yl', 'passaporto', 'falletta', 'alessandra', 118),
('pm98165df', 'passaporto', 'tabaku', 'tommaso', 118),
('pp71627wn', 'carta di identita', 'lombardo', 'martina', 118),
('ps69414jq', 'carta di identita', 'rissone', 'massimo', 118),
('pt1862370', 'passaporto', 'beganovic', 'alessia', 118),
('pu1239021', 'passaporto', 'bo', 'teresa', 65),
('ql86563wc', 'carta di identita', 'ferraris', 'giuseppina', 118),
('qm8665488', 'passaporto', 'quirico', 'giancarlo', 118),
('sf3827753', 'passaporto', 'calosso', 'manuela', 70),
('st8484302', 'passaporto', 'masoero', 'leonardo', 70),
('sz70626wl', 'carta di identita', 'lazzaro', 'franca', 118),
('tb5999677', 'passaporto', 'viarengo', 'francesco', 118),
('tq40901qn', 'carta di identita', 'pavese', 'silvia', 118),
('tr8385330', 'passaporto', 'russo', 'daniela', 118),
('tu68808ih', 'carta di identita', 'boano', 'pietro', 118),
('ty2625364', 'passaporto', 'bianco', 'roberto', 65),
('ud21332gi', 'passaporto', 'marino', 'davide', 118),
('ui24851mp', 'passaporto', 'costa', 'giorgia', 118),
('uk2218161', 'passaporto', 'barbero', 'paola', 211),
('uo55337ru', 'carta di identita', 'bosticco', 'silvana', 118),
('ur1246577', 'passaporto', 'argenta', 'edoardo', 118),
('ut85094hl', 'carta di identita', 'marchisio', 'claudia', 118),
('uz24868bp', 'carta di identita', 'falcone', 'claudio', 118),
('va5102125', 'passaporto', 'hoxha', 'fabio', 176),
('vd87657ab', 'carta di identita', 'molino', 'ilaria', 118),
('vf7577525', 'passaporto', 'franco', 'anna maria', 176),
('vq6756748', 'passaporto', 'seferovic', 'andrea', 176),
('wk53944qr', 'carta di identita', 'scozzaro', 'bruno', 118),
('ww6659202', 'passaporto', 'boero', 'domenico', 118),
('xb2414055', 'passaporto', 'valenzano', 'tiziana', 118),
('xd83664nx', 'passaporto', 'massano', 'antonietta', 186),
('xh70515yy', 'passaporto', 'cerrato', 'maria', 186),
('xm6554641', 'passaporto', 'lamattina', 'maria teresa', 118),
('xn2128665', 'passaporto', 'fassio', 'luca', 118),
('xp6334748', 'passaporto', 'fassone', 'caterina', 118),
('xu15101vn', 'passaporto', 'bertolino', 'renato', 118),
('yc7324826', 'passaporto', 'barberis', 'giuseppa', 118),
('yg7791753', 'passaporto', 'cavallero', 'sofia', 211),
('yk8858103', 'passaporto', 'finotto', 'bruna', 118),
('yl7520707', 'passaporto', 'borello', 'diego', 176),
('yo88500cb', 'carta di identita', 'nosenzo', 'elena', 118),
('yq46215sb', 'passaporto', 'torchio', 'anna', 186),
('yw9909433', 'passaporto', 'mancuso', 'roberta', 211),
('zc7674919', 'passaporto', 'gonella', 'michele', 65),
('ze2101879', 'passaporto', 'pellitteri', 'alessio', 211),
('zm87723hn', 'carta di identita', 'moro', 'aurora', 118),
('zo42994oq', 'carta di identita', 'gai', 'mattia', 118),
('zu3585461', 'passaporto', 'gamba', 'luigi', 118);

-- --------------------------------------------------------

--
-- Struttura della tabella `paziente`
--

CREATE TABLE IF NOT EXISTS `paziente` (
  `cognome` char(15) DEFAULT NULL,
  `nome` char(15) DEFAULT NULL,
  `eta` tinyint DEFAULT NULL,
  `citta` char(15) DEFAULT NULL,
  `cod_paziente` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cod_paziente`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci AUTO_INCREMENT=11 ;

--
-- Dump dei dati per la tabella `paziente`
--

INSERT INTO `paziente` (`cognome`, `nome`, `eta`, `citta`, `cod_paziente`) VALUES
('rossi', 'neri', 30, 'milano', 1),
('rossi', 'verdi', 45, 'roma', 2),
('rossi', 'viola', 70, 'udine', 3),
('viola', 'neri', 12, 'torino', 4),
('viola', 'neri', 13, 'palermo', 5),
('rossi', 'mauro', 15, 'cagliari', 6),
('bianchi', 'alessio', 17, 'milano', 7),
('bianchi', 'valerio', 23, 'roma', 8),
('verdi', 'rosario', 25, 'udine', 9),
('rossi', 'neri', 47, 'torino', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `punti_controllo`
--

CREATE TABLE IF NOT EXISTS `punti_controllo` (
  `id_pcontrollo` int NOT NULL AUTO_INCREMENT,
  `id_funzionario` int NOT NULL DEFAULT '0',
  `pcontrollo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pcontrollo`),
  KEY `FK_punti_controllo_funzionari` (`id_funzionario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `punti_controllo`
--

INSERT INTO `punti_controllo` (`id_pcontrollo`, `id_funzionario`, `pcontrollo`) VALUES
(1, 9, 'PC01'),
(2, 2, 'PC02'),
(3, 6, 'PC03'),
(4, 8, 'PC04'),
(5, 3, 'PC05'),
(6, 1, 'PC06'),
(7, 5, 'PC07'),
(8, 7, 'PC08'),
(9, 4, 'PC09');

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `controlli`
--
ALTER TABLE `controlli`
  ADD CONSTRAINT `controlli_ibfk_1` FOREIGN KEY (`id_addetto`) REFERENCES `addetti` (`id_addetto`),
  ADD CONSTRAINT `controlli_ibfk_2` FOREIGN KEY (`id_aeroporti_provenienza`) REFERENCES `aeroporti` (`id_aeroporto`),
  ADD CONSTRAINT `controlli_ibfk_3` FOREIGN KEY (`id_aeroporti_destinazione`) REFERENCES `aeroporti` (`id_aeroporto`),
  ADD CONSTRAINT `controlli_ibfk_4` FOREIGN KEY (`id_esito`) REFERENCES `esiti` (`id_esito`),
  ADD CONSTRAINT `controlli_ibfk_5` FOREIGN KEY (`id_passeg`) REFERENCES `passeggeri` (`id_passeg`),
  ADD CONSTRAINT `controlli_ibfk_6` FOREIGN KEY (`id_pcontrollo`) REFERENCES `punti_controllo` (`id_pcontrollo`);

--
-- Limiti per la tabella `merci`
--
ALTER TABLE `merci`
  ADD CONSTRAINT `FK_merci_categorie_merci` FOREIGN KEY (`id_categoria`) REFERENCES `categorie_merci` (`id_categoria`),
  ADD CONSTRAINT `FK_merci_controlli` FOREIGN KEY (`id_controllo`) REFERENCES `controlli` (`id_controllo`);

--
-- Limiti per la tabella `passeggeri`
--
ALTER TABLE `passeggeri`
  ADD CONSTRAINT `FK_passeggeri_nazione` FOREIGN KEY (`id_nazione`) REFERENCES `nazione` (`id_nazione`);

--
-- Limiti per la tabella `punti_controllo`
--
ALTER TABLE `punti_controllo`
  ADD CONSTRAINT `FK_punti_controllo_funzionari` FOREIGN KEY (`id_funzionario`) REFERENCES `funzionari` (`id_funzionario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
