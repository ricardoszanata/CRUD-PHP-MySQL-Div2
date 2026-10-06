-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2021 at 07:59 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clinica`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultas`
--

CREATE TABLE IF NOT EXISTS `consultas` (
  `CONCOD` int(11) NOT NULL AUTO_INCREMENT,
  `CONDAT` date DEFAULT NULL,
  `CONHOR` varchar(50) DEFAULT NULL,
  `CRMMED` varchar(50) DEFAULT NULL,
  `CPFPAC` varchar(50) DEFAULT NULL,
  `CONREA` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`CONCOD`),
  KEY `FK_PACCON` (`CPFPAC`),
  KEY `FK_MEDCON` (`CRMMED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `medicos`
--

CREATE TABLE IF NOT EXISTS `medicos` (
  `MEDCRM` varchar(50) NOT NULL,
  `MEDESP` varchar(50) DEFAULT NULL,
  `CODUSU` int(11) DEFAULT NULL,
  PRIMARY KEY (`MEDCRM`),
  KEY `FK_MEDUSU` (`CODUSU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `PACCPF` varchar(50) NOT NULL,
  `PACTEL` varchar(50) DEFAULT NULL,
  `PACTPS` varchar(50) DEFAULT NULL,
  `CODUSU` int(11) DEFAULT NULL,
  PRIMARY KEY (`PACCPF`),
  KEY `FK_PACUSU` (`CODUSU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `USUCOD` int(11) NOT NULL AUTO_INCREMENT,
  `USUNOM` varchar(100) DEFAULT NULL,
  `USUSEN` varchar(50) DEFAULT NULL,
  `USUTIP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USUCOD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `FK_MEDCON` FOREIGN KEY (`CRMMED`) REFERENCES `medicos` (`MEDCRM`),
  ADD CONSTRAINT `FK_PACCON` FOREIGN KEY (`CPFPAC`) REFERENCES `pacientes` (`PACCPF`);

--
-- Constraints for table `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `FK_MEDUSU` FOREIGN KEY (`CODUSU`) REFERENCES `usuarios` (`USUCOD`);

--
-- Constraints for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `FK_PACUSU` FOREIGN KEY (`CODUSU`) REFERENCES `usuarios` (`USUCOD`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
