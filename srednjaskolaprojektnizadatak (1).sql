-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 10:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srednjaskolaprojektnizadatak`
--

-- --------------------------------------------------------

--
-- Table structure for table `nastavnici`
--

CREATE TABLE `nastavnici` (
  `NastavnikID` int(11) NOT NULL,
  `Ime` varchar(50) DEFAULT NULL,
  `Prezime` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `nastavnici`
--

INSERT INTO `nastavnici` (`NastavnikID`, `Ime`, `Prezime`) VALUES
(1, 'Mirela', 'Ajhner'),
(2, 'Ana', 'Babić'),
(3, 'Damir', 'Barberić'),
(4, 'Miroslav', 'Bažant'),
(5, 'Mario', 'Belokapa'),
(6, 'Branko', 'Blažević'),
(7, 'Boris', 'Bogdan'),
(8, 'Tomislav', 'Brletić'),
(9, 'Sanja', 'Busić'),
(10, 'Ljubica', 'Buzdum'),
(11, 'Anita', 'Cigut'),
(12, 'Ivana', 'Čolić'),
(13, 'Đuro', 'Cvitić'),
(14, 'Ivan Marko', 'Dežić'),
(15, 'Ines', 'Dumančić'),
(16, 'Krešimir', 'Ećimović'),
(17, 'Ivan', 'Franal'),
(18, 'Denis', 'Gabor'),
(19, 'Dalibor', 'Hašpl'),
(20, 'Mario', 'Havranek'),
(21, 'Dražen', 'Hušek'),
(22, 'Katija', 'Husak'),
(23, 'Željka', 'Hodak'),
(24, 'Juraj', 'Horak'),
(25, 'Snježana', 'Horak'),
(26, 'Renata', 'Jakšić'),
(27, 'Miro', 'Kligl'),
(28, 'Alen', 'Klubička'),
(29, 'Libuška', 'Klubička Palatinuš'),
(30, 'Žana', 'Kovačević'),
(31, 'Tomislav', 'Kral'),
(32, 'Krunoslav', 'Kulhavi'),
(33, 'Darko', 'Lapaš'),
(34, 'Sanja', 'Lukić'),
(35, 'Valentino', 'Mik'),
(36, 'Antonio', 'Milde'),
(37, 'Ivana', 'Milić'),
(38, 'Mario', 'Mlinarić'),
(39, 'Kristijan', 'Perić'),
(40, 'Dražen', 'Poštek'),
(41, 'Dražen', 'Prenosil'),
(42, 'Zoran', 'Radanović'),
(43, 'Marko', 'Radojčić'),
(44, 'Dino', 'Rais'),
(45, 'Goran', 'Repinc'),
(46, 'Ksenija', 'Rohlik'),
(47, 'Juraj', 'Šargač'),
(48, 'Tatjana', 'Sekereš'),
(49, 'Zdravko', 'Sikora'),
(50, 'Dubravka', 'Sertić'),
(51, 'Marijana', 'Spajić'),
(52, 'Andrea', 'Tomašek'),
(53, 'Danko', 'Tomašek'),
(54, 'Mirosal', 'Tomek'),
(55, 'Nataša', 'Vacka'),
(56, 'Antonia', 'Varat'),
(57, 'Bojan', 'Višić'),
(58, 'Ana', 'Zubak'),
(59, 'Dunja', 'Županić');

-- --------------------------------------------------------

--
-- Table structure for table `nastavnik_predmet`
--

CREATE TABLE `nastavnik_predmet` (
  `ID` int(11) NOT NULL,
  `Nastavnik_ID` int(11) NOT NULL,
  `Predmet_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ocjene`
--

CREATE TABLE `ocjene` (
  `ID` int(11) NOT NULL,
  `Ucenik_ID` int(11) NOT NULL,
  `Predmet_ID` int(11) NOT NULL,
  `Ocjena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `predmeti`
--

CREATE TABLE `predmeti` (
  `PredmetID` int(11) NOT NULL,
  `Naziv` varchar(50) DEFAULT NULL,
  `Opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `predmeti`
--

INSERT INTO `predmeti` (`PredmetID`, `Naziv`, `Opis`) VALUES
(1, 'Sat razrednika', NULL),
(2, 'Biologija', NULL),
(3, 'Povijest', NULL),
(4, 'Tjelesna i Zdravstvena Kultura (TZK)', NULL),
(5, 'Vjeronauk', NULL),
(6, 'Etika', NULL),
(7, 'Računalstvo', NULL),
(8, 'Tehničko crtanje i dokumentiranje', NULL),
(9, 'Osnove web dizajna', NULL),
(10, 'Laboratorijske vježbe iz elektrotehnike', NULL),
(11, 'Matematika', NULL),
(12, 'Primjenjena matematika', NULL),
(13, 'Kemija', NULL),
(14, 'Engleski jezik', NULL),
(15, 'Njemački jezik', NULL),
(16, 'Fizika', NULL),
(17, 'Radioničke vježbe', NULL),
(18, 'Osnove elektrotehnike', NULL),
(19, 'Tehnička mehanika', NULL),
(20, 'Geografija', NULL),
(21, 'Tehnički materijali', NULL),
(22, 'Cestovna vozila', NULL),
(23, 'Prometna infrastruktura', NULL),
(24, 'Osnove prijevoza i prijenosa', NULL),
(25, 'Goriva i maziva', NULL),
(26, 'Osnove računalstva', NULL),
(27, 'Praktična nastava', NULL),
(28, 'Grafičke komunikacije u prometu', NULL),
(29, 'Algoritmi i programiranje', NULL),
(30, 'Upotreba informacijske tehnologije u uredskom posl', NULL),
(31, 'Tehničko dokumentiranje', NULL),
(32, 'Elektrotehnika', NULL),
(33, 'Matematika u struci', NULL),
(34, 'Osnove tehničkih materijala', NULL),
(35, 'Tehnologija obrade i montaže', NULL),
(36, 'Osnove elektroničkih mjerenja', NULL),
(37, 'Osnove digitalne elektronike', NULL),
(38, 'Elektronika', NULL),
(39, 'Električni strojevi i uređaji', NULL),
(40, 'Električne instalacije', NULL),
(41, 'Elementi strojeva', NULL),
(42, 'Prometna kultura', NULL),
(43, 'Strani jezik u struci engleski', NULL),
(44, 'Strani jezik u struci njemački', NULL),
(45, 'Prometna geografija', NULL),
(46, 'Ekologija u prometu', NULL),
(47, 'Ceste i cestovni objekti', NULL),
(48, 'Digitalna logika', NULL),
(49, 'Uvod u računalne mreže', NULL),
(50, 'Uvod u baze podataka', NULL),
(51, 'Uvod u elektroniku', NULL),
(52, 'Praktične osnove računala', NULL),
(53, 'Tehnologija strojarskih instalacija', NULL),
(54, 'Tehnologija održavanja vozila', NULL),
(55, 'Politika i gospodarstvo', NULL),
(56, 'Ispitivanje tehničkih materijala', NULL),
(57, 'CAD-CAM tehnologije', NULL),
(58, 'Uvod u automatiku', NULL),
(59, 'Mikroupravljači', NULL),
(60, 'Elektromotorni pogoni', NULL),
(61, 'Uvod u robotiku', NULL),
(62, 'Programiranje', NULL),
(63, 'Mehatroničke konstrukcije', NULL),
(64, 'Senzorika', NULL),
(65, 'Pneumatika', NULL),
(66, 'Upravljanje i regulacija', NULL),
(67, 'Termodinamika', NULL),
(68, 'Prijevoz tereta', NULL),
(69, 'Inteligentni transportni sustav', NULL),
(70, 'Poslovanje tvrtke u cestovnom prometu', NULL),
(71, 'Propisi u cestovnom prometu', NULL),
(72, 'Građa računala', NULL),
(73, 'Programiranje mobilnih uređaja', NULL),
(74, 'Web dizajn', NULL),
(75, 'Operacijski sustavi', NULL),
(76, 'Skriptni jezici i web programiranje', NULL),
(77, 'Računalne mreže', NULL),
(78, 'Dijagnostika i održavanje informacijskih sustava', NULL),
(79, 'Tehnologija grijanja i klimatizacije', NULL),
(80, 'Tehnologija solarnih fotonaponskih sustava', NULL),
(81, 'Osnove automatizacije', NULL),
(82, 'Tehnike motornih vozila', NULL),
(83, 'Nove tehnologije', NULL),
(84, 'Električne mreže i postrojenja', NULL),
(85, 'Elektronika i upravljanje', NULL),
(86, 'CNC strojevi', NULL),
(87, 'Prijevoz putnika', NULL),
(88, 'Posluživanje CNC strojeva', NULL),
(89, 'Robotika', NULL),
(90, 'Složene mehatroničke konstrukcije', NULL),
(91, 'Mikro i nano mehatronika', NULL),
(92, 'Numerički upravljani strojevi-izborni', NULL),
(93, 'OIE', NULL),
(94, 'Automatizacija procesnih postrojenja', NULL),
(95, 'Vođenje procesa računalom', NULL),
(96, 'Hidraulika', NULL),
(97, 'Ugradbeni računalni sustavi', NULL),
(98, 'Tehničko i poslovno komuniciranje', NULL),
(99, 'Sigurnost informacijskih sustava', NULL),
(100, 'Konfiguriranje računalnih mreža i servisa', NULL),
(101, 'Napredno i objektno programiranje', NULL),
(102, 'Poslužiteljski operacijski sustavi', NULL),
(103, 'Instrumentacija', NULL),
(104, 'Sustavi tehničke zaštite', NULL),
(105, 'Obrada slike i zvuka', NULL),
(106, 'Programirljivi logički upravljači', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `razredi`
--

CREATE TABLE `razredi` (
  `RazredID` int(11) NOT NULL,
  `Naziv` varchar(10) DEFAULT NULL,
  `Sk_god` varchar(15) NOT NULL,
  `Razrednik_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `razredi`
--

INSERT INTO `razredi` (`RazredID`, `Naziv`, `Sk_god`, `Razrednik_ID`) VALUES
(1, '1.EL', '', 6),
(2, '1.MT', '', 15),
(3, '1.P', '', 41),
(4, '1.PT', '', 52),
(5, '1.RT', '', 21),
(6, '1.S', '', 18),
(7, '1.SP', '', 50),
(8, '2.EL', '', 31),
(9, '2.MT', '', 47),
(10, '2.P', '', 12),
(11, '2.PT', '', 7),
(12, '2.RT', '', 32),
(13, '2.S', '', 49),
(14, '2.SP', '', 10),
(15, '3.EL', '', 44),
(16, '3.MT', '', 30),
(17, '3.P', '', 33),
(18, '3.PT', '', 4),
(19, '3.RT', '', 54),
(20, '3.S', '', 53),
(21, '3.SP', '', 51),
(22, '4.EL', '', 5),
(23, '4.MT', '', 1),
(24, '4.PT', '', 25),
(25, '4.RT', '', 23);

-- --------------------------------------------------------

--
-- Table structure for table `razred_predmet`
--

CREATE TABLE `razred_predmet` (
  `ID` int(11) NOT NULL,
  `Razred_ID` int(11) NOT NULL,
  `Predmet_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `razred_predmet`
--

INSERT INTO `razred_predmet` (`ID`, `Razred_ID`, `Predmet_ID`) VALUES
(1, 1, 14),
(2, 19, 16),
(3, 19, 76);

-- --------------------------------------------------------

--
-- Table structure for table `ucenici`
--

CREATE TABLE `ucenici` (
  `ID` int(11) NOT NULL,
  `Ime` varchar(20) NOT NULL,
  `Prezime` varchar(30) NOT NULL,
  `OIB` text NOT NULL,
  `Adresa` varchar(50) NOT NULL,
  `Razred_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nastavnici`
--
ALTER TABLE `nastavnici`
  ADD PRIMARY KEY (`NastavnikID`);

--
-- Indexes for table `nastavnik_predmet`
--
ALTER TABLE `nastavnik_predmet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nastavnik_ID` (`Nastavnik_ID`),
  ADD KEY `Predmet_ID` (`Predmet_ID`);

--
-- Indexes for table `ocjene`
--
ALTER TABLE `ocjene`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ucenik_ID` (`Ucenik_ID`),
  ADD KEY `Predmet_ID` (`Predmet_ID`);

--
-- Indexes for table `predmeti`
--
ALTER TABLE `predmeti`
  ADD PRIMARY KEY (`PredmetID`),
  ADD UNIQUE KEY `Naziv` (`Naziv`);

--
-- Indexes for table `razredi`
--
ALTER TABLE `razredi`
  ADD PRIMARY KEY (`RazredID`),
  ADD UNIQUE KEY `Naziv` (`Naziv`),
  ADD KEY `Razrednik_ID` (`Razrednik_ID`);

--
-- Indexes for table `razred_predmet`
--
ALTER TABLE `razred_predmet`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Razred_ID` (`Razred_ID`),
  ADD KEY `Predmet_ID` (`Predmet_ID`);

--
-- Indexes for table `ucenici`
--
ALTER TABLE `ucenici`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Razred_ID` (`Razred_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nastavnici`
--
ALTER TABLE `nastavnici`
  MODIFY `NastavnikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `nastavnik_predmet`
--
ALTER TABLE `nastavnik_predmet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ocjene`
--
ALTER TABLE `ocjene`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `predmeti`
--
ALTER TABLE `predmeti`
  MODIFY `PredmetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `razredi`
--
ALTER TABLE `razredi`
  MODIFY `RazredID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `razred_predmet`
--
ALTER TABLE `razred_predmet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ucenici`
--
ALTER TABLE `ucenici`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nastavnik_predmet`
--
ALTER TABLE `nastavnik_predmet`
  ADD CONSTRAINT `nastavnik_predmet_ibfk_1` FOREIGN KEY (`Predmet_ID`) REFERENCES `predmeti` (`PredmetID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nastavnik_predmet_ibfk_2` FOREIGN KEY (`Nastavnik_ID`) REFERENCES `nastavnici` (`NastavnikID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ocjene`
--
ALTER TABLE `ocjene`
  ADD CONSTRAINT `ocjene_ibfk_1` FOREIGN KEY (`Ucenik_ID`) REFERENCES `ucenici` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ocjene_ibfk_2` FOREIGN KEY (`Predmet_ID`) REFERENCES `predmeti` (`PredmetID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `razredi`
--
ALTER TABLE `razredi`
  ADD CONSTRAINT `razredi_ibfk_1` FOREIGN KEY (`Razrednik_ID`) REFERENCES `nastavnici` (`NastavnikID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `razred_predmet`
--
ALTER TABLE `razred_predmet`
  ADD CONSTRAINT `razred_predmet_ibfk_1` FOREIGN KEY (`Razred_ID`) REFERENCES `razredi` (`RazredID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `razred_predmet_ibfk_2` FOREIGN KEY (`Predmet_ID`) REFERENCES `predmeti` (`PredmetID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ucenici`
--
ALTER TABLE `ucenici`
  ADD CONSTRAINT `ucenici_ibfk_1` FOREIGN KEY (`Razred_ID`) REFERENCES `razredi` (`RazredID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
