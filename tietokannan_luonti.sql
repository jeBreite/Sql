-- --------------------------------------------------------
-- Verkkotietokone:              127.0.0.1
-- Palvelinversio:               10.5.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Versio:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for kotikirjasto
CREATE DATABASE IF NOT EXISTS `kotikirjasto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kotikirjasto`;

-- Dumping structure for taulu kotikirjasto.arviot
CREATE TABLE IF NOT EXISTS `arviot` (
  `tahti_luokitus` enum('*','**','***','****','*****') DEFAULT NULL,
  `sanallinen_arvio` varchar(1000) DEFAULT NULL,
  `nimike_ID` int(11) NOT NULL,
  KEY `nimike_ID` (`nimike_ID`),
  CONSTRAINT `arviot_ibfk_1` FOREIGN KEY (`nimike_ID`) REFERENCES `nimikkeet` (`nimike_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.arviot: ~98 rows (suunnilleen)
/*!40000 ALTER TABLE `arviot` DISABLE KEYS */;
INSERT INTO `arviot` (`tahti_luokitus`, `sanallinen_arvio`, `nimike_ID`) VALUES
	(NULL, NULL, 1),
	(NULL, NULL, 2),
	('***', NULL, 3),
	('****', NULL, 4),
	('***', NULL, 5),
	('*****', 'Menee varmasti TOP10 tämän vuoden luetuista kirjoista.', 6),
	('****', NULL, 7),
	('****', NULL, 8),
	('***', 'Alussa kirjoittajan liian kuvaileva tyyli häiritsi.', 9),
	('****', 'Eräänlainen 2010-luvun tuhkimotarina, jäi mieleen hyvällä tavalla.', 10),
	('****', NULL, 11),
	('****', NULL, 12),
	('***', NULL, 13),
	('***', NULL, 14),
	('*****', NULL, 15),
	('****', NULL, 16),
	('****', 'Mieleenpainuva, erilainen rakkaustarina.', 17),
	('***', NULL, 18),
	('****', NULL, 19),
	('****', NULL, 20),
	('****', NULL, 21),
	('*****', NULL, 22),
	('*****', 'Raastava selviytymistarina, jäi pyörimään ajatuksiin pitkäksi aikaa.', 23),
	('*****', NULL, 24),
	('****', 'Ajankohtaista ja painavaa asiaa, hieman hidaslukuinen tiedon yksityiskohtaisuuden takia.', 25),
	('****', 'Klassikko', 26),
	(NULL, NULL, 27),
	('**', NULL, 29),
	('***', NULL, 30),
	('****', NULL, 31),
	('****', NULL, 32),
	('****', NULL, 33),
	('****', NULL, 34),
	('***', NULL, 35),
	('****', NULL, 36),
	('*****', 'Unohtumaton, traaginen tarina.', 37),
	('****', NULL, 38),
	('****', '"Ainoastaan sydämmellään näkee hyvin. Tärkeimpiä asioita ei näe silmillä."', 39),
	('****', NULL, 40),
	('*****', 'Pieni elämä, suuri surullinen tarina, joka jää pyörimään pitkäksi aikaa. TOP10 kärkisijoilla.', 41),
	('***', NULL, 42),
	('*****', NULL, 43),
	('****', NULL, 44),
	('****', NULL, 45),
	('***', NULL, 46),
	('****', NULL, 47),
	('***', NULL, 48),
	('**', NULL, 49),
	('****', 'Klassikko', 50),
	('****', NULL, 51),
	('****', NULL, 52),
	('****', NULL, 53),
	('****', NULL, 54),
	('****', NULL, 55),
	('****', NULL, 56),
	('***', NULL, 57),
	('*****', NULL, 58),
	('****', NULL, 59),
	('****', NULL, 60),
	('****', NULL, 61),
	('****', NULL, 62),
	('*****', NULL, 63),
	('***', NULL, 65),
	('****', NULL, 66),
	('****', NULL, 67),
	('****', NULL, 68),
	('****', NULL, 69),
	('***', NULL, 72),
	('***', NULL, 73),
	(NULL, NULL, 70),
	('****', NULL, 74),
	('****', NULL, 75),
	('****', NULL, 76),
	(NULL, NULL, 71),
	('****', NULL, 77),
	('****', NULL, 78),
	('****', NULL, 79),
	('*****', NULL, 80),
	('***', NULL, 81),
	('*****', NULL, 82),
	('****', NULL, 83),
	('****', NULL, 84),
	('****', NULL, 85),
	('****', NULL, 86),
	('****', NULL, 87),
	('****', NULL, 88),
	('****', NULL, 89),
	('****', NULL, 90),
	('****', NULL, 91),
	('****', NULL, 92),
	('****', NULL, 93),
	('****', NULL, 94),
	('****', NULL, 95),
	('****', NULL, 96),
	('****', NULL, 97),
	('****', NULL, 98),
	('****', NULL, 99),
	('****', NULL, 100);
/*!40000 ALTER TABLE `arviot` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.genret
CREATE TABLE IF NOT EXISTS `genret` (
  `genre_ID` int(11) NOT NULL,
  `genre_nimi` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.genret: ~11 rows (suunnilleen)
/*!40000 ALTER TABLE `genret` DISABLE KEYS */;
INSERT INTO `genret` (`genre_ID`, `genre_nimi`) VALUES
	(1, 'kauno'),
	(2, 'dekkari'),
	(3, 'fantasia'),
	(4, 'runous'),
	(5, 'scifi'),
	(6, 'jännitys'),
	(7, 'kauhu'),
	(8, 'näytelmä'),
	(9, 'sarjakuva'),
	(10, 'seikkailu'),
	(11, 'elämäkerta'),
	(12, 'tieto');
/*!40000 ALTER TABLE `genret` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.kirjailijat
CREATE TABLE IF NOT EXISTS `kirjailijat` (
  `kirjailijan_nimi` varchar(50) NOT NULL,
  `kansallisuus` varchar(25) NOT NULL,
  `kirjailija_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`kirjailija_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.kirjailijat: ~54 rows (suunnilleen)
/*!40000 ALTER TABLE `kirjailijat` DISABLE KEYS */;
INSERT INTO `kirjailijat` (`kirjailijan_nimi`, `kansallisuus`, `kirjailija_ID`) VALUES
	('P. Z. Reizin', 'Englanti', 1),
	('Maria Petterson', 'Suomi', 2),
	('Stephen King', 'Yhdysvallat', 3),
	('Owen King', 'Yhdysvallat', 4),
	('Ninni Myllyoja', 'Suomi', 5),
	('Emilia Kullas', 'Suomi', 6),
	('Kari Hotakainen', 'Suomi', 7),
	('Delia Owens', 'Yhdysvallat', 8),
	('Cecelia Ahern', 'Irlanti', 9),
	('Katherine Pancol', 'Ranska', 10),
	('Kate Morton', 'Australia', 11),
	('Gail Honeyman', 'Skotlanti', 12),
	('Lucinda Riley', 'Irlanti', 13),
	('Olli Jalonen', 'Suomi', 14),
	('Pauliina Rauhala', 'Suomi', 15),
	('Édouard Louis', 'Ranska', 16),
	('André Aciman', 'Yhdysvallat', 17),
	('Thomas Erikson', 'Ruotsi', 18),
	('Liane Moriarty', 'Australia', 19),
	('Suvi Vaarla', 'Suomi', 20),
	('Jessie Burton', 'Englanti', 21),
	('Kristin Hannah', 'Yhdysvallat', 22),
	('Linda Olsson', 'Uusi-Seelanti', 23),
	('Yuval Noah Harari', 'Israel', 24),
	('Anne Frank', 'Alankomaat', 25),
	('Sofi Oksanen', 'Suomi', 26),
	('William Golding', 'Englanti', 27),
	('Max Seeck', 'Suomi', 28),
	('Tuomas Kyrö', 'Suomi', 29),
	('Elena Ferrante', 'Italia', 30),
	('Katariina Berggren', 'Suomi', 31),
	('Jari Hämäläinen', 'Suomi', 32),
	('Anders Hansen', 'Ruotsi', 33),
	('William Styron', 'Yhdysvallat', 34),
	('Antoine de Saint-Exupéry', 'Ranska', 35),
	('Hanya Yanagihara', 'Yhdysvallat', 36),
	('Joanna Rubin Dranger', 'Ruotsi', 37),
	('Joël Dicker', 'Sveitsi', 38),
	('Heli Laaksonen', 'Suomi', 39),
	('Richard Bach', 'Yhdysvallat', 40),
	('John Steinbeck', 'Yhdysvallat', 41),
	('Katja Kallio', 'Suomi', 42),
	('Tommi Kinnunen', 'Suomi', 43),
	('Celeste Ng', 'Yhdysvallat', 44),
	('Waris Dirie', 'Yhdysvallat', 45),
	('Cathleen Miller', 'Yhdysvallat', 46),
	('Khaled Hosseini', 'Yhdysvallat', 47),
	('Anthony Doerr', 'Yhdysvallat', 48),
	('Tapio Aaltonen', 'Suomi', 49),
	('Dan Brown', 'Yhdysvallat', 50),
	('Emma Donoghue', 'Kanada', 51),
	('Johanna Sinisalo', 'Suomi', 52),
	('C. S. Lewis', 'Englanti', 53),
	('Jo Nesbø', 'Norja', 54);
/*!40000 ALTER TABLE `kirjailijat` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.kustantajat
CREATE TABLE IF NOT EXISTS `kustantajat` (
  `kustantajan_nimi` varchar(50) NOT NULL,
  `kustantaja_ID` int(11) NOT NULL,
  PRIMARY KEY (`kustantaja_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.kustantajat: ~15 rows (suunnilleen)
/*!40000 ALTER TABLE `kustantajat` DISABLE KEYS */;
INSERT INTO `kustantajat` (`kustantajan_nimi`, `kustantaja_ID`) VALUES
	('Gummerus', 1),
	('Otava', 2),
	('Tammi', 3),
	('Bazar', 4),
	('WSOY', 5),
	('Talentum', 6),
	('Like', 7),
	('Atena', 8),
	('Siltala', 9),
	('PS-kustannus', 10),
	('Loisto', 11),
	('Kirjapaja', 12),
	('Johnny Kniga', 13),
	('Diktaattori', 14),
	('Suomalaisen kirjallisuuden seura', 15);
/*!40000 ALTER TABLE `kustantajat` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.kustantajien_kirjailijat
CREATE TABLE IF NOT EXISTS `kustantajien_kirjailijat` (
  `kustantaja_ID` int(11) NOT NULL,
  `kirjailija_ID` int(11) NOT NULL,
  PRIMARY KEY (`kustantaja_ID`,`kirjailija_ID`),
  KEY `kirjailija_ID` (`kirjailija_ID`),
  CONSTRAINT `kustantajien_kirjailijat_ibfk_1` FOREIGN KEY (`kustantaja_ID`) REFERENCES `kustantajat` (`kustantaja_ID`),
  CONSTRAINT `kustantajien_kirjailijat_ibfk_2` FOREIGN KEY (`kirjailija_ID`) REFERENCES `kirjailijat` (`kirjailija_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.kustantajien_kirjailijat: ~56 rows (suunnilleen)
/*!40000 ALTER TABLE `kustantajien_kirjailijat` DISABLE KEYS */;
INSERT INTO `kustantajien_kirjailijat` (`kustantaja_ID`, `kirjailija_ID`) VALUES
	(1, 1),
	(1, 9),
	(1, 15),
	(1, 23),
	(1, 37),
	(1, 40),
	(1, 44),
	(2, 14),
	(2, 21),
	(2, 27),
	(2, 34),
	(2, 39),
	(2, 42),
	(2, 47),
	(2, 53),
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 16),
	(3, 17),
	(3, 25),
	(3, 28),
	(3, 36),
	(3, 38),
	(3, 41),
	(3, 51),
	(3, 52),
	(4, 10),
	(4, 11),
	(4, 13),
	(4, 24),
	(5, 7),
	(5, 8),
	(5, 12),
	(5, 19),
	(5, 20),
	(5, 22),
	(5, 29),
	(5, 30),
	(5, 35),
	(5, 43),
	(5, 45),
	(5, 46),
	(5, 48),
	(5, 50),
	(6, 5),
	(6, 6),
	(7, 26),
	(8, 18),
	(8, 33),
	(9, 7),
	(9, 29),
	(10, 31),
	(10, 32),
	(12, 49),
	(13, 54);
/*!40000 ALTER TABLE `kustantajien_kirjailijat` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.lukustatukset
CREATE TABLE IF NOT EXISTS `lukustatukset` (
  `luku_vuosi` year(4) DEFAULT NULL,
  `luku_tila` enum('luettu','lukematta') NOT NULL,
  `nimike_ID` int(11) NOT NULL,
  KEY `nimike_ID` (`nimike_ID`),
  CONSTRAINT `lukustatukset_ibfk_1` FOREIGN KEY (`nimike_ID`) REFERENCES `nimikkeet` (`nimike_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.lukustatukset: ~96 rows (suunnilleen)
/*!40000 ALTER TABLE `lukustatukset` DISABLE KEYS */;
INSERT INTO `lukustatukset` (`luku_vuosi`, `luku_tila`, `nimike_ID`) VALUES
	(NULL, 'lukematta', 1),
	(NULL, 'lukematta', 2),
	('2020', 'luettu', 3),
	('2021', 'luettu', 4),
	('2021', 'luettu', 5),
	('2021', 'luettu', 6),
	('2020', 'luettu', 7),
	('2020', 'luettu', 8),
	('2020', 'luettu', 9),
	('2020', 'luettu', 10),
	('2020', 'luettu', 11),
	('2020', 'luettu', 12),
	('2020', 'luettu', 13),
	('2020', 'luettu', 14),
	('2020', 'luettu', 15),
	('2020', 'luettu', 16),
	('2020', 'luettu', 17),
	('2020', 'luettu', 18),
	('2020', 'luettu', 19),
	('2020', 'luettu', 20),
	('2020', 'luettu', 21),
	('2020', 'luettu', 23),
	('2020', 'luettu', 24),
	('2020', 'luettu', 25),
	('2021', 'luettu', 26),
	(NULL, 'lukematta', 27),
	('2020', 'luettu', 29),
	('2020', 'luettu', 30),
	('2019', 'luettu', 31),
	('2019', 'luettu', 32),
	('2019', 'luettu', 33),
	('2019', 'luettu', 34),
	('2018', 'luettu', 35),
	('2019', 'luettu', 36),
	('2012', 'luettu', 37),
	('2020', 'luettu', 38),
	('2010', 'luettu', 39),
	('2015', 'luettu', 40),
	('2005', 'luettu', 42),
	('2019', 'luettu', 43),
	('2019', 'luettu', 45),
	('2010', 'luettu', 46),
	('2004', 'luettu', 47),
	('2010', 'luettu', 48),
	('2008', 'luettu', 49),
	('2007', 'luettu', 50),
	('2019', 'luettu', 51),
	('2013', 'luettu', 52),
	('2019', 'luettu', 53),
	('2017', 'luettu', 54),
	('2017', 'luettu', 55),
	('2020', 'luettu', 56),
	('2008', 'luettu', 57),
	('2010', 'luettu', 58),
	('2020', 'luettu', 59),
	('2011', 'luettu', 60),
	('2014', 'luettu', 61),
	('2015', 'luettu', 62),
	('2020', 'luettu', 63),
	('2016', 'luettu', 64),
	('2019', 'luettu', 65),
	('2019', 'luettu', 66),
	('2019', 'luettu', 67),
	('2019', 'luettu', 68),
	('2019', 'luettu', 69),
	(NULL, 'lukematta', 70),
	(NULL, 'lukematta', 71),
	('2007', 'luettu', 72),
	('2008', 'luettu', 73),
	('2017', 'luettu', 74),
	('2013', 'luettu', 75),
	('2009', 'luettu', 76),
	('2005', 'luettu', 77),
	('2005', 'luettu', 78),
	('2014', 'luettu', 79),
	('2012', 'luettu', 80),
	('2013', 'luettu', 81),
	('2000', 'luettu', 82),
	('2006', 'luettu', 83),
	('2017', 'luettu', 84),
	('2015', 'luettu', 85),
	('2015', 'luettu', 86),
	('2015', 'luettu', 87),
	('2017', 'luettu', 88),
	('2016', 'luettu', 89),
	('2012', 'luettu', 90),
	('2013', 'luettu', 91),
	('2014', 'luettu', 92),
	('2012', 'luettu', 93),
	('2011', 'luettu', 94),
	('2010', 'luettu', 95),
	('2011', 'luettu', 96),
	('2010', 'luettu', 97),
	('2010', 'luettu', 98),
	('2010', 'luettu', 99),
	('2017', 'luettu', 100);
/*!40000 ALTER TABLE `lukustatukset` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.nimikkeet
CREATE TABLE IF NOT EXISTS `nimikkeet` (
  `julkaisuvuosi` year(4) NOT NULL,
  `teoksen_nimi` varchar(100) NOT NULL,
  `sivumaara` int(11) DEFAULT NULL,
  `ISBN` varchar(25) NOT NULL,
  `nimike_ID` int(11) NOT NULL AUTO_INCREMENT,
  `genre_ID` int(11) DEFAULT NULL,
  `kustantaja_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`nimike_ID`),
  UNIQUE KEY `ISBN` (`ISBN`),
  KEY `genre_ID` (`genre_ID`),
  KEY `kustantaja_ID` (`kustantaja_ID`),
  CONSTRAINT `nimikkeet_ibfk_1` FOREIGN KEY (`genre_ID`) REFERENCES `genret` (`genre_ID`),
  CONSTRAINT `nimikkeet_ibfk_2` FOREIGN KEY (`kustantaja_ID`) REFERENCES `kustantajat` (`kustantaja_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.nimikkeet: ~100 rows (suunnilleen)
/*!40000 ALTER TABLE `nimikkeet` DISABLE KEYS */;
INSERT INTO `nimikkeet` (`julkaisuvuosi`, `teoksen_nimi`, `sivumaara`, `ISBN`, `nimike_ID`, `genre_ID`, `kustantaja_ID`) VALUES
	('2018', 'Onnen algoritmi', 503, '978-951-24-1559-5', 1, 1, 1),
	('2020', 'Historian jännät naiset', 502, '978-952-300-664-5', 2, 12, 2),
	('2010', 'Mitä jokaisen kotiäidin (ja muidenkin naisten) tulee tietää sijoittamisesta', 243, '978-952-14-1460-2', 3, 12, 6),
	('2017', 'Ruususen uni', 752, '978-952-04-0452-9', 4, 7, 3),
	('2019', 'Tuntematon Kimi Räikkönen', 327, '978-952-234-625-4', 5, 11, 9),
	('2018', 'Suon villi laulu', 418, '978-951-0-44600-3', 6, 1, 5),
	('2016', 'Lyyralintu', 470, '978-951-24-0893-1', 7, 1, 1),
	('2017', 'Aina ei tapahdu surullisia asioita', 847, '978-952-279-884-8', 8, 1, 4),
	('2016', 'Talo järven rannalla', 671, '978-952-279-482-6', 9, 1, 4),
	('2017', 'Eleanorille kuuluu ihan hyvää', 431, '978-951-0-42829-0', 10, 1, 5),
	('2019', 'Auringon sisar', 906, '978-952-279-748-3', 11, 1, 4),
	('2019', 'Merenpeitto', 462, '978-951-1-34512-1', 12, 1, 2),
	('2018', 'Synninkantajat', 368, '978-951-24-0863-4', 13, 1, 1),
	('2014', 'Ei enää Eddy', 184, '978-952-04-0805-3', 14, 1, 3),
	('2018', 'Taivaanpallo', 461, '978-951-1-31917-7', 15, 1, 2),
	('2018', 'Kuun sisar', 779, '978-952-279-669-1', 16, 1, 4),
	('2007', 'Kutsu minua nimelläsi', 317, '978-952-04-0407-9', 17, 1, 3),
	('2017', 'Psykopaatit ympärilläni', 285, '978-952-300-392-7', 18, 12, 8),
	('2019', 'Perhosten huone', 652, '978-952-279-831-2', 19, 1, 4),
	('2018', 'Yhdeksän hyvää, kymmenen kaunista', 455, '978-951-0-43935-7', 20, 1, 5),
	('2019', 'Westend', 334, '978-951-0-43750-6', 21, 1, 5),
	('2016', 'Muusa', 446, '978-951-1-30267-4', 22, 1, 2),
	('2015', 'Satakieli', 568, '978-951-0-42966-2', 23, 1, 5),
	('2008', 'Sonaatti Miriamille', 379, '978-951-20-8349-7', 24, 1, 1),
	('2018', '21 oppituntia maailman tilasta', 335, '978-952-279-609-7', 25, 12, 4),
	('1947', 'Päiväkirja', 421, '978-951-31-9575-5', 26, 11, 3),
	('2012', 'Kun kyyhkyset katosivat', 364, '978-952-01-0781-9', 27, 1, 7),
	('1954', 'Kärpästen herra', 336, '978-951-1-21603-2', 28, 7, 2),
	('2019', 'Uskollinen lukija', 385, '978-952-04-0814-5', 29, 2, 3),
	('2017', 'Mielensäpahoittajan Suomi', 275, '978-951-0-42110-9', 30, 1, 5),
	('2014', 'Kadonneen lapsen tarina', 511, '978-951-0-42241-0', 31, 1, 5),
	('2012', 'Uuden nimen tarina', 508, '978-951-0-43632-5', 32, 1, 5),
	('2011', 'Loistava ystäväni', 362, '978-951-0-42738-5', 33, 1, 5),
	('2013', 'Ne jotka lähtevät ja ne jotka jäävät', 447, '978-951-0-43814-5', 34, 1, 5),
	('2018', 'ADHD-käsikirja', 337, '978-952-451-857-4', 35, 12, 10),
	('2017', 'ADHD voimavarana', 199, '978-952-300-442-9', 36, 12, 8),
	('1976', 'Sofien valinta', 603, '951-1-15035-9', 37, 1, 2),
	('2013', 'Keskiyön ruusu', 670, '978-952-279-426-0', 38, 1, 4),
	('1944', 'Pikku Prinssi', 93, '978-951-0-06985-1', 39, 1, 5),
	('2013', 'Luonnon laki', 282, '978-952-234-185-3', 40, 1, 9),
	('2015', 'Pieni elämä', 939, '978-952-04-0255-6', 41, 1, 3),
	('2001', 'Neiti Tärkeä ja Uraputki', 225, '951-20-6247-X', 42, 9, 1),
	('2012', 'Totuus Harry Quebertin tapauksesta', 809, '978-951-31-7305-0', 43, 1, 3),
	('2018', 'Stephanie Mailerin katoaminen', 716, '978-952-04-0429-1', 44, 1, 3),
	('2014', 'Idiootit ympärilläni', 314, '978-952-300-321-7', 45, 12, 8),
	('2006', 'Sulavoi', 83, '951-1-20697-4', 46, 4, 2),
	('1970', 'Lokki Joonatan', 93, '951-20-0195-0', 47, 1, 1),
	('2006', 'Huolimattomat', 267, '978-951-0-32302-1', 48, 1, 5),
	('1999', 'Sydänkohtauksia', 390, '951-0-23878-3', 49, 1, 5),
	('1952', 'Eedenistä itään', 680, '951-31-3629-9', 50, 1, 3),
	('2017', 'Yön kantaja', 380, '978-951-1-28275-4', 51, 1, 2),
	('2011', 'Kaikki hyvä sinussa', 322, '978-951-20-8408-1', 52, 1, 1),
	('2018', 'Pintti', 291, '978-951-0-43413-0', 53, 1, 5),
	('2014', 'Neljäntienristeys', 334, '978-951-0-40382-2', 54, 1, 5),
	('2016', 'Lopotti', 364, '978-951-0-41534-4', 55, 1, 5),
	('2017', 'Tulenarkoja asioita', 384, '978-951-24-1282-2', 56, 1, 1),
	('2003', 'Stalinin lehmät', 478, '978-952-5635-28-7', 57, 1, 4),
	('2009', 'Puhdistus', 375, '978-951-0-33973-2', 58, 1, 5),
	('2015', 'Enkelipuu', 602, '978-952-279-788-9', 59, 1, 4),
	('1998', 'Aavikon kukka', 288, '978-951-0-36748-3', 60, 11, 5),
	('2007', 'Tuhat loistavaa aurinkoa', 400, '978-951-1-23600-9', 61, 1, 2),
	('2013', 'Ja vuoret kaikuivat', 411, '978-951-1-28387-4', 62, 1, 2),
	('2014', 'Kaikki se valo jota emme näe', 543, '978-951-0-41636-5', 63, 1, 5),
	('2007', 'Luova kutsumus', 257, '978-951-607-444-6', 64, 12, 12),
	('2013', 'Taivaslaulu', 284, '978-951-20-9128-7', 65, 1, 1),
	('2016', 'Varjon sisar', 717, '978-952-279-511-3', 66, 1, 4),
	('2017', 'Helmen sisar', 724, '978-952-279-667-7', 67, 1, 4),
	('2014', 'Seitsemän sisarta', 665, '978-052-279-404-8', 68, 1, 4),
	('2015', 'Myrskyn sisar', 721, '978-952-279-509-0', 69, 1, 4),
	('2020', 'Ei kertonut katuvansa', 351, '978-951-045-029-1', 70, 1, 5),
	('2020', 'Etsi minut', 294, '978-952-041-231-9', 71, 1, 3),
	('2001', 'Meteoriitti', 519, '951-0-31783-7', 72, 6, 5),
	('1998', 'Murtamaton linnake', 388, '978-951-0-31692-4', 73, 6, 5),
	('2017', 'Alku', 463, '978-951-0-42556-5', 74, 6, 5),
	('2013', 'Inferno', 467, '978-951-0-40007-4', 75, 6, 5),
	('2009', 'Kadonnut symboli', 435, '978-951-0-31919-2', 76, 6, 5),
	('2000', 'Enkelit ja demonit', 518, '951-0-30685-1', 77, 6, 5),
	('2003', 'Da Vinci -koodi', 520, '951-0-29468-3', 78, 6, 5),
	('2010', 'Huone', 325, '978-951-31-6222-1', 79, 1, 3),
	('2011', 'Kerjäläinen ja jänis', 327, '978-952-234-068-9', 80, 1, 9),
	('2010', 'Mielensäpahoittaja', 130, '978-951-0-36626-4', 81, 1, 5),
	('2000', 'Ennen päivänlaskua ei voi', 268, '951-31-1886-X', 82, 3, 3),
	('1950', 'Narnia, kaikki tarinat', 832, '951-1-20526-9', 83, 3, 2),
	('2015', 'Mimmit 3', 539, '978-952-279-324-9', 84, 1, 4),
	('2012', 'Kilpikonnien hidas valssi', 761, '978-952-279-057-6', 85, 1, 4),
	('2010', 'Central Parkin oravat ovat surullisia maanantaisin', 921, '978-952-279-114-6', 86, 1, 4),
	('2006', 'Krokotiilin keltaiset silmät', 697, '978-952-5637-95-3', 87, 1, 4),
	('2014', 'Mimmit 1', 360, '978-952-279-322-5', 88, 1, 4),
	('2014', 'Mimmit 2', 361, '978-952-279-323-2', 89, 1, 4),
	('1997', 'Lepakkomies', 489, '978-951-0-39412-0', 90, 2, 13),
	('2013', 'Poliisi', 698, '978-951-0-40455-3', 91, 2, 13),
	('2011', 'Aave', 599, '978-951-0-39628-5', 92, 2, 13),
	('2009', 'Panssarisydän', 795, '978-951-0-38188-5', 93, 2, 13),
	('2007', 'Lumiukko', 432, '978-951-0-36699-8', 94, 2, 13),
	('2005', 'Pelastaja', 606, '978-951-0-37190-9', 95, 2, 13),
	('2003', 'Veritimantit', 464, '978-951-0-37149-7', 96, 2, 13),
	('2002', 'Suruton', 506, '978-951-0-37148-0', 97, 2, 13),
	('2000', 'Punarinta', 457, '978-951-0-36698-1', 98, 2, 13),
	('2010', 'Torakat', 319, '978-951-0-36696-7', 99, 2, 13),
	('2017', 'Jano', 534, '978-951-0-42358-5', 100, 2, 13);
/*!40000 ALTER TABLE `nimikkeet` ENABLE KEYS */;

-- Dumping structure for taulu kotikirjasto.nimikkeiden_kirjailijat
CREATE TABLE IF NOT EXISTS `nimikkeiden_kirjailijat` (
  `nimike_ID` int(11) NOT NULL,
  `kirjailija_ID` int(11) NOT NULL,
  PRIMARY KEY (`nimike_ID`,`kirjailija_ID`),
  KEY `kirjailija_ID` (`kirjailija_ID`),
  CONSTRAINT `nimikkeiden_kirjailijat_ibfk_1` FOREIGN KEY (`nimike_ID`) REFERENCES `nimikkeet` (`nimike_ID`),
  CONSTRAINT `nimikkeiden_kirjailijat_ibfk_2` FOREIGN KEY (`kirjailija_ID`) REFERENCES `kirjailijat` (`kirjailija_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table kotikirjasto.nimikkeiden_kirjailijat: ~102 rows (suunnilleen)
/*!40000 ALTER TABLE `nimikkeiden_kirjailijat` DISABLE KEYS */;
INSERT INTO `nimikkeiden_kirjailijat` (`nimike_ID`, `kirjailija_ID`) VALUES
	(1, 1),
	(2, 2),
	(3, 5),
	(3, 6),
	(4, 3),
	(4, 4),
	(5, 7),
	(6, 8),
	(7, 9),
	(8, 10),
	(9, 11),
	(10, 12),
	(11, 13),
	(12, 14),
	(13, 15),
	(14, 16),
	(15, 14),
	(16, 13),
	(17, 17),
	(18, 18),
	(19, 13),
	(20, 19),
	(21, 20),
	(22, 21),
	(23, 22),
	(24, 23),
	(25, 24),
	(27, 26),
	(29, 28),
	(30, 29),
	(31, 30),
	(32, 30),
	(33, 30),
	(34, 30),
	(35, 31),
	(35, 32),
	(36, 33),
	(37, 34),
	(38, 13),
	(39, 35),
	(40, 7),
	(41, 36),
	(42, 37),
	(43, 38),
	(44, 38),
	(45, 18),
	(46, 39),
	(47, 40),
	(48, 7),
	(49, 7),
	(50, 41),
	(51, 42),
	(52, 23),
	(53, 43),
	(54, 43),
	(55, 43),
	(56, 44),
	(57, 26),
	(58, 26),
	(59, 13),
	(60, 45),
	(60, 46),
	(61, 47),
	(62, 47),
	(63, 48),
	(64, 49),
	(65, 15),
	(66, 13),
	(67, 13),
	(68, 13),
	(69, 13),
	(70, 43),
	(71, 17),
	(72, 50),
	(73, 50),
	(74, 50),
	(75, 50),
	(76, 50),
	(77, 50),
	(78, 50),
	(79, 51),
	(80, 29),
	(81, 29),
	(82, 52),
	(83, 53),
	(84, 10),
	(85, 10),
	(86, 10),
	(87, 10),
	(88, 10),
	(89, 10),
	(90, 54),
	(91, 54),
	(92, 54),
	(93, 54),
	(94, 54),
	(95, 54),
	(96, 54),
	(97, 54),
	(98, 54),
	(99, 54),
	(100, 54);
/*!40000 ALTER TABLE `nimikkeiden_kirjailijat` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
