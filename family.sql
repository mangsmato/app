-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 09, 2014 at 12:18 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `family`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `name` varchar(30) DEFAULT NULL,
  `phoneNo` int(20) NOT NULL,
  `propAmount` int(20) DEFAULT NULL,
  `lastPaid` varchar(40) DEFAULT NULL,
  `paidAmount` int(20) DEFAULT NULL,
  `balance` int(20) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `monthPaid` varchar(30) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `indTotal` int(20) DEFAULT NULL,
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phoneNo` (`phoneNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`name`, `phoneNo`, `propAmount`, `lastPaid`, `paidAmount`, `balance`, `total`, `monthPaid`, `year`, `indTotal`, `id`) VALUES
('Peter', 720548150, 300, '2014-05-16', 303, 0, 8243, 'May', '2014', 3113, 9),
('Dennis', 723937640, 500, '2014-06-06', 500, -500, 8743, 'June', '2014', 4500, 10),
('Evans', 705520384, 500, '2014-04-01', 10000, -9000, 8340, 'April', '2014', 14000, 11),
('Benjamin', 727200965, 500, '2014-02-07', 2500, -500, 14640, 'February', '2014', 5530, 12),
('Gabriel', 724048099, 500, '2014-05-15', 500, 0, 6940, 'May', '2014', 5030, 13),
('Godfrey', 714493363, 500, '2014-05-15', 500, 0, 7440, 'May', '2014', 5000, 14),
('Ruth', 729890309, 500, '2014-05-15', 500, 0, 7940, 'May', '2014', 1000, 15);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(40) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `password`) VALUES
('admin', 'F@m!ly');

-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE IF NOT EXISTS `individual` (
  `name` varchar(30) DEFAULT NULL,
  `phoneNo` int(20) DEFAULT NULL,
  `propAmount` int(20) DEFAULT NULL,
  `paidAmount` int(20) DEFAULT NULL,
  `datePaid` varchar(30) DEFAULT NULL,
  `balance` int(20) DEFAULT NULL,
  `indTotal` int(20) DEFAULT NULL,
  `monthPaid` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`name`, `phoneNo`, `propAmount`, `paidAmount`, `datePaid`, `balance`, `indTotal`, `monthPaid`) VALUES
('Peter', 720548150, 300, 350, 'Wed 07/08/2013', -50, 350, 'August'),
('Godfrey', 714493363, 500, 500, 'Mon 12/08/2013', 500, 500, 'August'),
('Dennis', 723937640, 500, 500, 'Mon 12/08/2013', 1000, 500, 'August'),
('Benjamin', 727200965, 500, 1030, 'Tue 27/08/2013', 470, 1030, 'August'),
('Godfrey', 714493363, 500, 500, 'Sun 01/09/2013', 500, 1000, 'September'),
('Gabriel', 724048099, 500, 1030, 'Tue 03/09/2013', 470, 1030, 'September'),
('Peter', 720548150, 300, 330, 'Fri 06/09/2013', 1200, 680, 'September'),
('Godfrey', 714493363, 500, 500, 'Mon 30/09/2013', 0, 1500, 'September'),
('Dennis', 723937640, 500, 1000, 'Wed 02/10/2013', 0, 1500, 'October'),
('Gabriel', 724048099, 500, 1000, 'Sun 20/10/2013', -500, 2030, 'October'),
('Benjamin', 727200965, 500, 1000, 'Wed 30/10/2013', -500, 2030, 'October'),
('Dennis', 723937640, 500, 500, 'Fri 01/11/2013', 0, 2000, 'November'),
('Dennis', 723937640, 500, 500, 'Fri 22/11/2013', -500, 2500, 'November'),
('Gabriel', 724048099, 500, 500, 'Thur 05/12/2013', 0, 2530, 'December'),
('Godfrey', 714493363, 500, 1000, 'Sun 15/12/2013', 0, 2500, 'December'),
('Evans', 705520384, 500, 2500, 'Sat 28/12/2013', 0, 2500, 'December'),
('Benjamin', 727200965, 500, 1000, 'Fri 03/01/2014', 0, 3030, 'January'),
('Gabriel', 724048099, 500, 500, 'Mon 13/01/2014', 0, 3030, 'January'),
('Godfrey', 714493363, 500, 1000, 'Wed 15/01/2014', 0, 3000, 'January'),
('Evans', 705520384, 500, 500, '2014-01-25', 0, 3000, 'January'),
('Peter', 720548150, 300, 1200, '2014-01-30', 0, 1880, 'January'),
('Evans', 705520384, 500, 500, '2014-02-05', 0, 3500, 'February'),
('Godfrey', 714493363, 500, 500, '2014-02-06', 0, 3500, 'February'),
('Benjamin', 727200965, 500, 2500, '2014-02-07', -2000, 5530, 'February'),
('Gabriel', 724048099, 500, 500, '2014-02-08', 0, 3530, 'February'),
('Peter', 720548150, 300, 300, '2014-02-11', 0, 2180, 'February'),
('Peter', 720548150, 300, NULL, NULL, 330, 2180, 'March'),
('Dennis', 723937640, 500, 500, '2014-03-10', 0, 3000, 'March'),
('Evans', 705520384, 500, 500, '2014-03-11', 0, 4000, 'March'),
('Benjamin', 727200965, 500, NULL, NULL, -1500, 5530, 'March'),
('Gabriel', 724048099, 500, 500, '2014-03-08', 0, 4030, 'March'),
('Godfrey', 714493363, 500, 500, '2014-03-09', 0, 4000, 'March'),
('Peter', 720548150, 300, 630, '2014-04-09', 0, 2810, 'April'),
('Dennis', 723937640, 500, 500, '2014-04-08', 0, 3500, 'April'),
('Evans', 705520384, 500, 10000, '2014-04-01', -9500, 14000, 'April'),
('Benjamin', 727200965, 500, NULL, NULL, -1000, 5530, 'April'),
('Gabriel', 724048099, 500, 500, '2014-04-14', 0, 4530, 'April'),
('Godfrey', 714493363, 500, 500, '2014-04-19', 0, 4500, 'April'),
('Ruth', 729890309, 500, 500, '2014-04-19', 0, 500, 'April'),
('Peter', 720548150, 300, 303, '2014-05-16', 0, 3113, 'May'),
('Dennis', 723937640, 500, 500, '2014-05-03', 0, 4000, 'May'),
('Evans', 705520384, 500, NULL, NULL, -9000, 14000, 'May'),
('Benjamin', 727200965, 500, NULL, NULL, -500, 5530, 'May'),
('Gabriel', 724048099, 500, 500, '2014-05-15', 0, 5030, 'May'),
('Godfrey', 714493363, 500, 500, '2014-05-15', 0, 5000, 'May'),
('Ruth', 729890309, 500, 500, '2014-05-15', 0, 1000, 'May'),
('Peter', 720548150, 300, NULL, NULL, 0, 3113, 'June'),
('Dennis', 723937640, 500, 500, '2014-06-06', -500, 4500, 'June'),
('Evans', 705520384, 500, NULL, NULL, -9000, 14000, 'June'),
('Benjamin', 727200965, 500, NULL, NULL, -500, 5530, 'June'),
('Gabriel', 724048099, 500, NULL, NULL, 0, 5030, 'June'),
('Godfrey', 714493363, 500, NULL, NULL, 0, 5000, 'June'),
('Ruth', 729890309, 500, NULL, NULL, 0, 1000, 'June');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `dateTaken` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phoneNo` int(20) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `amtGiven` int(20) DEFAULT NULL,
  `balance` int(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `datePaid` varchar(30) DEFAULT NULL,
  `paidAmount` int(10) DEFAULT NULL,
  `debt` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`dateTaken`, `name`, `phoneNo`, `total`, `amtGiven`, `balance`, `status`, `datePaid`, `paidAmount`, `debt`) VALUES
('2013-11-04', 'Peter', 720548150, 8240, 1000, 7240, 'PAID', '30-01-2014', 1000, 0),
('2013-12-12', 'Gabriel', 724048099, 8140, 8000, 140, 'PAID', '08-03-2014', 2000, 0),
('2013-12-27', 'Family', 0, 3640, 2200, 0, 'NON REFUNDABLE', 'NULL', 0, 0),
('2013-12-28', 'Evans', 705520384, 940, 500, 940, 'PAID', '25-01-2014', 500, 0),
('2014-02-18', 'family', 1, 16440, 3100, 0, 'NON REFUNDABLE', 'NULL', 0, 3100),
('2014-03-18', 'Godfrey', 714493363, 12340, 3000, 9340, 'UNPAID', 'NULL', 0, 3060),
('2014-03-20', 'Peter', 720548150, 9340, 1000, 8340, 'UNPAID', 'NULL', 0, 1020),
('2014-04-29', 'Gabriel', 724048099, 10970, 5030, 5940, 'UNPAID', 'NULL', 0, 20482);

-- --------------------------------------------------------

--
-- Table structure for table `uaccounts`
--

CREATE TABLE IF NOT EXISTS `uaccounts` (
  `name` varchar(30) DEFAULT NULL,
  `phoneNo` int(20) DEFAULT NULL,
  `propAmount` int(20) DEFAULT NULL,
  `lastPaid` varchar(30) DEFAULT NULL,
  `paidAmount` int(20) DEFAULT NULL,
  `balance` int(20) DEFAULT NULL,
  `total` int(20) NOT NULL DEFAULT '0',
  `monthPaid` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `indTotal` int(20) DEFAULT NULL,
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `uaccounts`
--

INSERT INTO `uaccounts` (`name`, `phoneNo`, `propAmount`, `lastPaid`, `paidAmount`, `balance`, `total`, `monthPaid`, `year`, `indTotal`, `id`) VALUES
('Peter', 720548150, 300, '2013-08-07', 350, 250, 350, 'August', '2013', 350, 1),
('Godfrey', 714493363, 500, '2013-08-12', 500, 500, 850, 'August', '2013', 500, 2),
('Dennis', 723937640, 500, '2013-08-12', 500, 1000, 1350, 'August', '2013', 500, 3),
('Benjamin', 727200965, 500, '2013-08-27', 1030, 470, 2380, 'August', '2013', 1030, 4),
('Godfrey', 714493363, 500, '2013-09-01', 500, 500, 2880, 'September', '2013', 1000, 5),
('Gabriel', 724048099, 500, '2013-09-03', 1030, 470, 3910, 'September', '2013', 1030, 6),
('Peter', 720548150, 300, '2013-09-06', 330, 1200, 4240, 'September', '2013', 680, 7),
('Godfrey', 714493363, 500, '2013-09-30', 500, 0, 4740, 'September', '2013', 1500, 8),
('Dennis', 723937640, 500, '2013-10-20', 1000, 0, 5740, 'October', '2013', 1500, 9),
('Gabriel', 724048099, 500, '2013-10-30', 1000, -500, 6740, 'October', '2013', 2030, 10),
('Benjamin', 727200965, 500, '2013-11-01', 1000, -500, 7740, 'October', '2013', 2030, 11),
('Dennis', 723937640, 500, '2013-11-22', 500, 0, 8240, 'November', '2013', 2000, 12),
('Dennis', 723937640, 500, '2013-12-05', 500, -500, 7740, 'November', '2013', 2500, 13),
('Gabriel', 724048099, 500, '2013-12-15', 500, 0, 8240, 'December', '2013', 2530, 14),
('Godfrey', 714493363, 500, '2013-12-28', 1000, 0, 1140, 'December', '2013', 2500, 15),
('Evans', 705520384, 500, '2013-12-28', 2500, 0, 3640, 'December', '2013', 2500, 16),
('Benjamin', 727200965, 500, '2014-01-13', 1000, 0, 1940, 'January', '2014', 3030, 17),
('Gabriel', 724048099, 500, '2014-01-13', 500, 0, 2440, 'January', '2014', 3030, 18),
('Godfrey', 714493363, 500, '2014-01-15', 1000, 0, 2940, 'January', '2014', 3000, 19),
('Evans', 705520384, 500, '2014-01-25', 500, 0, 8940, 'January', '2014', 3000, 20),
('Peter', 720548150, 300, '2014-01-30', 1200, 0, 11140, 'January', '2014', 1880, 21),
('Evans', 705520384, 500, '2014-02-05', 500, 0, 11640, 'February', '2014', 3500, 22),
('Godfrey', 714493363, 500, '2014-02-06', 500, 0, 12140, 'February', '2014', 3500, 23),
('Benjamin', 727200965, 500, '2014-02-07', 2500, -2000, 14640, 'February', '2014', 5530, 24),
('Gabriel', 724048099, 500, '2014-02-08', 500, 0, 16140, 'February', '2014', 3530, 26),
('Peter', 720548150, 300, '2014-02-11', 300, 0, 13340, 'February', '2014', 2180, 27),
('Peter', 720548150, 300, NULL, NULL, 330, 13340, 'March', '2014', 2180, 42),
('Dennis', 723937640, 500, '2014-03-10', 500, 0, 16840, 'March', '2014', 3000, 43),
('Evans', 705520384, 500, '2014-03-11', 500, 0, 17340, 'March', '2014', 4000, 44),
('Benjamin', 727200965, 500, NULL, NULL, -1500, 14640, 'March', '2014', 5530, 45),
('Gabriel', 724048099, 500, '2014-03-08', 500, 0, 15840, 'March', '2014', 4030, 46),
('Godfrey', 714493363, 500, '2014-03-09', 500, 0, 9340, 'March', '2014', 4000, 47),
('Peter', 720548150, 300, '2014-04-09', 630, 0, 9470, 'April', '2014', 2810, 48),
('Dennis', 723937640, 500, '2014-04-08', 500, 0, 8840, 'April', '2014', 3500, 49),
('Evans', 705520384, 500, '2014-04-01', 10000, -9500, 8340, 'April', '2014', 14000, 50),
('Benjamin', 727200965, 500, NULL, NULL, -1000, 14640, 'April', '2014', 5530, 51),
('Gabriel', 724048099, 500, '2014-04-14', 500, 0, 9970, 'April', '2014', 4530, 52),
('Godfrey', 714493363, 500, '2014-04-19', 500, 0, 10470, 'April', '2014', 4500, 53),
('Ruth', 729890309, 500, '2014-04-19', 500, 0, 5940, 'April', '2014', 500, 54),
('Dennis', 723937640, 500, '2014-05-03', 500, 0, 6440, 'May', '2014', 4000, 56),
('Evans', 705520384, 500, NULL, NULL, -9000, 8340, 'May', '2014', 14000, 57),
('Benjamin', 727200965, 500, NULL, NULL, -500, 14640, 'May', '2014', 5530, 58),
('Gabriel', 724048099, 500, '2014-05-15', 500, 0, 6940, 'May', '2014', 5030, 59),
('Godfrey', 714493363, 500, '2014-05-15', 500, 0, 7440, 'May', '2014', 5000, 60),
('Ruth', 729890309, 500, '2014-05-15', 500, 0, 7940, 'May', '2014', 1000, 61),
('Peter', 720548150, 300, '2014-05-16', 303, 0, 8243, 'May', '2014', 3113, 62),
('Peter', 720548150, 300, NULL, NULL, 0, 8243, 'June', '2014', 3113, 63),
('Dennis', 723937640, 500, '2014-06-06', 500, -500, 8743, 'June', '2014', 4500, 64),
('Evans', 705520384, 500, NULL, NULL, -9000, 8340, 'June', '2014', 14000, 65),
('Benjamin', 727200965, 500, NULL, NULL, -500, 14640, 'June', '2014', 5530, 66),
('Gabriel', 724048099, 500, NULL, NULL, 0, 6940, 'June', '2014', 5030, 67),
('Godfrey', 714493363, 500, NULL, NULL, 0, 7440, 'June', '2014', 5000, 68),
('Ruth', 729890309, 500, NULL, NULL, 0, 7940, 'June', '2014', 1000, 69);

-- --------------------------------------------------------

--
-- Table structure for table `utransactions`
--

CREATE TABLE IF NOT EXISTS `utransactions` (
  `dateTaken` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phoneNo` int(20) NOT NULL DEFAULT '0',
  `total` int(20) DEFAULT NULL,
  `amtGiven` int(20) DEFAULT NULL,
  `balance` int(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `datePaid` varchar(30) DEFAULT NULL,
  `paidAmount` int(10) DEFAULT NULL,
  `debt` int(20) DEFAULT NULL,
  PRIMARY KEY (`phoneNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utransactions`
--

INSERT INTO `utransactions` (`dateTaken`, `name`, `phoneNo`, `total`, `amtGiven`, `balance`, `status`, `datePaid`, `paidAmount`, `debt`) VALUES
('2013-12-27', 'Family', 0, 3640, 2200, 0, 'NON REFUNDABLE', 'NULL', 0, 0),
('2013-12-28', 'Evans', 705520384, 940, 500, 940, 'PAID', '25-01-2014', 500, 0),
('2014-03-18', 'Godfrey', 714493363, 12340, 3000, 9340, 'UNPAID', 'NULL', 0, 3060),
('2014-03-20', 'Peter', 720548150, 9340, 1000, 8340, 'UNPAID', 'NULL', 0, 1020),
('2014-04-29', 'Gabriel', 724048099, 10970, 5030, 5940, 'UNPAID', 'NULL', 0, 20482);

DELIMITER $$
--
-- Events
--
CREATE EVENT `acc_update` ON SCHEDULE EVERY 1 MONTH STARTS '2014-06-16 13:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
set @month=date_format(curDate(),"%M");
update accounts set balance=balance+propAmount*1.01 where balance>=0;
update accounts set balance=balance+propAmount where balance<0;
update uaccounts set balance=balance+propAmount*1.01 where balance>=0 and monthPaid=@month;
update uaccounts set balance=balance+propAmount where balance<0 and monthPaid=@month;
update individual set balance=balance+propAmount*1.01 where balance>=0 and monthPaid=@month;
update individual set balance=balance+propAmount where balance<0 and monthPaid=@month;
end$$

CREATE EVENT `tra_update` ON SCHEDULE EVERY 1 MONTH STARTS '2014-06-16 13:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
update transactions set debt=debt*1.01 where status='INCOMPLETE' OR status='UNPAID';
update utransactions set debt=debt*1.01 where status='INCOMPLETE' OR status='UNPAID';
end$$

CREATE EVENT `insert_acc` ON SCHEDULE EVERY 1 MONTH STARTS '2014-07-01 13:00:00' ON COMPLETION NOT PRESERVE ENABLE DO begin
insert into uaccounts (name,phoneNo,propAmount,balance,total,indtotal) select
    name,phoneNo,propAmount,balance,total,indtotal from accounts;
insert into individual (name,phoneNo,propAmount,balance,indtotal) select
    name,phoneNo,propAmount,balance,indtotal from accounts;
set @month=date_format(curDate(),"%M");
set @year=date_format(curDate(),"%Y");
update uaccounts set monthPaid=@month where monthPaid is null;
update individual set monthPaid=@month where monthPaid is null;
update uaccounts set year=@year where paidAmount is null;
end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
