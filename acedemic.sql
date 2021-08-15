-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 06:30 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acedemic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add faculty', 8, 'add_faculty'),
(30, 'Can change faculty', 8, 'change_faculty'),
(31, 'Can delete faculty', 8, 'delete_faculty'),
(32, 'Can view faculty', 8, 'view_faculty'),
(33, 'Can add lectures', 9, 'add_lectures'),
(34, 'Can change lectures', 9, 'change_lectures'),
(35, 'Can delete lectures', 9, 'delete_lectures'),
(36, 'Can view lectures', 9, 'view_lectures'),
(37, 'Can add sechdule', 10, 'add_sechdule'),
(38, 'Can change sechdule', 10, 'change_sechdule'),
(39, 'Can delete sechdule', 10, 'delete_sechdule'),
(40, 'Can view sechdule', 10, 'view_sechdule'),
(41, 'Can add students_ projects', 11, 'add_students_projects'),
(42, 'Can change students_ projects', 11, 'change_students_projects'),
(43, 'Can delete students_ projects', 11, 'delete_students_projects'),
(44, 'Can view students_ projects', 11, 'view_students_projects'),
(45, 'Can add syllabus', 12, 'add_syllabus'),
(46, 'Can change syllabus', 12, 'change_syllabus'),
(47, 'Can delete syllabus', 12, 'delete_syllabus'),
(48, 'Can view syllabus', 12, 'view_syllabus'),
(49, 'Can add teaching_ materials', 13, 'add_teaching_materials'),
(50, 'Can change teaching_ materials', 13, 'change_teaching_materials'),
(51, 'Can delete teaching_ materials', 13, 'delete_teaching_materials'),
(52, 'Can view teaching_ materials', 13, 'view_teaching_materials'),
(53, 'Can add se', 10, 'add_se'),
(54, 'Can change se', 10, 'change_se'),
(55, 'Can delete se', 10, 'delete_se'),
(56, 'Can view se', 10, 'view_se'),
(57, 'Can add sech', 10, 'add_sech'),
(58, 'Can change sech', 10, 'change_sech'),
(59, 'Can delete sech', 10, 'delete_sech'),
(60, 'Can view sech', 10, 'view_sech');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'user', 'admin'),
(8, 'user', 'faculty'),
(9, 'user', 'lectures'),
(10, 'user', 'sech'),
(11, 'user', 'students_projects'),
(12, 'user', 'syllabus'),
(13, 'user', 'teaching_materials');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-26 12:30:29.156691'),
(2, 'auth', '0001_initial', '2020-11-26 12:30:31.470322'),
(3, 'admin', '0001_initial', '2020-11-26 12:30:44.433101'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-26 12:30:48.009729'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-26 12:30:48.212223'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-26 12:30:50.966222'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-26 12:30:53.768271'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-26 12:30:53.924355'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-26 12:30:53.995794'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-26 12:30:55.403296'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-26 12:30:55.449480'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-26 12:30:55.522584'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-26 12:30:55.671622'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-26 12:30:55.935345'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-26 12:30:56.174456'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-26 12:30:56.322445'),
(17, 'sessions', '0001_initial', '2020-11-26 12:30:56.660259'),
(18, 'user', '0001_initial', '2020-11-26 12:30:59.857930'),
(19, 'user', '0002_auto_20201126_1942', '2020-11-26 14:12:37.228358'),
(20, 'user', '0003_auto_20201126_2041', '2020-11-26 15:11:57.166786'),
(21, 'user', '0004_auto_20201126_2043', '2020-11-26 15:13:28.868436');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('s7alg5a5ebt2pyrregw850tt8co4lavs', 'OWVkN2JkNzUxM2RjNzkxNGQ4NTAzYTYzY2RmMTQyMDYyM2Q4ODc5ZTp7fQ==', '2020-12-10 17:25:31.883457');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `contact_number`) VALUES
(1, 'kruti', 'jani', 'kruti jani', 'krutijani123@gmail.com', 'krutijani', '7894561231'),
(2, 'hardik', 'soni', 'hardik soni', 'hardiksoni123@gmail.com', 'hardiksoni', '5632123489'),
(8, 'priyank', 'naher', 'priyank naher', 'priyanknaher@gmail.com', 'priyank', '1234567891'),
(9, 'tinal', 'parikh', 'tinal parikh', 'tinalparikh@gmail.com', 'tinal', '5630214578');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `faculty_name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `date`, `subject_name`, `start_time`, `end_time`, `faculty_name`, `status`) VALUES
(1, '2020-06-01', 'SE', '10:30:00.000000', '11:00:00.000000', 'tinal parikh', 'completed'),
(2, '2020-06-01', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(3, '2020-06-01', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(4, '2020-06-01', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(5, '2020-06-02', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(6, '2020-06-02', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(7, '2020-06-02', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(8, '2020-06-02', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(9, '2020-06-03', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(10, '2020-06-03', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(11, '2020-06-03', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(12, '2020-06-03', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal_Guide', 'completed'),
(13, '2020-06-04', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(14, '2020-06-04', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(15, '2020-06-04', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(16, '2020-06-04', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(17, '2020-06-05', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(18, '2020-06-05', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(19, '2020-06-05', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(20, '2020-06-05', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(21, '2020-06-06', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(22, '2020-06-06', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(23, '2020-06-06', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(24, '2020-06-06', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(25, '2020-06-08', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(26, '2020-06-08', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(27, '2020-06-08', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(28, '2020-06-08', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(29, '2020-06-09', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(30, '2020-06-09', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(31, '2020-06-09', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(32, '2020-06-09', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(33, '2020-06-10', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(34, '2020-06-10', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(35, '2020-06-10', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(36, '2020-06-10', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(37, '2020-06-11', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(38, '2020-06-11', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(39, '2020-06-11', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(40, '2020-06-11', 'Laravel', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(41, '2020-06-12', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(42, '2020-06-12', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(43, '2020-06-12', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(44, '2020-06-12', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(45, '2020-06-13', 'DAA', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(46, '2020-06-13', 'ML', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(47, '2020-06-13', 'Laravel', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(48, '2020-06-13', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(49, '2020-06-15', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(50, '2020-06-15', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(51, '2020-06-15', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(52, '2020-06-15', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(53, '2020-06-16', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(54, '2020-06-16', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(55, '2020-06-16', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(56, '2020-06-16', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(57, '2020-06-17', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(58, '2020-06-17', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(59, '2020-06-17', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(60, '2020-06-17', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(61, '2020-06-18', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(62, '2020-06-18', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(63, '2020-06-18', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(64, '2020-06-18', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(65, '2020-06-19', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(66, '2020-06-19', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(67, '2020-06-19', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(68, '2020-06-19', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(69, '2020-06-20', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(70, '2020-06-20', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(71, '2020-06-20', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(72, '2020-06-20', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(73, '2020-06-22', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(74, '2020-06-22', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(75, '2020-06-22', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(76, '2020-06-22', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(77, '2020-06-23', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(78, '2020-06-23', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(79, '2020-06-23', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(80, '2020-06-23', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(81, '2020-06-24', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(82, '2020-06-24', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(83, '2020-06-24', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(84, '2020-06-24', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(85, '2020-06-25', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(86, '2020-06-25', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(87, '2020-06-25', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(88, '2020-06-25', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(89, '2020-06-26', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(90, '2020-06-26', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(91, '2020-06-26', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(92, '2020-06-26', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(93, '2020-06-27', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(94, '2020-06-27', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(95, '2020-06-27', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(96, '2020-06-27', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(97, '2020-06-29', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(98, '2020-06-29', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(99, '2020-06-29', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(100, '2020-06-29', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(101, '2020-06-30', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(102, '2020-06-30', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(103, '2020-06-30', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(104, '2020-06-30', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(105, '2020-07-01', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(106, '2020-07-01', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(107, '2020-07-01', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(108, '2020-07-01', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(109, '2020-07-02', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(110, '2020-07-02', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(111, '2020-07-02', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(112, '2020-07-02', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(113, '2020-07-03', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(114, '2020-07-03', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(115, '2020-07-03', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(116, '2020-07-03', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(117, '2020-07-04', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(118, '2020-07-04', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(119, '2020-07-04', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(120, '2020-07-04', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(121, '2020-07-06', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(122, '2020-07-06', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(123, '2020-07-06', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(124, '2020-07-06', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(125, '2020-07-07', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(126, '2020-07-07', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(127, '2020-07-07', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(128, '2020-07-07', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(129, '2020-07-08', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(130, '2020-07-08', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(131, '2020-07-08', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(132, '2020-07-08', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(133, '2020-07-09', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(134, '2020-07-09', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(135, '2020-07-09', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(136, '2020-07-09', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(137, '2020-07-10', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(138, '2020-07-10', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(139, '2020-07-10', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(140, '2020-07-10', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(141, '2020-07-11', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(142, '2020-07-11', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(143, '2020-07-11', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(144, '2020-07-11', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(145, '2020-07-13', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(146, '2020-07-13', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(147, '2020-07-13', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(148, '2020-07-13', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(149, '2020-07-14', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(150, '2020-07-14', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(151, '2020-07-14', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(152, '2020-07-14', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(153, '2020-07-15', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(154, '2020-07-15', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(155, '2020-07-15', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(156, '2020-07-15', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(157, '2020-07-16', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(158, '2020-07-16', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(159, '2020-07-16', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(160, '2020-07-16', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(161, '2020-07-17', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(162, '2020-07-17', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(163, '2020-07-17', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(164, '2020-07-17', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(165, '2020-07-18', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(166, '2020-07-18', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(167, '2020-07-18', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(168, '2020-07-18', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(169, '2020-07-20', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(170, '2020-07-20', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(171, '2020-07-20', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(172, '2020-07-20', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(173, '2020-07-21', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(174, '2020-07-21', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(175, '2020-07-21', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(176, '2020-07-21', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(177, '2020-07-22', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(178, '2020-07-22', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(179, '2020-07-22', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(180, '2020-07-22', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(181, '2020-07-23', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(182, '2020-07-23', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(183, '2020-07-23', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(184, '2020-07-23', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(185, '2020-07-24', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(186, '2020-07-24', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(187, '2020-07-24', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(188, '2020-07-24', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(189, '2020-07-25', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(190, '2020-07-25', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(191, '2020-07-25', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(192, '2020-07-25', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(193, '2020-07-27', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(194, '2020-07-27', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(195, '2020-07-27', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(196, '2020-07-27', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(197, '2020-07-28', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(198, '2020-07-28', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(199, '2020-07-28', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(200, '2020-07-28', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(201, '2020-07-29', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(202, '2020-07-29', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(203, '2020-07-29', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(204, '2020-07-29', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(205, '2020-07-30', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(206, '2020-07-30', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(207, '2020-07-30', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(208, '2020-07-30', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(209, '2020-07-31', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(210, '2020-07-31', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(211, '2020-07-31', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(212, '2020-07-31', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(213, '2020-08-01', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(214, '2020-08-01', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(215, '2020-08-01', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(216, '2020-08-01', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(217, '2020-08-03', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(218, '2020-08-03', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(219, '2020-08-03', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(220, '2020-08-03', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(221, '2020-08-04', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(222, '2020-08-04', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(223, '2020-08-04', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(224, '2020-08-04', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(225, '2020-08-05', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(226, '2020-08-05', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(227, '2020-08-05', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(228, '2020-08-05', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(229, '2020-08-06', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(230, '2020-08-06', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(231, '2020-08-06', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(232, '2020-08-06', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(233, '2020-08-07', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(234, '2020-08-07', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(235, '2020-08-07', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(236, '2020-08-07', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(237, '2020-08-08', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(238, '2020-08-08', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(239, '2020-08-08', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(240, '2020-08-08', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(241, '2020-08-10', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(242, '2020-08-10', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(243, '2020-08-10', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(244, '2020-08-10', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(245, '2020-08-11', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(246, '2020-08-11', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(247, '2020-08-11', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(248, '2020-08-11', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(249, '2020-08-12', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(250, '2020-08-12', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(251, '2020-08-12', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(252, '2020-08-12', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(253, '2020-08-13', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(254, '2020-08-13', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(255, '2020-08-13', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(256, '2020-08-13', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(257, '2020-08-14', 'SE', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(258, '2020-08-14', 'DAA', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(259, '2020-08-14', 'ML', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(260, '2020-08-14', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(261, '2020-08-15', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(262, '2020-08-15', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(263, '2020-08-15', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(264, '2020-08-15', 'SP3 Reporting', '14:45:00.000000', '15:45:00.000000', 'Internal Guide', 'completed'),
(265, '2020-08-17', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(266, '2020-08-17', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(267, '2020-08-17', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(268, '2020-08-17', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(269, '2020-08-18', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(270, '2020-08-18', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(271, '2020-08-18', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(272, '2020-08-18', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(273, '2020-08-19', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(274, '2020-08-19', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(275, '2020-08-19', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(276, '2020-08-19', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(277, '2020-08-20', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(278, '2020-08-20', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(279, '2020-08-20', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(280, '2020-08-20', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(281, '2020-08-21', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(282, '2020-08-21', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(283, '2020-08-21', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(284, '2020-08-21', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(285, '2020-08-22', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(286, '2020-08-22', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(287, '2020-08-22', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(288, '2020-08-22', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(289, '2020-08-24', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(290, '2020-08-24', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(291, '2020-08-24', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(292, '2020-08-24', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(293, '2020-08-25', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(294, '2020-08-25', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(295, '2020-08-25', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(296, '2020-08-25', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(297, '2020-08-26', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(298, '2020-08-26', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(299, '2020-08-26', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(300, '2020-08-26', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(301, '2020-08-27', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(302, '2020-08-27', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(303, '2020-08-27', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(304, '2020-08-27', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(305, '2020-08-28', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(306, '2020-08-28', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(307, '2020-08-28', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(308, '2020-08-28', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(309, '2020-08-29', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(310, '2020-08-29', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(311, '2020-08-29', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(312, '2020-08-29', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(313, '2020-08-31', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(314, '2020-08-31', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(315, '2020-08-31', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(316, '2020-08-31', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(317, '2020-09-01', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(318, '2020-09-01', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(319, '2020-09-01', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(320, '2020-09-01', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(321, '2020-09-02', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(322, '2020-09-02', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(323, '2020-09-02', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(324, '2020-09-02', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(325, '2020-09-03', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(326, '2020-09-03', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(327, '2020-09-03', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(328, '2020-09-03', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(329, '2020-09-04', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(330, '2020-09-04', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(331, '2020-09-04', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(332, '2020-09-04', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(333, '2020-09-05', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(334, '2020-09-05', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(335, '2020-09-05', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(336, '2020-09-05', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(337, '2020-09-01', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(338, '2020-09-07', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(339, '2020-09-07', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(340, '2020-09-07', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(341, '2020-09-08', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(342, '2020-09-08', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(343, '2020-09-08', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(344, '2020-09-08', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(345, '2020-09-09', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(346, '2020-09-09', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(347, '2020-09-09', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(348, '2020-09-09', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(349, '2020-09-10', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(350, '2020-09-10', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(351, '2020-09-10', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(352, '2020-09-10', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(353, '2020-09-11', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(354, '2020-09-11', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(355, '2020-09-11', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(356, '2020-09-11', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(357, '2020-09-12', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(358, '2020-09-12', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(359, '2020-09-12', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(360, '2020-09-12', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(361, '2020-09-14', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(362, '2020-09-14', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(363, '2020-09-14', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(364, '2020-09-14', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(365, '2020-09-15', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(366, '2020-09-15', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(367, '2020-09-15', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(368, '2020-09-15', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(369, '2020-09-16', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(370, '2020-09-16', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(371, '2020-09-16', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(372, '2020-09-16', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(373, '2020-09-17', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(374, '2020-09-17', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(375, '2020-09-17', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(376, '2020-09-17', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(377, '2020-09-18', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(378, '2020-09-18', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(379, '2020-09-18', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(380, '2020-09-18', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(381, '2020-09-19', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(382, '2020-09-19', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(383, '2020-09-19', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(384, '2020-09-19', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(385, '2020-09-21', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(386, '2020-09-21', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(387, '2020-09-21', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(388, '2020-09-21', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(389, '2020-09-22', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(390, '2020-09-22', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(391, '2020-09-22', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(392, '2020-09-22', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(393, '2020-09-23', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(394, '2020-09-23', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(395, '2020-09-23', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(396, '2020-09-23', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(397, '2020-09-24', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(398, '2020-09-24', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(399, '2020-09-24', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(400, '2020-09-24', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(401, '2020-09-25', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(402, '2020-09-25', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(403, '2020-09-25', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(404, '2020-09-25', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(405, '2020-09-26', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(406, '2020-09-26', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(407, '2020-09-26', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(408, '2020-09-26', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(409, '2020-09-28', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(410, '2020-09-28', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(411, '2020-09-28', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(412, '2020-09-28', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(413, '2020-09-29', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(414, '2020-09-29', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(415, '2020-09-29', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(416, '2020-09-29', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(417, '2020-09-30', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(418, '2020-09-30', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(419, '2020-09-30', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(420, '2020-09-30', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(421, '2020-10-01', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(422, '2020-10-01', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(423, '2020-10-01', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(424, '2020-10-01', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(425, '2020-10-02', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(426, '2020-10-02', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(427, '2020-10-02', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(428, '2020-10-02', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(429, '2020-10-03', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(430, '2020-10-03', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(431, '2020-10-03', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(432, '2020-10-03', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(433, '2020-10-05', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(434, '2020-10-05', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(435, '2020-10-05', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(436, '2020-10-05', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(437, '2020-10-06', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(438, '2020-10-06', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(439, '2020-10-06', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(440, '2020-10-06', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(441, '2020-10-07', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(442, '2020-10-07', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(443, '2020-10-07', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(444, '2020-10-07', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(445, '2020-10-08', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(446, '2020-10-08', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(447, '2020-10-08', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(448, '2020-10-08', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(449, '2020-10-09', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(450, '2020-10-09', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(451, '2020-10-09', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(452, '2020-10-09', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(453, '2020-10-10', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(454, '2020-10-10', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(455, '2020-10-10', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(456, '2020-10-10', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(457, '2020-10-12', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(458, '2020-10-12', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(459, '2020-10-12', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(460, '2020-10-12', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(461, '2020-10-13', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(462, '2020-10-13', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(463, '2020-10-13', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(464, '2020-10-13', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(465, '2020-10-14', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(466, '2020-10-14', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(467, '2020-10-14', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(468, '2020-10-14', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(469, '2020-10-15', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(470, '2020-10-15', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(471, '2020-10-15', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(472, '2020-10-15', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(473, '2020-10-16', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(474, '2020-10-16', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(475, '2020-10-16', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(476, '2020-10-16', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(477, '2020-10-17', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(478, '2020-10-17', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(479, '2020-10-17', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(480, '2020-10-17', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(481, '2020-10-19', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(482, '2020-10-19', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(483, '2020-10-19', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(484, '2020-10-19', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(485, '2020-10-20', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(486, '2020-10-20', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(487, '2020-10-20', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(488, '2020-10-20', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(489, '2020-10-21', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(490, '2020-10-21', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(491, '2020-10-21', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(492, '2020-10-21', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(493, '2020-10-22', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(494, '2020-10-22', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(495, '2020-10-22', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(496, '2020-10-22', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(497, '2020-10-23', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(498, '2020-10-23', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(499, '2020-10-23', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(500, '2020-10-23', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(501, '2020-10-24', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(502, '2020-10-24', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(503, '2020-10-24', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(504, '2020-10-24', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(505, '2020-10-26', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(506, '2020-10-26', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(507, '2020-10-26', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(508, '2020-10-26', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(509, '2020-10-27', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(510, '2020-10-27', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(511, '2020-10-27', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(512, '2020-10-27', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(513, '2020-10-28', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(514, '2020-10-28', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(515, '2020-10-28', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(516, '2020-10-28', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(517, '2020-10-29', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(518, '2020-10-29', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(519, '2020-10-29', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'completed'),
(520, '2020-10-29', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(521, '2020-10-30', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'completed'),
(522, '2020-10-30', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'completed'),
(523, '2020-10-30', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'completed'),
(524, '2020-10-30', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(525, '2020-10-31', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(526, '2020-10-31', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(527, '2020-10-31', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(528, '2020-10-31', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'completed'),
(529, '2020-11-02', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(530, '2020-11-02', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(531, '2020-11-02', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending');
INSERT INTO `lectures` (`id`, `date`, `subject_name`, `start_time`, `end_time`, `faculty_name`, `status`) VALUES
(532, '2020-11-02', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(533, '2020-11-03', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(534, '2020-11-03', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(535, '2020-11-03', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(536, '2020-11-03', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(537, '2020-11-04', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(538, '2020-11-04', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(539, '2020-11-04', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(540, '2020-11-04', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(541, '2020-11-05', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(542, '2020-11-05', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(543, '2020-11-05', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(544, '2020-11-05', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(545, '2020-11-06', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(546, '2020-11-06', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(547, '2020-11-06', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(548, '2020-11-06', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(549, '2020-11-07', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(550, '2020-11-07', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(551, '2020-11-07', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'completed'),
(552, '2020-11-07', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(553, '2020-11-09', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(554, '2020-11-09', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(555, '2020-11-09', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(556, '2020-11-09', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(557, '2020-11-10', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(558, '2020-11-10', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(559, '2020-11-10', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(560, '2020-11-10', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(561, '2020-11-11', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(562, '2020-11-11', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(563, '2020-11-11', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(564, '2020-11-11', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(565, '2020-11-12', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(566, '2020-11-12', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(567, '2020-11-12', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(568, '2020-11-12', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(569, '2020-11-13', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(570, '2020-11-13', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(571, '2020-11-13', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(572, '2020-11-13', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(573, '2020-11-14', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(574, '2020-11-14', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(575, '2020-11-14', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'pending'),
(576, '2020-11-14', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(577, '2020-11-16', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(578, '2020-11-16', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(579, '2020-11-16', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(580, '2020-11-16', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(581, '2020-11-17', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(582, '2020-11-17', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(583, '2020-11-17', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(584, '2020-11-17', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(585, '2020-11-18', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(586, '2020-11-18', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(587, '2020-11-18', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(588, '2020-11-18', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(589, '2020-11-19', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(590, '2020-11-19', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(591, '2020-11-19', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(592, '2020-11-19', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(593, '2020-11-20', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(594, '2020-11-20', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(595, '2020-11-20', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(596, '2020-11-20', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(597, '2020-11-21', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(598, '2020-11-21', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(599, '2020-11-21', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'pending'),
(600, '2020-11-21', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(601, '2020-11-23', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(602, '2020-11-23', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(603, '2020-11-23', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(604, '2020-11-23', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(605, '2020-11-24', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(606, '2020-11-24', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(607, '2020-11-24', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(608, '2020-11-24', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(609, '2020-11-25', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(610, '2020-11-25', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'completed'),
(611, '2020-11-25', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(612, '2020-11-25', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(613, '2020-11-26', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'completed'),
(614, '2020-11-26', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(615, '2020-11-26', 'SE', '13:30:00.000000', '14:30:00.000000', 'tinal parikh', 'pending'),
(616, '2020-11-26', 'LARAVEL', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'completed'),
(617, '2020-11-27', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(618, '2020-11-27', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(619, '2020-11-27', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(620, '2020-11-27', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending'),
(621, '2020-11-28', 'DAA', '10:30:00.000000', '11:30:00.000000', 'kruti jani', 'pending'),
(622, '2020-11-28', 'ML', '12:00:00.000000', '13:00:00.000000', 'hardik soni', 'pending'),
(623, '2020-11-28', 'LARAVEL', '13:30:00.000000', '14:30:00.000000', 'kruti jani', 'pending'),
(624, '2020-11-28', 'Sp3 Reporting', '14:45:00.000000', '15:45:00.000000', 'internal Guide', 'pending'),
(625, '2020-11-30', 'SE', '10:30:00.000000', '11:30:00.000000', 'tinal parikh', 'pending'),
(626, '2020-11-30', 'DAA', '12:00:00.000000', '13:00:00.000000', 'kruti jani', 'pending'),
(627, '2020-11-30', 'ML', '13:30:00.000000', '14:30:00.000000', 'hardik soni', 'pending'),
(628, '2020-11-30', 'Laravel Reporting', '14:45:00.000000', '15:45:00.000000', 'kruti jani', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sechdule`
--

CREATE TABLE `sechdule` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `course_title` varchar(200) NOT NULL,
  `program` varchar(200) NOT NULL,
  `no_of_sessions` varchar(11) NOT NULL,
  `number_of_hour_in_each_session` varchar(11) NOT NULL,
  `total_number_of_hours` varchar(11) NOT NULL,
  `faculty_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sechdule`
--

INSERT INTO `sechdule` (`id`, `start_date`, `end_date`, `course_title`, `program`, `no_of_sessions`, `number_of_hour_in_each_session`, `total_number_of_hours`, `faculty_name`) VALUES
(1, '2020-06-01', '2020-11-30', 'LARAVEL', 'MCA SEM 5', '78', '1', '78', 'krutijani'),
(2, '2020-06-01', '2020-11-30', 'DAA', 'MCA SEM 5', '157', '1', '157', 'kruti jani'),
(3, '2020-06-01', '2020-11-30', 'ML', 'MCA SEM 5', '157', '1', '157', 'hardik soni'),
(4, '2020-06-01', '2020-11-30', 'laravel reporting', 'MCA SEM 5', '53', '1', '53', 'kruti jani'),
(5, '2020-06-01', '2020-11-30', 'SE', 'MCA SEM 5', '131', '1', '131', 'tinal parikh'),
(6, '2020-06-01', '2020-11-30', 'sp3 reporting', 'MCA SEM 5', '52', '1', '52', 'kruti jani'),
(7, '2020-06-01', '2020-11-30', 'sp3 reporting', 'MCA SEM 5', '52', '1', '52', 'hardik soni'),
(8, '2020-06-01', '2020-11-30', 'sp3 reporting', 'MCA SEM 5', '52', '1', '52', 'tinal parikh'),
(9, '2020-06-01', '2020-11-30', 'sp3 reporting', 'MCA SEM 5', '52', '1', '52', 'priyank naher'),
(10, '2020-06-01', '2020-11-30', 'JAVA', 'MCA SEM 4', '45', '1', '45', 'asutosh trivedi');

-- --------------------------------------------------------

--
-- Table structure for table `students_projects`
--

CREATE TABLE `students_projects` (
  `id` int(11) NOT NULL,
  `title_of_project` varchar(200) NOT NULL,
  `faculty_name` varchar(200) NOT NULL,
  `term` varchar(200) NOT NULL,
  `no_of_students` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_projects`
--

INSERT INTO `students_projects` (`id`, `title_of_project`, `faculty_name`, `term`, `no_of_students`) VALUES
(1, 'acedmic monitering system', 'kruti jani', 'mca sem 5', '2'),
(2, 'event management', 'kruti jani', 'mca sem 5', '3'),
(3, 'uber analysis', 'kruti jani', 'mca sem 4', '3'),
(5, 'online chating box', 'kruti jani', 'mca sem 4', '2');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `units_title` varchar(200) NOT NULL,
  `weighatge` varchar(200) NOT NULL,
  `faculty_name` varchar(200) NOT NULL,
  `term` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `subject_name`, `units_title`, `weighatge`, `faculty_name`, `term`, `status`) VALUES
(1, 'DAA', 'Basic Concepts of Analysis and Design of Algorithms', '7%', 'kruti jani', 'mca sem 5', 'completed'),
(2, 'DAA', 'Algorithms Using Divide-and-Conquer Strategy', '20%', 'kruti jani', 'mca sem 5', 'completed'),
(3, 'DAA', 'Greedy Methods', '20%', 'kruti jani', 'mca sem 5', 'completed'),
(4, 'DAA', 'Dynamic Programming', '20%', 'kruti jani', 'mca sem 5', 'completed'),
(5, 'DAA', 'Backtracking, Branch and Bound Algorithms', '23%', 'kruti jani', 'mca sem 5', 'completed'),
(6, 'DAA', 'Efficiency of Algorithms; Complexity Calculation and Categorization', '10%', 'kruti jani', 'mca sem 5', 'completed'),
(7, 'ML', 'Introduction to Machine Learning, Model Preparation,\r\nModelling and Evaluation', '25%', 'hardik soni', 'mca sem 5', 'completed'),
(8, 'ML', 'Feature Engineering, Bayesian Concept Learning', '20%', 'hardik soni', 'mca sem 5', 'completed'),
(9, 'ML', 'Supervised Learning – Classification, Regression', '20%', 'hardik soni', 'mca sem 5', 'completed'),
(10, 'ML', 'Unsupervised Learning – Clustering, pattern finding using\r\nassociation rules', '17%', 'hardik soni', 'mca sem 5', 'completed'),
(11, 'ML', 'Neural Network', '18%', 'hardik soni', 'mca sem 5', 'completed'),
(12, 'SE', 'Introduction to Software Engineering & Process Models', '10%', 'tinal parikh', 'mca sem 5', 'completed'),
(13, 'SE', 'Requirement Engineering', '20%', 'tinal parikh', 'mca sem 5', 'completed'),
(14, 'SE', 'Design Concepts', '20%', 'tinal parikh', 'mca sem 5', 'completed'),
(15, 'SE', 'Software Testing', '10%', 'tinal parikh', 'mca sem 5', 'completed'),
(16, 'SE', 'Introduction to Agile Methodology', '20%', 'tinal parikh', 'mca sem 5', 'pending'),
(17, 'SE', 'HIGH LEVEL DESIGN', '20%', 'tinal parikh', 'mca sem 5', 'pending'),
(18, 'LARAVEL', 'Introduction to LARAVEL', '15%', 'kruti jani', 'mca sem 5', 'completed'),
(19, 'LARAVEL', 'LARAVEL Basics', '25%', 'kruti jani', 'mca sem 5', 'completed'),
(20, 'LARAVEL', 'Collecting and Validating User Data', '30%', 'kruti jani', 'mca sem 5', 'completed'),
(21, 'LARAVEL', 'Advanced LARAVEL', '15%', 'kruti jani', 'mca sem 5', 'completed'),
(22, 'LARAVEL', 'Mail , Notifications', '15%', 'kruti jani', 'mca sem 5', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_materials`
--

CREATE TABLE `teaching_materials` (
  `id` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `faculty_name` varchar(200) NOT NULL,
  `number_of_collaborators` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaching_materials`
--

INSERT INTO `teaching_materials` (`id`, `Title`, `faculty_name`, `number_of_collaborators`, `status`) VALUES
(1, 'Given the material for DAA and LARAVEL and Practical', 'kruti jani', '1', 'pending'),
(2, 'Devloping Program using visual studio', 'kruti jani', '1', 'pending'),
(3, 'Deliver lectures on the Zoom for MCA', 'kruti jani', '1', 'pending'),
(4, 'Given the material for SE', 'tinal parikh', '1', 'pending'),
(5, 'Given the material for ML and Prctical', 'hardik soni', '1', 'Uploded'),
(6, 'Upload Gtu Old paper', 'priyank naher', '1', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sechdule`
--
ALTER TABLE `sechdule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_projects`
--
ALTER TABLE `students_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teaching_materials`
--
ALTER TABLE `teaching_materials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;

--
-- AUTO_INCREMENT for table `sechdule`
--
ALTER TABLE `sechdule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students_projects`
--
ALTER TABLE `students_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teaching_materials`
--
ALTER TABLE `teaching_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
