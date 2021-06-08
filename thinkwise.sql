-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 11:36 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thinkwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `del_status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `mobile`, `password`, `del_status`) VALUES
(1, 'Krishna', 'krishna@gmail.com', '9876543210', 'kris', '0');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branchname`, `address`, `phonenumber`, `date`, `time`, `del_status`) VALUES
(8, 'Chennai', 'chennai, Tamilnadu', '9884473510', '2020-01-06', '00:20:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branchleave`
--

CREATE TABLE `branchleave` (
  `id` int(11) NOT NULL,
  `branchid` varchar(255) NOT NULL,
  `employeename` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `noofleave` varchar(255) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `leavetype` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `approvelstatus` varchar(255) NOT NULL,
  `leavestatus` int(11) NOT NULL DEFAULT '0',
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branchlist`
--

CREATE TABLE `branchlist` (
  `id` int(11) NOT NULL,
  `branchId` varchar(255) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchlist`
--

INSERT INTO `branchlist` (`id`, `branchId`, `companyid`, `branch`, `date`, `del_status`) VALUES
(1, 'BRA1001', '001', 'chennai', '2021-06-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `create_at` varchar(255) NOT NULL,
  `create_by` date NOT NULL,
  `modified_at` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `description`, `color`, `start_date`, `end_date`, `create_at`, `create_by`, `modified_at`, `modified_by`) VALUES
(1, 'title', 'description', 'red', '2019-09-04', '2019-09-12', 'today', '2019-09-03', 'today', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `priority_status` varchar(255) NOT NULL,
  `call_create` date NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `bdmname` varchar(255) NOT NULL,
  `sourceofcall` varchar(255) NOT NULL,
  `jointcall` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_designation` varchar(255) NOT NULL,
  `contact_person_mobile` varchar(255) NOT NULL,
  `person_meet_name` varchar(255) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `mobile_number` varchar(250) NOT NULL,
  `call_status` varchar(255) NOT NULL,
  `producttype` varchar(255) NOT NULL,
  `no_of_visits` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL,
  `next_appointment_date` date NOT NULL,
  `next_appointment_time` time NOT NULL,
  `kmstravelled` varchar(255) NOT NULL,
  `fromplace_toplace` varchar(255) NOT NULL,
  `conveyance` varchar(255) NOT NULL,
  `visit1` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `priority_status`, `call_create`, `branchname`, `bdmname`, `sourceofcall`, `jointcall`, `customer_name`, `address`, `phone_no`, `contact_person_name`, `contact_person_designation`, `contact_person_mobile`, `person_meet_name`, `designation`, `mobile_number`, `call_status`, `producttype`, `no_of_visits`, `description`, `timein`, `timeout`, `next_appointment_date`, `next_appointment_time`, `kmstravelled`, `fromplace_toplace`, `conveyance`, `visit1`, `del_status`) VALUES
(1, 'P7', '2019-07-09', 'Chennai Branch', 'Krishna', 'Cold Call', 'Mouli', 'Ram', '124/12 anna nagar,chennai-600018', '9876543210', 'mouli', 'CEO', '9876543210', 'Krishna', 'CEO', '9876543210', 'Cold Call', 'Product Type', 6, 'Product description details', '38:22:12', '21:20:20', '2019-07-02', '56:19:10', '23 Kms', 'chennai to  erode', 'Mode of Conveyance', '11/12/2018,product Description,product issue', 0);

-- --------------------------------------------------------

--
-- Table structure for table `conveyance`
--

CREATE TABLE `conveyance` (
  `id` int(11) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `bike` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conveyance`
--

INSERT INTO `conveyance` (`id`, `branchname`, `car`, `bike`, `others`, `date`, `time`, `del_status`) VALUES
(1, 'Chennai', '5', '5', '', '2020-01-06', '17:30:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `createleave`
--

CREATE TABLE `createleave` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `create_by` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0',
  `active_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createleave`
--

INSERT INTO `createleave` (`id`, `branch`, `start_date`, `end_date`, `title`, `month`, `description`, `color`, `year`, `create_by`, `del_status`, `active_status`) VALUES
(56, 'Chennai', '2020-01-01', '2020-01-01', 'New Year', 'September', 'description', 'Red', '2019', '2019-09-04', 0, 1),
(57, 'Chennai', '2020-01-15', '0000-00-00', 'Pongal', 'January', 'Pongal', 'Yellow', '2020', '2020-01-11', 0, 1),
(58, 'Chennai', '2020-01-16', '0000-00-00', 'Thiruvalluvar Day', 'January', 'Thiruvalluvar Day', 'Yellow', '2020', '2020-01-11', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `create_employee`
--

CREATE TABLE `create_employee` (
  `id` int(11) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `selectbranch` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `employeenumber` varchar(255) NOT NULL,
  `joiningdate` date NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobilenumber` varchar(255) NOT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `panno` varchar(100) NOT NULL,
  `aadharno` varchar(100) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `accountnumber` varchar(100) NOT NULL,
  `visaexpirydate` varchar(255) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `teamid` varchar(255) NOT NULL,
  `empimg` varchar(5000) NOT NULL,
  `country` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_employee`
--

INSERT INTO `create_employee` (`id`, `companyid`, `companyname`, `employeeid`, `role`, `selectbranch`, `firstname`, `lastname`, `employeenumber`, `joiningdate`, `designation`, `department`, `gender`, `birthday`, `address`, `mobilenumber`, `emailaddress`, `password`, `panno`, `aadharno`, `bankname`, `ifsc`, `accountnumber`, `visaexpirydate`, `teamname`, `teamid`, `empimg`, `country`, `del_status`) VALUES
(33, '001', 'DK', 'EMP10018', 'employee', 'Erode', 'Ragu', 'R', '00000123', '2019-11-14', 'services', '', 'Male', '2019-11-13', '#124/6  anna nagar chennai', '987645313265', 'ragu@gmail.com', 'ragu', 'IUHKJB643538', '9685231475896', 'IOB', 'IOB0000212', '10100065423001', '2019-11-17', 'darkknight', '1', '', '', 0),
(34, '001', 'ERPMark', 'EMP10019', 'Employee', 'Chennai', 'Deepan', 'A', '60003190010', '2020-01-02', 'Area Head', '', 'Male', '1977-08-23', 'No.7 Sakthi vinayagar koil street', '9445149490', 'deepan.a@thinkwise.pro', 'deepan2020', 'ARYPD0015D', '509463008888', 'BOI', 'BKID0008013', '801310110012763', '', 'darkknight', '', '', '', 0),
(37, '001', '', 'EMP10021', 'employee', 'Chennai', 'Yogendiran', '', '1001001', '2019-02-20', 'BDM', '', 'Male', '1997-02-07', 'ECRaaaaaaaaaaaaaa', '7010743603', 'yogendiran.s@thinkwise.pro', 'yogi1@3', 'WEFD25SDF1', '21654946698464', 'IOB', 'FGDF245DFD', '884531356456', '', 'darkknighta', '5', '', '', 0),
(38, '002', '', 'EMP10022', 'employee', 'Chennai', 'Rishikesh', 'H', '1001002', '2018-02-22', 'BDM', '', 'Male', '1997-07-02', 'Porur', '7904081156', 'rishikesh@thinkwise.pro', 'rishi1@3', 'lknjkjljoljpo', 'jjpjpjpojp', 'IOB', 'jpoijp', 'pojpjpo', '', 'darkknight', '', '', '', 0),
(39, '002', '', 'EMP10023', 'employee', 'Chennai', 'Saravanan', 'S', '1001003', '2019-06-03', 'BDM', '', 'Male', '1996-09-02', 'Triplicane', '9677857427', 'saravanan@thinkwise.pro', 'sara1@3', 'klnjklj', 'pjoj0', 'mjlmp', 'l;m', 'ipop', '', 'darkknight', '', '', '', 0),
(40, '001', 'ERPMark', 'EMP10024', 'HR', 'Chennai', 'tom', 'a', '65', '2021-05-02', 'HR', '', 'Male', '2021-05-02', 'chennai', '9876543210', 'logu@gmail.com', 'qwerty', '', '', '', '', '', '', 'darkknight', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentId` varchar(255) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departmentId`, `companyid`, `department`, `date`, `del_status`) VALUES
(1, 'DEP1001', '001', 'web development', '2021-06-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designationId` varchar(255) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designationId`, `companyid`, `designation`, `date`, `del_status`) VALUES
(1, 'DES1001', '001', 'Web Developer', '2021-06-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `designation_menu`
--

CREATE TABLE `designation_menu` (
  `id` int(11) NOT NULL,
  `label_name` varchar(250) NOT NULL,
  `route_path` varchar(500) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `icons` varchar(250) NOT NULL,
  `menu_list` varchar(100) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation_menu`
--

INSERT INTO `designation_menu` (`id`, `label_name`, `route_path`, `designation`, `icons`, `menu_list`, `del_status`) VALUES
(1, 'Employee', '/home/employee/list-employee', 'Employee', 'la la-users', '0', 0),
(2, 'Attendance', '/home/attendance/list-attendance', 'Employee', 'la la-users', '0', 0),
(3, 'Team_Allocation', '/home/allocate-team/list-team', 'Employee', 'la la-users', '0', 0),
(4, 'Generate_Sprints', '/home/allocate-sprint/list-sprint', 'Employee', 'la la-users', '0', 0),
(5, 'Leave', '/home/allocate-leave/list-leave', 'Employee', 'la la-users', '0', 0),
(6, 'Timesheet', '/home/timesheet/list-timesheet', 'Employee', 'la la-users', '0', 0),
(7, 'Resigination', '/home/resigination/resigination-list', 'Employee', 'la la-users', '0', 0),
(8, 'Project_allocation', '/home/allocate-task/list-task', 'Employee', 'la la-users', '0', 0),
(9, 'Settings', '/home/settings/', 'Employee', 'la la-users', '0', 0),
(10, 'Reports', '/home/reports/', 'Employee', 'la la-users', '0', 0),
(11, 'Employee', '/home/employee/list-employee', 'HR', 'la la-users', '0', 0),
(12, 'Leave', '/home/allocate-leave/list-leave', 'HR', 'la la-users', '0', 0),
(13, 'Attendance', '/home/attendance/list-attendance', 'HR', 'la la-users', '0', 0),
(14, 'Reports', '/home/reports/', 'HR', 'la la-users', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `bdmname` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `customeraddress` varchar(255) NOT NULL,
  `customerphoneno` varchar(255) NOT NULL,
  `joincall` varchar(255) NOT NULL,
  `prioritystatus` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `callstatus` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productvalue` varchar(255) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `fromplace` varchar(255) NOT NULL,
  `toplace` varchar(255) NOT NULL,
  `intime` time NOT NULL,
  `outtime` time NOT NULL,
  `kmstravelled` varchar(255) NOT NULL,
  `modeofconveyance` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `bike` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `enteramount` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `editdate` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `signupdate` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0',
  `activestatus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `employeeid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `joincall`, `prioritystatus`, `description`, `purpose`, `callstatus`, `productname`, `productvalue`, `appointmentdate`, `appointmenttime`, `fromplace`, `toplace`, `intime`, `outtime`, `kmstravelled`, `modeofconveyance`, `car`, `bike`, `others`, `enteramount`, `date`, `editdate`, `month`, `year`, `signupdate`, `del_status`, `activestatus`) VALUES
(3, 'EMP10002', 'Mouli', 'Erode', 'CLT10005', 'AABA', 'chnnei', '28727282', 'Deepan.a', 'P6', '', '', 'Cold Call', '', '', '2020-01-08', '00:00:00', 'cnnan', 'nsbsggs', '15:30:00', '17:30:00', '10', 'Bike', '', '', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(4, 'EMP10002', 'Mouli', 'Erode', 'CLT10006', 'E', 'E', 'E', 'E', 'P1', '', '', 'Follow Up', '', '', '2020-01-09', '00:12:00', 'E', 'C', '00:12:00', '00:12:00', '12', 'Bike', '', '', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(5, 'EMP10002', 'Mouli', 'Erode', 'CLT10006', 'W', 'QW', 'W', 'QW', 'P4', '', '', 'Follow Up', '', '', '2020-01-07', '00:12:00', 'ER', 'CH', '00:12:00', '00:12:00', '12', 'Bike', '', '', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(6, 'EMP10020', 'bdm', 'Chennai', 'CLT10007', 'q', 'q', 'q', 'qq', 'P1', '', '', 'Cold Call', '', '', '2020-01-07', '00:12:00', 'qw', 'wq', '09:54:00', '08:55:00', '12', 'Bike', '', '', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(8, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10008', 'A', 'A', 'A', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '', '', '00:00:00', '00:00:00', '', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(9, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10009', 'Abc', 'Ghh', '988455767676', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '', '', '00:00:00', '00:00:00', '', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(10, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', '', '', 'Negotiation', '', '', '2020-01-08', '12:00:00', 'uthandi', 'kelambakkam', '09:35:00', '10:40:00', '17', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(11, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10011', 'sushil hari international', 'sri ramajaya campus, off kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414000', '', 'P7', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'market rd', 'sri ramajaya campus', '10:50:00', '11:10:00', '4.4', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(12, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10012', 'bhuvana krishna matric', 'bkm campus, kelambakkam, chennai 603103', '04427474136', '', 'P7', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'pudupakkam', 'kelambakkam', '11:10:00', '11:20:00', '1.5', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(13, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10012', 'bhuvana krishna matric', 'bkm campus, kelambakkam, chennai 603103', '04427474136', '', 'P7', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'pudupakkam', 'kelambakkam', '11:10:00', '11:20:00', '1.5', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(14, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10013', 'st francis de sales matric hr sec', 'kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414747', '', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'kelambakkam', 'pudupakkam', '11:30:00', '11:45:00', '1.8', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(15, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'pudupakkam', 'ponmar', '12:00:00', '12:20:00', '16', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(16, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10015', 'horizon international academy', 'kovilanchery, chennai 600126', '9176865944', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'ponmar', 'kovilanchery', '12:40:00', '01:10:00', '4.5', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(17, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10016', 'st joseph matric hr sec', 'melakottaiyur, kelambakkam vandalur main rd, chennai 600048', '04427409777', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'kovilanchery', 'melkotayur', '01:50:00', '02:15:00', '9.8', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(18, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10016', 'st joseph matric hr sec', 'melakottaiyur, kelambakkam vandalur main rd, chennai 600048', '04427409777', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'kovilanchery', 'melkotayur', '01:50:00', '02:15:00', '9.8', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(19, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10016', 'st joseph matric hr sec', 'melakottaiyur, kelambakkam vandalur main rd, chennai 600048', '04427409777', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'kovilanchery', 'melkotayur', '01:50:00', '02:15:00', '9.8', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(20, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10017', 'colours indian school', 'melkotaiyur, vandalur kelambakkam rd, chennai 600127', '8056017561', '', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'melkotayur', 'melkotayur', '02:40:00', '03:20:00', '1.5', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(21, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10018', 'crescent school', 'b.s abdur rahman colllege campus, vandalur, chennai 600048', '04422750351', '', 'P6', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'melkotayur', 'vandalur', '03:15:00', '03:30:00', '10.5', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(22, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10019', 'sri sankara global academy', 'gst road, ambika nagar, urapakkam, chennai 603210', '04422751088', '', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'vandalur', 'urapakkam', '03:40:00', '03:55:00', '3.5', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(23, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10020', 'saraswathi matric hr sec', 'gangai naagr main rd, ravathipuram, urapakkam, chennai 603210', '9841293903', '', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'urapakkam', 'iyencheri', '04:00:00', '04:15:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(24, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10021', 'ananthavalli matric hr sec', 'no 182, gst rd, senthil nagar, urapakkam, chennai 603211', '04427465959', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'iyencheri', 'urapakkam', '04:30:00', '04:40:00', '2.9', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(25, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10020', 'Vishwaksena Mat hr sec school', 'Thiruvallur Road, SH-57, Sriperumbudur Oragadam, Polivakkam, Tamil Nadu 602002', '9566205555', 'Mr.Deepan', 'Sign Up', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Tiruvallur', '09:30:00', '11:30:00', '120', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(26, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10022', 'Sidhaartha matriculation hr sec school', 'School Road,FCI Colony,Thiruvallur Dist -602025, Sevvapet, Tamil Nadu 602025', '095002 07316', 'Mr.Deepan', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Tiruvallur', 'Veppampatu', '12:30:00', '13:15:00', '16', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(27, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10023', 'Grace park convent mat hr sec school', 'No 80, 4th Main Road, Thirunindravur, Near Siva Sakthi Temple Babuji Nagar', '9444282581', 'Mr.Deepan', 'P2', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veppampatu', 'Tiruninravur', '13:15:00', '14:15:00', '9', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(28, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', 'joined with Mr. deepan', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'nandambakkam', 'anandam nagar', '09:38:00', '09:57:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(29, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10025', 'Dr. Vimala convent matriculation hr sec school', '4/1, amman nagar main rd, chellammal nagar, ramapuram, chennai, Tamil nadu 600089', '04424745509', 'Mr. deepan joined with me', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'anandam nagar', 'amman nagar', '10:17:00', '10:37:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(30, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10026', 'M R Matriculation hr sec school', 'balavinayanagar, near Mr school, Nerkundram, Chennai, Tamil nadu 600095', '08925260203', 'Mr. deepan joined with me', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'saligramam', 'balavinayanagar', '11:36:00', '12:04:00', '4.4', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(31, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10027', 'Sri Devi school', 'Krishna nagar, koyembedu, chennai, tamil nadu 600095', '7200762375', 'Mr. deepan joined with me', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'balavinayanagar', 'krishna nagar', '12:23:00', '12:48:00', '2.6', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(32, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10028', 'Asan Memorial Senior secondary school', 'Cochin House 1, Anderson Rd, Thousand Lights west, gandhi nagar, chennai, tamil nadu 600006', '04428275858', 'Mr. deepan joined with me', 'P7', '', '', 'Demo Call', '', '', '2020-01-18', '11:00:00', 'krishna nagar', 'Anderson rd', '13:39:00', '14:16:00', '8.8', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(33, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10029', 'crescent matriculation hr sec school', 'Rina mandal Rd, pycrofts garden Rd, Thousand Lights west Nugambakkam, Chennai tamil nadu 600006', '04428274616', 'Mr.deepan joined with me ', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'anderson rd', 'Thousand lights', '14:39:00', '15:19:00', '2.3', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(34, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10030', 'Good shephered Matriculation hr sec school', '32,college rd, subba roadavenue, nugambakkam, chennai tamil nadu 600034', '04428276729', 'Mr. deepan joined', 'ZNI', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'thousand lights', 'subbha rd', '15:38:00', '16:09:00', '2.1', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(35, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10031', 'G R T Mahalakshmi vidyalaya', '76, 7th avenue, indira colony, ashok nagar, chennai, tamil nadu 600083', '04424891232', 'mr deepan joined', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'subbha rd', 'indira colony', '16:23:00', '16:38:00', '7.2', 'Bike', '5', '5', '', '', '2020-01-06', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(36, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', 'Mr. krishna joined with me', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'nandambakkam', 'mugalivakkam', '09:27:00', '09:58:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(37, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10033', 'M.K.M Matriculation hr sec school', '1, Subashree Nagar III Phase, Mugalivakkam, porur, Chennai, Tamil nadu 600125', '04422523599', 'Mr. krishna ', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mugalivakkam', 'subashree nagar', '10:12:00', '10:28:00', '5.2', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(38, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', 'Mr. krishna ', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'subashree nagar', 'balaji koil ', '10:43:00', '11:09:00', '3.6', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(39, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10035', 'St. Marys Matriculation hr sec school', 'NO 45 vigneshwara nagar, porur chennai tamil nadu 600116', '04424825533', 'Mr.krishna ', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'balaji koil', 'vigneshwara nagar', '11:29:00', '23:46:00', '5.8', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(40, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10036', 'Kalashetra Matriculation school', 'No.2, Mount poonamallee high road, ayyappanthangal, Kattupakkam, chennai Tamil nadu 600056', '04426792244', 'Mr krishna ', 'P4', '', '', 'Support Call', '', '', '0000-00-00', '00:00:00', 'vigneswara nagar', 'iyappanthangal rd', '12:14:00', '12:34:00', '8.2', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(41, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10037', 'Pioneer school', 'Pilliyar koil st, Maccana industrial Estate, velappanchavadi, poonamalle, chennai, Tamil nadu 600077', '7811833155', 'Mr Krishna ', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'iyappanthangal rd', 'pilliar koil st', '12:54:00', '13:16:00', '0', 'Bike', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(42, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10038', 'Sri annai vidyashram matric hr sec school', 'Sundaracholavaram main rd, Ram nagar, Eswaran nagar, Thiruverkadu, chennai, tamil nadu 600077', '044268007778', 'Mr Krishna ', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'pilliar koil st ', 'ram nagar', '13:33:00', '13:46:00', '0', 'car', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(43, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10026', 'M R Matriculation hr sec school', 'balavinayanagar, near Mr school, Nerkundram, Chennai, Tamil nadu 600095', '08925260203', 'Mr krishna ', 'P6', 'spoke to admin principal went for a meeting so said to come another day', 'to meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'ram nagar', 'balavinayanagar', '14:00:00', '14:11:00', '0', 'car', '5', '5', '', '', '2020-01-08', '2020-01-08', 'January', '2020', '0000-00-00', 0, 1),
(44, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10039', 'GOOD SHEPHERED Mat hr sec school', 'no 64, velan nagar 5th st, syndicate colony, sri ram nagar, valsaravakkam, chennai, tamil nadu 600087', '04424862003', 'Mr krishna ', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'balavinayanagar', 'sri ram nagar', '14:17:00', '14:27:00', '0', 'car', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(45, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', 'Mr krishna ', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'sri ram nagar', 'alappakam rd', '14:34:00', '14:42:00', '0', 'car', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(46, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', 'Mr krishna ', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'alapakkam rd ', 'svs nagar', '14:51:00', '14:57:00', '0', 'car', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(47, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10042', 'Amritha office', '132, arcot road virugambakkam, chennai 600092', '04423764063', 'Mr krishna ', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'svs nagar', 'arcot road', '15:04:00', '15:23:00', '0', 'car', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(48, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10043', 'Marthoma Matriculation hr sec school', '2, Bus stop, 1, Sri ayyappa nagar, chinmaya nagar, virugambakkam, chennai, tamil nadu 600092', '04424799335', 'Mr krishna ', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'arcot road', 'ayyapan nagar', '15:39:00', '16:10:00', '0', 'car', '5', '5', '', '', '2020-01-07', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(49, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10044', 'Montfort  high secondary school', 'Asurkan ashokana st, alandur, chennai tamil nadu 600016', '04422344891', '', 'P3', '', '', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'nandambakkam', 'asarkana ', '09:36:00', '09:52:00', '2.7', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(50, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10045', 'Britto matriculation higher secondary school', 'Abraham St, Officers Colony, Adambakkam, Chennai, Tamil Nadu 600088', '044 2255 1297', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Asarkana ', 'Officers colony', '10:14:00', '10:36:00', '5.9', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(51, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10046', 'Siva sakthi matriculation school', 'Bypass Road, Lakshmi Puram, Velachery, Chennai, Tamil Nadu 600042', '04422554185', 'Mr deepan', 'P3', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Officers colony ', 'Lakshmi puram', '10:45:00', '11:57:00', '6.2', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(52, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10046', 'kings matric hr sec', 'no 11, ponniamman koil street, balaiah gardens, madipakkam, chennai 600091', '04422422338', '', 'P5', '', '', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'uthandi', 'madipakkam', '09:40:00', '10:10:00', '23', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(53, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10047', 'st thomas matric hr sec', 'ram nagar, puzhuthivakkam, madipakkam, chennai 600091', '04422421779', '', 'P7', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'madipakkam', 'puzhuthibvakkm', '10:30:00', '10:50:00', '2.9', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(54, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10047', 'Guru nanak matriculation he secondary school', 'Anna Garden, Velachery, Chennai, Tamil Nadu 600042', '04422452253', '', 'ZNI', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Lakshmi puram', 'Anna garden', '12:18:00', '12:29:00', '3.6', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(55, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10048', 'holy prince matric hr sec', 'no 8, periyar nagar main rd, madipakkam, chennai 600091', '04422584300', 'mr krishna', 'ZNI', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'puzhuthivakkm', 'periyar nagar', '11:15:00', '11:50:00', '2.5', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(56, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10049', 'vaelankani silver jubilee matric hr sec', '1st street, deivanai street, rammurthi nagar, madipakkam, chennai 600091', '04422476880', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'periyar nagar', 'rammurthi nagar', '12:15:00', '12:35:00', '4.7', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(57, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', 'mr krishna', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'periyar nagar', '200 ft rd', '12:50:00', '01:10:00', '5.9', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(58, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10051', 'st marks matric hr sec', 'no 141, radha nagar main rd, subash nagar, chrompet, chennai 600044', '04422650404', 'mr krishna', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', '200 ft rd', 'radha nagar', '01:20:00', '01:30:00', '6.8', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(59, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10052', 'st vincent palloti matric hr sec', 'palloti salai, zamin pallavaram, theresa nagar, chennai 600117', '04422661727', 'mr krishna', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'radha nagar', 'zamin pallavaram', '02:15:00', '02:30:00', '0', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(60, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10048', 'Akshayah matriculation he sec school', 'No. 8, LIC Colony 1st St, Tansi Nagar, Velachery, Chennai, Tamil Nadu 600042', '044 2243 2755', '', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Anna garden', 'Tansi nagar', '12:39:00', '01:04:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(61, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10053', 'sri sankara matric hr sec', 'no 6, ekambaram street, opp to csi church, gokulam colony, pammal, chennai 600075', '9443964053', 'mr krishna', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'zamin pallavaram', 'ekambaram st', '02:20:00', '02:45:00', '0', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(62, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10054', 'sri sankara matric hr sec and global', '1st cross street, sankar nagar, moovendar colony, pammal, chennai 600075', '7358395382', 'mr krishna', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'ekambaram st', 'shankar nagar', '03:10:00', '03:45:00', '0', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(63, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10053', 'DAV public school', 'Sai Subhiksha, 186, 2nd main Rd bhuvaneshwari nagar, Bhuvaneshwari Nagar, Velachery, Chennai, Tamil Nadu 600042', '0000', '', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Tansi nagar', 'Seetharam nagar', '01:20:00', '01:37:00', '3.5', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(64, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10055', 'sacred heart matric hr sec', 'kamarajapuram, thiruneermalai main rd, anakaputtur, chennai 600070', '9176498476', 'mr krishna', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'sankar nagar', 'kamarajapuram', '04:10:00', '04:40:00', '0', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(65, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10052', 'St. Ann\'s Matriculation Higher Secondary School', 'Thapalpetti, Kanchi Ponnusamy Thottam, Madhavaram, Chennai, Tamil Nadu 600060', ' 044 2558 434', 'Mr.Deepan', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Madhavaram', '10:00:00', '10:15:00', '12', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(66, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10055', 'Sunshine Chennai senior secondary school', '86/2, Jawaharlal Nehru Rd, AGS Colony, Puzhuthivakkam, Madipakkam, Chennai, Tamil Nadu 600091', '044 2258 2001', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Seetharam nagar', 'Ags colony', '01:51:00', '02:14:00', '4.2', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(67, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10056', 'ACHARYA MAHASHRAMAN TERAPANTH JAIN PUBLIC SCHOOl', '57 - 58, Thattankulam Rd, Lotus Colony, J Garden, Madhavaram, Chennai, Tamil Nadu 600060', '72008 45678', 'Mr.Deepan', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'Madhavaram', '10:25:00', '10:40:00', '3', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(68, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10057', 'Sri sakthi matriculation', 'Sri Sakthi Matriculation School Sarangpani Nagar, Main Rd, Madhavaram, Chennai, Tamil Nadu 600060', '044 2553 0636', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'Madhavaram', '00:00:00', '00:00:00', '4', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(69, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10056', 'Modern senior secondary school', 'Lakshmi Nagar IV Stage, AG\'S Office Colony, Nanganallur, Chennai, Tamil Nadu 600061', '044 2224 0110', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ags colony', 'Lakshmi nagar', '02:30:00', '02:58:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(70, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10058', 'F.E.S. Matriculation Higher Secondary School', 'R 82, 7th Block, Muthamizh Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 2554 6080', 'Mr.Deepan', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'Madhavaram', '11:45:00', '11:55:00', '4', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(71, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10059', 'SMK Vidhyashram', 'Kodungaiyur (East), Muthamizh Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 123456', 'Mr.Deepan', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'Madhavaram', '12:00:00', '12:10:00', '3', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(72, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10060', 'St. Joseph\'s Matriculation Higher School', '9, 2nd cross 5th Street, Seetharam Nagar, RV Nagar, Chennai, Tamil Nadu 600118', '044 25551240', 'Mr.Deepan', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'Kodingiyur', '13:00:00', '15:00:00', '15', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(73, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10058', 'Brilliant matriculation he secondary School', 'No. 11, 2nd, MMTC Colony 2nd Main Rd, Kannan Nagar, Nanganallur, Chennai, Tamil Nadu 600091', '044 2224 3597', '', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Lakshmi nagar', 'Mmtc colony', '03:14:00', '03:37:00', '2.2', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(74, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10061', 'Grace mat school', 'SRP Colony, Peravallur, Perambur, Chennai, Tamil Nadu 600082', ' 044 2550 0224', 'Mr.Deepan', 'P2', '', '', 'Proposal Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'Peravallur', '15:00:00', '15:45:00', '10', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(75, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10061', 'D.A.V school', 'Sree Nandeeswarar Campus, 3rd St, Balaji Nagar, Adambakkam, Chennai, Tamil Nadu 600088', '044 2260 3544', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mmtc colony', 'Vel nagar', '03:45:00', '03:58:00', '3.3', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(76, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10062', 'St.Moses mat school', 'T V K Nagar, Gandhi Nagar, Perambur, Chennai, Tamil Nadu 600110', '044 26710054', 'Mr.Deepan', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Peravalur', 'peravallur', '16:10:00', '16:30:00', '7', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(77, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10062', 'Beta matriculation he secondary School', '47 & 49, Cart Track Rd, Maduvinkarai, Adambakkam, Chennai, Tamil Nadu 600032', '093810 03423', '', 'P2', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Vel nagar', 'Cart truck road', '04:09:00', '04:18:00', '3.1', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(78, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10063', 'St Dominic\'s Anglo Indian hr secondary school', 'Butt Road, St. Thomas Mount, Ramapuram, Tamil Nadu 600016', '044 2234 3778', '', 'P3', '', '', 'Support Call', '', '', '0000-00-00', '00:00:00', 'Cart truck road', 'Butt road', '04:23:00', '04:38:00', '7', 'Bike', '5', '5', '', '', '2020-01-08', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(79, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'Spoke to admin principal is absent today so said to come another day', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Mugalivakkam', '09:30:00', '09:48:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(80, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', '', 'P7', 'Spoke to admin principal was busy with meeting so said to come tomorrow', 'To meet principal ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mugalivakkam', 'Anandam nagar', '10:10:00', '10:29:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(81, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10042', 'Amritha office', '132, arcot road virugambakkam, chennai 600092', '04423764063', 'Mr.  Chandra mouli', 'P6', 'Spoke to swami in charger Vijay narayanan and I gave presentation he said he liked the app and get back to him on Feb 1st week', 'To give demo to swami', 'Demo Call', '', '', '2020-02-05', '00:00:00', 'Anandam nagar', 'Saligramam', '10:45:00', '12:33:00', '5.9', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(82, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10039', 'GOOD SHEPHERED Mat hr sec school', 'no 64, velan nagar 5th st, syndicate colony, sri ram nagar, valsaravakkam, chennai, tamil nadu 600087', '04424862003', '', 'P5', 'Spoke to Anne mam principal she told she will arrange a meeting as soon with correspondent', 'To meet principal ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Saligramam', 'Sri ram nagar', '12:49:00', '13:20:00', '4.1', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(83, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10026', 'M R Matriculation hr sec school', 'balavinayanagar, near Mr school, Nerkundram, Chennai, Tamil nadu 600095', '08925260203', '', 'P6', 'Spoke to admin principal was busy with the meeting so said to come later on another day', 'To meet principal ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sri ram nagar', 'Balavinayanagar', '13:33:00', '01:44:00', '2.9', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(84, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', '', 'P6', 'Spoke to admin principal was busy with the meetings so said to come later', 'To meet principal ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Balavinayanagar', 'Alapakkam rd', '14:07:00', '14:18:00', '4.1', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(85, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'Spoke to admin concern person went out so said to call and come tomorrow', 'To meet principal ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Alapakkam rd', 'Svs nagar', '14:26:00', '14:35:00', '2', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(86, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'Spoke to admin concern person went out so said to call and come tomorrow', 'To meet principal ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Alapakkam rd', 'Svs nagar', '14:26:00', '14:35:00', '2', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(87, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10036', 'Kalashetra Matriculation school', 'No.2, Mount poonamallee high road, ayyappanthangal, Kattupakkam, chennai Tamil nadu 600056', '04426792244', '', 'P4', 'Spoke to ao sir he said to come after pineal to talk about this', 'To meet ao ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Svs nagar ', 'Iyapanthangal rd', '14:58:00', '15:18:00', '9.2', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(88, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10064', 'Shri BS Mootha girls senior secondary school', '80, Brindavan St, Ramakrishnapuram, West Mambalam, Chennai, Tamil Nadu 600033', '044 4337 6363', '', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Iyappanthangal rd', 'Brindavan st', '00:00:00', '00:00:00', '13', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(89, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10065', 'Alpha school (main branch)', 'No.13, South, West Rd, CIT Nagar, Chennai, Tamil Nadu 600035', '044 2432 3179', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Brindavan st', 'Cit nagar', '16:05:00', '16:13:00', '4.2', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(90, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10063', 'St Dominic\'s Anglo Indian hr secondary school', 'Butt Road, St. Thomas Mount, Ramapuram, Tamil Nadu 600016', '044 2234 3778', '', 'P2', 'Spoke to principal she want to think about the cost to reduce and she will get back to us', 'To meet principal ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Cit nagar', 'Butt road', '16:29:00', '16:48:00', '7.1', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(91, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10066', 'ellen sharma matric hr sec', 'no 9, nedunchezhian street, sozhinganallur, chennai 600119', '04424501250', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'uthandi', 'sozhinganallur', '09:35:00', '10:10:00', '7.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(92, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10011', 'sushil hari international', 'sri ramajaya campus, off kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414000', '', 'P7', 'has went to get an appointment but ao told that she will talk to principal and let us know if interested', 'followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'sozhinganallur', 'sri rama jaya campus', '10:30:00', '10:50:00', '18', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(93, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', 'mr krishna', 'P3', 'has met mr ramakrishnan and gave him demo and told that he will get back by a week', 'followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'sri ramajaya campus', 'market rd', '12:20:00', '01:15:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(94, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', 'mr krishna', 'P3', 'has met mr ramakrishnan and gave him demo and told that he will get back by a week', 'followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'sri ramajaya campus', 'market rd', '12:20:00', '01:15:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(95, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', 'mr krishna', 'P3', 'has met mr ramakrishnan and gave him demo and told that he will get back by a week', 'followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'sri ramajaya campus', 'market rd', '12:20:00', '01:15:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(96, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', 'mr krishna', 'P3', 'has met mr ramakrishnan and gave him demo and he asked to visit after a week', 'followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'sri ramajaya campus', 'market rd', '12:20:00', '01:30:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-09', 'January', '2020', '0000-00-00', 0, 1),
(97, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10067', 'shree bharath vidyashram', 'agaram main road, secretriat colony, thiruvanchery, selaiyur, chennai 600126', '6379452658', 'mr krishna', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'market rd', 'agaram', '02:00:00', '02:35:00', '24', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(98, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10068', 'boaz public school', 'no 277, velachery tambaram rd, gowrivakkam, chennai 600073', '04422780083', 'mr krishna', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'agaram rd', 'gowrivakkam', '02:45:00', '03:35:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(99, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10068', 'boaz public school', 'no 277, velachery tambaram rd, gowrivakkam, chennai 600073', '04422780083', 'mr krishna', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'agaram rd', 'gowrivakkam', '02:45:00', '03:35:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(100, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10068', 'boaz public school', 'no 277, velachery tambaram rd, gowrivakkam, chennai 600073', '04422780083', 'mr krishna', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'agaram rd', 'gowrivakkam', '02:45:00', '03:35:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(101, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10069', 'st johns matric hr sec', 'fathima shrine, ganapathy puram, mes rd, tambaram east, chennai 600059', '9840633623', 'mr krishna', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'gowrivakkam', 'mes rd', '04:00:00', '04:10:00', '6.4', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(102, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '04:20:00', '04:40:00', '.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(103, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '04:20:00', '04:40:00', '.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(104, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '04:20:00', '04:40:00', '.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(105, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '04:20:00', '04:40:00', '.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(106, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '04:20:00', '04:40:00', '.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(107, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'mr krishna', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '04:20:00', '04:40:00', '.6', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(108, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10023', 'Grace park convent mat hr sec school', 'No 80, 4th Main Road, Thirunindravur, Near Siva Sakthi Temple Babuji Nagar', '9444282581', 'Mr.Deepan', 'P2', 'Correspondent followup', 'Followup date call', 'Cold Call', '', '', '2020-01-20', '00:00:00', 'Triplicane ', 'Tiruninravur', '10:00:00', '11:00:00', '38', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-10', 'January', '2020', '0000-00-00', 0, 1),
(109, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10022', 'Sidhaartha matriculation hr sec school', 'School Road,FCI Colony,Thiruvallur Dist -602025, Sevvapet, Tamil Nadu 602025', '095002 07316', 'Mr.Deepan', 'P5', 'Met the principal and given demo', 'Followup call', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Tiruninravur', 'vepampattu', '13:30:00', '14:45:00', '3', 'Bike', '5', '5', '', '', '2020-01-09', '2020-01-10', 'January', '2020', '0000-00-00', 0, 1),
(110, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10071', 'Sriram vidhya mandhir', ' Perumalpattu, Tiruvallur, Tamil Nadu,602024', '044 123456', 'Mr.Deepan', 'ZNI', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Tiruninravur', 'perumalpattu', '11:30:00', '12:15:00', '13', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(111, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10072', 'Carmel Public school', ' Manikagramani Nagar, Veppampattu,Tiruvallur,602024', '044 2768 9498', 'Mr.Deepan', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'tiruninravur', 'veppampatu', '12:40:00', '13:10:00', '10', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(112, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10073', 'St.clarit mat hr sec school', 'Periyapalayam High Road, Thiruninravur, Tamil Nadu 602024', '044 6450 8883', 'Mr.Deepan', 'ZNI', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppampatu', 'Tiruninravur', '14:50:00', '15:10:00', '9', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(113, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10074', 'Jaya Public', 'CTH Road, Thiruninravur, Thiruninravur, Thiruvallur, Tamil Nadu', '044 2630 0707', 'Mr.Deepan', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Vepampattu', 'Veppampattu', '15:30:00', '16:30:00', '54', 'Bike', '5', '5', '', '', '2020-01-09', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(114, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10035', 'St. Marys Matriculation hr sec school', 'NO 45 vigneshwara nagar, porur chennai tamil nadu 600116', '04424825533', '', 'P3', 'Spoke to u charger man she said principal dint yet came to school once he come and talk to him and get back to us', 'To meet principal', 'Follow Up', '', '', '2020-01-13', '00:00:00', 'Nandambakkam', 'Vigneshwara nagar', '09:37:00', '09:53:00', '6.3', 'Bike', '5', '5', '', '', '2020-01-12', '2020-01-12', 'January', '2020', '0000-00-00', 0, 1),
(115, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', '', 'P6', 'Spoke to admin principal was not there so said to come later', 'To meet principal ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Vigneshwara nagar', 'Balaji koil', '10:11:00', '10:21:00', '4.2', 'Bike', '5', '5', '', '', '2020-01-12', '2020-01-12', 'January', '2020', '0000-00-00', 0, 1),
(116, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10075', 'St Mary\'s matriculation high Secondary school (ambattur)', 'Kalaivanar Nagar, Udayar Palayam Nagar, Ambattur, Chennai, Tamil Nadu 600058', '072000 44920', '', 'ZNI', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Balaji koil', 'Kalaivani nagar', '10:51:00', '11:42:00', '19', 'Bike', '5', '5', '', '', '2020-01-12', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(117, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10076', 'TI matriculation higher secondary school', 'No. 1& 2, Madras Thiruvallur High Road, Tiruvenkadam Nagar, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 5707', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kalaivani nagar', 'TI school rd', '12:08:00', '12:28:00', '3.7', 'Bike', '5', '5', '', '', '2020-01-12', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(118, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10077', 'Hussain memorial matriculation higher secondary school', '6, Nainiammal St, Manthoppu Nagar, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2643', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'TI school road', 'Naina ammal st', '12:38:00', '12:47:00', '2.2', 'Bike', '5', '5', '', '', '2020-01-12', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(119, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10078', 'Sethu bhaskara matriculation higher secondary school', '59, Valliammal St, S V Nagar, Banu Nagar West, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2250', '', 'P3', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Naina ammal st', 'Velliammal st', '01:11:00', '01:22:00', '', 'Bike', '5', '5', '', '', '2020-01-12', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(120, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10079', 'Sre Saraswati matriculation higher secondary school (ambattur)', 'Kallikuppam, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3789', '', 'P3', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veliammal st', 'Kalikupam', '01:31:00', '01:43:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(121, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10079', 'Sre Saraswati matriculation higher secondary school (ambattur)', 'Kallikuppam, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3789', '', 'P3', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veliammal st', 'Kalikupam', '01:31:00', '01:43:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(122, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10080', 'Godson public school', 'No.6, Surapet Main Rd, Thirumal Nagar, Lakshmipuram, Chennai, Tamil Nadu 600099', '044 2565 6611', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kalikupam', 'Thirumal nagar', '02:18:00', '02:41:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(123, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10081', 'Rajammal school', '7435, Ayapakkam Housing Board Rd, TNHB Colony, Annanur, Ambattur, Chennai, Tamil Nadu 600058', '044 6515 5323', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Thirumal nagar', 'Annanur', '02:51:00', '03:11:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1);
INSERT INTO `follow` (`id`, `employeeid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `joincall`, `prioritystatus`, `description`, `purpose`, `callstatus`, `productname`, `productvalue`, `appointmentdate`, `appointmenttime`, `fromplace`, `toplace`, `intime`, `outtime`, `kmstravelled`, `modeofconveyance`, `car`, `bike`, `others`, `enteramount`, `date`, `editdate`, `month`, `year`, `signupdate`, `del_status`, `activestatus`) VALUES
(124, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10082', 'Rajiv school of excellence', '5/516 B, Sakthi Sairam Street, Ganapathi Nagar, Allapakkam, Porur, Chennai, Tamil Nadu 600116', '044 2476 7452', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Annanur', 'Ganapathi nagar', '03:43:00', '04:00:00', '9.3', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(125, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin principal was not there so said to come after pongal', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Ganapathi Nagar', 'Mugalivakkam', '04:23:00', '04:40:00', '7.2', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(126, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin she said principal dint came today so said to come after pongal', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'NANDAMBAKKAM', 'Mugalivakkam', '11:30:00', '11:49:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(127, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', '', 'P6', 'went to school to fix an appointement to meet vp she was in a meeting so said to come later', 'To meet vp', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mugalivakkam', 'Balaji koil', '12:14:00', '12:49:00', '4.3', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(128, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10035', 'St. Marys Matriculation hr sec school', 'NO 45 vigneshwara nagar, porur chennai tamil nadu 600116', '04424825533', '', 'P3', 'spoke to incharger mam she said they are ready take on next year not this year so said to try on april first', 'To meet principal ', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Balaji koil', 'Vigneshwara nagar', '01:09:00', '01:26:00', '5.2', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(129, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10083', 'Little flower matriculation higher secondary School', 'Road to Kolapakkam, Lawrence Nagar, Lakshmi Nagar, Mowlivakkam, Chennai, Tamil Nadu 600125', '9789007091', '', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Vigneshwara nagar', 'Lakshmi nagar', '01:45:00', '02:02:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(130, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', '', 'P6', 'spoke to admin devi mam was not there so said to come after pongal', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Lakshmi nagar', 'Alapakkm rd', '02:29:00', '02:47:00', '4.4', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(131, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'spoke to admin principal nobody was there so said to come after pongal', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Alapakkm rd', 'Svs nagar', '02:59:00', '03:09:00', '2', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(132, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10084', 'The national international matriculation higher secondary school', ',Perumal Koil Street , Bathrimedu, Kumananchavadi,, 3-B, Mangadu, Kamaraj Nagar, Poonamallee, Chennai, Tamil Nadu 600056', '04426791771', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Svs nagar', 'Methu nagar', '03:30:00', '03:38:00', '9.2', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(133, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10085', 'The pupil saveetha eco school', '4/68, Thiruverkkadu Road, Thiverkadu Co-operative Nagar, Seneerkuppam, Chennai, Tamil Nadu 600056', '044 2680 2013', '', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Methu nagar', 'Pilliar koil st', '03:56:00', '04:06:00', '4.6', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(134, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', '', 'P7', 'spoke to admin principal was busy so said to come aftter pongal', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pilliar koil st', 'Anandam nagar', '04:24:00', '04:34:00', '13', 'Bike', '5', '5', '', '', '2020-01-13', '2020-01-13', 'January', '2020', '0000-00-00', 0, 1),
(135, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10086', 'campus k school', 'tnhb main rd, ktk town, sozhinganallur, chennai 600119', '7825868686', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'uthandi', 'tnhb road', '11:40:00', '12:30:00', '5.9', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(136, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10087', 'athena global  school', '39/192, dlf garden city rd, semmancheri, chennai 600130', '9444601234', '', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'nedunchezhian st', 'hlc rd', '12:55:00', '01:30:00', '8.9', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(137, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'hlc rd', 'wing haven rd', '01:40:00', '02:00:00', '2.1', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(138, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10089', 'ramaniyam sankara matric hr sec', 'north casa grand rd, semmancheri, chennai 600130', '9500054644', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'hlc rd', 'n.casa grand rd', '02:30:00', '02:40:00', '2.8', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(139, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10090', 'js global school', 'no.1, lake view rd, omr rd, sozhinganallur, chennai 600119', '9500060755', '', 'P1', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'hlc rd', 'omr rd', '02:50:00', '03:10:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(140, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10091', 'apl global school', '697/3, mcn nagar, thuraipakkam, chennai 600097', '04440761199', '', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'omr rd', 'mcn nagar', '03:10:00', '03:20:00', '8.9', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(141, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10092', 'st george matric hr sec', 'no 1/436, sri ai nagar, thuraipakkam, chennai 600097', '9092525609', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'omr rd', 'sri sai nagar', '03:40:00', '03:55:00', '4.7', 'Bike', '5', '5', '', '', '2020-01-13', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(142, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10093', 'st johns dr  rajkumar international school', 'thiruvalluver st, chozhamandala devi nagar, anna enclave, injambakkam, chennai 600115', '9962020000', '', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'uthandi', 'thiruvalluvar st', '09:40:00', '10:50:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(143, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10094', 'akshar arbol international', '1/778, bethel nagar, anna enclave, injambakkam, chennai 600115', '9444973275', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'bethel nagar', 'thiruvalluvar st', '11:10:00', '11:20:00', '2.7', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(144, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10095', 'the bay international school', 'no 2, ecr rd, injambakkam, chennai 600115', '04424491034', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'thiruvalluvar st', 'ecr rd', '12:30:00', '12:40:00', '1.9', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(145, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10096', 'alm matric hr sec', 'hanuman colony, sakthi vinayaga nagar,vettuvankeni, chennai 600115', '04424491355', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'ecr rd', 'vettuvankeni', '12:30:00', '12:45:00', '2.3', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(146, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10097', 'gt aloha vidya mandir', 'rajendran nagar, neeankarai, chennai 600115', '09841511166', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'vettuvankeni', 'rajendra nagar', '01:15:00', '01:35:00', '5.7', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(147, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10098', 'sunbeam matric hr sec', 'saraswathy nagar, neelankarai, chennai 600115', '9442292555', '', 'P1', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'neelankarai', 'pandiyan st', '02:00:00', '02:10:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(148, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10099', 'brotherhood matric hr sec', '3/387, kazura garden street, neelankarai, chennai 600041', '04424490133', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'neelankarai', 'pandiyan st', '03:00:00', '03:15:00', '3.3', 'Bike', '5', '5', '', '', '2020-01-14', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(149, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10100', 'The ashram school', '20, Velachery Main Rd, Kannigapuram, Race View Colony, Guindy, Chennai, Tamil Nadu 600042', '044 2245 5858', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'NANDAMBAKKAM', 'Race view rd', '09:36:00', '09:56:00', '6.2', 'Bike', '5', '5', '', '', '2020-01-16', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(150, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10047', 'Guru nanak matriculation he secondary school', 'Anna Garden, Velachery, Chennai, Tamil Nadu 600042', '04422452253', '', 'ZNI', 'spoke to security school was locked said to come on Monday', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Race view rd', 'Anna garden', '10:19:00', '10:34:00', '3.3', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(151, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10046', 'Siva sakthi matriculation school', 'Bypass Road, Lakshmi Puram, Velachery, Chennai, Tamil Nadu 600042', '04422554185', '', 'P3', 'school was locked', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Anna garden', 'Velachery main rd', '10:53:00', '11:09:00', '3.2', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(152, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10048', 'Akshayah matriculation he sec school', 'No. 8, LIC Colony 1st St, Tansi Nagar, Velachery, Chennai, Tamil Nadu 600042', '044 2243 2755', '', 'P5', 'school was locked', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Velachery main rd', 'Tansi nagar', '11:29:00', '11:47:00', '5.1', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(153, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10045', 'Britto matriculation higher secondary school', 'Abraham St, Officers Colony, Adambakkam, Chennai, Tamil Nadu 600088', '044 2255 1297', '', 'P6', 'spoke to admin she said still they dint got response for the mail', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tansi nagar', 'Officers colony', '12:14:00', '12:37:00', '7.2', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(154, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10062', 'Beta matriculation he secondary School', '47 & 49, Cart Track Rd, Maduvinkarai, Adambakkam, Chennai, Tamil Nadu 600032', '093810 03423', '', 'P2', 'school was locked', 'To meet correspondent', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Officers colony', 'Cart truck road', '12:49:00', '01:09:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(155, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10061', 'D.A.V school', 'Sree Nandeeswarar Campus, 3rd St, Balaji Nagar, Adambakkam, Chennai, Tamil Nadu 600088', '044 2260 3544', '', 'P5', 'spoke to admin school was holiday so said to come later', 'To fix an appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Cart truck road', 'Vel nagar', '01:39:00', '01:58:00', '5.6', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(156, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10056', 'Modern senior secondary school', 'Lakshmi Nagar IV Stage, AG\'S Office Colony, Nanganallur, Chennai, Tamil Nadu 600061', '044 2224 0110', '', 'P6', 'school was locked', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Vel nagar', 'Lakshmi nagar', '02:29:00', '02:39:00', '3', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(157, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10101', 'David matriculation higher secondary School', '132, Gandhi Road, Vellakal, Karunabigai Colony, Velachery, Chennai, Tamil Nadu 600042', '044 2243 2714', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Lakshmi nagar', 'Karunambigai colony', '03:18:00', '03:32:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-16', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(158, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10063', 'St Dominic\'s Anglo Indian hr secondary school', 'Butt Road, St. Thomas Mount, Ramapuram, Tamil Nadu 600016', '044 2234 3778', '', 'P2', 'spoke to principal she said she is quite busy so said to come later', 'To meet principal', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Karunambigai colony', 'Butt road', '04:09:00', '04:30:00', '6.8', 'Bike', '5', '5', '', '', '2020-01-16', '2020-01-16', 'January', '2020', '0000-00-00', 0, 1),
(159, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10052', 'st vincent palloti matric hr sec', 'palloti salai, zamin pallavaram, theresa nagar, chennai 600117', '04422661727', '', 'P5', 'has met the pricipal and she ased to call tomorrow for corres appointment', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'naidu shop rd', 'palloti salai', '03:10:00', '03:30:00', '5.5', 'Bike', '5', '5', '', '', '2020-01-20', '2020-01-20', 'January', '2020', '0000-00-00', 0, 1),
(160, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', '', 'P7', 'has went to meet the corres but he was busy with the inspection', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'palloti salai', '200ft rd`', '03:45:00', '03:55:00', '5.9', 'Bike', '5', '5', '', '', '2020-01-20', '2020-01-20', 'January', '2020', '0000-00-00', 0, 1),
(161, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10102', 'bharathi vidyalaya senior sec', 'no 721, perumbakkam main rd, cheran nagar, chennai 600100', '04422771044', '', 'P6', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'uthandi', 'perumbakkam', '09:30:00', '09:45:00', '14', 'Bike', '5', '5', '', '', '2020-01-20', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(162, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10103', 'b.s matric hr sec', 'no 10/861, vgp babu nagar, medavakkam, chennai 600100', '04422770912', '', 'Sign Up', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'perumbakkam', 'medavakkam', '10:00:00', '01:00:00', '4.6', 'Bike', '5', '5', '', '', '2020-01-20', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(163, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', '', 'P6', 'spoke to vice principal she told to come on feb 1st week or 2nd week', 'To meet vice principal', 'Follow Up', '', '', '2020-02-06', '00:00:00', 'NANDAMBAKKAM', 'Balaji koil', '09:39:00', '10:23:00', '5.3', 'Bike', '5', '5', '', '', '2020-01-20', '2020-01-20', 'January', '2020', '0000-00-00', 0, 1),
(164, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10033', 'M.K.M Matriculation hr sec school', '1, Subashree Nagar III Phase, Mugalivakkam, porur, Chennai, Tamil nadu 600125', '04422523599', '', 'P6', 'spoke to admin principal went for a meeting so said to come later', 'To meet principal ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Balaji koil ', 'Subashree nagar', '10:42:00', '11:10:00', '3.6', 'Bike', '5', '5', '', '', '2020-01-20', '2020-01-20', 'January', '2020', '0000-00-00', 0, 1),
(165, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10083', 'Little flower matriculation higher secondary School', 'Road to Kolapakkam, Lawrence Nagar, Lakshmi Nagar, Mowlivakkam, Chennai, Tamil Nadu 600125', '9789007091', '', 'P6', 'spoke to admin concern principal was not available', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Subashree nagar', 'Lakshmi nagar', '11:22:00', '11:33:00', '4.2', 'Bike', '5', '5', '', '', '2020-01-20', '2020-01-20', 'January', '2020', '0000-00-00', 0, 1),
(166, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10104', 'Sri saraswathi Vidya mandir matriculation hr secondary School', '4, Gangai Amman Koil St, Vadanoombal, Thiruverkadu, Thiruporur, Tamil Nadu 603110, Gangai Amman Koil St, Vadanoombal, Thiruverkadu, Thiruporur, Tamil Nadu 603110', '044 2680 1674', '', 'P2', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Iyapanthangal rd', 'Amman koil', '12:58:00', '01:18:00', '13', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(167, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10105', 'The schram academy', 'No.189, perumal temple street ,ayanambakkam chennai-600095 ( near Apollo hospital vanagaram)', '7395803367', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Amman koil', 'Perumal temple street', '01:32:00', '01:48:00', '2.3', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(168, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10037', 'Pioneer school', 'Pilliyar koil st, Maccana industrial Estate, velappanchavadi, poonamalle, chennai, Tamil nadu 600077', '7811833155', '', 'P5', 'spoke to the manager deepak he told he will talk to me on next week its not possible this week', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Perumal temple street', 'Pilliar koil st', '02:09:00', '02:24:00', '5.8', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(169, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10106', 'Navabharath matriculation school', '17, Mangadu Rd, Manali Saravana Nagar, Kamatchiamman Nagar, Poonamallee, Chennai, Tamil Nadu 600122', '8248455495', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pilliar koil st', 'Kammachiamman nagar', '02:39:00', '02:52:00', '5.8', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(170, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10084', 'The national international matriculation higher secondary school', ',Perumal Koil Street , Bathrimedu, Kumananchavadi,, 3-B, Mangadu, Kamaraj Nagar, Poonamallee, Chennai, Tamil Nadu 600056', '04426791771', '', 'P5', 'spoke to admin she said they already have an app so no need of it this was the response came from principal', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kammachiamman nagar', 'Nethu nagar', '03:12:00', '03:28:00', '2', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(171, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10107', 'Sathyalok matriculation higher secondary School', 'Porur Square, 21/1, -600116., Chettiyar Agaram Rd, Chettiyar Agaram, Gandhi Nagar, Porur, Chennai, Tamil Nadu 600095', '044 2476 6433', '', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Methu nagar', 'Chettiyar agaram', '03:41:00', '03:52:00', '6.2', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(172, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', '', 'P6', 'spoke to admin she said still dint got any response so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Chettiyar agaram', 'Alapakkam rd', '04:08:00', '04:16:00', '7.8', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(173, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'spoke to admin principal was not there so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Alapakkam rd', 'Svs nagar', '04:24:00', '04:30:00', '2', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(174, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin and a staff and gave a presentation and atlast spoke to principal as well she said this week any day she will meet me', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Svs nagar', 'Mugalivakkam', '04:42:00', '05:00:00', '5.8', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(175, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10108', 'Annai therasa matriculation higher secondary school', 'No.1/175 Ragavendhra Nagar, Ayyapanthangal, Chennai 56, Tamil Nadu 600056', '044 2679 2029', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'NANDAMBAKKAM', 'Ayapanthangal', '09:47:00', '10:10:00', '8.8', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(176, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10108', 'st johns matric hr sec', 'no 1, mes road, ganapathipuram, east tambaram, chennai 600045', '9840633623', '', 'P7', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'uthandi', 'mes road', '09:35:00', '09:50:00', '26', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(177, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10109', 'st marys matric hr sec', 'mes road,ganapathipuram,tambaram east, chennai 600045', '9962280659', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'mes rd', 'mes rd', '10:10:00', '10:30:00', '1.6', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(178, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10052', 'st vincent palloti matric hr sec', 'palloti salai, zamin pallavaram, theresa nagar, chennai 600117', '04422661727', 'mr deepan', 'P5', 'has met father and gave demo and asked to come by feb 1st week', 'demo ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'mes rd', 'palloti salai', '11:20:00', '12:35:00', '10.6', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(179, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10110', 'good shepard matric hr sec', 'no 38, rajagopal street, old pallavaram,ambedkar street, chennai 600117', '7845315631', 'mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'palloti salai', 'ambedkar st', '12:35:00', '12:50:00', '2.8', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(180, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10111', 'valluvar gurukulam matric hr sec', 'no 220, gst road, tambaram west, chennai 600045', '04422267744', 'mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'ambedkar nagar', 'tambaram', '01:10:00', '02:00:00', '9.9', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(181, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10112', 'sri ramakrishna matric hr sec', 'south street, west tambaram, mudichur road, chennai 600045', '0442266688', 'mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'gst rd', 'south st', '02:15:00', '02:30:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(182, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10113', 'shri natesan vidyasala matric hr sec', 'mudichur road, natesan street, mannivakkam, chennai 600048', '04422760267', 'mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'south st', 'mudichur', '02:45:00', '03:10:00', '6.8', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(183, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10114', 'Little holy angels matriculation higher secondary School', '2384, Rajammal nagar, TNHB Colony, Annanur, Ambattur, Chennai, Tamil Nadu 600058', '090034 66137', '', 'P3', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ayapanthangal', 'Rajammal nagar', '10:32:00', '10:58:00', '15', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(184, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10077', 'Hussain memorial matriculation higher secondary school', '6, Nainiammal St, Manthoppu Nagar, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2643', '', 'P5', 'spoke to coordinator mam she said to try on may month not this year', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Rajammal st', 'Nainammal st', '11:16:00', '11:29:00', '6.7', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(185, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10115', 'Samuel Harris matriculation higher secondary School', 'No.10a cholembedu road , ambattur chennai- 600053', '8056134264', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nainammal st', 'Cholembedu rd', '11:47:00', '12:05:00', '3.4', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(186, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10078', 'Sethu bhaskara matriculation higher secondary school', '59, Valliammal St, S V Nagar, Banu Nagar West, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2250', '', 'P3', 'spoke to principal he said the implementation he can make it on march month', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nainammal st', 'Veliammal st', '12:18:00', '12:31:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-21', 'January', '2020', '0000-00-00', 0, 1),
(187, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10116', 'Gill Adarsh Matriculation Higher Secondary School', '46, Venkatachalam St, Balaji Nagar, Royapettah, Chennai, Tamil Nadu 600014', '044 2847 1504', 'Individual', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Royapettah', '09:35:00', '10:00:00', '2', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(188, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10117', 'Smt Malathi Srinivasan Matriculation Higher Secondary School', 'V.M Street, Balaji Nagar 1st St, Balaji Nagar, Royapettah, Chennai, Tamil Nadu 600014', '044 2813 3936', 'Individual call', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Royapetta', 'Royapetta', '10:15:00', '10:30:00', '1', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(189, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10118', 'Sri Venkateswara Matriculation Higher Secondary School', '15, Gowdiamutt Rd, Ganapathy Colony, Royapettah, Chennai, Tamil Nadu 600014', '044 2813 2956', 'Individual call', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Royapetta', 'Royapetta', '10:45:00', '11:20:00', '2', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(190, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10119', 'Adarsh Vidyalaya Higher Secondary School', '202-204-206-208, Peters Road, Royapettah, Chennai, Tamil Nadu 600014', '044 2852 3070', 'Individual call', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'royapetta', 'royapetta', '11:35:00', '12:10:00', '3', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(191, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10120', 'Emma Foulger Matriculation Higher Secondary School', '33, Westcott Rd, Indira Garden, Royapettah, Chennai, Tamil Nadu 600014', '044 2851 5572', 'Individual call', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Royapetta', 'Royapetta', '12:15:00', '13:15:00', '1', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(192, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10121', 'M.W.A. Matriculation & Higher Secondary School', '5, Conron Smith Rd, Ganapathy Colony, Gopalapuram, Chennai, Tamil Nadu 600086', '044123456', 'Individual call', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Royapetta', 'Gopalapuram', '13:35:00', '14:45:00', '2', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(193, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10122', 'Cambridge Matric Higher Secondary school', '148, Lloyds Road, Royapettah, Chennai, Tamil Nadu 600014', ' 044 2813 2483', 'Individual call', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Gopalapuram', 'Royapetta', '15:00:00', '15:30:00', '3', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(194, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10123', 'St Joseph\'s Matriculation Higher Secondary School', '52, Jani Jhan Khan Rd, Royapettah, Chennai, Tamil Nadu 600014', '044 123456', 'Individual call', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Royapetta', 'Royapetta', '15:45:00', '16:10:00', '3', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(195, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10061', 'Grace mat school', 'SRP Colony, Peravallur, Perambur, Chennai, Tamil Nadu 600082', ' 044 2550 0224', 'Mr Deepan', 'P2', 'Met the chairman and he said that will do it on next academic year this year we don’t need cant able to add more money in fee', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Vepeery ', 'Peravallur', '11:05:00', '11:45:00', '9', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-22', 'January', '2020', '0000-00-00', 0, 1),
(196, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10052', 'St. Ann\'s Matriculation Higher Secondary School', 'Thapalpetti, Kanchi Ponnusamy Thottam, Madhavaram, Chennai, Tamil Nadu 600060', ' 044 2558 434', 'Deepan', 'P5', 'Cant able to reach the authorities', 'Followup call', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Peravalur', 'Madhavaram', '11:45:00', '11:55:00', '3', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-22', 'January', '2020', '0000-00-00', 0, 1),
(197, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10086', 'campus k school', 'tnhb main rd, ktk town, sozhinganallur, chennai 600119', '7825868686', '', 'P7', 'has met gawtham and he asked to take appointment and visit', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'uthandi', 'tnhb road', '09:25:00', '09:40:00', '5.6', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-22', 'January', '2020', '0000-00-00', 0, 1),
(198, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10066', 'ellen sharma matric hr sec', 'no 9, nedunchezhian street, sozhinganallur, chennai 600119', '04424501250', '', 'P6', 'mr ganesh was busy has to call and get appointment', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'tnhb rd', 'nedunchezhian st', '10:10:00', '10:30:00', '2.1', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-22', 'January', '2020', '0000-00-00', 0, 1),
(199, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P7', 'has met mr sarath and he asked to call on friday for appointment', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'jeppiar nagar', 'hlc rd', '12:30:00', '01:10:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-22', 'January', '2020', '0000-00-00', 0, 1),
(200, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10087', 'athena global  school', '39/192, dlf garden city rd, semmancheri, chennai 600130', '9444601234', '', 'P5', 'has met the office and principal told they will call once they plan to change', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'hlc rd', 'hlc rd', '01:40:00', '02:00:00', '1.2', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-22', 'January', '2020', '0000-00-00', 0, 1),
(201, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10124', 'ramana vidyalaya', 'no 371,mgr road, 1st cross st, ezhil nagar, sozhinganallur, chennai 600119', '04424501405', '', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'nedunchezhian st', 'mgr rd', '09:55:00', '10:40:00', '2.2', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(202, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10125', 'sacred heart matric hr sec', '3rd main rd, devraj nagar, sozhinganallur, chennai 600119', '04424501696', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'mgr rd', 'devraj nagar', '11:00:00', '11:20:00', '1.1', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(203, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10125', 'sacred heart matric hr sec', '3rd main rd, devraj nagar, sozhinganallur, chennai 600119', '04424501696', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'mgr rd', 'devraj nagar', '11:00:00', '11:20:00', '1.1', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(204, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10126', 'jeppiar matric hr sec', 'ellai amman koil st, kamaraj nagar, semmancheri, chennai 600119', '04424502051', '', 'P7', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'devraj naagr', 'jeppair nagar', '11:30:00', '12:30:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(205, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10059', 'SMK Vidhyashram', 'Kodungaiyur (East), Muthamizh Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 123456', 'Mr.Deepan', 'P6', 'Given Demo to the principal and given proposal to her she will think about it and call back us', 'Demo call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '14:20:00', '14:40:00', '4', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(206, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10058', 'F.E.S. Matriculation Higher Secondary School', 'R 82, 7th Block, Muthamizh Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 2554 6080', 'Mr.Deepan', 'P6', 'Met the principal and she is not intrested to do any application product', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '14:40:00', '14:55:00', '3', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(207, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10060', 'St. Joseph\'s Matriculation Higher School', '9, 2nd cross 5th Street, Seetharam Nagar, RV Nagar, Chennai, Tamil Nadu 600118', '044 25551240', 'Mr.Deepan', 'P4', 'cant able to reach the concern person', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Madhavaram', 'kodingiyur', '12:25:00', '12:45:00', '5', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(208, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10127', 'Olive Tree international school', '25/33, TVK 2nd Link Rd, Erukkanchery, Thiruvalluvar Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '075500 10016', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '15:00:00', '15:10:00', '4', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(209, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10128', 'Dr.Radhakrishna mat hr sec school', 'Subramani Street 2,3,4,15,16,17 Kondungaiyur Krishnamurthy Nagar, Chennai, Tamil Nadu 600118', '044 2554 5004', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '15:20:00', '15:35:00', '3', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(210, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10129', 'Bosco Academy Marticulation School', '174 M H Road Madhavaram, KKR Garden, Raja Annamalai Puram, Chennai, Tamil Nadu 600060', '9840073807', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'madhavaram', 'madhavaram', '12:05:00', '12:15:00', '4', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(211, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10130', 'Anita Methodist school', 'Vepery, Periyamet, Chennai, Tamil Nadu 600007', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Veppery', '09:55:00', '10:10:00', '5', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(212, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10131', 'CSI bain mat', 'No 4, CSI School St, Gandhi Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 2554 0691', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '13:10:00', '13:40:00', '3', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(213, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10132', 'Wisdom mat school', 'No.45,46, Vedamuthu St, Kodungaiyur (East), Krishnamoorthy Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 123456', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '16:20:00', '16:30:00', '3', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(214, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'has met mr unni and has to revisit after practicals', 'followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'uthandi', 'kelambakkam', '09:30:00', '10:10:00', '18', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(215, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10015', 'horizon international academy', 'kovilanchery, chennai 600126', '9176865944', '', 'P6', 'has met mrs mary and asked to call on monday', 'demo', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'kelambakkam', 'ponmar', '10:20:00', '10:40:00', '14', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(216, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'has went to meet principal but she was busy', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'ponmar', 'ponmar', '11:00:00', '11:20:00', '5.6', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(217, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10016', 'st joseph matric hr sec', 'melakottaiyur, kelambakkam vandalur main rd, chennai 600048', '04427409777', '', 'P6', 'has went to meet principal but not available', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'ponmar', 'melkotayur', '11:40:00', '11:55:00', '7.9', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(218, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10017', 'colours indian school', 'melkotaiyur, vandalur kelambakkam rd, chennai 600127', '8056017561', '', 'P5', 'has met mrs neetha and they are not interested', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'melkotayur', 'melkotayur', '12:30:00', '01:40:00', '1.5', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(219, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10019', 'sri sankara global academy', 'gst road, ambika nagar, urapakkam, chennai 603210', '04422751088', '', 'P5', 'revisited for principal meeting', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'melkotayur', 'urapakkam', '02:30:00', '02:45:00', '9.9', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(220, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10021', 'ananthavalli matric hr sec', 'no 182, gst rd, senthil nagar, urapakkam, chennai 603211', '04427465959', '', 'P6', 'has went to meet principal but she will be available after monday', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'urapakkam', 'urapakkam', '02:50:00', '03:00:00', '3.6', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(221, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10013', 'st francis de sales matric hr sec', 'kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414747', '', 'P4', 'has went to meet father but was not available', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'guduvanchery', 'pudupakkam', '04:22:00', '04:40:00', '22', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-23', 'January', '2020', '0000-00-00', 0, 1),
(222, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10133', 'st marys matric hr sec', 'nandivaram main road, nellikupppam high road, guduvanchery, chennai 603202', '04427465439', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'srinivasapuram', 'nandivaram', '03:10:00', '03:35:00', '4.4', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(223, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10130', 'Anita Methodist school', 'Vepery, Periyamet, Chennai, Tamil Nadu 600007', '044 123456', 'Individual call', 'P1', 'Given presentation to the principal and they had a strong relationship with the neverskip since principal liked our product she will discuss with the corresspondent', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane ', 'Veppery', '09:30:00', '11:25:00', '5', 'Bike', '5', '5', '', '', '2020-01-23', '2020-01-24', 'January', '2020', '0000-00-00', 0, 1),
(224, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10134', 'C.S.I. Bain School', '42-48, Ormes Rd, Kilpauk, Chennai, Tamil Nadu 600010', '044 2644 8961', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veppery', 'kilpauk', '11:35:00', '12:20:00', '2', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(225, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10135', 'Doveton Group Of Schools', '1, Ritherdon Rd, Vepery, Purasaiwakkam, Chennai, Tamil Nadu 600007', '072007 99444', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '', '', '12:45:00', '13:15:00', '3', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(226, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10136', 'Bhavan\'s Rajaji Vidyashram', '6, Kilpauk Gardern Road,, Davidpuram, Kilpauk, Chennai, Tamil Nadu 600010', '044 2641 2169', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'kilpauk', '13:30:00', '13:45:00', '1', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(227, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10137', 'Guru Shree Shantivijai Jain Vidyalaya', 'No. 96, New No.154, Vepery High Rd, Vepery, Chennai, Tamil Nadu 600007', '044 2532 2541', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'veperry', '14:00:00', '14:15:00', '4', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(228, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10138', 'Ramachandra Matriculation Higher Secondary School', '474, Kilpauk Garden Road, Aspiran Garden Colony, Kilpauk, Chennai, Tamil Nadu 600010', '044 2647 4583', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'kilpauk', '14:30:00', '14:55:00', '3', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(229, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10139', 'Alagappa mat', 'No.49, Gangadeeshwar Koil St, Purasaiwakkam, Chennai, Tamil Nadu 600084', '044 2642 2008', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '15:15:00', '15:30:00', '3', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(230, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10140', 'Alagappa CBSE', 'No.49, Gangadeeshwar Koil St, Purasaiwakkam, Chennai, Tamil Nadu 600084', '044 2642 2008', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '15:45:00', '16:00:00', '0', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(231, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10141', 'J.M Matriculation', '82/48, PM Ln, Purasaiwakkam, Chennai, Tamil Nadu 600084', '044 2665 0149', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '16:10:00', '16:35:00', '6', 'Bike', '5', '5', '', '', '2020-01-23', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(232, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10142', 'christ the king matric hr sec', 'velachery main rd, united colony, medavakkam, chennai 600100', '04422771886', '', 'P1', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'uthandi', 'medavakkam', '09:35:00', '10:00:00', '14', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(233, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10143', 's.c.s matric hr sec', 'no 30, ramachandra rd, nehru nagar, chrompet, chennai 600044', '04422235761', 'mr mouli', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'medavakkam', 'ramachandra rd', '11:01:00', '11:40:00', '16', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(234, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10144', 'ggn international', 'no 1naidu shop road, radha nagar, chrompet, chennai 600044', '044 22659999', 'mr mouli', 'P1', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'ramachandra rd', 'naidu shop rd', '11:50:00', '12:11:00', '3.6', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(235, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10145', 'olive public school', 'no 1, 2nd main rd, sarvamangala nagar, chitlapakkam, chennai 600064', '04422235927', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'naidu shop rd', 'sarvamangala nagar', '12:20:00', '12:30:00', '5.5', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(236, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10146', 'rosily matric hr sec', 'no 3, 1st street, rosily nagar, chitlapakkam, chennai 600064', '04422236842', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'sarvamangala nagar', 'chitlapakkam', '12:45:00', '01:40:00', '.95', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(237, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10147', 'loyola matric hr sec', 'no 8, gandhi street, chitlapakkam, chennai 600064', '04422234780', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'chitlappak', 'chitlapakkam', '02:00:00', '02:30:00', '.5', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1);
INSERT INTO `follow` (`id`, `employeeid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `joincall`, `prioritystatus`, `description`, `purpose`, `callstatus`, `productname`, `productvalue`, `appointmentdate`, `appointmenttime`, `fromplace`, `toplace`, `intime`, `outtime`, `kmstravelled`, `modeofconveyance`, `car`, `bike`, `others`, `enteramount`, `date`, `editdate`, `month`, `year`, `signupdate`, `del_status`, `activestatus`) VALUES
(238, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10148', 'st sebastian matric hr sec', 'no 2, rc church rd, pallavaram, chennai 600043', '04422641665', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'chitlapakkam', 'pallavaram', '02:40:00', '03:00:00', '5.8', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(239, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10096', 'alm matric hr sec', 'hanuman colony, sakthi vinayaga nagar,vettuvankeni, chennai 600115', '04424491355', '', 'P1', 'revisited for corres appointment but annual day celebration going', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'uthandi', 'injambakkam', '09:40:00', '10:00:00', '8.9', 'Bike', '5', '5', '', '', '2020-01-25', '2020-01-25', 'January', '2020', '0000-00-00', 0, 1),
(240, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10093', 'st johns dr  rajkumar international school', 'thiruvalluver st, chozhamandala devi nagar, anna enclave, injambakkam, chennai 600115', '9962020000', '', 'P7', 'school was on leave', 'appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'injambakkam', 'bethel nagar', '10:20:00', '10:40:00', '3.6', 'Bike', '5', '5', '', '', '2020-01-25', '2020-01-25', 'January', '2020', '0000-00-00', 0, 1),
(241, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10094', 'akshar arbol international', '1/778, bethel nagar, anna enclave, injambakkam, chennai 600115', '9444973275', '', 'P1', 'revisited for appointment', 'appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'bethel nagar', 'thiruvalluvar st', '11:00:00', '11:15:00', '1.9', 'Bike', '5', '5', '', '', '2020-01-25', '2020-01-25', 'January', '2020', '0000-00-00', 0, 1),
(242, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10097', 'gt aloha vidya mandir', 'rajendran nagar, neeankarai, chennai 600115', '09841511166', '', 'P1', 'revisited to meet vp but asked to call on monday', 'appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'bethel nagar', 'neelankarai', '12:30:00', '12:45:00', '4.9', 'Bike', '5', '5', '', '', '2020-01-25', '2020-01-25', 'January', '2020', '0000-00-00', 0, 1),
(243, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10099', 'brotherhood matric hr sec', '3/387, kazura garden street, neelankarai, chennai 600041', '04424490133', '', 'P1', 'school was on leave', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'neelankarai', 'kazura garden', '01:00:00', '01:10:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-25', '2020-01-25', 'January', '2020', '0000-00-00', 0, 1),
(244, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10149', 'Kamaraj mat hr sec school', '45 Sanjeevirayan, Koil Street, Washermanpet, Chennai, Tamil Nadu 600021', '8925126326', 'Individual call', 'P3', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washeramanpet', 'Washeramanpet', '11:00:00', '11:20:00', '8', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(245, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10150', 'St.Rouqes mat hr sec school', '.49, M.C Road, Old Washermanpet, Chennai, Tamil Nadu 600021', '9884400107', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Washeremanpet', '09:30:00', '10:20:00', '5', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(246, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10151', 'Little flower mat hr sec school', 'Old No.74/6, New No.64, Thandavarayan Gramini Street, Washermanpet, Chennai, Tamil Nadu 60002', '044 2595 1146', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '', '', '10:35:00', '10:45:00', '3', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(247, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10152', 'Badam kanwar chairman surana(BCS) jain mat hr sec school', '34/11 & 36/13, Mottai Garden, Washermanpet, Chennai, Tamil Nadu 600021', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washeremanpet', 'Washeremanpet', '11:30:00', '11:50:00', '2', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(248, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10153', 'St. Mary\'s Matriculation Higher Secondary School', 'No.14, Robinson Park Colony Rd, Mottai Thottam, Washermanpet, Chennai, Tamil Nadu 600021', '044 2590 1140', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washremanpet', 'Washremanpet', '12:00:00', '12:20:00', '5', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(249, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10154', 'Gandhiji Matriculation School', '5, Narasier St, NN Garden, Washermanpet, Chennai, Tamil Nadu 600021', '044 2595 4010', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washremanpet', 'Washremanpet', '13:10:00', '13:40:00', '2', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(250, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10155', 'Kennedy Matriculation School', '11, Pammi Sivaramulu, Namasivaya Chetty St, Mottai Garden, Old Washermanpet, Chennai, Tamil Nadu 600021', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washremanpet', 'Washremanpet', '13:50:00', '14:10:00', '2', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(251, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10156', 'Daniel Matriculation Higher Secondary School', '600021, 36, Ramaswamy Rd, Korukkupet, Old Washermanpet, Chennai, Tamil Nadu 600081', '044 2592 3981', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washeramanpet', 'Washeramanpet', '14:45:00', '15:10:00', '3', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(252, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10157', 'Model Matriculation Higher Secondary School', 'No.15, Thandavarayan St, Kanniyappan Colony, Sanjeevarayanpet, Tondiarpet, Chennai, Tamil Nadu 600021', '044 2595 3591', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washramanpet', 'Washramanpet', '14:45:00', '15:10:00', '3', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(253, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10158', 'Buddha Matriculation Higher Secondary School', 'Korukkupet, Old Washermanpet, Chennai, Tamil Nadu 600021', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washeramanpet', 'Washeramanpet', '15:25:00', '15:55:00', '2', 'Bike', '5', '5', '', '', '2020-01-24', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(254, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', '', 'P7', 'Reisited to meet the corres but was busy on a program', 'Demo and proposal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', '200ft rd', '09:35:00', '09:48:00', '24', 'Bike', '5', '5', '', '', '2020-01-27', '2020-01-27', 'January', '2020', '0000-00-00', 0, 1),
(255, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10144', 'ggn international', 'no 1naidu shop road, radha nagar, chrompet, chennai 600044', '044 22659999', '', 'P1', 'Revisited for appointment but mrs harini told she will call', 'Demo and proposal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Palar rd', 'Naidu shop rd', '10:22:00', '10:45:00', '4.9', 'Bike', '5', '5', '', '', '2020-01-27', '2020-01-27', 'January', '2020', '0000-00-00', 0, 1),
(256, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10054', 'sri sankara matric hr sec and global', '1st cross street, sankar nagar, moovendar colony, pammal, chennai 600075', '7358395382', '', 'P7', 'Revisisted and met mr mageshwaran je asked to come next week', 'Negotiation', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Umayulpuram', 'Sankar nagar', '13:23:00', '13:45:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-27', '2020-01-27', 'January', '2020', '0000-00-00', 0, 1),
(257, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10159', 'little angels matric hr sec', 'no 2/240, balamurugan garden, 2nd main rd, omr road, oggiyam thuraipakkam, chennai 600097', '04424962509', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'uthandi', 'thuraipakkam', '09:40:00', '10:10:00', '13', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(258, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10160', 'akshara matric hr sec', 'gokilambal nagar, ptc quaters, oggiyamthuraipakkam,chennai 600097', '04424581722', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'thuraipakkam', 'gokilambal naagr', '10:20:00', '10:35:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(259, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10092', 'st george matric hr sec', 'no 1/436, sri ai nagar, thuraipakkam, chennai 600097', '9092525609', '', 'P1', 'revisited for sharon meeting but not available', 'negotiation', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'thuraipakkam', 'sri sai nagar', '12:00:00', '12:15:00', '1.9', 'Bike', '5', '5', '', '', '2020-01-28', '2020-01-28', 'January', '2020', '0000-00-00', 0, 1),
(260, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10091', 'apl global school', '697/3, mcn nagar, thuraipakkam, chennai 600097', '04440761199', '', 'P7', 'has went to meet mr vaishnav but he is not available', 'followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'thuraipakkam', 'mcn nagar', '11:00:00', '11:25:00', '2.7', 'Bike', '5', '5', '', '', '2020-01-28', '2020-01-28', 'January', '2020', '0000-00-00', 0, 1),
(261, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10161', 'bvm global school', 'no 144, corporation road, perungudi chennai 600096', '9677015266', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'mcn nagar', 'perungudi', '12:40:00', '01:00:00', '2', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(262, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10162', 'monfort matric hr sec', 'no 9, rajalakshmi avenue, green acres road, perungudi, telephone exchange nagar, chennai 6000096', '04424567571', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'corporation rd', 'green acres rd', '01:30:00', '01:50:00', '1.8', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(263, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10163', 'bharat dass matric hr sec', '4th cross street, thirumalai nagar phase 1, perungudi, chennai 600096', '9941471984', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'green acres', 'thirumalai nagar', '02:10:00', '02:20:00', '.9', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(264, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10164', 'akg public school', 'bharathi st, medavakkam, jaladiampet rd, chennai 600100', '04422461418', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'perungudi', 'medavakkam', '02:35:00', '02:45:00', '8.9', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(265, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10165', 'peniel matric hr sec', 'no 1, selvam nagar, pallikarnai, chennai 600100', '04422461320', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'jaladiampet', 'selvam nagar', '12:15:00', '12:20:00', '1.8', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(266, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10166', 'himayam matric hr sec', 's.kolathur main rd, periya kovilambakkam, chennai 600091', '0422463250', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'pallikarnai', 's.kolathur', '03:30:00', '04:50:00', '2.9', 'Bike', '5', '5', '', '', '2020-01-28', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(267, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10078', 'Sethu bhaskara matriculation higher secondary school', '59, Valliammal St, S V Nagar, Banu Nagar West, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2250', '', 'P3', 'spoke to principal he said the implementation he can make it on march month', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Cholembedu rd', 'Veliammal st', '12:18:00', '12:31:00', '4.8', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(268, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10167', 'sri ramakrishna  saradha ashrama higher secondary school', 'Banu nagar, ambattur chennai- 600053', '044 2686 0590', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veliammal st', 'Banu nagar', '12:38:00', '12:44:00', '3.7', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(269, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10109', 'st marys matric hr sec', 'mes road,ganapathipuram,tambaram east, chennai 600045', '9962280659', '', 'P1', 'Has met mrs.berny marias and gas her the demo and she asked to call by feb 10th', 'Demo', 'Cold Call', '', '', '2020-02-11', '00:00:00', 'Mes rd', 'Mes re', '12:33:00', '14:00:00', '2.9', 'Bike', '5', '5', '', '', '2020-01-29', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(270, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10108', 'st johns matric hr sec', 'no 1, mes road, ganapathipuram, east tambaram, chennai 600045', '9840633623', '', 'P7', 'Has went to meet father but not available', 'Negotiate', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'School street', 'Mes rd', '11:34:00', '23:51:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-29', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(271, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', '', 'P6', 'Sister was not available', 'FOllowup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mes rd', 'Mes rd', '11:14:00', '11:36:00', '1.3', 'Bike', '5', '5', '', '', '2020-01-29', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(272, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10142', 'christ the king matric hr sec', 'velachery main rd, united colony, medavakkam, chennai 600100', '04422771886', '', 'P1', 'Revisited for appointment but not interested', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Medavakkam', '09:30:00', '09:45:00', '15', 'Bike', '5', '5', '', '', '2020-01-29', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(273, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10168', 'Lake view matriculation school', '18th Avenue,Banu Nagar, Pudur, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3727', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Banu nagar', 'Pudur', '01:07:00', '01:26:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(274, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10079', 'Sre Saraswati matriculation higher secondary school (ambattur)', 'Kallikuppam, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3789', '', 'P3', 'spoke to admin she said to come on Thursday to meet principal', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pudur ', 'Kalikupam', '01:39:00', '01:57:00', '6.9', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(275, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10080', 'Godson public school', 'No.6, Surapet Main Rd, Thirumal Nagar, Lakshmipuram, Chennai, Tamil Nadu 600099', '044 2565 6611', '', 'P4', 'spoke to admin she said principal is not interested to look after this she said to try on may month', 'To meet principal', 'Cold Call', '', '', '2020-02-14', '00:00:00', 'Kalikupam', 'Thirumal nagar', '02:19:00', '02:42:00', '6.3', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(276, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10169', 'Nathella vidhyodaya', '2nd Cross St, Venkatapuram, Ambattur, Chennai, Tamil Nadu 600053', '044 6555 5123', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Thirumal nagar', 'Venketapuram', '03:10:00', '03:33:00', '7.5', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(277, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10170', 'St Joseph\'s matriculation higher secondary school', 'Pushpammal St, Krishnapuram, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 1523', '', 'P5', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Venketapuram', 'Pushpammal st', '03:42:00', '04:00:00', '5.9', 'Bike', '5', '5', '', '', '2020-01-21', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(278, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10082', 'Rajiv school of excellence', '5/516 B, Sakthi Sairam Street, Ganapathi Nagar, Allapakkam, Porur, Chennai, Tamil Nadu 600116', '044 2476 7452', '', 'P4', 'spoke to admin she said principal is busy with the meetings so said to come tomorrow after a giving a call', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pushpammal st', 'Ganapathi nagar', '04:17:00', '04:29:00', '12', 'Bike', '5', '5', '', '', '2020-01-21', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(279, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10025', 'Dr. Vimala convent matriculation hr sec school', '4/1, amman nagar main rd, chellammal nagar, ramapuram, chennai, Tamil nadu 600089', '04424745509', '', 'P7', 'spoke to admin secretary mam was not available so said to coe later another day', 'To meet secretary', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'NANDAMBAKKAM', 'Amman nagar', '09:32:00', '09:47:00', '4.3', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(280, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', '', 'P7', 'spoke to admin principal was in a meeting so said to come later', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Amman nagar', 'Anandam nagar', '10:17:00', '10:31:00', '3.2', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(281, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10171', 'Annai therasa matriculation higher secondary School (nesapakkam)', '#21, Angalaparameshwari Koil 3rd Street, MGR Nagar, Chennai, Tamil Nadu 600078', '044 2471 3908', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Anandam nagar', 'Mgr nagar', '10:47:00', '11:13:00', '5.2', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(282, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10036', 'Kalashetra Matriculation school', 'No.2, Mount poonamallee high road, ayyappanthangal, Kattupakkam, chennai Tamil nadu 600056', '04426792244', '', 'P4', 'spoke to ao sir he told he will arrange a meeting with principal and incharger together most proboly next week so said to remind him next week', 'To meet AO', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mgr nagar', 'Iyapanthangal rd', '11:29:00', '11:49:00', '9.9', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(283, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10082', 'Rajiv school of excellence', '5/516 B, Sakthi Sairam Street, Ganapathi Nagar, Allapakkam, Porur, Chennai, Tamil Nadu 600116', '044 2476 7452', '', 'P4', 'spoke to principal he said he will arrange a meeting on feb 1st or 2nd week and he said to contact the admin', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Iyapanthangal rd', 'Ganapathi. Nagar', '12:12:00', '12:29:00', '7.8', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-29', 'January', '2020', '0000-00-00', 0, 1),
(284, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10030', 'Good shephered Matriculation hr sec school', '32,college rd, subba roadavenue, nugambakkam, chennai tamil nadu 600034', '04428276729', '', 'ZNI', 'spoke to principal and I gave presentation she said she will ask correspondent and let us know about it whether to include it or not', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ganapathi nagar', 'Subbha rd', '12:46:00', '01:13:00', '6.4', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-30', 'January', '2020', '0000-00-00', 0, 1),
(285, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10172', 'Madha mat', '41, Bharathiyar Nagar, Ennore, Chennai, Tamil Nadu', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Ennore', '09:30:00', '10:20:00', '19', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(286, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10173', 'Kumarans mission mat', 'padiyaka street 6th mission colony', '9645321766', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Ennore', '10:35:00', '10:45:00', '4', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(287, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10174', 'Jawaharlal Nehru Matric School', 'Ennore High Rd', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Ennore', '11:00:00', '11:20:00', '3', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(288, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10175', 'Sri Parthasarathy Matric School', 'Sivanpadai St, Kathivakkam, Ennore, Chennai, Tamil Nadu 600057', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Ennore', '11:30:00', '11:50:00', '4', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(289, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10176', 'Sri Venkateswara Matriculation School', 'Netaji Nagar, Ennore, Chennai, Tamil Nadu 600057', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Ennore', '12:00:00', '12:20:00', '5', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(290, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10177', 'voc school', 'Nehru Nagar, Ennore, Chennai, Tamil Nadu 600057', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Ennore', '13:10:00', '13:40:00', '3', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(291, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10178', 'Sri SSM ETPS Matriculation School', '4, Ennore Express Rd, Sivakami Nagar, Ennore, Chennai, Tamil Nadu 600057', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Ennore', '13:55:00', '14:10:00', '1', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(292, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10179', 'St.Annes matriculation school.', '\"Ramana Nagar, Minjur, Tamil Nadu 601203 \"', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ennore', 'Minjur', '14:20:00', '14:35:00', '9', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(293, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10180', 'Israel Mission Matric School', 'Kattur Rd, Balaji Nagar, Minjur, Tamil Nadu 601203', '099522 31256', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Minjur', 'Minjur', '14:45:00', '15:10:00', '3', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(294, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10181', 'St. Marks Kids & Matric. School', 'Kattur Rd, Minjur, Tamil Nadu 601203', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Minjur', 'Minjur', '15:25:00', '15:55:00', '2', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(295, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10182', 'St.Mary\'s Higher Secondary School', 'Ramana Nagar, Minjur, Tamil Nadu 601203', '044 2793 3053', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Minjur', 'Minjur', '16:15:00', '16:35:00', '4', 'Bike', '5', '5', '', '', '2020-01-29', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(296, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10026', 'M R Matriculation hr sec school', 'balavinayanagar, near Mr school, Nerkundram, Chennai, Tamil nadu 600095', '08925260203', '', 'P6', 'spoke to principal and I gave presentation to primary HM dimple she said she will share her feedback to principal and will get a positive response', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sri ram nagar', 'Balavinayagar', '01:27:00', '01:46:00', '3.3', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-30', 'January', '2020', '0000-00-00', 0, 1),
(297, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10027', 'Sri Devi school', 'Krishna nagar, koyembedu, chennai, tamil nadu 600095', '7200762375', '', 'P6', 'spoke to admin principal is in a meeting so said to come later', 'To meet correspondent', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Balavinayagar', 'Krishna nagar', '02:08:00', '02:27:00', '2.8', 'Bike', '5', '5', '', '', '2020-01-22', '2020-01-30', 'January', '2020', '0000-00-00', 0, 1),
(298, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10183', 'Mahindra world school', 'Paranur railway station rd, thirutheri, mahendra world city, kanchipuram 603002', '044 4749 0060', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Mahendra city', '09:09:00', '09:35:00', '53', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(299, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10184', 'Vikas mantra public school', 'S.No:168,168/3 Off, Anjur Rd, Mahindra World City, Chengalpattu, Tamil Nadu 603204', '070924 50450', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mahendra city', 'Thirutheri', '09:56:00', '10:56:00', '3.9', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(300, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10185', 'Scad world school', 'National Highway 45, Chengalpattu, Pazhaveli, Tamil Nadu 603111', '099429 78452', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Thirutheri', 'Pazhaveli', '11:35:00', '11:49:00', '16', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(301, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10186', 'Vidya sagar global school', 'Vidya sagar college, trichi highway, chengalpet, 603002', '044 2743 3959', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pazhaveli', 'Chengalpet', '11:50:00', '00:02:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(302, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10187', 'St pauls matric and cbse', 'Mahalakshmi Nagar, Sri Nisha Nagar, Kanchipuram, SH-58, Kancheepuram Chengalpattu Road, Kanchipuram, Kanchipuram, 603101', '044 2238 5771', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Chengalpet', 'Thimavaram', '12:10:00', '12:32:00', '8.9', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(303, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10188', 'Brindavan public school', 'Kanchipuram chengalpet rd, athur, Tn 603101', '044 2742 6403', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Thimavaram', 'Athur', '12:42:00', '13:10:00', '3.8', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(304, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10189', 'Rlt academy matric hr sec', 'No.2, School Road, Athur, Chengalpattu, Tamil Nadu 603101', '099624 48992', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Athur', 'Athur', '13:55:00', '14:20:00', '1.3', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(305, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10190', 'Little jacky matric hr sec', 'No 5 & 5 A, Gangai Amman Koil St, Near S.R.K.Theatre, Big Natham, J C K Nagar, Chengalpattu, Tamil Nadu 603002', '044 2743 1474', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Athur', 'Gangai amman koil st', '14:35:00', '15:10:00', '8.8', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(306, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10191', 'St joseph matric hr sec', 'Kancheepuram High Road, Chengalpattu, Tamil Nadu 603002', '044 2742 3486', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Gangai amman st', 'Bigmanyakar st', '15:33:00', '15:56:00', '2.6', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(307, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10192', 'RKN matric hr sec', 'Adhilakshmi Nagar, Anumanthaputheri, Pillayar Koil St, Chengalpattu, Tamil Nadu 603002', '044 2742 9844', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Gangai amman ', 'Athilakshmi st', '00:00:00', '00:00:00', '3.3', 'Bike', '5', '5', '', '', '2020-01-30', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(308, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10193', 'Baldwins school', '4-250, nethaji avenue main road, netaji avenue koyembedu chennai- 600107', '9884883398', '', 'P5', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'krishna nagar', 'netaji avenue ', '14:45:00', '14:58:00', '2.4', 'Bike', '5', '5', '', '', '2020-01-22', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(309, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10194', 'Sri L G G Mat Higher Secondary School', '10 Ekambareswarar Aghraharam,Mint Street, Chennai, Tamil Nadu 600003', '044 2535 7248', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Mint', '09:30:00', '10:20:00', '7', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(310, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10195', 'CSI mat school', '5, Kondal Street, Kondithope, George Town, Chennai, Tamil Nadu 600001', '090949 96946', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '10:35:00', '10:45:00', '5', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(311, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10196', 'Parekh Vidhya mandhir', '10/10, Agraharam St, Edapalaiyam, George Town, Chennai, Tamil Nadu 600003', '044 2535 7691', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '11:00:00', '11:20:00', '4', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(312, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10197', 'S J T Surana Jain Vidyalaya Higher Secondary School', '2, Badrian Street, Chennai, Tamil Nadu 600003', '044 25201493', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '11:30:00', '11:50:00', '2', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(313, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10198', 'UMA mat hr sec school', 'No 41, Ayalur Muthiah Mudali Street, Mint, Chennai - 600001, near gdc bank', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '12:00:00', '12:20:00', '4', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(314, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10199', 'Holy Trinity Mat. Hig. Sec. School', 'Holy Trinity Mat. Hig. Sec. School, Mannady, Chennai - 600001', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '13:20:00', '13:50:00', '3', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(315, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10200', 'Sri banari mat hr sec school', '2nd north street Mint main road', '044 254631', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '13:55:00', '14:35:00', '5', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(316, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10201', 'Fahithisa mat school', 'krishna puram 2nd avenue mint', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '14:40:00', '15:00:00', '4', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(317, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10202', 'SSV Mat hr sec school', '30, Agraharam St, Edapalaiyam, Park Town, Chennai, Tamil Nadu 600003', '044 2535 8769', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Mint', '15:00:00', '15:10:00', '1', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(318, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10203', 'Rex mat hr sec school', '27, N Tank Square St, Narayana Krishnaraja Puram, Triplicane, Chennai, Tamil Nadu ', '044 2844 6504', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mint', 'Triplicane', '15:25:00', '15:55:00', '8', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(319, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10204', 'Seetha kingston house mat hr sec school', 'P H Road, Chennai, Tamil Nadu 600010', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'triplicane', 'triplicane', '16:15:00', '16:35:00', '2', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(320, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10205', 'Gill adarsh mat hr sec school', '46, Venkatachalam St, Balaji Nagar, Royapettah, Chennai, Tamil Nadu', '044 2847 1504', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Triplicane', '16:35:00', '16:40:00', '3', 'Bike', '5', '5', '', '', '2020-01-31', '0000-00-00', 'January', '2020', '0000-00-00', 0, 1),
(321, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Has met mr sarath for appointment but he asked to call by evening', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Hlc rd', '09:27:00', '10:00:00', '14', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(322, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10126', 'jeppiar matric hr sec', 'ellai amman koil st, kamaraj nagar, semmancheri, chennai 600119', '04424502051', '', 'P7', 'Has went to meet mrs dawn but she was in class asked to call by lunch time', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Hlc rd ', 'Jeppiar nagar', '10:19:00', '10:35:00', '7.2', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(323, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10052', 'st vincent palloti matric hr sec', 'palloti salai, zamin pallavaram, theresa nagar, chennai 600117', '04422661727', '', 'P5', 'Has went to get father appointment but he was busy tomd that he will call back', 'Negotiation', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Jeppiar nagar', 'Palloti salai', '11:24:00', '11:42:00', '19', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(324, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10110', 'good shepard matric hr sec', 'no 38, rajagopal street, old pallavaram,ambedkar street, chennai 600117', '7845315631', '', 'P1', 'Has went to meet the prinipal but she was not available', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Palloti salai', 'Ambedkar street', '12:00:00', '12:14:00', '2.1', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(325, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10111', 'valluvar gurukulam matric hr sec', 'no 220, gst road, tambaram west, chennai 600045', '04422267744', '', 'P1', 'Has met the cbse principal meenakshi and gave her a demo', 'Demo', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ambedkar nagar', 'Gst tambaram', '12:33:00', '12:55:00', '8.8', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(326, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10108', 'st johns matric hr sec', 'no 1, mes road, ganapathipuram, east tambaram, chennai 600045', '9840633623', '', 'P7', 'Revisited to meet father but was not available', 'Negotiation', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Gst', 'Mes rd', '13:10:00', '13:26:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(327, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10112', 'sri ramakrishna matric hr sec', 'south street, west tambaram, mudichur road, chennai 600045', '0442266688', '', 'P1', 'Revisited to meet principal but not met as secretary is not available', 'Demo', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mes rd', 'South st', '13:44:00', '14:04:00', '2.9', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(328, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10166', 'himayam matric hr sec', 's.kolathur main rd, periya kovilambakkam, chennai 600091', '0422463250', '', 'P1', 'Has met the principal and ms shruthi and gave them demo and has to meet the correspondent', 'Demo', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Nagappa rd', 'S kolathur', '14:36:00', '15:32:00', '9.2', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-03', 'February', '2020', '0000-00-00', 0, 1),
(329, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', '', 'P7', 'Corres out of station', 'Follow up', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'S kolathur', 'Pallava garden rd', '15:42:00', '15:53:00', '4.2', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-04', 'February', '2020', '0000-00-00', 0, 1),
(330, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10144', 'ggn international', 'no 1naidu shop road, radha nagar, chrompet, chennai 600044', '044 22659999', '', 'P1', 'Visited to meet academic coordinator but she was busy', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Pallava garden rd', 'Naidu shop rd', '15:55:00', '16:01:00', '5.9', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-04', 'February', '2020', '0000-00-00', 0, 1),
(331, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10206', 'sahaya matha mat', 'Minjur, Thiruvallur, SH-104, Chennai Pulicat Road, Thiruvallur, Thiruvallur, 601203', '044 2793 4970', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Minjur', '09:20:00', '10:00:00', '30', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(332, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10207', 'BSS Swamy vidhya mandhir', 'Nalur, Tamil Nadu 601203', '094456 26704', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Minjur', 'Minjur', '10:20:00', '10:35:00', '3', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(333, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10208', 'St.Marrys mat', 'Ramana Nagar, Minjur, Tamil Nadu 601203', '044 2793 3053', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Minjur', 'Minjur', '10:45:00', '11:15:00', '4', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(334, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10209', 'Smt. Gangadevi Bajranglal Chokhani Vivekananda Vidyalaya', 'Surya Nagar, Minjur, Tamil Nadu 601203', '044 2793 4479', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Minjur', 'Minjur', '11:25:00', '11:40:00', '2', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(335, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10210', 'Perunthalaivar kamarajar mat hr sec school', 'Pungambedu, Minjur, Thiruvallur, SH-104, Thiruvathiyur Ponneri Road, Thiruvallur, Thiruvallur, 601203', '072993 12917', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'minjur', 'minjur', '11:55:00', '12:15:00', '3', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(336, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10211', 'Akshara vidhyalaya', 'Hemachandra nagar, Hemachandra Nagar, Minjur, Tamil Nadu 601203', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'minjur', 'minjur', '12:25:00', '13:00:00', '4', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(337, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10212', 'Emmanuvel mat hr sec', 'THIPATTU, MINJUR District : THIRUVALLUR State : TAMIL NADU Pincode : 601203', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'minjur', 'minjur', '13:45:00', '14:00:00', '5', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(338, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10213', 'Sri aaimathaji mat', '24, Balaji Nagar, Attipattu, Chennai, Tamil Nadu 600120', '044 2796 0800', 'individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'minjur', 'minjur', '14:15:00', '15:12:00', '2', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(339, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10214', 'Venkateshwara vidhyalaya', 'Attipattu, Minjur, Tamil Nadu 601203', '044 2618 4583', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'minjur', 'minjur', '15:55:00', '16:15:00', '5', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(340, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10215', 'Infant jesus', '\"Area: Manali New Town Block: Minjur, Thiruvallur District: Thiruvallur  State: Tamil Nadu: Pincode: 600103\"', '044 123456', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'minjur', 'minjur', '16:35:00', '16:40:00', '8', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(341, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10102', 'bharathi vidyalaya senior sec', 'no 721, perumbakkam main rd, cheran nagar, chennai 600100', '04422771044', '', 'P6', 'Has met the prinipal gave demo but not interested', 'Demo', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Perumbakkam', '09:34:00', '10:05:00', '13', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(342, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10111', 'valluvar gurukulam matric hr sec', 'no 220, gst road, tambaram west, chennai 600045', '04422267744', '', 'P1', 'Has met the advisor and he asked to come on friday', 'Negotiation', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'S kolathur', 'Gst re', '15:16:00', '15:33:00', '11', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(343, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10166', 'himayam matric hr sec', 's.kolathur main rd, periya kovilambakkam, chennai 600091', '0422463250', '', 'P1', 'Has met ms shruti and told she will get back once corres gives appointment', 'Follow up', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kannabiran st', 'S kolathur', '13:12:00', '14:08:00', '6.9', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(344, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10103', 'b.s matric hr sec', 'no 10/861, vgp babu nagar, medavakkam, chennai 600100', '04422770912', '', 'Sign Up', 'Agreement submission to school', 'Signed', 'Sign Up', 'Thinkwise App', '3.5', '0000-00-00', '00:00:00', 'Perumbakkam', 'Medavakkam', '10:27:00', '10:51:00', '3.6', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '2020-02-05', 0, 1),
(345, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10149', 'Kamaraj mat hr sec school', '45 Sanjeevirayan, Koil Street, Washermanpet, Chennai, Tamil Nadu 600021', '8925126326', 'Mr.Deepan', 'P3', 'Follow the admin person for the management appointment', 'Followup call', 'Cold Call', '', '', '2020-02-10', '00:00:00', 'Triplicane', 'Washeramanpet', '10:00:00', '10:30:00', '7', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(346, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10151', 'Little flower mat hr sec school', 'Old No.74/6, New No.64, Thandavarayan Gramini Street, Washermanpet, Chennai, Tamil Nadu 60002', '044 2595 1146', 'Mr.Deepan', 'P1', 'Principal followup and she will make us to sit with the father after feb 7', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Washeramanpet', 'Washeramanpet', '11:15:00', '12:35:00', '4', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(347, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10216', 'St.Rouqes mat hr sec school', '.49, M.C Road, Old Washermanpet, Chennai, Tamil Nadu 600021', '9884400107', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '', '', '10:45:00', '10:55:00', '4', 'Bike', '5', '5', '', '', '2020-02-05', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(348, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10068', 'boaz public school', 'no 277, velachery tambaram rd, gowrivakkam, chennai 600073', '04422780083', '', 'P7', 'Revisited but school closed', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Perunhalathur', 'Sembakkam', '17:03:00', '17:12:00', '12', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(349, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10217', 'Vidhya matric hr sec', 'Sholinganallur Main Rd, Thiruvalluvar Nagar, Jalladiampet, Medavakkam, Chennai, Tamil Nadu 600100', '044 2277 9999', '', 'P1', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Perumbakkam', 'Perumbakkam', '10:10:00', '10:34:00', '1.8', 'Bike', '5', '5', '', '', '2020-02-05', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(350, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10218', 'St johns public school', 'Lake Bund Road, Off Perumbakkam Main Road, VGP Prabhu Nagar, Jalladianpet, Chennai, Tamil Nadu 600100', '044 2981 5144', '', 'P1', '', '', 'Cold Call', '', '', '2020-02-12', '16:00:00', 'Kannabiran st', 'Jaladiampet', '11:12:00', '11:55:00', '1.9', 'Bike', '5', '5', '', '', '2020-02-05', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(351, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10219', 'Akg public school', 'Bharathi St, Medavakkam, Chennai, Tamil Nadu 600100', '044 2246 1418', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Jaladiampet', 'Bharathi st', '12:06:00', '12:20:00', '3.2', 'Bike', '5', '5', '', '', '2020-02-05', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(352, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10220', 'Infant jesus matric hr sec', 'Kannabiran Koil St, Jeeva Nagar Extension, Pallikaranai, Chennai, Tamil Nadu 600100', '04422463729', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Jaladiampet', 'Kannabiran st', '13:02:00', '13:24:00', '4.5', 'Bike', '5', '5', '', '', '2020-02-05', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(353, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10221', 'St annes matric hr sec', 'Srinivasa Nagar, Peerkankaranai, New Perungalathur, Chennai, Tamil Nadu 600063', '+91 98841 76661', '', 'P1', '', '', 'Sign Up', 'Thinkwise app', '', '0000-00-00', '00:00:00', 'Gst rd', 'Perungalathur', '16:16:00', '16:38:00', '13', 'Bike', '5', '5', '', '', '2020-02-05', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(354, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10142', 'christ the king matric hr sec', 'velachery main rd, united colony, medavakkam, chennai 600100', '04422771886', '', 'P1', 'Went to meet correa but busy', 'Followup demo', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Perumbakkam', 'United colony', '09:57:00', '10:06:00', '4.2', 'Bike', '5', '5', '', '', '2020-02-05', '2020-02-05', 'February', '2020', '0000-00-00', 0, 1),
(355, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'Has went to meet principal but busy', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Ponmar', '09:37:00', '10:02:00', '19', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-06', 'February', '2020', '0000-00-00', 0, 1);
INSERT INTO `follow` (`id`, `employeeid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `joincall`, `prioritystatus`, `description`, `purpose`, `callstatus`, `productname`, `productvalue`, `appointmentdate`, `appointmenttime`, `fromplace`, `toplace`, `intime`, `outtime`, `kmstravelled`, `modeofconveyance`, `car`, `bike`, `others`, `enteramount`, `date`, `editdate`, `month`, `year`, `signupdate`, `del_status`, `activestatus`) VALUES
(356, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10018', 'crescent school', 'b.s abdur rahman colllege campus, vandalur, chennai 600048', '04422750351', '', 'P6', 'Has met office but asked again for mail', 'Appointment', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Ponmar', 'Vandalur', '10:23:00', '10:33:00', '14', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-06', 'February', '2020', '0000-00-00', 0, 1),
(357, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10019', 'sri sankara global academy', 'gst road, ambika nagar, urapakkam, chennai 603210', '04422751088', '', 'P5', 'Ceo busy and asked to come on tuesday', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Vandalur', 'Ambika nagar', '10:50:00', '11:16:00', '3.2', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-06', 'February', '2020', '0000-00-00', 0, 1),
(358, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10021', 'ananthavalli matric hr sec', 'no 182, gst rd, senthil nagar, urapakkam, chennai 603211', '04427465959', '', 'P6', 'Principal busy with practicals', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ambika nagar', 'Urapakkam', '11:30:00', '11:46:00', '1.9', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-06', 'February', '2020', '0000-00-00', 0, 1),
(359, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10133', 'st marys matric hr sec', 'nandivaram main road, nellikupppam high road, guduvanchery, chennai 603202', '04427465439', '', 'P1', 'Has met sister but father not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Urapakkam', 'Nandivaram', '12:00:00', '12:35:00', '4.5', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-06', 'February', '2020', '0000-00-00', 0, 1),
(360, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10222', 'Bharathiyar matric hr sec', 'Plot No.33, Visweswaran Iyer St, Mahalakshmi Street, Srinivasapuram, Guduvanchery, Tamil Nadu 603202', '044 2746 5416', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nandivaram', 'Visweshwaran st', '13:26:00', '14:17:00', '6', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(361, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10223', 'Sri ma vidyalaya', 'Narayanasamy Rajeswari Illam, 11, Perumattunallur Main Road, Perumanttunallur, Tamil Nadu 603202', '073587 10051', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Guduvanchery', 'Peramatanallur', '14:38:00', '15:52:00', '9.7', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(362, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10224', 'Shree sankalpa vidyalaya', 'Guduvancheri - Maraimalai Nagar Rd, Kalivanthapattu, Tamil Nadu 603209', '072997 33221', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Peramatanallur', 'Kalivanthapattu', '15:02:00', '15:15:00', '6.8', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(363, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10013', 'st francis de sales matric hr sec', 'kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414747', '', 'P4', 'Father not available', 'Negotiation', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Urapakkam', 'Pudupakkam', '17:05:00', '17:08:00', '26', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-06', 'February', '2020', '0000-00-00', 0, 1),
(364, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10225', 'St johns matric hr sec ( guduvanchery)', 'No.50, Nandhivaram, Viswananthapuram, Guduvanchery, Tamil Nadu 603202', '044 2746 5191', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kalivanthapattu', 'Guduvanchery', '15:14:00', '15:47:00', '9.8', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(365, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10226', 'Holy sai international', '63, Jayalakshmi Nagar Adhanur, Guduvanchery, Chennai, Tamil Nadu 603202', '099416 90009', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Guduvanchery', 'Nandivaram', '15:53:00', '16:05:00', '3.5', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(366, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10227', 'Neelan matric hr sec', 'Arul Nagar, Urapakkam, Tamil Nadu 603202', '044 2746 7986', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Athanur', 'Urapakkam', '16:12:00', '16:22:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(367, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10228', 'Geetha matriculation higher secondary School', '34, Seshachala St, Saidapet East, Periyapet, Saidapet, Chennai, Tamil Nadu 600015', '094442 48273', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'NANDAMBAKKAM', 'Seschala', '09:33:00', '09:49:00', '6.3', 'Bike', '5', '5', '', '', '2020-02-01', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(368, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10229', 'Cambridge matriculation higher secondary School', '5, Rangabashyam St, Sarathy Nagar, Saidapet, Chennai, Tamil Nadu 600015', '044 2485 1089', '', 'ZNI', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Seschala', 'Rangabashyam', '10:07:00', '10:23:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-01', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(369, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10230', 'Fathima central senior secondary school', '4, Police Ln, Industrial Area, Saidapet, Chennai, Tamil Nadu 600015', '044 2381 0627', '', 'ZNI', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Rangabashyam', 'Industrial area ', '10:38:00', '10:47:00', '2.1', 'Bike', '5', '5', '', '', '2020-02-07', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(370, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10065', 'Alpha school (main branch)', 'No.13, South, West Rd, CIT Nagar, Chennai, Tamil Nadu 600035', '044 2432 3179', '', 'P1', 'spoke to admin pa mam was in a meeting so said to come later', 'To meet Pa mam ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Industrial area', 'Cit nagar', '11:13:00', '11:29:00', '4.7', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(371, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10231', 'Little Oxford matriculation higher secondary School', '48, Ramanujam St, Parthasarathi Puram, T. Nagar, Chennai, Tamil Nadu 600017', '9962547811', '', 'P1', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Cit nagar', 'Ramanujam st', '11:41:00', '12:22:00', '5.1', 'Bike', '5', '5', '', '', '2020-02-01', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(372, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10232', 'Holy angels Anglo Indian higher secondary School', 'Sir Theagaraya Rd, Parthasarathi Puram, T. Nagar, Chennai, Tamil Nadu 600017', '044 2815 2505', '', 'P1', '', '', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Ramanujam st', 'Sir thiyagara nagar', '12:30:00', '01:08:00', '4.3', 'Bike', '5', '5', '', '', '2020-02-01', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(373, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10233', 'Baba matriculation higher secondary School', '21, Akbarabad 1st St, China Raji Thottam, Kodambakkam, Chennai, Tamil Nadu 600024', '044 2483 9082', '', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Sir thiyagara nagar', 'Akbarabad', '01:24:00', '01:49:00', '5.4', 'Bike', '5', '5', '', '', '2020-02-01', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(374, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10234', 'Chattrapathy shivaji dav secondary school', 'New No: 29, Old No: 13, Circular Rd, United India Colony, Kodambakkam, Chennai, Tamil Nadu 600024', '044 2484 1783', '', 'P4', '', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Akbarabad', 'United India colony', '02:14:00', '02:30:00', '2', 'Bike', '5', '5', '', '', '2020-02-01', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(375, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10025', 'Dr. Vimala convent matriculation hr sec school', '4/1, amman nagar main rd, chellammal nagar, ramapuram, chennai, Tamil nadu 600089', '04424745509', '', 'P7', 'spoke to admin she said secretary dint came yet so said to come eve time', 'To meet secretary', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Amman nagar', '09:30:00', '09:49:00', '3.8', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(376, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10033', 'M.K.M Matriculation hr sec school', '1, Subashree Nagar III Phase, Mugalivakkam, porur, Chennai, Tamil nadu 600125', '04422523599', '', 'P6', 'spoke to admin principal was busy with exam so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Amman nagar', 'Subashree nagar', '10:18:00', '10:30:00', '3.9', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(377, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', '', 'P6', 'spoke to adminn vp mam was busy with practical exams so said to come feb 2nd week', 'To meet vice principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Subashree nagar', 'Balaji koil', '10:44:00', '11:13:00', '5.9', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(378, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10027', 'Sri Devi school', 'Krishna nagar, koyembedu, chennai, tamil nadu 600095', '7200762375', '', 'P6', 'spoke to admin concern person was not there so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Balaji koil ', 'Krishna nagar', '11:51:00', '12:39:00', '8.9', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(379, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10235', 'Adithiya international public school', 'MAC Nagar, Kattupakkam, Chennai, Tamil Nadu 600077', '9840560421', 'Mr Krishna ', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Krishna nagar', 'Kattupakkam', '01:30:00', '02:49:00', '14', 'Bike', '5', '5', '', '', '2020-02-03', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(380, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10066', 'ellen sharma matric hr sec', 'no 9, nedunchezhian street, sozhinganallur, chennai 600119', '04424501250', '', 'P6', 'Has went to meet the vp but busy with the practical', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Nedunchezian st', '09:32:00', '09:54:00', '6.3', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(381, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10124', 'ramana vidyalaya', 'no 371,mgr road, 1st cross st, ezhil nagar, sozhinganallur, chennai 600119', '04424501405', '', 'P7', 'Went to get an appointment but she asked to get through mail', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nedunchezian st', 'Mgr st', '10:16:00', '10:37:00', '1.2', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(382, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10125', 'sacred heart matric hr sec', '3rd main rd, devraj nagar, sozhinganallur, chennai 600119', '04424501696', '', 'P1', 'Revisited for appointment but asked to call by monday', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mgr rd', 'Devraj nagar', '10:41:00', '10:57:00', '1.1', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(383, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10126', 'jeppiar matric hr sec', 'ellai amman koil st, kamaraj nagar, semmancheri, chennai 600119', '04424502051', '', 'P7', 'Has went for principal appointment but mrs dawn asked to come by 3d week', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Devraj nagar', 'Jeppiar nagar', '11:14:00', '11:35:00', '6.8', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(384, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10108', 'st johns matric hr sec', 'no 1, mes road, ganapathipuram, east tambaram, chennai 600045', '9840633623', '', 'P7', 'Has met principal and gave demo and she told will talk with father', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Jeppiar nagar', 'Mes rd', '11:43:00', '12:05:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(385, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10111', 'valluvar gurukulam matric hr sec', 'no 220, gst road, tambaram west, chennai 600045', '04422267744', 'Mr mouli', 'P1', 'Has met adviser and the principal they told will discuss and get back', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Mes rd', 'Gst rd', '12:22:00', '13:01:00', '2.2', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(386, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10055', 'sacred heart matric hr sec', 'kamarajapuram, thiruneermalai main rd, anakaputtur, chennai 600070', '9176498476', 'Mr mouli', 'P5', 'Has met admin and she asked to call on monday for corres appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Irumbuliyur', 'Kamarajpuram', '13:37:00', '14:04:00', '9.9', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(387, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10054', 'sri sankara matric hr sec and global', '1st cross street, sankar nagar, moovendar colony, pammal, chennai 600075', '7358395382', '', 'P7', 'Has met mr mageshwaran and he told they use an app with a person from kanchi madam.', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kamrajpuram', 'Sankar nagar', '14:26:00', '15:16:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(388, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10148', 'st sebastian matric hr sec', 'no 2, rc church rd, pallavaram, chennai 600043', '04422641665', '', 'P1', 'Father was not available has to visit again', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sankar nagar', 'Old pallavaram', '15:23:00', '15:38:00', '9.7', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(389, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10148', 'st sebastian matric hr sec', 'no 2, rc church rd, pallavaram, chennai 600043', '04422641665', '', 'P1', 'Father was not available has to visit again', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sankar nagar', 'Old pallavaram', '15:23:00', '15:38:00', '9.7', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(390, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(391, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(392, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(393, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(394, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(395, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(396, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(397, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(398, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(399, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(400, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(401, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(402, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(403, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available has to call and get appointment', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Hlc rd', '16:07:00', '16:26:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(404, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Sharath was not available', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Gst rd', 'Hlc rd', '16:05:00', '16:25:00', '19', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(405, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10236', 'Santosh vidyalaya matric hr sec', 'No 9, Gangai Street, Balaji Nagar, Irumbuliyur, Tambaram East, Chennai, Tamil Nadu 600059', '098844 60469', 'Mr mouli', 'P1', '', '', 'Cold Call', '', '', '2020-02-10', '10:00:00', 'Gst rd', 'Irumbuliyur', '13:05:00', '13:15:00', '4.8', 'Bike', '5', '5', '', '', '2020-02-07', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(406, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10085', 'The pupil saveetha eco school', '4/68, Thiruverkkadu Road, Thiverkadu Co-operative Nagar, Seneerkuppam, Chennai, Tamil Nadu 600056', '044 2680 2013', '', 'P4', 'spoke to admin vp was busy so said to try again another day', 'To meet vice principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kattupakkam', 'Pilliar koil st', '03:09:00', '03:18:00', '4.7', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(407, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10036', 'Kalashetra Matriculation school', 'No.2, Mount poonamallee high road, ayyappanthangal, Kattupakkam, chennai Tamil nadu 600056', '04426792244', '', 'P4', 'spoke to ao sir he told sure he will make an appointement this week or next week without fail', 'To meet ao', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pilliar koil st', 'Iyapanthangal', '03:29:00', '03:45:00', '5.2', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(408, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', '', 'P6', 'spoke to admin she said principal is busy with the meeting so said to come after calling', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Iyapanthangal', 'Alapakkam rd', '04:00:00', '04:12:00', '6.1', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(409, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'spoke to admin she said exam is going on so cant meet so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Alapakkam rd', 'Svs road', '04:15:00', '04:18:00', '2', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(410, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10039', 'GOOD SHEPHERED Mat hr sec school', 'no 64, velan nagar 5th st, syndicate colony, sri ram nagar, valsaravakkam, chennai, tamil nadu 600087', '04424862003', '', 'P5', 'spoke to principal she said to come after exam', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Svs nagar', 'Sri ram nagar', '04:28:00', '04:30:00', '3.4', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(411, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', '', 'P7', 'spoke to principal she said to come next week to talk about this', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sri ram nagar', 'Anandam nagar', '04:38:00', '04:48:00', '5.8', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(412, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10025', 'Dr. Vimala convent matriculation hr sec school', '4/1, amman nagar main rd, chellammal nagar, ramapuram, chennai, Tamil nadu 600089', '04424745509', '', 'P7', 'spoke to secretary mam she said to come on march or april month so she will be free at that time', 'To meet secretary', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Anandam nagar', 'Amman nagar', '04:50:00', '05:00:00', '2.8', 'Bike', '5', '5', '', '', '2020-02-03', '2020-02-07', 'February', '2020', '0000-00-00', 0, 1),
(413, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin she said principal is not available this week so said to come next week', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Balaji koil', 'Mugalivakkam', '10:12:00', '10:25:00', '3.7', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(414, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10114', 'Little holy angels matriculation higher secondary School', '2384, Rajammal nagar, TNHB Colony, Annanur, Ambattur, Chennai, Tamil Nadu 600058', '090034 66137', '', 'P3', 'spoke to correspondent through admin he told today he is busy so cant meet anyway his mom told this year they are not going to include anything new', 'To meet correspondent', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mugalivakkam', 'Rajammal nagar', '11:09:00', '11:34:00', '18', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(415, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10081', 'Rajammal school', '7435, Ayapakkam Housing Board Rd, TNHB Colony, Annanur, Ambattur, Chennai, Tamil Nadu 600058', '044 6515 5323', '', 'P4', 'spoke to admin she said correspondent is busy so said to come later', 'To meet correspondent', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Rajammal nagar', 'Annanur', '11:43:00', '11:59:00', '2', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(416, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10237', 'Bharath matriculation higher secondary School', 'No-2 - Rama Murthy Street, M.T.H Road,, Ramapuram,Ambattur, Chennai, Tamil Nadu 600053', '098843 16228', '', 'ZNI', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Annanur', 'Rama Murthy street', '12:14:00', '12:39:00', '4.6', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(417, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10079', 'Sre Saraswati matriculation higher secondary school (ambattur)', 'Kallikuppam, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3789', '', 'P3', 'spoke to admin she said principal has informed us that correspondent told he will think about this product and let us know so till that its not possible', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mth road', 'Kalikupam', '12:59:00', '01:17:00', '6.7', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(418, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10080', 'Godson public school', 'No.6, Surapet Main Rd, Thirumal Nagar, Lakshmipuram, Chennai, Tamil Nadu 600099', '044 2565 6611', '', 'P4', 'spoke to admin she said principal is busy with the practical wxams so cant able to meet on sat before that make a call', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kalikupam', 'Thirumal nagar', '01:30:00', '01:53:00', '5.2', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(419, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10168', 'Lake view matriculation school', '18th Avenue,Banu Nagar, Pudur, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3727', '', 'P5', 'spoke to admin concern person was not there so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Thirumal nagar', 'Pudur', '02:17:00', '02:23:00', '3.4', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(420, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10167', 'sri ramakrishna  saradha ashrama higher secondary school', 'Banu nagar, ambattur chennai- 600053', '044 2686 0590', '', 'P4', 'spoke to admin concern principal is busy with practical stuff so said to come another day at eve time 4:30', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pudur', 'Banu nagar', '02:37:00', '02:49:00', '2', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-08', 'February', '2020', '0000-00-00', 0, 1),
(421, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10238', 'Excel matriculation higher secondary School', '36, new street Arjun nagar, thirumullaivoyal- 600062', '04426373169', '', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Banu nagar', 'Arjun nagar', '03:16:00', '03:28:00', '4.2', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(422, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10239', 'New century matriculation school', 'New Century Mat. Hr. Sec. School, #10, Chelliamman Nagar, Ayanambakkam Rd, Ambattur, Chennai, Tamil Nadu 600058', '044 2682 0017', '', 'P6', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Arjun nagar', 'Chelliamman nagar', '03:37:00', '03:48:00', '3.2', 'Bike', '5', '5', '', '', '2020-02-06', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(423, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10082', 'Rajiv school of excellence', '5/516 B, Sakthi Sairam Street, Ganapathi Nagar, Allapakkam, Porur, Chennai, Tamil Nadu 600116', '044 2476 7452', '', 'P4', 'spoke to admin everyone is busy now she said to call and come', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Chelliamman nagar', 'Ganapathi nagar', '04:16:00', '04:24:00', '7.8', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(424, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', '', 'P7', 'spoke to admin principal was busy  so said to come later', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ganapathi nagar', 'Anandam nagar', '04:30:00', '04:37:00', '7.3', 'Bike', '5', '5', '', '', '2020-02-06', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(425, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10236', 'Santosh vidyalaya matric hr sec', 'No 9, Gangai Street, Balaji Nagar, Irumbuliyur, Tambaram East, Chennai, Tamil Nadu 600059', '098844 60469', 'Mr mouli', 'P1', 'Has met mr santosh and spoke regarding the app and he told will get back after knowing about contract', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Irumbuliyur', '10:00:00', '11:03:00', '24', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(426, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10109', 'st marys matric hr sec', 'mes road,ganapathipuram,tambaram east, chennai 600045', '9962280659', 'M mouli', 'P1', 'Has met secretary and she asked to call after 2 days', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Irumbuliyur', 'Mes rd', '11:31:00', '11:39:00', '1.2', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(427, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10070', 'christ king matric hr sec', 'bethelpuram, mes road, tambaram east, chennai 600059', '04422396630', 'Mr mouli', 'P6', 'Sister not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mea rd ', 'Mes rd', '11:38:00', '11:40:00', '1.9', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(428, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10112', 'sri ramakrishna matric hr sec', 'south street, west tambaram, mudichur road, chennai 600045', '0442266688', '', 'P1', 'Principal told to wait until they make a call back', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'South st', '12:23:00', '12:48:00', '3.6', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(429, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10113', 'shri natesan vidyasala matric hr sec', 'mudichur road, natesan street, mannivakkam, chennai 600048', '04422760267', '', 'P1', 'Principal busy with the practicals', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'South st', 'Manimamgalam', '13:06:00', '13:33:00', '6.2', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(430, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10016', 'st joseph matric hr sec', 'melakottaiyur, kelambakkam vandalur main rd, chennai 600048', '04427409777', '', 'P6', 'Sister not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pushpagidi', 'Melakotayur', '15:23:00', '15:46:00', '13', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(431, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10011', 'sushil hari international', 'sri ramajaya campus, off kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414000', '', 'P7', 'Prinipal was not available', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Melakotayur', 'Sri ramajaya campus', '15:38:00', '15:52:00', '9.7', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(432, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10013', 'st francis de sales matric hr sec', 'kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414747', '', 'P4', 'Father told he will get back', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Sri ramajaya campus', 'Pudupakkam', '16:18:00', '16:37:00', '1.5', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-10', 'February', '2020', '0000-00-00', 0, 1),
(433, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10166', 'himayam matric hr sec', 's.kolathur main rd, periya kovilambakkam, chennai 600091', '0422463250', '', 'P1', 'Has met the corres daughter in law and she told he told to hold till april', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'S kolathur', '09:32:00', '10:24:00', '18', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(434, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10218', 'St johns public school', 'Lake Bund Road, Off Perumbakkam Main Road, VGP Prabhu Nagar, Jalladianpet, Chennai, Tamil Nadu 600100', '044 2981 5144', '', 'P1', 'Has met mr alex for appointment but he asked to call by tomorrow 11am', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'S kolathur', 'Jaladiampet', '10:35:00', '11:33:00', '6.9', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(435, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', '', 'P7', 'Has met mr alagappan ans gave him demo asked to come by april', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Jaladiampet', '200ft rd', '11:46:00', '12:10:00', '8.9', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(436, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10046', 'kings matric hr sec', 'no 11, ponniamman koil street, balaiah gardens, madipakkam, chennai 600091', '04422422338', '', 'P3', 'Mr prabuu was not available', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Church rd', '1.6', '14:52:00', '14:59:00', '1.9', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(437, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10047', 'st thomas matric hr sec', 'ram nagar, puzhuthivakkam, madipakkam, chennai 600091', '04422421779', '', 'P3', 'Has met principal asked to call on friday to meet secretary', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Raghava Nahar', 'Chruch rd', '14:20:00', '14:47:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(438, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10049', 'vaelankani silver jubilee matric hr sec', '1st street, deivanai street, rammurthi nagar, madipakkam, chennai 600091', '04422476880', '', 'P6', 'Has went to meet principal but not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ponniamman st', 'Deva annai nagar', '15:31:00', '15:48:00', '3.1', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(439, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10048', 'holy prince matric hr sec', 'no 8, periyar nagar main rd, madipakkam, chennai 600091', '04422584300', '', 'P5', 'Revisited to meet prabhu but not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Deva annai nagar', 'Madipakkam', '16:13:00', '16:27:00', '3.2', 'Bike', '5', '5', '', '', '2020-02-11', '2020-02-11', 'February', '2020', '0000-00-00', 0, 1),
(440, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10240', 'Kalaimagal vidya mandir matric hr sec', '2/163, Raghava Nagar, Madipakkam, Chennai, Tamil Nadu 600091', '044 2247 1987', '', 'P1', '', '', 'Proposal Call', '', '', '0000-00-00', '00:00:00', 'Alagappa nagar', 'Raghava nagar', '13:03:00', '12:58:00', '4.1', 'Bike', '5', '5', '', '', '2020-02-11', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(441, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10230', 'Fathima central senior secondary school', '4, Police Ln, Industrial Area, Saidapet, Chennai, Tamil Nadu 600015', '044 2381 0627', 'Mr deepan ', 'ZNI', 'spoke to admin she told she had forwarded to principal if anything is needed they will get back to us', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Saidapet ', '09:30:00', '09:49:00', '4.9', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(442, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10228', 'Geetha matriculation higher secondary School', '34, Seshachala St, Saidapet East, Periyapet, Saidapet, Chennai, Tamil Nadu 600015', '094442 48273', 'Mr deepan', 'P4', 'spoke to admin concern person is not available so said to come later on next week', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Saidapet ', 'Seschala', '10:14:00', '10:30:00', '2.6', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(443, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10065', 'Alpha school (main branch)', 'No.13, South, West Rd, CIT Nagar, Chennai, Tamil Nadu 600035', '044 2432 3179', 'Mr deepan', 'P3', 'spoke to security he said as if not from thinkwise company no one want to visit if anything is needed they will get back to us', 'To meet Pa ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Seschala', 'Cit nagar', '10:42:00', '10:51:00', '4.1', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(444, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10064', 'Shri BS Mootha girls senior secondary school', '80, Brindavan St, Ramakrishnapuram, West Mambalam, Chennai, Tamil Nadu 600033', '044 4337 6363', 'Mr deepan', 'P2', 'spoke to secretary he needs some negotiation in app if it is k means he will include', 'To meet secretary', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Cit nagar', 'Gokulam colony', '11:13:00', '11:28:00', '3.7', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(445, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10241', 'SRM Nightingale school', '68, Thambiah Road,west Mambalam, Chennai, Tamil Nadu 600033', '044 2371 0609', 'Mr deepan', 'P1', '', '', 'Demo Call', '', '', '2020-02-14', '00:00:00', 'Gokulam colony ', 'Gokulam colony', '11:43:00', '12:08:00', '2.4', 'Bike', '5', '5', '', '', '2020-02-07', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(446, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10242', 'Sitaram vidyalaya matriculation higher secondary School', 'Ramakrishnapuram I Street,Arya Gowda Road, West Mambalam, Chennai, Tamil Nadu 600033', '044 2489 3001', 'Mr deepan', 'P2', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Gokulam colony ', 'Ramakrishnapuram', '12:25:00', '12:38:00', '2.5', 'Bike', '5', '5', '', '', '2020-02-07', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(447, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10231', 'Little Oxford matriculation higher secondary School', '48, Ramanujam St, Parthasarathi Puram, T. Nagar, Chennai, Tamil Nadu 600017', '9962547811', 'Mr deepan', 'ZNI', 'spoke to correspondent and vp sir they told this year they are not including', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Ramakrishnapuram', 'Ramanujam st', '01:04:00', '01:32:00', '3.8', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(448, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10243', 'Anjuman matriculation higher secondary School', 'Opposite Hyatt Regency, Administrative Block, B.N. Reddy Road Shop No: 16, Vijaya Raghava Rd, Lakshimi Colony, T. Nagar, Chennai, Tamil Nadu 600017', '044 4901 4555', 'Mr deepan', 'P1', '', '', 'Cold Call', '', '', '2020-02-17', '00:00:00', 'Ramanujam st', '3rd cross st', '01:49:00', '02:34:00', '3.3', 'Bike', '5', '5', '', '', '2020-02-07', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(449, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10242', 'Sitaram vidyalaya matriculation higher secondary School', 'Ramakrishnapuram I Street,Arya Gowda Road, West Mambalam, Chennai, Tamil Nadu 600033', '044 2489 3001', 'Mr deepan', 'P2', 'spoke to admin he said he had asked to principal she said to come on april month or march', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', '3rd cross st', 'Ramakrishnapuram', '02:49:00', '03:16:00', '6.9', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(450, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10029', 'crescent matriculation hr sec school', 'Rina mandal Rd, pycrofts garden Rd, Thousand Lights west Nugambakkam, Chennai tamil nadu 600006', '04428274616', 'Mr deepan', 'P6', 'spoke to coordinator mam she said correspondent is hospitalized so cant able to meet this month so once she get back she will call us', 'To meet coordinator', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ramakrishnapuram', 'Thousands lights', '03:27:00', '04:00:00', '7.8', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(451, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10028', 'Asan Memorial Senior secondary school', 'Cochin House 1, Anderson Rd, Thousand Lights west, gandhi nagar, chennai, tamil nadu 600006', '04428275858', 'Mr deepan', 'P7', 'spoke to admin principal is not there so said to come later', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Thousands lights', 'Anderson rd', '04:17:00', '04:28:00', '2.6', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(452, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10063', 'St Dominic\'s Anglo Indian hr secondary school', 'Butt Road, St. Thomas Mount, Ramapuram, Tamil Nadu 600016', '044 2234 3778', '', 'P2', 'spoke to principal she said we can include in some standards so she said to come after exam', 'To meet principal', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Anderson rd', 'Buttroad', '04:49:00', '05:17:00', '11', 'Bike', '5', '5', '', '', '2020-02-07', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(453, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin principal was not there so said to come later', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Mugalivakkam', '09:30:00', '09:48:00', '2.8', 'Bike', '5', '5', '', '', '2020-02-10', '2020-02-12', 'February', '2020', '0000-00-00', 0, 1),
(454, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Has met mr ramakrishnan and he told that can make it next week', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Market rd', '09:31:00', '10:28:00', '17', 'Bike', '5', '5', '', '', '2020-02-13', '2020-02-13', 'February', '2020', '0000-00-00', 0, 1),
(455, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10012', 'bhuvana krishna matric', 'bkm campus, kelambakkam, chennai 603103', '04427474136', '', 'P7', 'Has met the principal and gave her demo and asked to come next week to meet adviser', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Market rd', 'Kelambakam', '10:42:00', '11:17:00', '.9', 'Bike', '5', '5', '', '', '2020-02-13', '2020-02-13', 'February', '2020', '0000-00-00', 0, 1),
(456, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'Asked to come after 23rd to meet principal', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Thalambur', 'Ponmar', '11:32:00', '11:54:00', '13', 'Bike', '5', '5', '', '', '2020-02-13', '2020-02-13', 'February', '2020', '0000-00-00', 0, 1),
(457, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10015', 'horizon international academy', 'kovilanchery, chennai 600126', '9176865944', '', 'P6', 'Has met mrs mary she asked to call on 24th', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ponmar', 'Ponmar', '13:30:00', '13:46:00', '3.9', 'Bike', '5', '5', '', '', '2020-02-13', '2020-02-13', 'February', '2020', '0000-00-00', 0, 1),
(458, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10018', 'crescent school', 'b.s abdur rahman colllege campus, vandalur, chennai 600048', '04422750351', '', 'P6', 'Has asked to wait till they revert with an appointment', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Ponmar', 'Vandalur', '14:35:00', '14:43:00', '16', 'Bike', '5', '5', '', '', '2020-02-13', '2020-02-13', 'February', '2020', '0000-00-00', 0, 1),
(459, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10013', 'st francis de sales matric hr sec', 'kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414747', '', 'P4', 'Father was busy in class', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Perungalathur', 'Pudupakkam', '16:21:00', '16:36:00', '22', 'Bike', '5', '5', '', '', '2020-02-13', '2020-02-13', 'February', '2020', '0000-00-00', 0, 1),
(460, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10244', 'Hiranandani upscale international school', '5/63, Old Mahabalipuram Road, Opp Sipcot IT Park, Egattur Village, Padur P.O., Kelambakkam, via Kanchipuram Dist., Chennai, Tamil Nadu 603103', '073580 00736', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Navalur', '12:42:00', '13:48:00', '1.9', 'Bike', '5', '5', '', '', '2020-02-13', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(461, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10245', 'Kc high international', 'Olympia Panache, Navalur, Tamil Nadu 600130', '093848 27992', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Navalur', 'Navalur', '11:33:00', '23:48:00', '2.9', 'Bike', '5', '5', '', '', '2020-02-13', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(462, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10246', 'Mount litera zee school', 'Plot no 1/216 - Thalambur main road, Old Mahabalipuram Rd, Navalur, Tamil Nadu 600130', '096001 16644', '', 'P1', '', '', 'Cold Call', '', '', '2020-02-19', '00:00:00', 'Navalur', 'Thalambur', '12:20:00', '12:56:00', '3.6', 'Bike', '5', '5', '', '', '2020-02-13', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(463, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10247', 'St johns matric hr sec', 'No. 2, St. John\'s School Street, New Perungalathur, Chennai, Tamil Nadu 600063', '044 2274 0121', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Vandalur', 'Perungalathur', '13:00:00', '13:12:00', '8.9', 'Bike', '5', '5', '', '', '2020-02-13', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1);
INSERT INTO `follow` (`id`, `employeeid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `joincall`, `prioritystatus`, `description`, `purpose`, `callstatus`, `productname`, `productvalue`, `appointmentdate`, `appointmenttime`, `fromplace`, `toplace`, `intime`, `outtime`, `kmstravelled`, `modeofconveyance`, `car`, `bike`, `others`, `enteramount`, `date`, `editdate`, `month`, `year`, `signupdate`, `del_status`, `activestatus`) VALUES
(464, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10096', 'alm matric hr sec', 'hanuman colony, sakthi vinayaga nagar,vettuvankeni, chennai 600115', '04424491355', '', 'P1', 'Has met the prinipal and again explained askes to meet correa by 3 pm and he went back early', 'Demo ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Injambakkam', '09:36:00', '09:52:00', '7.9', 'Bike', '5', '5', '', '', '2020-02-14', '2020-02-14', 'February', '2020', '0000-00-00', 0, 1),
(465, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10094', 'akshar arbol international', '1/778, bethel nagar, anna enclave, injambakkam, chennai 600115', '9444973275', '', 'P1', 'Has went to get an appointment but the admin told they will revert back', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Injambakkam', 'Balaji nagar', '10:27:00', '10:33:00', '2.1', 'Bike', '5', '5', '', '', '2020-02-14', '2020-02-14', 'February', '2020', '0000-00-00', 0, 1),
(466, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10097', 'gt aloha vidya mandir', 'rajendran nagar, neeankarai, chennai 600115', '09841511166', '', 'P1', 'Met the vp and she told they are not planning to change now', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Injambakkam', 'Neelankarai', '11:02:00', '11:14:00', '2.9', 'Bike', '5', '5', '', '', '2020-02-14', '2020-02-14', 'February', '2020', '0000-00-00', 0, 1),
(467, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10099', 'brotherhood matric hr sec', '3/387, kazura garden street, neelankarai, chennai 600041', '04424490133', '', 'P1', 'Prinipal on leave', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Neelankarai', 'Kazura garden rd', '11:32:00', '11:41:00', '2.5', 'Bike', '5', '5', '', '', '2020-02-14', '2020-02-14', 'February', '2020', '0000-00-00', 0, 1),
(468, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10093', 'st johns dr  rajkumar international school', 'thiruvalluver st, chozhamandala devi nagar, anna enclave, injambakkam, chennai 600115', '9962020000', '', 'P7', 'Has met principal and got reference to meet the correspondent', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Shastri nagar', 'Bethel nagar', '16:10:00', '16:35:00', '10.5', 'Bike', '5', '5', '', '', '2020-02-14', '2020-02-14', 'February', '2020', '0000-00-00', 0, 1),
(469, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10248', 'Manthan vidyashram', '2/155, Natco Colony N St, Swaminathan Nagar, Kottivakkam, Chennai, Tamil Nadu 600041', '044 2448 5979', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kazura garden', 'Kottivakkam', '11:54:00', '12:15:00', '4.8', 'Bike', '5', '5', '', '', '2020-02-14', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(470, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10249', 'Ramachandra public school', 'Jagannathan St, Venkateshwara Nagar, Kalyani Nagar, Kottivakkam, Chennai, Tamil Nadu 600041', '044 2451 4088', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kottivakkam', 'Jaganath nagar', '13:46:00', '14:02:00', '3.7', 'Bike', '5', '5', '', '', '2020-02-14', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(471, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10250', 'Saraswathy venkatraman matric hr sec', 'No 40, Dr Radha Krishna Nagar Main Road, Near Radha Krishna Mandapam Chennai, Thiruvanmiyur, Tamil Nadu 600041', '044 2452 2469', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Jaganath nagar', 'Thiruvanmiyur', '14:12:00', '14:25:00', '6.3', 'Bike', '5', '5', '', '', '2020-02-14', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(472, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10251', 'St johns sen sec school', '9, S Canal Bank Rd, Mandavelipakkam, Mandaveli, Chennai, Tamil Nadu 600028', '044 2493 9202', '', 'P4', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Mandaveli', '09:38:00', '12:01:00', '21', 'Bike', '5', '5', '', '', '2020-02-17', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(473, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10252', 'Besant aurdale sen sec', 'Kalakshetra Foundation,Thiruvanmiyur, Chennai, Tamil Nadu 600041', '044 2452 6211', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Adyar', 'Kalakshetra rd', '14:46:00', '14:58:00', '3.6', 'Bike', '5', '5', '', '', '2020-02-17', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(474, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10253', 'Reserve bank quarters school', 'M.G.Road, Besant Nagar, Chennai, Tamil Nadu, Chennai, Tamil Nadu 600090', '044 2441 3051', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Adayar ', 'Adayar', '13:41:00', '14:11:00', '2.8', 'Bike', '5', '5', '', '', '2020-02-17', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(475, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10250', 'Saraswathy venkatraman matric hr sec', 'No 40, Dr Radha Krishna Nagar Main Road, Near Radha Krishna Mandapam Chennai, Thiruvanmiyur, Tamil Nadu 600041', '044 2452 2469', '', 'P1', 'Principal was not available', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Adayar', 'Thiruvanmiyur', '12:35:00', '12:51:00', '4.2', 'Bike', '5', '5', '', '', '2020-02-17', '2020-02-17', 'February', '2020', '0000-00-00', 0, 1),
(476, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10249', 'Ramachandra public school', 'Jagannathan St, Venkateshwara Nagar, Kalyani Nagar, Kottivakkam, Chennai, Tamil Nadu 600041', '044 2451 4088', '', 'P1', 'Revisited for appointment but told they will call back', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Thiruvanmiyur', 'Kottivakkam', '14:09:00', '14:24:00', '2.9', 'Bike', '5', '5', '', '', '2020-02-17', '2020-02-17', 'February', '2020', '0000-00-00', 0, 1),
(477, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10099', 'brotherhood matric hr sec', '3/387, kazura garden street, neelankarai, chennai 600041', '04424490133', '', 'P1', 'Principal is on leave still', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Jagannath nagar', 'Kazura garden', '14:09:00', '14:41:00', '6.8', 'Bike', '5', '5', '', '', '2020-02-17', '2020-02-17', 'February', '2020', '0000-00-00', 0, 1),
(478, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10096', 'alm matric hr sec', 'hanuman colony, sakthi vinayaga nagar,vettuvankeni, chennai 600115', '04424491355', '', 'P1', 'Correspondent was not available has to visit again', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Thiruvanmiyur', 'Injambakkam', '15:13:00', '16:35:00', '9.7', 'Bike', '5', '5', '', '', '2020-02-17', '2020-02-17', 'February', '2020', '0000-00-00', 0, 1),
(479, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10254', 'Bharath senior secondary', '10, Kamaraj Avenue, Near Adyar Telephone Exchange, Adayar, Chennai, Tamil Nadu 600020', '044 2441 3051', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sastri nagar', 'Balaraman st', '12:20:00', '12:21:00', '2.8', 'Bike', '5', '5', '', '', '2020-02-17', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(480, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10086', 'campus k school', 'tnhb main rd, ktk town, sozhinganallur, chennai 600119', '7825868686', '', 'P7', 'Has met gawtham and asked to come by april', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Tnhb rd', '09:35:00', '10:00:00', '4.7', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-18', 'February', '2020', '0000-00-00', 0, 1),
(481, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10068', 'boaz public school', 'no 277, velachery tambaram rd, gowrivakkam, chennai 600073', '04422780083', '', 'P7', 'Mr babu was not available', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pallikarnai', 'Sembakkam', '13:34:00', '13:45:00', '3.8', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-18', 'February', '2020', '0000-00-00', 0, 1),
(482, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10109', 'st marys matric hr sec', 'mes road,ganapathipuram,tambaram east, chennai 600045', '9962280659', '', 'P1', 'Has met mrs berny and she has not discusses yet', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Mes rd', '14:30:00', '14:50:00', '4', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-18', 'February', '2020', '0000-00-00', 0, 1),
(483, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10111', 'valluvar gurukulam matric hr sec', 'no 220, gst road, tambaram west, chennai 600045', '04422267744', '', 'P1', 'Has met prinipal asked to come by march first week', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Mes rd', 'Gst', '14:55:00', '15:15:00', '2.2', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-18', 'February', '2020', '0000-00-00', 0, 1),
(484, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10144', 'ggn international', 'no 1naidu shop road, radha nagar, chrompet, chennai 600044', '044 22659999', '', 'P1', 'Met harini and asked for appointment', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Tambaram', 'Chrompet', '00:00:00', '00:00:00', '', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-18', 'February', '2020', '0000-00-00', 0, 1),
(485, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10130', 'Anita Methodist school', 'Vepery, Periyamet, Chennai, Tamil Nadu 600007', '044 123456', 'Individual call', 'P1', 'Principal followup', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Tiplicane', 'Veppery', '09:25:00', '10:10:00', '5', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(486, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10135', 'Doveton Group Of Schools', '1, Ritherdon Rd, Vepery, Purasaiwakkam, Chennai, Tamil Nadu 600007', '072007 99444', 'Individual call', 'P1', 'Met the office person and given demo', 'Fresh call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veppery', 'veppery', '11:25:00', '12:20:00', '3', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(487, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10136', 'Bhavan\'s Rajaji Vidyashram', '6, Kilpauk Gardern Road,, Davidpuram, Kilpauk, Chennai, Tamil Nadu 600010', '044 2641 2169', 'Individual call', 'P1', 'Met the office person asked for the appointment', 'Individual call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'kilpauk', '13:20:00', '13:40:00', '5', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(488, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10138', 'Ramachandra Matriculation Higher Secondary School', '474, Kilpauk Garden Road, Aspiran Garden Colony, Kilpauk, Chennai, Tamil Nadu 600010', '044 2647 4583', 'Individual call', 'P1', 'cant able to reach the authorities', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'kilpauk', '13:55:00', '14:20:00', '3', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(489, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10137', 'Guru Shree Shantivijai Jain Vidyalaya', 'No. 96, New No.154, Vepery High Rd, Vepery, Chennai, Tamil Nadu 600007', '044 2532 2541', 'Individual call', 'P1', 'cant able to reach the authorities', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kilpauk', 'kilpauk', '12:50:00', '13:10:00', '2', 'Bike', '5', '5', '', '', '2020-02-18', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(490, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10255', 'Seventh-day Adventist Matriculation Higher Secondary School', '16,seconda, Valliammal Rd, Vepery, Chennai, Tamil Nadu 600007', '044 2641 2618', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '12:10:00', '12:35:00', '4', 'Bike', '5', '5', '', '', '2020-02-18', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(491, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10256', 'Bharatiya Vidya Bhavan\'s', 'Kilpauk Garden Road, Davidpuram, Kilpauk, Chennai, Tamil Nadu 600010', '044 2464 3420', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'kilpauk', '13:55:00', '00:00:00', '3', 'Bike', '5', '5', '', '', '2020-02-18', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(492, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Has met the admin has to visit on friday', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:41:00', '10:07:00', '16', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(493, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10011', 'sushil hari international', 'sri ramajaya campus, off kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414000', '', 'P7', 'Has went to get appointment but principal busy', 'Appointment', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Sri ramajaya campus', '10:25:00', '10:45:00', '3.9', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(494, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10012', 'bhuvana krishna matric', 'bkm campus, kelambakkam, chennai 603103', '04427474136', '', 'P7', 'Advisor was busy told they will call back', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Kelambakkam', '11:00:00', '11:35:00', '3.8', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(495, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10244', 'Hiranandani upscale international school', '5/63, Old Mahabalipuram Road, Opp Sipcot IT Park, Egattur Village, Padur P.O., Kelambakkam, via Kanchipuram Dist., Chennai, Tamil Nadu 603103', '073580 00736', '', 'P1', 'Has given demo to it head told they will call for corres appointment', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Navalur', '11:55:00', '12:20:00', '6.7', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(496, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10246', 'Mount litera zee school', 'Plot no 1/216 - Thalambur main road, Old Mahabalipuram Rd, Navalur, Tamil Nadu 600130', '096001 16644', '', 'P1', 'Has given demo to principal has to send mail', 'Demo', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Navalur', 'Thalambur', '12:40:00', '13:09:00', '5.9', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(497, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10087', 'athena global  school', '39/192, dlf garden city rd, semmancheri, chennai 600130', '9444601234', '', 'P5', 'Has met correspondent and he asked to come after a weej', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Navalur', 'Hlc rd', '13:50:00', '14:35:00', '9.6', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(498, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Mr sarath was not available has to visit again', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Hlc rd', 'Hlc rd', '14:45:00', '14:56:00', '1.7', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(499, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10089', 'ramaniyam sankara matric hr sec', 'north casa grand rd, semmancheri, chennai 600130', '9500054644', '', 'P1', 'Admin told they will call back if correspondent requires', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Hlc rd', 'North casa grande rd', '15:05:00', '15:15:00', '1.8', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(500, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10126', 'jeppiar matric hr sec', 'ellai amman koil st, kamaraj nagar, semmancheri, chennai 600119', '04424502051', '', 'P7', 'Has met admin asked to come after 24th', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Hlc rd', 'Jeppiar nagat', '15:25:00', '15:40:00', '5.2', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(501, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10066', 'ellen sharma matric hr sec', 'no 9, nedunchezhian street, sozhinganallur, chennai 600119', '04424501250', '', 'P6', 'Principal was busy', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Jeppiar nagar ', 'Nedunchezian st', '15:50:00', '16:05:00', '4.5', 'Bike', '5', '5', '', '', '2020-02-19', '2020-02-19', 'February', '2020', '0000-00-00', 0, 1),
(502, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10257', 'St antonys matric hr sec', 'Velachery Road, Selvam Nagar, Pallikaranai, Chennai, Tamil Nadu 600100', '044 4356 0602', '', 'P1', '', '', 'Sign Up', 'Thinkwise app', '', '0000-00-00', '00:00:00', 'Nedunchezian st', 'Selvam nagar', '16:20:00', '16:33:00', '10.5', 'Bike', '5', '5', '', '', '2020-02-19', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(503, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10129', 'Bosco Academy Marticulation School', '174 M H Road Madhavaram, KKR Garden, Raja Annamalai Puram, Chennai, Tamil Nadu 600060', '9840073807', 'Individual call', 'P1', 'Gone there on time,Met the office person and explained about the product he said that send me the mail and they will see if needed they will call me', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Madhavaram', '09:50:00', '10:25:00', '11', 'Bike', '5', '5', '', '', '2020-02-20', '2020-02-20', 'February', '2020', '0000-00-00', 0, 1),
(504, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10129', 'Bosco Academy Marticulation School', '174 M H Road Madhavaram, KKR Garden, Raja Annamalai Puram, Chennai, Tamil Nadu 600060', '9840073807', 'Individual call', 'P1', 'Gone there on time,Met the office person and explained about the product he said that send me the mail and they will see if needed they will call me', 'Followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Madhavaram', '09:50:00', '10:25:00', '11', 'Bike', '5', '5', '', '', '2020-02-20', '2020-02-20', 'February', '2020', '0000-00-00', 0, 1),
(505, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10012', 'bhuvana krishna matric', 'bkm campus, kelambakkam, chennai 603103', '04427474136', '', 'P7', 'Has met the office but principal busy', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:26:00', '09:51:00', '16', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(506, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan is not available', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Market rd', '10:06:00', '10:41:00', '1.7', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(507, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10019', 'sri sankara global academy', 'gst road, ambika nagar, urapakkam, chennai 603210', '04422751088', '', 'P5', 'Ceo was busy has to visit again', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Urapakkam', '11:20:00', '11:33:00', '21', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(508, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10020', 'saraswathi matric hr sec', 'gangai naagr main rd, ravathipuram, urapakkam, chennai 603210', '9841293903', '', 'P7', 'Revisited for principal appointment but mrs priya was on leave', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Urapakkam', 'Iyencheri', '11:45:00', '12:00:00', '2', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(509, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10021', 'ananthavalli matric hr sec', 'no 182, gst rd, senthil nagar, urapakkam, chennai 603211', '04427465959', '', 'P6', 'Principal is busy with practical', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Iyencheri', 'Urapakkam', '12:10:00', '12:20:00', '2.2', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(510, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10222', 'Bharathiyar matric hr sec', 'Plot No.33, Visweswaran Iyer St, Mahalakshmi Street, Srinivasapuram, Guduvanchery, Tamil Nadu 603202', '044 2746 5416', '', 'P1', 'Has met the correspondent and he asked to come by 1st week', 'FOllowup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Urapakkam', 'Guduvanchery', '12:30:00', '12:41:00', '3.4', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(511, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10133', 'st marys matric hr sec', 'nandivaram main road, nellikupppam high road, guduvanchery, chennai 603202', '04427465439', '', 'P1', 'Father was not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Guduvanchery', 'Nellikuppam rd', '12:56:00', '13:15:00', '4.6', 'Bike', '5', '5', '', '', '2020-02-21', '2020-02-21', 'February', '2020', '0000-00-00', 0, 1),
(512, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', '', 'P7', 'Correspondent not available', '', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', '200 ft rd', '09:34:00', '10:01:00', '19', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(513, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10143', 's.c.s matric hr sec', 'no 30, ramachandra rd, nehru nagar, chrompet, chennai 600044', '04422235761', '', 'P4', 'Has met the corres has to call tomorrow', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', '200ft rd', 'Ramachandra rd', '10:15:00', '10:45:00', '7.8', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(514, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10145', 'olive public school', 'no 1, 2nd main rd, sarvamangala nagar, chitlapakkam, chennai 600064', '04422235927', '', 'P1', 'Prinipal was busy', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Ramachandra rd', 'Sarvamangala rd', '11:00:00', '11:15:00', '5.4', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(515, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10146', 'rosily matric hr sec', 'no 3, 1st street, rosily nagar, chitlapakkam, chennai 600064', '04422236842', '', 'P1', 'Has met the admin has to call on wed', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sarvamangala rd', 'Hastinapuram', '11:26:00', '11:40:00', '.9', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(516, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10052', 'st vincent palloti matric hr sec', 'palloti salai, zamin pallavaram, theresa nagar, chennai 600117', '04422661727', '', 'P5', 'Father was busy has to call tomorrow', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Hastinapuram', 'Palloti salai', '13:15:00', '13:35:00', '5.8', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(517, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10110', 'good shepard matric hr sec', 'no 38, rajagopal street, old pallavaram,ambedkar street, chennai 600117', '7845315631', '', 'P1', 'Has met admin but principal out of station', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Palloti salai', 'Ambedkar nagar', '13:55:00', '14:09:00', '2.9', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(518, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10053', 'sri sankara matric hr sec', 'no 6, ekambaram street, opp to csi church, gokulam colony, pammal, chennai 600075', '9443964053', '', 'P7', 'Revisited for prawin meeting but he is unavailable', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Zamin pallavaram', 'Ekambaram st', '15:00:00', '15:20:00', '7.8', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(519, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10055', 'sacred heart matric hr sec', 'kamarajapuram, thiruneermalai main rd, anakaputtur, chennai 600070', '9176498476', '', 'P5', 'Sister not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ekambaram st', 'Kamarajapuram', '16:20:00', '16:35:00', '4.3', 'Bike', '5', '5', '', '', '2020-02-25', '2020-02-25', 'February', '2020', '0000-00-00', 0, 1),
(520, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin principal was not there so said to come later', 'To meet principal', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Mugalivakkam', '09:30:00', '09:48:00', '2.8', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(521, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', '', 'P6', 'spoke to admin vp mam was not available so said to come another day', 'To meet vp mam', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mugalivakkam', 'Balaji koil ', '09:59:00', '10:10:00', '3.8', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(522, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10064', 'Shri BS Mootha girls senior secondary school', '80, Brindavan St, Ramakrishnapuram, West Mambalam, Chennai, Tamil Nadu 600033', '044 4337 6363', '', 'P2', 'mr krishna and mr deepan spoked to secretary he told give an explanation on feb 20', 'To meet secretary', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Balaji koil', 'Brindaban nagar', '10:38:00', '11:27:00', '9.8', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(523, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10043', 'Marthoma Matriculation hr sec school', '2, Bus stop, 1, Sri ayyappa nagar, chinmaya nagar, virugambakkam, chennai, tamil nadu 600092', '04424799335', 'Mr deepan', 'P4', 'spoke to principal she told to come tomorrow and show a demo on fee collection', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Brindaban nagar', 'Ayyapan nagar', '11:49:00', '12:09:00', '10.3', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(524, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10258', 'Trileaves international school', 'Madambakkam Main Road Behind Hansa Garden Apartments, Thirumagal Nagar, Rajakilpakkam, Chennai, Tamil Nadu 600073', '044 6528 2272', '', 'P1', '', '', 'Cold Call', '', '', '2020-03-14', '14:00:00', 'Madambakkam', 'Rajkilpakkam', '15:22:00', '16:11:00', '5.7', 'Bike', '5', '5', '', '', '2020-03-03', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(525, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10259', 'Sri kanchi mahaswami vidya mandir', 'Rajakilpakkam, Nisha Avenue_Extn2, Gowrivakkam, Sembakkam, Kanchipuram, Tamil Nadu', '044 2228 1565', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Rajakilpakkam', 'Rajakilpakkam', '15:20:00', '16:01:00', '3.8', 'Bike', '5', '5', '', '', '2020-03-03', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(526, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10086', 'campus k school', 'tnhb main rd, ktk town, sozhinganallur, chennai 600119', '7825868686', '', 'P7', 'Mr gawtham asked to come after april', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Tnhb rd', '09:36:00', '10:07:00', '5.2', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(527, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10066', 'ellen sharma matric hr sec', 'no 9, nedunchezhian street, sozhinganallur, chennai 600119', '04424501250', '', 'P6', 'Has met the vp and he told to come after exam', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Tnhb', 'Nedunchezian st', '10:23:00', '10:44:00', '2.2', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(528, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10125', 'sacred heart matric hr sec', '3rd main rd, devraj nagar, sozhinganallur, chennai 600119', '04424501696', '', 'P1', 'Prinipal will call back', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nedunchezian st', 'Devraj nagar', '11:13:00', '11:27:00', '3', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(529, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10217', 'Vidhya matric hr sec', 'Sholinganallur Main Rd, Thiruvalluvar Nagar, Jalladiampet, Medavakkam, Chennai, Tamil Nadu 600100', '044 2277 9999', '', 'P1', 'Hm was busy at exam', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Devraj nagar', 'Perumbakkam', '12:11:00', '12:21:00', '7.8', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(530, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Met sarath and he told will get appointment once management free', 'Appointment', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Perumbakkam', 'Hlc rd', '13:13:00', '13:28:00', '8.9', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(531, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10067', 'shree bharath vidyashram', 'agaram main road, secretriat colony, thiruvanchery, selaiyur, chennai 600126', '6379452658', '', 'P7', 'Principal asked to come after 2 days', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Hlc rd', 'Agaram rd', '14:11:00', '14:22:00', '10', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(532, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10068', 'boaz public school', 'no 277, velachery tambaram rd, gowrivakkam, chennai 600073', '04422780083', '', 'P7', 'Mr babu was not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Rajkilpakam', 'Sembakkam', '16:35:00', '16:42:00', '3.8', 'Bike', '5', '5', '', '', '2020-03-03', '2020-03-03', 'March', '2020', '0000-00-00', 0, 1),
(533, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan not available', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:31:00', '10:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(534, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan not available', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:31:00', '10:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(535, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan not available', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:31:00', '10:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(536, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan not available', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:31:00', '10:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(537, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan not available', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:31:00', '10:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(538, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Mr unni krishnan unavailable', 'Followup', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'Kelambakkam', '09:27:00', '10:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(539, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10011', 'sushil hari international', 'sri ramajaya campus, off kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414000', '', 'P7', 'Principal busy told they will call back', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Pudupakkam', '10:15:00', '10:25:00', '4.6', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(540, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10011', 'sushil hari international', 'sri ramajaya campus, off kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414000', '', 'P7', 'Principal busy told they will call back', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Pudupakkam', '10:15:00', '10:25:00', '4.6', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(541, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'Theyagarajan was not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pudupakkam', 'Ponmar', '10:40:00', '10:49:00', '16', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(542, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'Theyagarajan was not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pudupakkam', 'Ponmar', '10:40:00', '10:49:00', '16', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(543, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'Theyagarajan was not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pudupakkam', 'Ponmar', '10:40:00', '10:49:00', '16', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-04', 'March', '2020', '0000-00-00', 0, 1),
(544, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10043', 'Marthoma Matriculation hr sec school', '2, Bus stop, 1, Sri ayyappa nagar, chinmaya nagar, virugambakkam, chennai, tamil nadu 600092', '04424799335', 'Mr deepan ', 'P4', 'spoke to principal she told to come tomorrow and show a demo on fee collection', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Brindavan street', 'Ayyapan nagar', '11:49:00', '12:09:00', '10.3', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(545, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10042', 'Amritha office', '132, arcot road virugambakkam, chennai 600092', '04423764063', 'Mr deepan', 'P6', 'spoke to incharger vijay he told to come on 11 at kovur school', 'To meet swami', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ayyapan nagar', 'Virugambakkam', '12:26:00', '01:18:00', '3.7', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(546, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10171', 'Annai therasa matriculation higher secondary School (nesapakkam)', '#21, Angalaparameshwari Koil 3rd Street, MGR Nagar, Chennai, Tamil Nadu 600078', '044 2471 3908', 'Mr deepan', 'P4', 'spoke to principal she will make an appointement on wed', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Virugambakkam', 'Mgr nagar', '01:29:00', '01:48:00', '5.3', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(547, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10260', 'Annai Velankanni matriculation higher secondary School', '21, Zakir Hussain St, MGR Nagar, West Jafferkhanpet, Chennai, Tamil Nadu 600078', '044 2474 0885', 'Mr deepan', 'P1', '', '', 'Proposal Call', '', '', '0000-00-00', '00:00:00', 'Mgr nagar', 'Zakir Hussain St', '02:13:00', '02:37:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-08', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(548, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10261', 'All angels matriculation higher secondary School', 'Bharathidasan Rd, Bharathidasan Colony, K. K. Nagar, Chennai, Tamil Nadu 600083', '00', 'Mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Zakir Hussain st', 'Amman temple', '03:00:00', '03:18:00', '3.4', 'Bike', '5', '5', '', '', '2020-02-08', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(549, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10243', 'Anjuman matriculation higher secondary School', 'Opposite Hyatt Regency, Administrative Block, B.N. Reddy Road Shop No: 16, Vijaya Raghava Rd, Lakshimi Colony, T. Nagar, Chennai, Tamil Nadu 600017', '044 4901 4555', 'Mr deepan', 'P1', 'spoke to principal she maked an appointement with ceo tomorrow 11:30', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Amman temple', '3rd cross st', '03:32:00', '03:54:00', '8.9', 'Bike', '5', '5', '', '', '2020-02-08', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(550, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10262', 'G R T mahalakshmi vidyalaya', '76, 7th Avenue, Indira Colony, Ashok Nagar, Chennai, Tamil Nadu 600083', '044 2489 1232', 'Mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '3rd cross st', 'Sarvamangal colony', '04:16:00', '04:30:00', '9.9', 'Bike', '5', '5', '', '', '2020-02-08', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(551, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10263', 'Christ matriculation higher secondary School', 'Christ Nagar, Senneer Kuppam, Poonamallee, Chennai, Tamil Nadu 600056', '089392 53041', '', 'Sign Up', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Seneerkupam', '08:10:00', '09:10:00', '9.6', 'Bike', '5', '5', '', '', '2020-02-11', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(552, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10263', 'Christ matriculation higher secondary School', 'Christ Nagar, Senneer Kuppam, Poonamallee, Chennai, Tamil Nadu 600056', '089392 53041', '', 'Sign Up', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Seneerkupam', '08:10:00', '09:10:00', '9.6', 'Bike', '5', '5', '', '', '2020-02-11', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(553, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10263', 'Christ matriculation higher secondary School', 'Christ Nagar, Senneer Kuppam, Poonamallee, Chennai, Tamil Nadu 600056', '089392 53041', '', 'Sign Up', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Seneerkupam', '08:10:00', '09:10:00', '9.6', 'Bike', '5', '5', '', '', '2020-02-11', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(554, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10085', 'The pupil saveetha eco school', '4/68, Thiruverkkadu Road, Thiverkadu Co-operative Nagar, Seneerkuppam, Chennai, Tamil Nadu 600056', '044 2680 2013', '', 'P4', 'spoke to priya mam  she said vp sir is busy so said to come later she will inform back', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Seneerkupam', 'Pilliar koil st', '09:30:00', '09:40:00', '4.9', 'Bike', '5', '5', '', '', '2020-02-11', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(555, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10037', 'Pioneer school', 'Pilliyar koil st, Maccana industrial Estate, velappanchavadi, poonamalle, chennai, Tamil nadu 600077', '7811833155', '', 'P5', 'spoke to admin principal was busy so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pilliar koil st', 'Pilliar koil st', '09:51:00', '10:14:00', '3.8', 'Bike', '5', '5', '', '', '2020-02-11', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(556, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10014', 'christwood school', 'no 23, vengadamangalam main rd, ponmar, chennai 600048', '9952001234', '', 'P6', 'Revisited to meet theyagarajan but not available', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kelambakkam', 'Ponmar', '10:50:00', '11:03:00', '16', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(557, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10019', 'sri sankara global academy', 'gst road, ambika nagar, urapakkam, chennai 603210', '04422751088', '', 'P5', 'Ceo was busy', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ponmar', 'Urapakkam', '11:15:00', '11:20:00', '15', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(558, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10133', 'st marys matric hr sec', 'nandivaram main road, nellikupppam high road, guduvanchery, chennai 603202', '04427465439', '', 'P1', 'Has met father and has got appointment on monday', 'Followup', 'Follow Up', '', '', '2020-03-09', '10:06:00', 'Urapakkam', 'Nellikuppam', '11:37:00', '12:15:00', '5.7', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(559, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10021', 'ananthavalli matric hr sec', 'no 182, gst rd, senthil nagar, urapakkam, chennai 603211', '04427465959', '', 'P6', 'Principam busy', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Nellikuppam rd', 'Urapakkam', '12:29:00', '12:40:00', '4.9', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(560, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10225', 'St johns matric hr sec ( guduvanchery)', 'No.50, Nandhivaram, Viswananthapuram, Guduvanchery, Tamil Nadu 603202', '044 2746 5191', '', 'P1', 'Has met parameswari mam and she told has not yet discussed with corres', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Guduvanchery', 'Guduvanchery', '13:08:00', '13:25:00', '7.6', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(561, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10226', 'Holy sai international', '63, Jayalakshmi Nagar Adhanur, Guduvanchery, Chennai, Tamil Nadu 603202', '099416 90009', '', 'P1', 'Principal was busy', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Urapakkam', '15:41:00', '15:50:00', '10.9', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(562, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10013', 'st francis de sales matric hr sec', 'kelambakkam vandalur rd, pudupakkam, chennai 603103', '04427414747', '', 'P4', 'Father was busy', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Urapakkam', 'Pudupakkam', '16:25:00', '16:42:00', '22', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-05', 'March', '2020', '0000-00-00', 0, 1),
(563, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10264', 'Tms vidyalaya matric hr sec', 'No.364 part, 13th cross street,, Rail Nagar, kattankulathur Post, Maraimalai Nagar, Tamil Nadu 603203', '044 2745 3929', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Urapakkam', 'Mm nagar', '14:13:00', '14:35:00', '7.9', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(564, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10265', 'Loyola academy school', 'Keelakazhani, nattarasanpattu', '094451 33770', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Keelakazhani', '13:40:00', '14:15:00', '10', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(565, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10265', 'Loyola academy school', 'Keelakazhani, nattarasanpattu', '094451 33770', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Keelakazhani', '13:40:00', '14:15:00', '10', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(566, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10265', 'Loyola academy school', 'Keelakazhani, nattarasanpattu', '094451 33770', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Keelakazhani', '13:40:00', '14:15:00', '10', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(567, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10265', 'Loyola academy school', 'Keelakazhani, nattarasanpattu', '094451 33770', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Keelakazhani', '13:40:00', '14:15:00', '10', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(568, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10265', 'Loyola academy school', 'Keelakazhani, nattarasanpattu', '094451 33770', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Keelakazhani', '13:40:00', '14:15:00', '10', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(569, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10265', 'Loyola academy school', 'Keelakazhani, nattarasanpattu', '094451 33770', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Mm nagar', 'Keelakazhani', '13:40:00', '14:15:00', '10', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(570, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10266', 'Amritha vidyalayam kovur', 'Amrita Road, 200 ft Bye pass, Service Rd, Kovur, Chennai, Tamil Nadu 600128', '9710500055', '', 'P2', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pilliar koil st', 'Kovur', '10:45:00', '02:23:00', '12', 'Bike', '5', '5', '', '', '2020-02-11', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(571, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10036', 'Kalashetra Matriculation school', 'No.2, Mount poonamallee high road, ayyappanthangal, Kattupakkam, chennai Tamil nadu 600056', '04426792244', '', 'P4', 'spoke to ao sir he said exam is going on so said wait he will make an appointement', 'To meet ao', 'Proposal Call', '', '', '0000-00-00', '00:00:00', 'Kovur', 'Kattupakkam rd', '02:43:00', '03:37:00', '8.9', 'Bike', '5', '5', '', '', '2020-02-11', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(572, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10034', 'St Ann\'s Matriculation hr secondary school', '3/820, Bajanaikoil Street, Mugalivakkam main rd Madhanandapuram, chennai, Tamil nadu 600125', '08012518477', '', 'P6', 'spoke to staff she told exam is going on so said to come on Friday', 'To meet vp', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kattupakkam', 'Balaji koil st', '03:52:00', '04:04:00', '9.7', 'Bike', '5', '5', '', '', '2020-02-11', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(573, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10241', 'SRM Nightingale school', '68, Thambiah Road,west Mambalam, Chennai, Tamil Nadu 600033', '044 2371 0609', '', 'P1', 'spoke to pa and gave that brochure and proposal for coorespondent mam to check', 'To meet correspondent', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Balaji koil st', 'Gokulam colony', '04:24:00', '04:35:00', '14', 'Bike', '5', '5', '', '', '2020-02-11', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(574, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10114', 'Little holy angels matriculation higher secondary School', '2384, Rajammal nagar, TNHB Colony, Annanur, Ambattur, Chennai, Tamil Nadu 600058', '090034 66137', 'Mr deepan', 'P6', 'spoke to principal she told correspondent has told next year we can proceed', 'To meet correspondent', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Rajammal nagar', '10:13:00', '10:38:00', '16', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(575, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10081', 'Rajammal school', '7435, Ayapakkam Housing Board Rd, TNHB Colony, Annanur, Ambattur, Chennai, Tamil Nadu 600058', '044 6515 5323', 'Mr deepan', 'P4', 'spoke to admin she told correspondent will meet next week', 'To meet correspondent', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Rajammal nagar', 'Annanur', '10:46:00', '10:54:00', '2.4', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(576, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10267', 'T I matriculation higher secondary School', 'No. 1& 2, Madras Thiruvallur High Road, Tiruvenkadam Nagar, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 5707', 'Mr deepan', 'ZNI', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Annanur', 'T I school road', '11:09:00', '11:23:00', '5.3', 'Bike', '5', '5', '', '', '2020-02-12', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1);
INSERT INTO `follow` (`id`, `employeeid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `joincall`, `prioritystatus`, `description`, `purpose`, `callstatus`, `productname`, `productvalue`, `appointmentdate`, `appointmenttime`, `fromplace`, `toplace`, `intime`, `outtime`, `kmstravelled`, `modeofconveyance`, `car`, `bike`, `others`, `enteramount`, `date`, `editdate`, `month`, `year`, `signupdate`, `del_status`, `activestatus`) VALUES
(577, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10077', 'Hussain memorial matriculation higher secondary school', '6, Nainiammal St, Manthoppu Nagar, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2643', 'Mr deepan', 'P5', 'spoke to admin she told coordinate mam is busy so said to come another day eve', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'T I school rd', 'Nainammal st', '11:39:00', '11:49:00', '2.3', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(578, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10170', 'St Joseph\'s matriculation higher secondary school', 'Pushpammal St, Krishnapuram, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 1523', 'Mr deepan', 'P5', 'spoke to admin she told coordinate mam is busy so said to come another day eve', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Nainammal st', 'Pushpammal st', '12:14:00', '12:39:00', '2', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(579, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10268', 'Modern sammuel Harris matric higher secondary School', 'Cholambedu Rd, Vivek Nagar, Ambattur, Chennai, Tamil Nadu 600053', '097908 15887', 'Mr deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pushpammal st', 'Cholembedu st', '12:52:00', '01:10:00', '2.1', 'Bike', '5', '5', '', '', '2020-02-12', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(580, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10167', 'sri ramakrishna  saradha ashrama higher secondary school', 'Banu nagar, ambattur chennai- 600053', '044 2686 0590', 'Mr deepan', 'P4', 'spoke to admin she told to meet principal after 4:30', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Cholembedu st', 'Banu nagar', '01:26:00', '01:42:00', '4.7', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(581, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10168', 'Lake view matriculation school', '18th Avenue,Banu Nagar, Pudur, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3727', 'Mr deepan', 'P5', 'spoke to admin and gave presentation he told he will make an appointement with correspondent on march', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Banu nagar', 'Pudur', '02:13:00', '02:38:00', '2.6', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(582, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10078', 'Sethu bhaskara matriculation higher secondary school', '59, Valliammal St, S V Nagar, Banu Nagar West, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2250', 'Mr deepan', 'P3', 'spoke to principal he told we can take it and finalize the process', 'To meet principal', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Pudur', 'Velliammal st', '02:43:00', '03:00:00', '2.1', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(583, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10079', 'Sre Saraswati matriculation higher secondary school (ambattur)', 'Kallikuppam, Ambattur, Chennai, Tamil Nadu 600053', '044 2686 3789', 'Mr deepan', 'P3', 'spoke to principal he told he will make to meet correspondent on next month so till that its not possible', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veliammal st', 'Kalikuppam', '03:09:00', '03:19:00', '6.2', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(584, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10142', 'christ the king matric hr sec', 'velachery main rd, united colony, medavakkam, chennai 600100', '04422771886', '', 'P1', 'Prinipal busy with exams', 'Appointment', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Uthandi', 'United colony', '09:36:00', '10:00:00', '16', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(585, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10269', 'Saint joseph matric hr sec', 'Babu Nagar, Munusamy Nagar, Vimala Nagar, Medavakkam, Chennai, Tamil Nadu 600100', '044 2277 0054', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'united colony', 'Babu nagar', '10:21:00', '10:38:00', '2.7nited ', 'Bike', '5', '5', '', '', '2020-03-05', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(586, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10164', 'akg public school', 'bharathi st, medavakkam, jaladiampet rd, chennai 600100', '04422461418', '', 'P1', 'Has given explanation to principal but they already use one', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Babu nagar ', 'Jaladiampet', '11:00:00', '11:30:00', '6.9', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(587, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10218', 'St johns public school', 'Lake Bund Road, Off Perumbakkam Main Road, VGP Prabhu Nagar, Jalladianpet, Chennai, Tamil Nadu 600100', '044 2981 5144', '', 'P1', 'Mr alex was on leave has to visit again', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Jaladiampet', 'Lake bunk road', '12:00:00', '12:20:00', '5.4', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(588, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10220', 'Infant jesus matric hr sec', 'Kannabiran Koil St, Jeeva Nagar Extension, Pallikaranai, Chennai, Tamil Nadu 600100', '04422463729', '', 'P1', 'Sister was not interested to meet', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Jaladiampet', 'Pallikarnai', '12:36:00', '12:45:00', '4.7', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(589, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10166', 'himayam matric hr sec', 's.kolathur main rd, periya kovilambakkam, chennai 600091', '0422463250', '', 'P1', 'Shruti was busy in class and told they will call back', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pallikarnai', 'S kolathur', '12:55:00', '13:10:00', '6.2', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(590, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10050', 'dhaya jothi matric hr sec', '200ft rd, pallava gardens, old pallavaram, chennai 600043', '04422477799', '', 'P7', 'Mr alagappan is out of station', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'S kolathur', '200 ft rd', '13:35:00', '13:50:00', '3.7', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(591, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10091', 'apl global school', '697/3, mcn nagar, thuraipakkam, chennai 600097', '04440761199', '', 'P7', 'Mr vaishav told that they have not planned to change', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Pallikarnai', 'Thuraipakkam', '16:20:00', '16:35:00', '5.2', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(592, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10270', 'Aadithya vidya mandir', '-100, 10th Main Rd, Ram Nagar South Extension, Pallikaranai, Chennai, Tamil Nadu 600091', '094443 49906', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', '200ft rd', 'Pallikarnai', '14:30:00', '14:40:00', '4.8', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(593, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10271', 'Shree vidhya mandir mat hr sec', 'Mayili Balaji Nagar, Karapagambal Nagar, Madipakkam, Chennai, Tamil Nadu 600117', '044 2246 1808', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Pallikarnai', 'Pallikarnai', '15:01:00', '15:32:00', '1.3', 'Bike', '5', '5', '', '', '2020-03-05', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(594, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10088', 'HLCinternational school', 'wing haven garden road, sozhinganallur, karnai, chennai 603103', '9962805259', '', 'P6', 'Has went to meet the chairman but they were not available and has to visit again', 'Followup', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Uthandi ', 'Hlc rd', '09:31:00', '09:55:00', '14', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(595, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10010', 'st marys matric hr sec', '3/243, bajanai koil street, ganapathy nagar, market rd, kelambakkam, chennai 603103', '8012518214', '', 'P3', 'Has met the correspondent and discussed and finalized the price', 'Negotiation', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Classic farms rd', 'Kelambakkam', '10:45:00', '15:00:00', '17', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(596, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10012', 'bhuvana krishna matric', 'bkm campus, kelambakkam, chennai 603103', '04427474136', '', 'P7', 'Has went to meet the principal but she went for invigilation', 'Followup', 'Demo Call', '', '', '0000-00-00', '00:00:00', 'Market rd', 'Kelambakkam', '15:05:00', '15:20:00', '2.8', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(597, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10244', 'Hiranandani upscale international school', '5/63, Old Mahabalipuram Road, Opp Sipcot IT Park, Egattur Village, Padur P.O., Kelambakkam, via Kanchipuram Dist., Chennai, Tamil Nadu 603103', '073580 00736', '', 'P1', 'It head was not available as school works till 3pm', 'Followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Market rd', 'Navalur', '15:30:00', '15:40:00', '3.7', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(598, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10126', 'jeppiar matric hr sec', 'ellai amman koil st, kamaraj nagar, semmancheri, chennai 600119', '04424502051', '', 'P7', 'Has met the admin mrs kamini and asked for principal appointment but she told to come after april', 'Appointment', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Navalur', 'Jeppiar nagar', '16:01:00', '16:25:00', '7.8', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(599, 'EMP10021', 'Yogendiran', 'Chennai', 'CLT10272', 'Babaji vidyashram senior sec school', '89-91, Classic Farms Avenue, Sholinganallur, Chennai, Tamil Nadu 600119', '044 4210 5757', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Hlc rd', 'Classic farms rd', '10:06:00', '10:28:00', '6.4', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(600, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10080', 'Godson public school', 'No.6, Surapet Main Rd, Thirumal Nagar, Lakshmipuram, Chennai, Tamil Nadu 600099', '044 2565 6611', 'Mr deepan', 'P4', 'spoke to admin principal was not there so said to come tomorrow after 10', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kalikupam', 'Thirumal nagar', '03:39:00', '03:59:00', '4.7', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(601, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10082', 'Rajiv school of excellence', '5/516 B, Sakthi Sairam Street, Ganapathi Nagar, Allapakkam, Porur, Chennai, Tamil Nadu 600116', '044 2476 7452', 'Mr deepan', 'P4', 'spoke to admin she told to call and come tomorrow', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Thirumal ', 'Ganapathi nagar', '04:14:00', '04:30:00', '18', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(602, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10106', 'Navabharath matriculation school', '17, Mangadu Rd, Manali Saravana Nagar, Kamatchiamman Nagar, Poonamallee, Chennai, Tamil Nadu 600122', '8248455495', 'Mr deepan', 'P1', 'mr deepan spoked to correspondent he told to him that once money came he will call us', 'To meet correspondent', 'Support Call', '', '', '0000-00-00', '00:00:00', 'Ganapathi nagar', 'Kammachiamman st', '04:48:00', '05:10:00', '8.2', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(603, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10235', 'Adithiya international public school', 'MAC Nagar, Kattupakkam, Chennai, Tamil Nadu 600077', '9840560421', 'Mr chandramouli', 'P1', 'spoke to correspondent and principal they are k with the app they need a trail pack', 'To meet correspondent', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Kammachiamman st', 'Kattupakkam', '05:27:00', '06:40:00', '5.8', 'Bike', '5', '5', '', '', '2020-02-12', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(604, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10032', 'ST. Joseph matriculation school', 'CRR Puram Rd, L&T colony, Periya palayatamman nagar, mugalivakkam, chennai, tamil nadu 600125', 'nill', '', 'P6', 'spoke to admin she said to meet principal on Monday', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Mugalivakkam', '09:33:00', '10:12:00', '2.6', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(605, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10033', 'M.K.M Matriculation hr sec school', '1, Subashree Nagar III Phase, Mugalivakkam, porur, Chennai, Tamil nadu 600125', '04422523599', '', 'P6', 'spoke to admin she dint allowed to meet principal without any appointement', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mugalivakkam', 'Subashree nagar', '10:25:00', '10:34:00', '4.3', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(606, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10033', 'M.K.M Matriculation hr sec school', '1, Subashree Nagar III Phase, Mugalivakkam, porur, Chennai, Tamil nadu 600125', '04422523599', '', 'P6', 'spoke to admin she dint allowed to meet principal without any appointement', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Mugalivakkam', 'Subashree nagar', '10:25:00', '10:34:00', '4.3', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(607, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'spoke to admin principal was busy so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Subashree nagar', 'Svs nagar', '11:14:00', '11:35:00', '5.3', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(608, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', '', 'P6', 'spoke to admin she said they dint got any response from principal so said to come back again after making a call', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Svs nagar', 'Alapakkam rd', '11:41:00', '11:51:00', '2', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(609, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10039', 'GOOD SHEPHERED Mat hr sec school', 'no 64, velan nagar 5th st, syndicate colony, sri ram nagar, valsaravakkam, chennai, tamil nadu 600087', '04424862003', '', 'P5', 'spoke to admin principal was in class so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Alapakkam rd', 'Sri ram nagar', '12:14:00', '12:32:00', '3.4', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(610, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10080', 'Godson public school', 'No.6, Surapet Main Rd, Thirumal Nagar, Lakshmipuram, Chennai, Tamil Nadu 600099', '044 2565 6611', '', 'P4', 'spoke to admin today also she went to meeting so said to call eve', 'To meet principal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Sri ram nagar', 'Thirumal nagar', '01:23:00', '01:46:00', '18', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(611, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10078', 'Sethu bhaskara matriculation higher secondary school', '59, Valliammal St, S V Nagar, Banu Nagar West, Ambattur, Chennai, Tamil Nadu 600053', '044 2658 2250', '', 'P3', 'spoke to principal and quoted the rate for 100 per student want him to convince', 'To meet principal', 'Negotiation', '', '', '0000-00-00', '00:00:00', 'Thirumal nagar', 'Veliammal st', '02:27:00', '03:15:00', '4.8', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-06', 'March', '2020', '0000-00-00', 0, 1),
(612, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10273', 'St marrys anglo indian mat hr sec school', '110, Armenian St, Mannady, George Town, Chennai, Tamil Nadu', '044 2538 2151', 'Individual call', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Triplicane', 'Broadway', '09:30:00', '09:45:00', '4', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(613, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10274', 'St Gabriel mat', '24/217, Prakasam Road, Bundar Rama Garden, George Town, Chennai, Tamil Nadu', '044 4511 4234', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Broadway', 'broadway', '10:00:00', '10:24:00', '1', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(614, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10275', 'st coloumbians AI', '3, Maclean St, near Parry\'s Corner, Parry\'s Corner, George Town, Chennai, Tamil Nadu', '044 2538 1686', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'broadway', 'broadway', '10:25:00', '00:00:00', '2', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(615, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10276', 'st thomas mat hr sec school', '33/34 Stringer Street , Broadway, Chennai, Tamil Nadu', '044 2539 5541', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'broadway', 'broadway', '11:00:00', '11:10:00', '3', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(616, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10274', 'Rudrasamy school', 'Ambattur chennai', '00', '', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Veliammal at ', 'Ambattur', '03:37:00', '03:47:00', '6.8', 'Bike', '5', '5', '', '', '2020-02-13', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(617, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10107', 'Sathyalok matriculation higher secondary School', 'Porur Square, 21/1, -600116., Chettiyar Agaram Rd, Chettiyar Agaram, Gandhi Nagar, Porur, Chennai, Tamil Nadu 600095', '044 2476 6433', '', 'P4', 'spoke to admin vp mam was in a meeting so said to come later', 'To meet vp ', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Ambattur', 'Chettiyar agaram', '04:12:00', '04:23:00', '9.8', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(618, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10024', 'Assisi matriculation hr sec school', '2/31,anandam nagar, ramapuram, chennai, tamil nadu 600087', '04422491607', '', 'P7', 'spoke to principal she told she dint spoke to management', 'To meet vp', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Chettiyar agaram', 'Ananadam nagar', '04:30:00', '04:46:00', '7.9', 'Bike', '5', '5', '', '', '2020-02-13', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(619, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10277', 'Terapath jain mat', '32, Vadamalai Street, Sowcarpet, George Town, Chennai, Tamil Nadu', '044 2529 7766', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'broadway', 'broadway', '12:00:00', '12:15:00', '3', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(620, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10278', 'T.M..M.S shanmuga sundaram', 'door no. 3, 4,5, Patturasappa St, Maskan Chavadi, Seven Wells South, George Town, Chennai, Tamil Nadu', '044 2524 9651', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'broadway', 'broadway', '13:10:00', '13:25:00', '3', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(621, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10279', 'Ourlady mat', 'No 208, Broadway Rd, Parry\'s Corner, George Town, Chennai, Tamil Nadu', '044 123456', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'broadway', 'broadway', '14:55:00', '16:10:00', '4', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(622, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10203', 'Rex mat hr sec school', '27, N Tank Square St, Narayana Krishnaraja Puram, Triplicane, Chennai, Tamil Nadu ', '044 2844 6504', 'Mr.Deepan', 'P1', 'Met the admin mam and follwed up her for the correspondent mam', 'followup ', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'broadway', 'triplicane', '16:10:00', '16:35:00', '6', 'Bike', '5', '5', '', '', '2020-03-07', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(623, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10280', 'Measi mat hr sec school', '53, Angappa Naicken St, Seethakadi Nagar, George Town, Chennai, Tamil Nadu', '044 2523 1531', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Broadway', 'BRoadway', '13:45:00', '14:20:00', '5', 'Bike', '5', '5', '', '', '2020-03-02', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(624, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10279', 'Ourlady mat', 'No 208, Broadway Rd, Parry\'s Corner, George Town, Chennai, Tamil Nadu', '044 123456', '', 'P1', 'She is busy with the 11th so cant able to met her', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'triplicane', 'broadway', '09:30:00', '10:15:00', '5', 'Bike', '5', '5', '', '', '2020-03-02', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(625, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10130', 'Anita Methodist school', 'Vepery, Periyamet, Chennai, Tamil Nadu 600007', '044 123456', '', 'P1', 'Principal gone fo the public exam', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'triplicane', 'veppery', '09:40:00', '10:00:00', '5', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(626, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10135', 'Doveton Group Of Schools', '1, Ritherdon Rd, Vepery, Purasaiwakkam, Chennai, Tamil Nadu 600007', '072007 99444', '', 'P1', 'cant able to bypass watchman due to 11th public', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '00:00:00', '00:00:00', '2', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(627, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10255', 'Seventh-day Adventist Matriculation Higher Secondary School', '16,seconda, Valliammal Rd, Vepery, Chennai, Tamil Nadu 600007', '044 2641 2618', '', 'P1', 'cant able to reach the authorities', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veperry', '10:25:00', '10:35:00', '2', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(628, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10137', 'Guru Shree Shantivijai Jain Vidyalaya', 'No. 96, New No.154, Vepery High Rd, Vepery, Chennai, Tamil Nadu 600007', '044 2532 2541', 'Mr.Deepan', 'P1', 'cant able to reach the authorities', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '12:00:00', '12:30:00', '2', 'Bike', '5', '5', '', '', '2020-03-04', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(629, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10281', 'st christophers academy', '63, EVK Sampath Rd, Vepery, Periyamet, Chennai, Tamil Nadu 600007', '\" 044 2661 8457 \"', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'veppery', '11:00:00', '11:30:00', '4', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(630, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10282', 'Princess Matriculation Higher Secondary School', 'No 110, Puliyanthope High Rd, Pattalam, Choolai, Chennai, Tamil Nadu 600012', '9841061626', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'choolai', '14:40:00', '16:20:00', '2', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(631, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10283', 'Annaikar mat', '72-B, Sattannan Naicken St, Thattankulam, Choolai, Chennai, Tamil Nadu 600112', '044 2669 1171', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'veppery', 'choolai', '14:15:00', '14:40:00', '4', 'Bike', '5', '5', '', '', '2020-03-04', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(632, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10085', 'The pupil saveetha eco school', '4/68, Thiruverkkadu Road, Thiverkadu Co-operative Nagar, Seneerkuppam, Chennai, Tamil Nadu 600056', '044 2680 2013', '', 'P4', 'spoke to admin vp sir is busy if anything is there means she will call us back', 'To meet vp', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Nandambakkam', 'Pilliar koil st', '09:33:00', '09:49:00', '11.4', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(633, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10195', 'CSI mat school', '5, Kondal Street, Kondithope, George Town, Chennai, Tamil Nadu 600001', '090949 96946', 'Mr.Deepan', 'P1', 'Met the admin person and she said to come on march 4th week,With Mr.Deepan', 'followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'triplicane', 'kilpauk', '10:35:00', '10:45:00', '5', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(634, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10136', 'Bhavan\'s Rajaji Vidyashram', '6, Kilpauk Gardern Road,, Davidpuram, Kilpauk, Chennai, Tamil Nadu 600010', '044 2641 2169', 'Mr.Deepan', 'P1', 'cant able to reach the authorities due to 12th public ,With Mr.Deepan', 'followup call', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'kilpauk', '11:30:00', '11:50:00', '2', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(635, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10138', 'Ramachandra Matriculation Higher Secondary School', '474, Kilpauk Garden Road, Aspiran Garden Colony, Kilpauk, Chennai, Tamil Nadu 600010', '044 2647 4583', 'Mr.Deepan', 'P1', 'cant able to reach the authorities due to 12th public ,With Mr.Deepan', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'kilpauk', '13:10:00', '13:40:00', '4', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(636, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10281', 'st christophers academy', '63, EVK Sampath Rd, Vepery, Periyamet, Chennai, Tamil Nadu 600007', '\" 044 2661 8457 \"', 'Mr.Deepan', 'P1', 'gone there for giving proposal', 'proposal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'kilpauk', '14:45:00', '15:10:00', '2', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(637, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10282', 'Princess Matriculation Higher Secondary School', 'No 110, Puliyanthope High Rd, Pattalam, Choolai, Chennai, Tamil Nadu 600012', '9841061626', 'Mr.Deepan', 'P1', 'gone there for giving proposal', 'to give proposal', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kilpauk', 'pulliyanthope', '15:25:00', '15:55:00', '4', 'Bike', '5', '5', '', '', '2020-03-05', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(638, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10061', 'Grace mat school', 'SRP Colony, Peravallur, Perambur, Chennai, Tamil Nadu 600082', ' 044 2550 0224', 'Mr.Deepan', 'P2', 'cant able to reach the authorities due to 11th public ,With Mr.Deepan', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'srinivasanagar', 'peravallur', '11:30:00', '11:50:00', '5', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(639, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10059', 'SMK Vidhyashram', 'Kodungaiyur (East), Muthamizh Nagar, Kodungaiyur, Chennai, Tamil Nadu 600118', '044 123456', 'Mr.Deepan', 'P6', 'Need to go there on n again since the admin person is absent on that day ,With Mr.Deepan', 'followup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '16:15:00', '16:20:00', '1', 'Bike', '5', '5', '', '', '2020-03-06', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(640, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10284', 'Don Bosco Matriculation Higher Secondary School (Srinivasa nagar)', 'Kolathur Main Rd, Srinivasa Nagar, Kolathur, Chennai, Tamil Nadu 600099', '091762 07635', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'triplicane', 'srinivasa nagar', '10:15:00', '10:30:00', '16', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(641, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10285', 'Don bosco mat', '6, Paper Mills Road, Anjugam Nagar, Peravallur, Perambur, Chennai, Tamil Nadu', '044 2671 2406', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'peravalur', 'peravalur', '12:00:00', '12:20:00', '0', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(642, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10286', 'Balaji matriculation', '17 Dhanammal Nagar, Kolathur, Chennai, Tamil Nadu 600099', '044 25560435', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'peravalur', 'perambur', '13:55:00', '14:10:00', '2', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(643, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10287', 'Periar mat hr sec school', '66, 5th St, Periyar Nagar West, Perambur, Chennai, Tamil Nadu 600082', '044 2550 0118', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'perambur', 'perambur', '13:10:00', '13:40:00', '2', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(644, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10288', 'Sri sayee vivekananda', '6th Main Road, 2nd Block, Muthamizh Nagar, Kodungaiyur, Chennai, Tamil Nadu', '044 2554 4245', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'peravallur', 'kodingiyur', '14:45:00', '15:10:00', '6', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(645, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10289', 'sri ayappa mat hr sec school', '59-91, Thulasingam St, Chinnaiyan Colony, Perambur, Chennai, Tamil Nadu 600039', '25522553 / 25511509 / 25591365', 'Mr.Deepan', 'P1', '', '', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'perambur', '16:20:00', '16:25:00', '7', 'Bike', '5', '5', '', '', '2020-03-06', '0000-00-00', 'March', '2020', '0000-00-00', 0, 1),
(646, 'EMP10023', 'Saravanan', 'Chennai', 'CLT10060', 'St. Joseph\'s Matriculation Higher School', '9, 2nd cross 5th Street, Seetharam Nagar, RV Nagar, Chennai, Tamil Nadu 600118', '044 25551240', 'Mr.Deepan', 'P4', 'cant able to reach the authorities due to school annual day on saturday ,With Mr.Deepan', 'followuup', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'kodingiyur', 'kodingiyur', '15:25:00', '15:55:00', '2', 'Bike', '5', '5', '', '', '2020-03-07', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(647, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10289', 'Sudharsanam vidyashram', 'Chennai - 600 077,, Viraraghavapuram, Tamil Nadu 600077', '044 2680 0979', '', 'P1', '', '', 'Proposal Call', '', '', '0000-00-00', '00:00:00', 'Pilliar koil st', 'virargapuram', '10:17:00', '10:27:00', '5.6', 'Bike', '5', '5', '', '', '2020-02-14', '0000-00-00', 'February', '2020', '0000-00-00', 0, 1),
(648, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10038', 'Sri annai vidyashram matric hr sec school', 'Sundaracholavaram main rd, Ram nagar, Eswaran nagar, Thiruverkadu, chennai, tamil nadu 600077', '044268007778', '', 'P6', 'spoke to admin concern person went to meeting so said to come later', 'To meet correspondent', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Viraragapuram', 'Ram nagar', '10:43:00', '11:04:00', '4.2', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(649, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10036', 'Kalashetra Matriculation school', 'No.2, Mount poonamallee high road, ayyappanthangal, Kattupakkam, chennai Tamil nadu 600056', '04426792244', '', 'P4', 'spoke to admin ao sir was in a meeting so said to come on next week or another day', 'To meet ao', 'Proposal Call', '', '', '0000-00-00', '00:00:00', 'Ram nagar', 'Kattupakkam', '11:29:00', '11:43:00', '6.5', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(650, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10041', 'The Holy cross Matriculation hr sec school', '43, 1st main road , vani nagar, SVS Nagar, venkata subramaniya nagar, valsaravakkam, chennai, tamil nadu 600087', '04424863779', '', 'P5', 'spoke to admin principal was not there so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Kattupakkam', 'Svs nagar', '12:15:00', '12:26:00', '6.3', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(651, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10040', 'Devi Academy Senior secondary school', '1/E-1 door No. 7 , Alappakkam Road, Karpaga vinayagar colony, Valsaravakkam, chennai, Tamil nadu 600087', '04424865665', '', 'P6', 'spoke to admin concern person was in a meeting so said to come later', 'To meet principal', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Svs nagar', 'Alapakkam rd', '12:46:00', '12:54:00', '3.6', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(652, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10027', 'Sri Devi school', 'Krishna nagar, koyembedu, chennai, tamil nadu 600095', '7200762375', '', 'P6', 'spoke to admin correspondent mam went out so said to come on Monday', 'To meet correspondent', 'Follow Up', '', '', '0000-00-00', '00:00:00', 'Alapakkam rd', 'Krishna nagar', '01:14:00', '01:25:00', '7.2', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1),
(653, 'EMP10022', 'Rishikesh', 'Chennai', 'CLT10266', 'Amritha vidyalayam kovur', 'Amrita Road, 200 ft Bye pass, Service Rd, Kovur, Chennai, Tamil Nadu 600128', '9710500055', '', 'P2', 'spoke to vijay swamy he said to wait for few days he will make an appointement soon so he said to call back', 'To meet swamiji', 'Cold Call', '', '', '0000-00-00', '00:00:00', 'Krishna nagar', 'Kovur', '01:39:00', '02:27:00', '6.8', 'Bike', '5', '5', '', '', '2020-02-14', '2020-03-07', 'March', '2020', '0000-00-00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(11) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `noofleave` varchar(255) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `leavetype` varchar(250) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `approvelstatus` varchar(255) NOT NULL,
  `leavestatus` int(11) NOT NULL DEFAULT '0',
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `employeeid`, `firstname`, `noofleave`, `fromdate`, `todate`, `leavetype`, `message`, `date`, `approvelstatus`, `leavestatus`, `del_status`) VALUES
(1, 'EMP10022', 'Rishikesh', '1000', '2020-02-05', '2020-02-06', 'Sick leave', 'To attend a marriage in Kerala for one day date is mentioned above', '2020-02-05', 'pending', 0, 0),
(2, 'EMP10021', '', '200', '0000-00-00', '0000-00-00', 'Sick leave', 'zzzz', '2021-04-24', 'pending', 0, 0),
(3, 'EMP10021', '', '200', '0000-00-00', '0000-00-00', 'Sick leave', 'zzzz', '2021-05-02', 'pending', 0, 0),
(4, 'EMP10021', 'logi', '255', '2021-05-05', '2021-05-12', 'leave ketta kudukkanum', 'leave so varamanta ', '2021-05-12', 'yes', 0, 0),
(5, 'EMP10021', 'logi', '255', '2021-05-05', '2021-05-12', 'leave ketta kudukkanum', 'leave so varamanta ', '2021-05-12', 'yes', 0, 0),
(6, 'EMP10021', 'logi', '255', '2021-05-05', '2021-05-12', 'leave ketta kudukkanum', 'leave so varamanta ', '2021-05-12', 'yes', 0, 0),
(7, 'EMP10021', 'logi', '255', '2021-05-05', '2021-05-12', 'leave ketta kudukkanum', 'leave so varamanta ', '2021-05-12', 'yes', 0, 0),
(8, 'EMP10021', 'logi', '255', '2021-05-05', '2021-05-12', 'leave ketta kudukkanum', 'leave so varamanta ', '2021-05-12', 'yes', 0, 0),
(9, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(10, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(11, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(12, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(13, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(14, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(15, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(16, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(17, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(18, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(19, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0),
(20, 'EMP10021', 'logesh', '365', '2021-05-13', '2021-05-20', 'summa', 'leave na leave tha', '2021-05-05', 'yes', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `leavecat`
--

CREATE TABLE `leavecat` (
  `id` int(11) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `leavecatId` varchar(100) NOT NULL,
  `leavetype` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leavecat`
--

INSERT INTO `leavecat` (`id`, `companyid`, `employeeid`, `leavecatId`, `leavetype`, `date`, `del_status`) VALUES
(1, '001', '', 'LEV001', 'medical leave', '2021-06-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL,
  `bdmid` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `meetingtype` varchar(255) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0',
  `activestatus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `id` int(11) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `bdmname` varchar(255) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `sourceofcall` varchar(255) NOT NULL,
  `jointcall` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `customeraddress` varchar(1000) NOT NULL,
  `customerphoneno` varchar(255) NOT NULL,
  `boardschool` varchar(255) NOT NULL,
  `principalname` varchar(255) NOT NULL,
  `principalnumber` varchar(255) NOT NULL,
  `correspondentname` varchar(255) NOT NULL,
  `correspondentnumber` varchar(254) NOT NULL,
  `noofstudents` varchar(255) NOT NULL,
  `monthlyfee` varchar(255) NOT NULL,
  `competitiondetails` varchar(255) NOT NULL,
  `managementpresentation` varchar(255) NOT NULL,
  `principalpresentation` varchar(255) NOT NULL,
  `otherpresentation` varchar(255) NOT NULL,
  `contactperson` varchar(255) NOT NULL,
  `contactnumber` varchar(255) NOT NULL,
  `contactdesignation` varchar(255) NOT NULL,
  `intime` time NOT NULL,
  `outtime` time NOT NULL,
  `personcontacted` varchar(255) NOT NULL,
  `persondescription` varchar(1000) NOT NULL,
  `producttype` varchar(255) NOT NULL,
  `callstatus` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productvalue` varchar(255) NOT NULL,
  `prioritystatus` varchar(255) NOT NULL,
  `nextappointmentdate` date NOT NULL,
  `nextappointmenttime` time NOT NULL,
  `previouscallkms` varchar(255) NOT NULL,
  `fromplace` varchar(255) NOT NULL,
  `toplace` varchar(255) NOT NULL,
  `conveyancemode` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `monthyear` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `created_on` date NOT NULL,
  `lastviewdate` date NOT NULL,
  `signupdate` date NOT NULL,
  `callopen` date NOT NULL,
  `callclosed` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0',
  `count_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new`
--

INSERT INTO `new` (`id`, `branchname`, `bdmname`, `employeeid`, `customerid`, `sourceofcall`, `jointcall`, `customername`, `customeraddress`, `customerphoneno`, `boardschool`, `principalname`, `principalnumber`, `correspondentname`, `correspondentnumber`, `noofstudents`, `monthlyfee`, `competitiondetails`, `managementpresentation`, `principalpresentation`, `otherpresentation`, `contactperson`, `contactnumber`, `contactdesignation`, `intime`, `outtime`, `personcontacted`, `persondescription`, `producttype`, `callstatus`, `productname`, `productvalue`, `prioritystatus`, `nextappointmentdate`, `nextappointmenttime`, `previouscallkms`, `fromplace`, `toplace`, `conveyancemode`, `amount`, `monthyear`, `month`, `year`, `created_on`, `lastviewdate`, `signupdate`, `callopen`, `callclosed`, `del_status`, `count_status`) VALUES
(730, 'Chennai', 'Rishikesh', 'EMP10022', 'CLT10289', 'Cold Call', '', 'Sudharsanam vidyashram', 'Chennai - 600 077,, Viraraghavapuram, Tamil Nadu 600077', '044 2680 0979', 'Matriculation', '', '', '', '', '1400', '', 'Pal pal', 'Yes', 'Yes', 'Yes', 'Dinesh', '+919750518797', 'It staff', '10:17:00', '10:27:00', 'Dinesh (IT )', 'went to school he was not available so said to come another day', 'Thinkwise App', 'Proposal Call', '', '', 'P1', '0000-00-00', '00:00:00', '5.6', 'Pilliar koil st', 'virargapuram', 'Bike', '', 'March2020', 'February', '2020', '2020-02-14', '2020-03-07', '0000-00-00', '0000-00-00', '0000-00-00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productvalue` varchar(255) NOT NULL,
  `productdescription` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productid`, `branchname`, `productname`, `productvalue`, `productdescription`, `date`, `time`, `del_status`) VALUES
(21, 'PRO1001', 'Erode', 'Thinkwise App', '3.5', 'Description Details', '2019-07-01', '18:31:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `projectname` varchar(600) NOT NULL,
  `deadline` date NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `projecttype` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `teamname` varchar(250) NOT NULL,
  `tlname` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `projectname`, `deadline`, `companyid`, `projecttype`, `message`, `teamname`, `tlname`, `date`, `del_status`) VALUES
(1, 'idk', '2021-05-12', '001', 'web development', 'enna project ah irunthalum pannanum', 'darkknight', 'deepan', '2021-05-11', 0),
(2, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(3, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(4, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(5, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(6, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(7, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(8, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(9, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(10, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(11, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(12, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(13, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(14, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(15, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(16, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(17, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(18, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(19, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0),
(20, 'therila', '2021-05-04', '001', 'web developer', 'kaasu kudutha panniralam', 'darkowl', 'logi', '2021-05-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `resigination`
--

CREATE TABLE `resigination` (
  `id` int(11) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `empname` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `reason` varchar(600) NOT NULL,
  `notice_date` date NOT NULL,
  `resigination_date` date NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resigination`
--

INSERT INTO `resigination` (`id`, `employeeid`, `empname`, `department`, `designation`, `reason`, `notice_date`, `resigination_date`, `date`, `del_status`) VALUES
(1, 'EMP10021', 'a', 'a', 'web developer', 'a', '2021-05-21', '2021-05-12', '2021-05-03', 0),
(2, 'EMP10021', '', '', 'web developer', '', '0000-00-00', '0000-00-00', '2021-05-02', 0),
(3, 'EMP01111', 'sam', 'webdev', 'web developer', 'just try avalo tha', '2021-05-08', '2021-05-08', '2021-05-02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `roleid`, `companyid`, `role`, `date`, `del_status`) VALUES
(1, 'ROL1001', '001', 'employee', '2021-06-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `bdmid` varchar(255) NOT NULL,
  `bdmname` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `customeraddress` varchar(255) NOT NULL,
  `customerphoneno` varchar(255) NOT NULL,
  `contactperson` varchar(255) NOT NULL,
  `contactnumber` varchar(255) NOT NULL,
  `contactdesignation` varchar(255) NOT NULL,
  `personcontacted` varchar(255) NOT NULL,
  `persondescription` varchar(255) NOT NULL,
  `producttype` varchar(255) NOT NULL,
  `callstatus` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productvalue` varchar(255) NOT NULL,
  `prioritystatus` varchar(255) NOT NULL,
  `calltype` varchar(255) NOT NULL,
  `allocation` varchar(255) NOT NULL,
  `spares` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `purpose` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `callcloseddate` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `bdmid`, `bdmname`, `branchname`, `customerid`, `customername`, `customeraddress`, `customerphoneno`, `contactperson`, `contactnumber`, `contactdesignation`, `personcontacted`, `persondescription`, `producttype`, `callstatus`, `productname`, `productvalue`, `prioritystatus`, `calltype`, `allocation`, `spares`, `value`, `description`, `purpose`, `date`, `callcloseddate`, `del_status`) VALUES
(160, 'EMP10002', 'Mouli', 'Erode', 'CLT10004', 'shahul', '#124/56 anna nagar,chennai-600018', '9876543215', 'contact person', '9876543215', 'CEO', 'person contacted', 'Description', 'AIR Cooler', 'Sign Up', 'AIR Cooler', '5.0', 'P6', 'call closed', 'Krishna', 'spares', '60', 'description', 'purpose', '2019-11-11', '2019-11-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `id` int(11) NOT NULL,
  `bdmid` varchar(255) NOT NULL,
  `bdmname` varchar(255) NOT NULL,
  `branchname` varchar(255) NOT NULL,
  `selectmonth` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `april` varchar(255) NOT NULL,
  `may` varchar(255) NOT NULL,
  `june` varchar(255) NOT NULL,
  `july` varchar(255) NOT NULL,
  `august` varchar(255) NOT NULL,
  `september` varchar(255) NOT NULL,
  `october` varchar(255) NOT NULL,
  `November` varchar(255) NOT NULL,
  `december` varchar(255) NOT NULL,
  `january` varchar(255) NOT NULL,
  `february` varchar(255) NOT NULL,
  `mar` varchar(255) NOT NULL,
  `monthyear` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `target`
--

INSERT INTO `target` (`id`, `bdmid`, `bdmname`, `branchname`, `selectmonth`, `target`, `april`, `may`, `june`, `july`, `august`, `september`, `october`, `November`, `december`, `january`, `february`, `mar`, `monthyear`, `year`, `date`, `del_status`) VALUES
(61, 'EMP10002', 'Mouli', 'Erode', '', '', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '4', 'December2019', '2019', '2019-11-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `Contact_NO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teamlist`
--

CREATE TABLE `teamlist` (
  `id` int(11) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `teamId` varchar(255) NOT NULL,
  `teamname` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamlist`
--

INSERT INTO `teamlist` (`id`, `companyid`, `teamId`, `teamname`, `date`, `del_status`) VALUES
(1, '001', 'T001', 'Darkshadow', '2021-06-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thinkwise_bdm_login`
--

CREATE TABLE `thinkwise_bdm_login` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `random_id` varchar(255) NOT NULL,
  `login_date` date NOT NULL,
  `login_time` time NOT NULL,
  `del_status` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thinkwise_bdm_login`
--

INSERT INTO `thinkwise_bdm_login` (`id`, `firstname`, `email`, `mobile`, `userpassword`, `gender`, `random_id`, `login_date`, `login_time`, `del_status`) VALUES
(1, 'bdm', 'bdm@gmail.com', '7395962447', 'bdm', 'Male', 'fa4c8ebed39c51d69272d41ee63b2c86', '2019-05-06', '03:09:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `id` int(11) NOT NULL,
  `companyid` varchar(255) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `empname` varchar(255) NOT NULL,
  `teamid` varchar(255) NOT NULL,
  `project` varchar(255) NOT NULL,
  `assignedhours` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `description` varchar(600) NOT NULL,
  `date` date NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`id`, `companyid`, `employeeid`, `empname`, `teamid`, `project`, `assignedhours`, `hours`, `description`, `date`, `del_status`) VALUES
(1, '001', 'EMP10021', 'logi', '5', 'Yarukku therium', 5, 2147483647, 'innum work pannikitu tha irukkaaaaaaa q', '2021-04-13', 0),
(3, '001', 'EMP10021', 'Yogendiran', '5', 'a', 5, 2147483647, 'aaaaaaaaaaaaaaaaaaaaaaaaa', '2021-04-25', 0),
(4, '001', 'EMP10019', 'Deepan', '01110', 'therila', 51, 12, 'description', '2021-05-02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `gender`, `email`) VALUES
(23, '7', 'EMP10004', '2019-07-25', 'ERFD'),
(24, '8', 'EMP10004', '2019-07-25', 'asdasd'),
(25, '9', 'EMP10004', '2019-07-25', 'p'),
(26, '10', 'EMP10004', '2019-07-28', 'G'),
(27, '11', 'EMP10004', '2019-07-28', 'D'),
(58, '12', 'EMP10004', '2019-07-28', 'Total Amount'),
(59, '13', 'EMP10004', '2019-07-28', 'Total Amount'),
(60, '14', 'EMP10004', '2019-07-28', 'Total Amount'),
(61, '15', 'EMP10004', '2019-07-28', 'Total Amount'),
(62, '16', 'EMP10004', '2019-07-29', 'Total Amount'),
(67, 'yssyogesh', 'Yogesh singh', 'male', ''),
(68, 'sonarika', '', 'female', ''),
(69, 'vishal', 'Vishal sahu', 'male', 'vishal@yahoo.com'),
(70, 'sunil', '', 'male', 'sunil521@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branchleave`
--
ALTER TABLE `branchleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branchlist`
--
ALTER TABLE `branchlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conveyance`
--
ALTER TABLE `conveyance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createleave`
--
ALTER TABLE `createleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_employee`
--
ALTER TABLE `create_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_menu`
--
ALTER TABLE `designation_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavecat`
--
ALTER TABLE `leavecat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resigination`
--
ALTER TABLE `resigination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamlist`
--
ALTER TABLE `teamlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thinkwise_bdm_login`
--
ALTER TABLE `thinkwise_bdm_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `branchleave`
--
ALTER TABLE `branchleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branchlist`
--
ALTER TABLE `branchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conveyance`
--
ALTER TABLE `conveyance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `createleave`
--
ALTER TABLE `createleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `create_employee`
--
ALTER TABLE `create_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designation_menu`
--
ALTER TABLE `designation_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leavecat`
--
ALTER TABLE `leavecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new`
--
ALTER TABLE `new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `resigination`
--
ALTER TABLE `resigination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `target`
--
ALTER TABLE `target`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teamlist`
--
ALTER TABLE `teamlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thinkwise_bdm_login`
--
ALTER TABLE `thinkwise_bdm_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
