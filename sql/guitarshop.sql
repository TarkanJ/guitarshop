-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vygenerováno: Čtv 30. dub 2026, 13:22
-- Verze serveru: 5.5.47-0ubuntu0.14.04.1
-- Verze PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `guitarshop`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `kosik`
--

CREATE TABLE IF NOT EXISTS `kosik` (
  `poradi` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `nazev` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `cena` varchar(100) COLLATE utf8_czech_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `objednavky`
--

CREATE TABLE IF NOT EXISTS `objednavky` (
  `jmeno` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `ulice` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `psc` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `zbozi` varchar(1000) COLLATE utf8_czech_ci NOT NULL,
  `totalcena` varchar(100) COLLATE utf8_czech_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `objednavky`
--

INSERT INTO `objednavky` (`jmeno`, `prijmeni`, `ulice`, `psc`, `zbozi`, `totalcena`) VALUES
('Jojo', 'Libka', 'Gutova', '10000', '<li>Bushman 1900 15900 kè', '15900'),
('Tarkan', 'Tevetoglu', 'Istanbulská 1972, Pod Drinopolem, Istanbul', '1972', '<li>Ibanez Steve Vai 85600 kè<li>Kytara samotného Slashe! 175000 kè<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Plakát Guns N Roses 200 kè<li>Plakát Guns N Roses 200 kè<li>Figurka Slashe 1500 kè<li>Plakát Slashe 500 kè<li>Trsadlo Guns N Roses 500 kè', '265359'),
('Martino', 'Leonidas', 'Pod Areálem 69, Praha 10', '10000', '<li>Jasmine by Takamine 19000 kè<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Figurka Slashe 1500 kè<li>Plakát Slashe 500 kè<li>Trsadlo Guns N Roses 500 kè', '23359'),
('Benjamin', 'Robinson', 'Berkeley 67 California USA', '671931', '<li>Figurka Slashe 1500 kè<li>Bluesteel Strings 359 kè<li>Takamine 8900 14350 kè', '16209'),
('Gordon Mathew', 'Sting', 'New Castle Street 81, England - New Castle upon Tyne', '45681', '<li>Bushman 1900 15900 kè<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Plakát Slashe 500 kè', '18259'),
('Adriana', 'Camrlikova', 'pod brectany 457/34 praha - vychod,mukarov', '10000', '<li>Fender Stratocaster 42000 kè<li>Fender Telecaster 35000 kè<li>Ibanez Steve Vai 85600 kè', '162600'),
('Lola', 'Prsata', 'brectanova 47,praha ricany', '15000', '<li>Bluesteel Strings 359 kè<li>Guitar Tuner Thunderbird 3000 1500 kè<li>Fender Stratocaster 42000 kè', '43859');

-- --------------------------------------------------------

--
-- Struktura tabulky `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `typ` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `nazev` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `popis` varchar(1000) CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `cena` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `obrazek` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `shop`
--

INSERT INTO `shop` (`typ`, `nazev`, `popis`, `cena`, `obrazek`) VALUES
('e', 'Fender Stratocaster', 'Dnes již klasický model všech dob za bezkonkurenční cenu!', '42000', 'fender1'),
('e', 'Fender Telecaster', 'Další z řady nejůspěšnějších kytar, které spatřily světlo světa', '35000', 'telecaster1'),
('a', 'Bushman 1900', 'Není nad poctivý zvuk Americké kytary bushman', '15900', 'bushman1'),
('p', 'Bluesteel Strings', 'Kvalitní struny pro akustické kytary', '359', 'strings1'),
('a', 'Takamine 8900', 'Elektro-akustická kytara pro parádní hru jak u ohn?, tak ve studiu', '14350', 'AcousticDreadnout'),
('e', 'Ibanez Steve Vai', 'Krásná kytarka kterou používal Steve Vai', '85600', 'IbanezSteveVai'),
('e', 'Les Paul "black beauty"', 'Replika legendární kytary B.B.Kinga, "?erná kráska"', '99990', 'GibsonBlackMini'),
('p', 'Guitar Tuner Thunderbird 3000', 'Naprosto skvělá ladička s jednoduchým ovládáním. Samozřejmostí je i ruční ladění tónů či podle frekvencí', '1500', 'Ladicka'),
('p', 'Plakát Guns N Roses', 'Velkoformátový plakát legendární kapely Guns N Roses', '200', 'Guns-roses'),
('p', 'Plakát Guns N Roses', 'Velkoformátový plakát legendární kapely\r\nGuns N Roses!', '200', 'Guns-N-Roses_poster'),
('p', 'Figurka Slashe', 'Ak?ní figurka ze hry Guitar Hero Slashe!!!', '1500', 'Slash_figurka'),
('p', 'Plakát Slashe', 'Co k tomu dodat? Plakát kytarového génia Slashe', '500', 'Slash-poster'),
('p', 'Plakát Slash and Duff', 'Plakát kytaristy Slashe a basáka Duffa', '150', 'Slash&Duff'),
('e', 'Kytara samotného Slashe!', 'Kytara mága z Guns n Roses', '175000', 'Slash_snakepit'),
('e', 'Ibanez Satriani', 'Luxusní elektrická kytara kterou používal Joe Satriani', '149900', 'IbanezLuxus'),
('p', 'Trsadlo Guns N Roses', 'Poda?ilo se zachytit fanouškovi trsadlo rovnou od Slashe :)', '500', 'GunsRoses-trsadlo'),
('a', 'Jasmine by Takamine', 'Další skv?lá elektro-akustika od Takamine.\r\nJasmine by Takamine - TS74C', '19000', 'Jasmine_by_Takamine');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
