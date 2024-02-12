-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 12, 2024 at 05:48 AM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yiimpfrontend`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(255) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `last_earning` int(10) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT 0,
  `no_fees` tinyint(1) DEFAULT NULL,
  `donation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `logtraffic` tinyint(1) DEFAULT NULL,
  `balance` double DEFAULT 0,
  `username` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `coinsymbol` varchar(16) DEFAULT NULL,
  `swap_time` int(10) UNSIGNED DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `hostaddr` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `algos`
--

CREATE TABLE `algos` (
  `id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `overflow` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `algos`
--

INSERT INTO `algos` (`id`, `name`, `profit`, `rent`, `factor`, `overflow`) VALUES
(1, 'scrypt', 0, 0, 1, 1),
(2, 'scryptn', 0, 0, 1, 1),
(3, 'neoscrypt', 0, 0, 1, 1),
(4, 'quark', 0, 0, 1, 1),
(5, 'lyra2', 0, 0, 1, 1),
(6, 'x11', 0, 0, 1, 1),
(7, 'x13', 0, 0, 1, 1),
(8, 'x14', 0, 0, 1, 0),
(9, 'x15', 0, 0, 1, 1),
(10, 'fresh', 0.0026231955438411, 0.0027018914101563, 5, 0),
(11, 'sha256', 0, 0, 1, 1),
(12, 'qubit', 0, 0, 1, 1),
(13, 'skein', 0, 0, 1, 1),
(14, 'groestl', 0, 0, 1, 0),
(15, 'blake', 0, 0, 1, 0),
(16, 'keccak', 0, 0, 1, 0),
(17, 'nist5', 0, 0, 1, 1),
(18, 'zr5', 0, 0, 1, 1),
(19, 'c11', 0, 0, 1, 0),
(20, 'drop', 2.5713261892185e-21, 32.540632674103, 1.5, 0),
(21, 'skein2', 0, 0, 1, 0),
(22, 'bmw', 0.00000000000009119158510914, 0.000072523406145041, 100, 1),
(23, 'argon2', 0, 0, 1, NULL),
(24, 'blake2s', 0, 0, 1, NULL),
(25, 'decred', 0, 0, 1, NULL),
(26, 'luffa', 0, 0, 1, NULL),
(27, 'lyra2v2', 0, 0, 1, NULL),
(28, 'penta', 0, 0, 1, NULL),
(29, 'dmd-gr', 0, 0, 1, NULL),
(30, 'myr-gr', 0, 0, 1, NULL),
(31, 'm7m', 0, 0, 1, NULL),
(32, 'sib', 0, 0, 1, NULL),
(33, 'vanilla', 0, 0, 1, NULL),
(34, 'velvet', 0, 0, 1, NULL),
(35, 'yescrypt', 0, 0, 1, NULL),
(36, 'whirlpool', 0, 0, 1, NULL),
(37, 'a5a', 0, 0, 1, NULL),
(38, 'aergo', 0, 0, 1, NULL),
(39, 'allium', 0, 0, 1, NULL),
(40, 'argon2d-crds', 0, 0, 1, NULL),
(41, 'argon2d-dyn', 0, 0, 1, NULL),
(42, 'argon2m', 0, 0, 1, NULL),
(43, 'argon2d-uis', 0, 0, 1, NULL),
(44, 'balloon', 0, 0, 1, NULL),
(45, 'bastion', 0, 0, 1, NULL),
(46, 'bcd', 0, 0, 1, NULL),
(47, 'binarium-v1', 0, 0, 1, NULL),
(48, 'bitcore', 0, 0, 1, NULL),
(49, 'blake2b', 0, 0, 1, NULL),
(50, 'bmw512', 0, 0, 1, NULL),
(51, 'blakecoin', 0, 0, 1, NULL),
(52, 'deep', 0, 0, 1, NULL),
(53, 'exosis', 0, 0, 1, NULL),
(54, 'geek', 0, 0, 1, NULL),
(55, 'hex', 0, 0, 1, NULL),
(56, 'hmq1725', 0, 0, 1, NULL),
(57, 'honeycomb', 0, 0, 1, NULL),
(58, 'hsr', 0, 0, 1, NULL),
(59, 'jha', 0, 0, 1, NULL),
(60, 'keccakc', 0, 0, 1, NULL),
(61, 'lbk3', 0, 0, 1, NULL),
(62, 'lbry', 0, 0, 1, NULL),
(63, 'lyra2v3', 0, 0, 1, NULL),
(64, 'lyra2vc0ban', 0, 0, 1, NULL),
(65, 'lyra2z', 0, 0, 1, NULL),
(66, 'lyra2zz', 0, 0, 1, NULL),
(67, 'lyra2z330', 0, 0, 1, NULL),
(68, 'odo', 0, 0, 1, NULL),
(69, 'phi', 0, 0, 1, NULL),
(70, 'phi2', 0, 0, 1, NULL),
(71, 'phi1612', 0, 0, 1, NULL),
(72, 'polytimos', 0, 0, 1, NULL),
(73, 'rainforest', 0, 0, 1, NULL),
(74, 'rfv2', 0, 0, 1, NULL),
(75, 'sha256q', 0, 0, 1, NULL),
(76, 'sha256t', 0, 0, 1, NULL),
(77, 'skunk', 0, 0, 1, NULL),
(78, 'sonoa', 0, 0, 1, NULL),
(79, 'timetravel', 0, 0, 1, NULL),
(80, 'tribus', 0, 0, 1, NULL),
(81, 'veltor', 0, 0, 1, NULL),
(82, 'vitalium', 0, 0, 1, NULL),
(83, 'x11evo', 0, 0, 1, NULL),
(84, 'x12', 0, 0, 1, NULL),
(85, 'x16r', 0, 0, 1, NULL),
(86, 'x16rv2', 0, 0, 1, NULL),
(87, 'x16rt', 0, 0, 1, NULL),
(88, 'x16s', 0, 0, 1, NULL),
(89, 'x17', 0, 0, 1, NULL),
(90, 'x18', 0, 0, 1, NULL),
(91, 'x20r', 0, 0, 1, NULL),
(92, 'x21s', 0, 0, 1, NULL),
(93, 'x22i', 0, 0, 1, NULL),
(94, 'x25x', 0, 0, 1, NULL),
(95, 'xevan', 0, 0, 1, NULL),
(96, 'yescryptR8', 0, 0, 1, NULL),
(97, 'yescryptR16', 0, 0, 1, NULL),
(98, 'yescryptR32', 0, 0, 1, NULL),
(99, 'yespower', 0, 0, 1, NULL),
(100, 'yespowerR8', 0, 0, 1, NULL),
(101, 'yespowerR16', 0, 0, 1, NULL),
(102, 'yespowerR24', 0, 0, 1, NULL),
(103, 'yespowerR32', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `onsell` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `balances`
--

INSERT INTO `balances` (`id`, `name`, `balance`, `onsell`) VALUES
(1, 'bittrex', 0, NULL),
(2, 'poloniex', 0, NULL),
(3, 'safecex', 0, NULL),
(4, 'bleutrade', 0, NULL),
(5, 'yobit', 0, NULL),
(6, 'c-cex', 0, NULL),
(7, 'alcurex', 0, NULL),
(8, 'cryptopia', 0, NULL),
(9, 'livecoin', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balanceuser`
--

CREATE TABLE `balanceuser` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `pending` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `benchmarks`
--

CREATE TABLE `benchmarks` (
  `id` int(11) NOT NULL,
  `algo` varchar(16) NOT NULL,
  `type` varchar(8) NOT NULL,
  `khps` double DEFAULT NULL,
  `device` varchar(80) DEFAULT NULL,
  `vendorid` varchar(12) DEFAULT NULL,
  `chip` varchar(32) DEFAULT NULL,
  `idchip` int(11) DEFAULT NULL,
  `arch` varchar(8) DEFAULT NULL,
  `power` int(5) UNSIGNED DEFAULT NULL,
  `plimit` int(5) UNSIGNED DEFAULT NULL,
  `freq` int(8) UNSIGNED DEFAULT NULL,
  `realfreq` int(8) UNSIGNED DEFAULT NULL,
  `memf` int(8) UNSIGNED DEFAULT NULL,
  `realmemf` int(8) UNSIGNED DEFAULT NULL,
  `client` varchar(48) DEFAULT NULL,
  `os` varchar(8) DEFAULT NULL,
  `driver` varchar(32) DEFAULT NULL,
  `intensity` double DEFAULT NULL,
  `throughput` int(11) UNSIGNED DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bench_chips`
--

CREATE TABLE `bench_chips` (
  `id` int(11) NOT NULL,
  `devicetype` varchar(8) DEFAULT NULL,
  `vendorid` varchar(12) DEFAULT NULL,
  `chip` varchar(32) DEFAULT NULL,
  `year` int(4) UNSIGNED DEFAULT NULL,
  `maxtdp` double DEFAULT NULL,
  `blake_rate` double DEFAULT NULL,
  `blake_power` double DEFAULT NULL,
  `x11_rate` double DEFAULT NULL,
  `x11_power` double DEFAULT NULL,
  `sha_rate` double DEFAULT NULL,
  `sha_power` double DEFAULT NULL,
  `scrypt_rate` double DEFAULT NULL,
  `scrypt_power` double DEFAULT NULL,
  `dag_rate` double DEFAULT NULL,
  `dag_power` double DEFAULT NULL,
  `lyra_rate` double DEFAULT NULL,
  `lyra_power` double DEFAULT NULL,
  `neo_rate` double DEFAULT NULL,
  `neo_power` double DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `perfdata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bench_suffixes`
--

CREATE TABLE `bench_suffixes` (
  `vendorid` varchar(12) NOT NULL,
  `chip` varchar(32) DEFAULT NULL,
  `suffix` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) UNSIGNED NOT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `workerid` int(11) DEFAULT NULL,
  `difficulty_user` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt',
  `blockhash` varchar(128) DEFAULT NULL,
  `txhash` varchar(128) DEFAULT NULL,
  `segwit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci COMMENT='Discovered blocks persisted from Litecoin Service';

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `label` varchar(32) DEFAULT NULL,
  `address` varchar(128) NOT NULL,
  `lastused` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coins`
--

CREATE TABLE `coins` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(16) DEFAULT NULL,
  `symbol2` varchar(16) DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  `version` varchar(32) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `market` varchar(64) DEFAULT NULL,
  `marketid` int(11) DEFAULT NULL,
  `master_wallet` varchar(1024) DEFAULT NULL,
  `charity_address` varchar(1024) DEFAULT NULL,
  `charity_amount` double DEFAULT NULL,
  `charity_percent` double DEFAULT NULL,
  `deposit_address` varchar(1024) DEFAULT NULL,
  `deposit_minimum` double DEFAULT 1,
  `sellonbid` tinyint(1) DEFAULT NULL,
  `dontsell` tinyint(1) DEFAULT 1,
  `block_explorer` varchar(1024) DEFAULT NULL,
  `index_avg` double DEFAULT NULL,
  `connections` int(11) DEFAULT NULL,
  `errors` varchar(1024) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `immature` double DEFAULT NULL,
  `cleared` double DEFAULT NULL,
  `available` double DEFAULT NULL,
  `stake` double DEFAULT NULL,
  `mint` double DEFAULT NULL,
  `txfee` double DEFAULT NULL,
  `payout_min` double DEFAULT NULL,
  `payout_max` double DEFAULT NULL,
  `block_time` int(11) DEFAULT NULL,
  `difficulty` double DEFAULT 1,
  `difficulty_pos` double DEFAULT NULL,
  `block_height` int(11) DEFAULT NULL,
  `target_height` int(11) DEFAULT NULL,
  `powend_height` int(11) DEFAULT NULL,
  `network_hash` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `reward` double DEFAULT 1,
  `reward_mul` double DEFAULT 1,
  `mature_blocks` int(11) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `auto_ready` tinyint(1) DEFAULT 0,
  `visible` tinyint(1) DEFAULT NULL,
  `no_explorer` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `max_miners` int(11) DEFAULT NULL,
  `max_shares` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `conf_folder` varchar(128) DEFAULT NULL,
  `program` varchar(128) DEFAULT NULL,
  `rpcuser` varchar(128) DEFAULT NULL,
  `rpcpasswd` varchar(128) DEFAULT NULL,
  `serveruser` varchar(45) DEFAULT NULL,
  `rpchost` varchar(128) DEFAULT NULL,
  `rpcport` int(11) DEFAULT NULL,
  `dedicatedport` int(11) DEFAULT NULL,
  `rpccurl` tinyint(1) NOT NULL DEFAULT 0,
  `rpcssl` tinyint(1) NOT NULL DEFAULT 0,
  `rpccert` varchar(255) DEFAULT NULL,
  `rpcencoding` varchar(16) DEFAULT NULL,
  `account` varchar(64) NOT NULL DEFAULT '',
  `hasgetinfo` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `hassubmitblock` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `hasmasternodes` tinyint(1) NOT NULL DEFAULT 0,
  `usememorypool` tinyint(1) DEFAULT NULL,
  `usesegwit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `txmessage` tinyint(1) DEFAULT NULL,
  `auxpow` tinyint(1) DEFAULT NULL,
  `multialgos` tinyint(1) NOT NULL DEFAULT 0,
  `lastblock` varchar(128) DEFAULT NULL,
  `network_ttf` int(11) DEFAULT NULL,
  `actual_ttf` int(11) DEFAULT NULL,
  `pool_ttf` int(11) DEFAULT NULL,
  `last_network_found` int(11) DEFAULT NULL,
  `installed` tinyint(1) DEFAULT NULL,
  `watch` tinyint(1) NOT NULL DEFAULT 0,
  `link_site` varchar(1024) DEFAULT NULL,
  `link_exchange` varchar(1024) DEFAULT NULL,
  `link_bitcointalk` varchar(1024) DEFAULT NULL,
  `link_github` varchar(1024) DEFAULT NULL,
  `link_explorer` varchar(1024) DEFAULT NULL,
  `link_twitter` varchar(1024) DEFAULT NULL,
  `link_discord` varchar(1024) DEFAULT NULL,
  `link_facebook` varchar(1024) DEFAULT NULL,
  `donation_address` varchar(1024) DEFAULT NULL,
  `usefaucet` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `specifications` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `coins`
--

INSERT INTO `coins` (`id`, `name`, `symbol`, `symbol2`, `algo`, `version`, `image`, `market`, `marketid`, `master_wallet`, `charity_address`, `charity_amount`, `charity_percent`, `deposit_address`, `deposit_minimum`, `sellonbid`, `dontsell`, `block_explorer`, `index_avg`, `connections`, `errors`, `balance`, `immature`, `cleared`, `available`, `stake`, `mint`, `txfee`, `payout_min`, `payout_max`, `block_time`, `difficulty`, `difficulty_pos`, `block_height`, `target_height`, `powend_height`, `network_hash`, `price`, `price2`, `reward`, `reward_mul`, `mature_blocks`, `enable`, `auto_ready`, `visible`, `no_explorer`, `max_miners`, `max_shares`, `created`, `action`, `conf_folder`, `program`, `rpcuser`, `rpcpasswd`, `serveruser`, `rpchost`, `rpcport`, `dedicatedport`, `rpccurl`, `rpcssl`, `rpccert`, `rpcencoding`, `account`, `hasgetinfo`, `hassubmitblock`, `hasmasternodes`, `usememorypool`, `usesegwit`, `txmessage`, `auxpow`, `multialgos`, `lastblock`, `network_ttf`, `actual_ttf`, `pool_ttf`, `last_network_found`, `installed`, `watch`, `link_site`, `link_exchange`, `link_bitcointalk`, `link_github`, `link_explorer`, `link_twitter`, `link_discord`, `link_facebook`, `donation_address`, `usefaucet`, `specifications`) VALUES
(6, 'Bitcoin', 'BTC', '', 'sha256', '109900', '/images/coin-6.png', '', 0, NULL, NULL, NULL, NULL, NULL, 0.005, 0, 1, '', 0.0000049361618444422, 0, 'This is a pre-release test build - use at your own risk - do not use for mining or merchant applications', 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 51076366303.482, NULL, 364900, 349481, NULL, 80.81, 1, 1, 25.21212105, 1, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, 'yaamp1', 10301, NULL, 0, 0, NULL, 'POW', '', 1, 1, 0, NULL, 0, 1, 0, 0, '00000000000000000da2a64a9a8e32623575ba19c3125077d1715c1ba2d3b90c', 2147483647, 596, 2147483647, 1436648004, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `user` varchar(64) DEFAULT NULL,
  `host` varchar(64) DEFAULT NULL,
  `db` varchar(64) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `idle` int(11) DEFAULT NULL,
  `last` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `user`, `host`, `db`, `created`, `idle`, `last`) VALUES
(59, 'panel', 'localhost', 'yiimpfrontend', 1573421291, 0, 1573421291),
(62, 'panel', 'localhost', 'yiimpfrontend', 1573421311, 0, 1573421311),
(63, 'panel', 'localhost', 'yiimpfrontend', 1573421331, 0, 1573421331),
(64, 'panel', 'localhost', 'yiimpfrontend', 1573421351, 0, 1573421351),
(66, 'panel', 'localhost', 'yiimpfrontend', 1573421371, 0, 1573421371),
(67, 'panel', 'localhost', 'yiimpfrontend', 1573421391, 0, 1573421391),
(69, 'panel', 'localhost', 'yiimpfrontend', 1573421411, 0, 1573421411),
(71, 'panel', 'localhost', 'yiimpfrontend', 1573421432, 0, 1573421432),
(72, 'panel', 'localhost', 'yiimpfrontend', 1573421452, 0, 1573421452),
(73, 'panel', 'localhost', 'yiimpfrontend', 1573421472, 0, 1573421472),
(76, 'panel', 'localhost', 'yiimpfrontend', 1573421492, 0, 1573421492),
(77, 'panel', 'localhost', 'yiimpfrontend', 1573421512, 0, 1573421512),
(78, 'panel', 'localhost', 'yiimpfrontend', 1573421532, 0, 1573421532),
(80, 'panel', 'localhost', 'yiimpfrontend', 1573421552, 0, 1573421552),
(81, 'panel', 'localhost', 'yiimpfrontend', 1573421572, 0, 1573421572);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `coinid` int(11) DEFAULT NULL,
  `blockid` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mature_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange`
--

CREATE TABLE `exchange` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `send_time` int(11) DEFAULT NULL,
  `receive_time` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price_estimate` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `market` varchar(16) DEFAULT NULL,
  `tx` varchar(65) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hashrate`
--

CREATE TABLE `hashrate` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(11) DEFAULT NULL,
  `hashrate_bad` bigint(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `earnings` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `hashrate`
--

INSERT INTO `hashrate` (`id`, `time`, `hashrate`, `hashrate_bad`, `price`, `rent`, `earnings`, `difficulty`, `algo`) VALUES
(12574, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12575, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'scrypt'),
(12576, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12577, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12578, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12579, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12580, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12581, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12582, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12583, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12584, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12585, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12586, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12587, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12588, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12589, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12590, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12591, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12592, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12593, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12594, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12595, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12596, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12597, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12598, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12599, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12600, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12601, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12602, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12603, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12604, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12605, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12606, 1459692900, 0, NULL, 0, 0, NULL, NULL, 'zr5'),
(12607, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'a5a'),
(12608, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'aergo'),
(12609, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'allium'),
(12610, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12611, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'argon2d-crds'),
(12612, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'argon2d-dyn'),
(12613, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'argon2m'),
(12614, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'argon2d-uis'),
(12615, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'balloon'),
(12616, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'bastion'),
(12617, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'bcd'),
(12618, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'binarium-v1'),
(12619, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'bitcore'),
(12620, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12621, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'blake2b'),
(12622, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12623, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'bmw512'),
(12624, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'blakecoin'),
(12625, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12626, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12627, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'deep'),
(12628, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12629, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'exosis'),
(12630, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12631, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'geek'),
(12632, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'hex'),
(12633, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'hmq1725'),
(12634, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'honeycomb'),
(12635, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'hsr'),
(12636, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'jha'),
(12637, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12638, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'keccakc'),
(12639, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lbk3'),
(12640, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lbry'),
(12641, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12642, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12643, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12644, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2v3'),
(12645, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2vc0ban'),
(12646, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2z'),
(12647, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2zz'),
(12648, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'lyra2z330'),
(12649, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12650, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12651, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12652, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12653, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'odo'),
(12654, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12655, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'phi'),
(12656, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'phi2'),
(12657, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'phi1612'),
(12658, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'polytimos'),
(12659, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12660, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12661, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'rainforest'),
(12662, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'rfv2'),
(12663, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'scrypt'),
(12664, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12665, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12666, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'sha256q'),
(12667, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'sha256t'),
(12668, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12669, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12670, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12671, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'skunk'),
(12672, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'sonoa'),
(12673, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'timetravel'),
(12674, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'tribus'),
(12675, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12676, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'veltor'),
(12677, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12678, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'vitalium'),
(12679, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12680, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12681, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x11evo'),
(12682, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x12'),
(12683, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12684, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12685, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12686, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x16r'),
(12687, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x16rv2'),
(12688, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x16rt'),
(12689, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x16s'),
(12690, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x17'),
(12691, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x18'),
(12692, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x20r'),
(12693, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x21s'),
(12694, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x22i'),
(12695, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'x25x'),
(12696, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'xevan'),
(12697, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12698, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yescryptR8'),
(12699, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yescryptR16'),
(12700, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yescryptR32'),
(12701, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yespower'),
(12702, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yespowerR8'),
(12703, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yespowerR16'),
(12704, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yespowerR24'),
(12705, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'yespowerR32'),
(12706, 1573419600, 0, NULL, 0, 0, NULL, NULL, 'zr5'),
(12707, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'a5a'),
(12708, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'aergo'),
(12709, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'allium'),
(12710, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12711, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'argon2d-crds'),
(12712, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'argon2d-dyn'),
(12713, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'argon2m'),
(12714, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'argon2d-uis'),
(12715, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'balloon'),
(12716, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'bastion'),
(12717, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'bcd'),
(12718, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'binarium-v1'),
(12719, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'bitcore'),
(12720, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12721, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'blake2b'),
(12722, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12723, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'bmw512'),
(12724, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'blakecoin'),
(12725, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12726, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12727, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'deep'),
(12728, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12729, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'exosis'),
(12730, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12731, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'geek'),
(12732, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'hex'),
(12733, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'hmq1725'),
(12734, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'honeycomb'),
(12735, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'hsr'),
(12736, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'jha'),
(12737, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12738, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'keccakc'),
(12739, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lbk3'),
(12740, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lbry'),
(12741, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12742, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12743, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12744, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2v3'),
(12745, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2vc0ban'),
(12746, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2z'),
(12747, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2zz'),
(12748, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'lyra2z330'),
(12749, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12750, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12751, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12752, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12753, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'odo'),
(12754, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12755, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'phi'),
(12756, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'phi2'),
(12757, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'phi1612'),
(12758, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'polytimos'),
(12759, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12760, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12761, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'rainforest'),
(12762, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'rfv2'),
(12763, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'scrypt'),
(12764, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12765, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12766, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'sha256q'),
(12767, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'sha256t'),
(12768, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12769, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12770, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12771, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'skunk'),
(12772, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'sonoa'),
(12773, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'timetravel'),
(12774, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'tribus'),
(12775, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12776, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'veltor'),
(12777, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12778, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'vitalium'),
(12779, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12780, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12781, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x11evo'),
(12782, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x12'),
(12783, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12784, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12785, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12786, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x16r'),
(12787, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x16rv2'),
(12788, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x16rt'),
(12789, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x16s'),
(12790, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x17'),
(12791, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x18'),
(12792, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x20r'),
(12793, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x21s'),
(12794, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x22i'),
(12795, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'x25x'),
(12796, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'xevan'),
(12797, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12798, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yescryptR8'),
(12799, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yescryptR16'),
(12800, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yescryptR32'),
(12801, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yespower'),
(12802, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yespowerR8'),
(12803, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yespowerR16'),
(12804, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yespowerR24'),
(12805, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'yespowerR32'),
(12806, 1573420500, 0, NULL, 0, 0, NULL, NULL, 'zr5'),
(12807, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'a5a'),
(12808, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'aergo'),
(12809, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'allium'),
(12810, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'argon2'),
(12811, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'argon2d-crds'),
(12812, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'argon2d-dyn'),
(12813, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'argon2m'),
(12814, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'argon2d-uis'),
(12815, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'balloon'),
(12816, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'bastion'),
(12817, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'bcd'),
(12818, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'binarium-v1'),
(12819, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'bitcore'),
(12820, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'blake'),
(12821, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'blake2b'),
(12822, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'blake2s'),
(12823, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'bmw512'),
(12824, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'blakecoin'),
(12825, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'c11'),
(12826, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'decred'),
(12827, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'deep'),
(12828, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'dmd-gr'),
(12829, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'exosis'),
(12830, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'groestl'),
(12831, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'geek'),
(12832, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'hex'),
(12833, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'hmq1725'),
(12834, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'honeycomb'),
(12835, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'hsr'),
(12836, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'jha'),
(12837, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'keccak'),
(12838, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'keccakc'),
(12839, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lbk3'),
(12840, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lbry'),
(12841, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'luffa'),
(12842, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2'),
(12843, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2v2'),
(12844, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2v3'),
(12845, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2vc0ban'),
(12846, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2z'),
(12847, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2zz'),
(12848, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'lyra2z330'),
(12849, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'm7m'),
(12850, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'myr-gr'),
(12851, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'neoscrypt'),
(12852, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'nist5'),
(12853, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'odo'),
(12854, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'penta'),
(12855, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'phi'),
(12856, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'phi2'),
(12857, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'phi1612'),
(12858, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'polytimos'),
(12859, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'quark'),
(12860, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'qubit'),
(12861, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'rainforest'),
(12862, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'rfv2'),
(12863, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'scrypt'),
(12864, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'scryptn'),
(12865, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'sha256'),
(12866, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'sha256q'),
(12867, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'sha256t'),
(12868, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'sib'),
(12869, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'skein'),
(12870, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'skein2'),
(12871, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'skunk'),
(12872, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'sonoa'),
(12873, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'timetravel'),
(12874, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'tribus'),
(12875, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'vanilla'),
(12876, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'veltor'),
(12877, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'velvet'),
(12878, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'vitalium'),
(12879, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'whirlpool'),
(12880, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x11'),
(12881, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x11evo'),
(12882, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x12'),
(12883, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x13'),
(12884, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x14'),
(12885, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x15'),
(12886, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x16r'),
(12887, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x16rv2'),
(12888, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x16rt'),
(12889, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x16s'),
(12890, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x17'),
(12891, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x18'),
(12892, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x20r'),
(12893, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x21s'),
(12894, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x22i'),
(12895, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'x25x'),
(12896, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'xevan'),
(12897, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yescrypt'),
(12898, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yescryptR8'),
(12899, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yescryptR16'),
(12900, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yescryptR32'),
(12901, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yespower'),
(12902, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yespowerR8'),
(12903, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yespowerR16'),
(12904, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yespowerR24'),
(12905, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'yespowerR32'),
(12906, 1573421400, 0, NULL, 0, 0, NULL, NULL, 'zr5');

-- --------------------------------------------------------

--
-- Table structure for table `hashrenter`
--

CREATE TABLE `hashrenter` (
  `id` int(11) NOT NULL,
  `renterid` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` double DEFAULT NULL,
  `hashrate_bad` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hashstats`
--

CREATE TABLE `hashstats` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(11) DEFAULT NULL,
  `earnings` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hashuser`
--

CREATE TABLE `hashuser` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(11) DEFAULT NULL,
  `hashrate_bad` bigint(11) DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `renterid` int(11) DEFAULT NULL,
  `ready` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  `host` varchar(1024) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `percent` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobsubmits`
--

CREATE TABLE `jobsubmits` (
  `id` int(11) NOT NULL,
  `jobid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `marketid` int(11) DEFAULT NULL,
  `priority` tinyint(1) NOT NULL DEFAULT 0,
  `lastsent` int(11) DEFAULT NULL,
  `lasttraded` int(11) DEFAULT 0,
  `balancetime` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `txfee` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `ontrade` double NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `pricetime` int(11) DEFAULT NULL,
  `deposit_address` varchar(1024) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `base_coin` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_history`
--

CREATE TABLE `market_history` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `idmarket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mining`
--

CREATE TABLE `mining` (
  `id` int(11) NOT NULL,
  `usdbtc` double DEFAULT NULL,
  `last_monitor_exchange` int(11) DEFAULT NULL,
  `last_update_price` int(11) DEFAULT NULL,
  `last_payout` int(11) DEFAULT NULL,
  `stratumids` varchar(1024) DEFAULT NULL,
  `best_algo` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `mining`
--

INSERT INTO `mining` (`id`, `usdbtc`, `last_monitor_exchange`, `last_update_price`, `last_payout`, `stratumids`, `best_algo`) VALUES
(1, 9039.63, 1422830048, 1422829644, 1573420248, '', 'lyra2');

-- --------------------------------------------------------

--
-- Table structure for table `nicehash`
--

CREATE TABLE `nicehash` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `last_decrease` int(11) DEFAULT NULL,
  `algo` varchar(32) DEFAULT NULL,
  `btc` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `workers` int(11) DEFAULT NULL,
  `accepted` double DEFAULT NULL,
  `rejected` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `nicehash`
--

INSERT INTO `nicehash` (`id`, `active`, `orderid`, `last_decrease`, `algo`, `btc`, `price`, `speed`, `workers`, `accepted`, `rejected`) VALUES
(1, 0, NULL, NULL, 'x11', NULL, NULL, NULL, 0, 0, 0),
(2, 0, NULL, NULL, 'scrypt', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, NULL, NULL, 'sha256', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, NULL, NULL, 'scryptn', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, NULL, NULL, 'x13', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, NULL, NULL, 'x15', NULL, NULL, NULL, 0, 0, 0),
(7, 0, NULL, NULL, 'nist5', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, NULL, NULL, 'neoscrypt', NULL, NULL, NULL, 0, 0, 0),
(9, 0, NULL, NULL, 'lyra2', NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `idcoin` int(11) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT 0,
  `description` varchar(128) DEFAULT NULL,
  `conditiontype` varchar(32) DEFAULT NULL,
  `conditionvalue` double DEFAULT NULL,
  `notifytype` varchar(32) DEFAULT NULL,
  `notifycmd` varchar(512) DEFAULT NULL,
  `lastchecked` int(10) UNSIGNED DEFAULT NULL,
  `lasttriggered` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `coinid` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `ask` double DEFAULT NULL,
  `bid` double DEFAULT NULL,
  `market` varchar(16) DEFAULT NULL,
  `uuid` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `idcoin` int(11) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `amount` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `tx` varchar(128) DEFAULT NULL,
  `memoid` varchar(128) DEFAULT NULL,
  `errmsg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rawcoins`
--

CREATE TABLE `rawcoins` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(32) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `rawcoins`
--

INSERT INTO `rawcoins` (`id`, `name`, `symbol`, `active`) VALUES
(1, 'Bitcoin', 'BTC', 1),
(2, 'Litecoin', 'LTC', 1),
(3, 'Dogecoin', 'DOGE', 1),
(4, 'Vertcoin', 'VTC', 1),
(5, 'ReddCoin', 'RDD', 1),
(6, 'NXT', 'NXT', 1),
(7, 'DarkCoin', 'DRK', 1),
(8, 'PotCoin', 'POT', 1),
(9, 'BlackCoin', 'BC', 1),
(10, 'MyriadCoin', 'MYR', 1),
(12, 'OctoCoin', '888', 1),
(15, 'ElectronicGulden', 'EFL', 1),
(16, 'DimeCoin', 'DIME', 1),
(17, 'RotoCoin', 'RT2', 0),
(18, 'SolarCoin', 'SLR', 1),
(21, 'FlutterCoin ', 'FLT', 0),
(23, 'CryptoEscudoCoin', 'CESC', 1),
(24, 'PesetaCoin ', 'PTC', 1),
(25, 'IsraelCoin ', 'ISR', 1),
(26, 'CleanWaterCoin ', 'WATER', 1),
(29, 'GuldenCoin', 'NLG', 1),
(30, 'RubyCoin', 'RBY', 1),
(31, 'GiveCoin', 'GIVE', 1),
(32, 'WhiteCoin', 'WC', 1),
(34, 'MonaCoin', 'MONA', 1),
(36, 'NobleCoin', 'NOBL', 1),
(37, 'CinniCoin', 'CINNI', 0),
(38, 'BitStarCoin', 'BITS', 1),
(39, 'BlueCoin', 'BLU', 1),
(40, 'OrangeCoin', 'OC', 1),
(42, 'HempCoin', 'THC', 1),
(46, 'EnergyCoin', 'ENRG', 1),
(47, 'ShibeCoin', 'SHIBE', 1),
(49, 'SaffronCoin', 'SFR', 1),
(53, 'LibertyCoin', 'XLB', 0),
(55, 'NautilusCoin', 'NAUT', 1),
(56, 'VeriCoin', 'VRC', 1),
(57, 'CureCoin', 'CURE', 1),
(60, 'UroCoin', 'URO', 1),
(62, 'SyncCoin', 'SYNC', 1),
(64, 'BlakeCoin', 'BLC', 1),
(66, 'StabilitySharesXSI', 'XSI', 1),
(67, 'XCurrency', 'XC', 1),
(68, 'Dirac', 'XDQ', 1),
(71, 'GraniteCoin', 'GRN', 1),
(73, 'SuperCoin', 'SUPER', 1),
(74, 'JackpotCoin ', 'JPC', 1),
(76, 'Maieuticoin', 'MMXIV', 1),
(77, 'BoostCoin ', 'BOST', 0),
(78, 'CAIx', 'CAIX', 1),
(81, 'Boolberry', 'BBR', 1),
(83, 'Hyper', 'HYPER', 1),
(84, 'CannaCoin', 'CCN', 1),
(90, 'KryptKoin', 'KTK', 1),
(91, 'Mugatu', 'MUGA', 1),
(93, 'VootCoin', 'VOOT', 1),
(94, 'BankNote', 'BN', 1),
(95, 'Monero', 'XMR', 1),
(96, 'CloakCoin', 'CLOAK', 1),
(100, 'TalkCoin', 'TAC', 1),
(103, 'CHCCoin', 'CHCC', 1),
(107, 'GlyphCoin', 'GLYPH', 0),
(109, 'CoolCoin', 'COOL', 0),
(110, 'BurnerCoin', 'BURN', 1),
(112, 'CryptCoin', 'CRYPT', 1),
(115, 'StartCoin', 'START', 1),
(116, 'FractalCoin', 'FRAC', 0),
(119, 'KoreCoin', 'KORE', 1),
(122, 'Razor', 'RZR', 1),
(123, 'Guerillacoin', 'GUE', 0),
(124, 'DuckNote', 'XDN', 1),
(128, 'Minerals', 'MIN', 1),
(133, 'TechCoin', 'TECH', 1),
(135, 'CoffeeCoin', 'CFC2', 1),
(136, 'GameLeagueCoin', 'GML', 1),
(137, 'TruckCoin', 'TRK', 1),
(139, 'WankCoin', 'WKC', 1),
(143, 'Quatloo', 'QTL', 1),
(144, 'Saturn2Coin', 'SAT2', 0),
(145, 'XXXCoin', 'XXX', 1),
(151, 'AeroCoin', 'AERO', 1),
(156, 'TrustPlus', 'TRUST', 1),
(157, 'BritCoin', 'BRIT', 1),
(158, 'JudgeCoin', 'JUDGE', 1),
(159, 'NavajoCoin', 'NAV', 1),
(160, 'IcebergCoin', 'ICB', 0),
(161, 'FreshCoin', 'FRSH', 1),
(162, 'ShieldCoin', 'SHLD', 0),
(163, 'StealthCoin', 'XST', 1),
(164, 'AegisCoin', 'AGS', 0),
(168, 'ApexCoin', 'APEX', 1),
(171, 'ZetaCoin', 'ZET', 1),
(172, 'BitcoinDark', 'BTCD', 1),
(173, 'PseudoCash', 'PSEUD', 0),
(176, 'KeyCoin', 'KEY', 1),
(178, 'NewUniversalDollar', 'NUD', 1),
(180, 'ViaCoin', 'VIA', 1),
(181, 'Triangles', 'TRI', 1),
(182, 'PlanktonCoin', 'FOOD', 0),
(183, 'ConcealCoin', 'CNL', 0),
(186, 'Pesa', 'PES', 1),
(187, 'IncognitoCoin', 'ICG', 1),
(189, 'Unobtanium', 'UNO', 1),
(192, 'EsportsCoin', 'ESC', 1),
(193, 'DarkCash', 'DRKC', 0),
(198, 'PinkCoin', 'PINK', 1),
(199, 'IOCoin', 'IOC', 1),
(202, 'ShadowCash', 'SDC', 1),
(204, 'RawCoin', 'RAW', 1),
(207, 'MaxCoin', 'MAX', 1),
(208, 'LibrexCoin', 'LXC', 1),
(209, 'BoomCoin', 'BOOM', 1),
(210, 'DobbsCoin', 'BOB', 1),
(215, 'Unattainium', 'UNAT', 1),
(216, 'MultiWalletCoin', 'MWC', 1),
(217, 'CannabisCoin', 'CANN', 1),
(220, 'VaultCoin', 'VAULT', 1),
(224, 'Fuel2Coin', 'FC2', 1),
(225, 'SonicScrewDriver', 'SSD', 1),
(229, 'JoinCoin', 'J', 1),
(230, 'SoleCoin', 'SOLE', 0),
(231, 'UmbrellaLTC', 'ULTC', 1),
(233, 'SysCoin', 'SYS', 1),
(235, 'Halcyon', 'HAL', 1),
(237, 'BigBullion', 'BIG', 1),
(239, 'NeosCoin', 'NEOS', 1),
(240, 'Digibyte', 'DGB', 1),
(242, 'GreenBacks', 'GB', 1),
(243, 'RootCoin', 'ROOT', 1),
(245, 'Axron', 'AXR', 1),
(246, 'RipoffCoin', 'RIPO', 1),
(249, 'Fibre', 'FIBRE', 1),
(252, 'Nimbus', 'NMB', 1),
(253, 'ACoin', 'ACOIN', 0),
(254, 'ShadeCoin', 'SHADE', 1),
(255, 'FlexibleCoin', 'FLEX', 1),
(256, 'CoinMarketsCoin', 'JBS', 1),
(257, 'SSVCoin', 'SSV', 0),
(258, 'SocialXBot', 'XBOT', 1),
(259, 'XCash', 'XCASH', 1),
(260, 'BURST', 'BURST', 1),
(262, 'LitecoinDark', 'LTCD', 1),
(263, 'LightSpeed', 'LSD', 0),
(264, 'BancorCoin', 'BNCR', 0),
(265, 'CraigsCoin', 'CRAIG', 1),
(266, 'TitCoin', 'TIT', 1),
(267, 'GlobalBoost-Y', 'BSTY', 1),
(268, 'Gnosis', 'GNS', 1),
(269, 'VolatilityCoin', 'VLTY', 1),
(270, 'DeepCoin', 'DCN', 1),
(271, 'Prime-XI', 'PXI', 1),
(272, 'MozzShare', 'MLS', 1),
(273, 'CrackCoin', 'CRACK', 0),
(274, 'DigitalCoin', 'DGC', 1),
(275, 'Bitmark', 'BTM', 1),
(278, 'CoinWorksCoin', 'LAB', 0),
(279, 'SterlingCoin', 'SLG', 1),
(280, 'DarkToken', 'DT', 0),
(281, 'RosCoin', 'ROS', 1),
(282, '42Coin', '42', 0),
(283, 'AsiaCoin', 'AC', 0),
(284, 'AlphaCoin', 'ALF', 0),
(285, 'AlienCoin', 'ALN', 0),
(286, 'AmericanCoin', 'AMC', 0),
(287, 'AnonCoin', 'ANC', 1),
(288, 'Argentum', 'ARG', 0),
(289, 'AuroraCoin', 'AUR', 0),
(290, 'BattleCoin', 'BCX', 0),
(291, 'Benjamins', 'BEN', 0),
(292, 'Betacoin', 'BET', 0),
(293, 'BBQCoin', 'BQC', 0),
(294, 'BitBar', 'BTB', 0),
(295, 'ByteCoin', 'BTE', 0),
(296, 'BitGem', 'BTG', 0),
(297, 'CryptoBuck', 'BUK', 0),
(298, 'CACHeCoin', 'CACH', 0),
(299, 'BottleCaps', 'CAP', 0),
(300, 'CashCoin', 'CASH', 0),
(301, 'CatCoin', 'CAT', 0),
(302, 'CryptogenicBullion', 'CGB', 0),
(303, 'CopperLark', 'CLR', 1),
(304, 'Cosmoscoin', 'CMC', 0),
(305, 'CHNCoin', 'CNC', 0),
(306, 'CommunityCoin', 'COMM', 0),
(307, 'CraftCoin', 'CRC', 0),
(308, 'CasinoCoin', 'CSC', 0),
(309, 'eMark', 'DEM', 0),
(310, 'Diamond', 'DMD', 0),
(311, 'DevCoin', 'DVC', 0),
(312, 'EarthCoin', 'EAC', 0),
(313, 'ElaCoin', 'ELC', 0),
(314, 'Einsteinium', 'EMC2', 0),
(315, 'Emerald', 'EMD', 0),
(316, 'ExeCoin', 'EXE', 0),
(317, 'EZCoin', 'EZC', 0),
(318, 'FireflyCoin', 'FFC', 0),
(319, 'FreiCoin', 'FRC', 1),
(320, 'Franko', 'FRK', 0),
(321, 'FastCoin', 'FST', 0),
(322, 'FeatherCoin', 'FTC', 1),
(323, 'GrandCoin', 'GDC', 0),
(324, 'Globalcoin', 'GLC', 0),
(325, 'GoldCoin', 'GLD', 0),
(326, 'Galaxycoin', 'GLX', 0),
(327, 'HoboNickels', 'HBN', 0),
(328, 'HunterCoin', 'HUC', 0),
(329, 'HeavyCoin', 'HVC', 0),
(330, 'InfiniteCoin', 'IFC', 1),
(331, 'IXCoin', 'IXC', 0),
(332, 'JunkCoin', 'JKC', 0),
(333, 'KlondikeCoin', 'KDC', 0),
(334, 'KrugerCoin', 'KGC', 0),
(335, 'LegendaryCoin', 'LGD', 0),
(336, 'Lucky7Coin', 'LK7', 0),
(337, 'LuckyCoin', 'LKY', 0),
(338, 'LiteBar', 'LTB', 0),
(339, 'LiteCoinX', 'LTCX', 0),
(340, 'LycanCoin', 'LYC', 0),
(341, 'MegaCoin', 'MEC', 1),
(342, 'Mediterraneancoin', 'MED', 0),
(343, 'MintCoin', 'MINT', 1),
(346, 'MinCoin', 'MNC', 0),
(347, 'MurrayCoin', 'MRY', 0),
(348, 'MazaCoin', 'MZC', 0),
(349, 'NanoToken', 'NAN', 0),
(350, 'Nibble', 'NBL', 0),
(351, 'NeoCoin', 'NEC', 0),
(352, 'Netcoin', 'NET', 1),
(353, 'NameCoin', 'NMC', 1),
(354, 'NoirBits', 'NRB', 0),
(355, 'NoirShares', 'NRS', 0),
(356, 'NovaCoin', 'NVC', 0),
(357, 'NyanCoin', 'NYAN', 0),
(358, 'Orbitcoin', 'ORB', 1),
(359, 'OpenSourceCoin', 'OSC', 0),
(360, 'PhilosopherStone', 'PHS', 0),
(361, 'CryptsyPoints', 'Points', 0),
(362, 'Peercoin', 'PPC', 1),
(363, 'Bitshares PTS', 'PTS', 0),
(364, 'PhoenixCoin', 'PXC', 0),
(365, 'PayCoin', 'PYC', 0),
(366, 'Quark', 'QRK', 1),
(367, 'RonPaulCoin', 'RPC', 0),
(368, 'RoyalCoin', 'RYC', 0),
(369, 'StableCoin', 'SBC', 0),
(370, 'SilkCoin', 'SILK', 0),
(371, 'SmartCoin', 'SMC', 0),
(372, 'SpainCoin', 'SPA', 0),
(373, 'Spots', 'SPT', 0),
(374, 'SecureCoin', 'SRC', 0),
(375, 'StarCoin', 'STR', 0),
(376, 'SexCoin', 'SXC', 1),
(377, 'TagCoin', 'TAG', 0),
(378, 'TakCoin', 'TAK', 0),
(379, 'TekCoin', 'TEK', 0),
(380, 'TeslaCoin', 'TES', 0),
(381, 'TigerCoin', 'TGC', 0),
(382, 'TorCoin', 'TOR', 0),
(383, 'TerraCoin', 'TRC', 0),
(384, 'UnbreakableCoin', 'UNB', 0),
(385, 'USDe', 'USDe', 0),
(386, 'UltraCoin', 'UTC', 1),
(387, 'WorldCoin', 'WDC', 1),
(388, 'Crypti', 'XCR', 0),
(389, 'JouleCoin', 'XJO', 0),
(390, 'PrimeCoin', 'XPM', 1),
(391, 'YaCoin', 'YAC', 0),
(392, 'YBCoin', 'YBC', 0),
(393, 'ZcCoin', 'ZCC', 0),
(394, 'ZedCoin', 'ZED', 0),
(395, 'AndroidsTokensV2', 'ADT', 0),
(396, 'AsicCoin', 'ASC', 0),
(397, 'BatCoin', 'BAT', 0),
(398, 'ColossusCoin', 'COL', 0),
(399, 'CopperBars', 'CPR', 0),
(400, 'Continuumcoin', 'CTM', 0),
(401, 'Doubloons', 'DBL', 0),
(402, 'DamaCoin', 'DMC', 0),
(403, 'ElephantCoin', 'ELP', 0),
(404, 'FlappyCoin', 'FLAP', 0),
(405, 'FlorinCoin', 'FLO', 0),
(406, 'GameCoin', 'GME', 0),
(407, 'KarmaCoin', 'KARM', 1),
(408, 'LeafCoin', 'LEAF', 0),
(409, 'LottoCoin', 'LOT', 0),
(410, 'MemeCoin', 'MEM', 0),
(411, 'KittehCoin', 'MEOW', 0),
(412, 'MoonCoin', 'MOON', 1),
(413, 'MasterCoin (Hydro)', 'MST', 0),
(414, 'RabbitCoin', 'RBBT', 0),
(415, 'RedCoin', 'RED', 0),
(416, 'FedoraCoin', 'TIPS', 0),
(417, 'Tickets', 'TIX', 0),
(418, 'XenCoin', 'XNC', 0),
(419, 'ZeitCoin', 'ZEIT', 0),
(420, '', 'ABC2', 0),
(421, '', 'AID', 0),
(424, '', 'BTQ', 0),
(426, '', 'CHILD', 1),
(428, 'Checkcoin', 'CKC', 1),
(437, '', 'GRC', 0),
(438, '', 'IMAC', 0),
(440, 'Lemurcoin', 'LMR', 1),
(441, '', 'MOTO', 0),
(442, '', 'MSC', 0),
(444, '', 'NIC', 0),
(445, '', 'NOTE', 0),
(446, '', 'NWO', 0),
(447, '', 'ONE', 1),
(448, 'OpalCoin', 'OPAL', 1),
(450, '', 'PLCN', 0),
(452, '', 'PROZ', 0),
(453, 'PyramidsCoin', 'PYRA', 1),
(460, 'SativaCoin', 'STV', 1),
(467, '', 'XRC', 0),
(468, '', 'XSX', 0),
(469, '', 'CCI', 0),
(470, '', 'GHC', 1),
(471, 'Bleutrade Share', 'BLEU', 1),
(473, 'BeaverCoin', 'BVC', 1),
(474, 'Canada eCoin', 'CDN', 1),
(475, 'CzechCrownCoin', 'CZC', 1),
(476, 'Donationcoin', 'DON', 1),
(477, 'FujiCoin', 'FJC', 1),
(478, 'GCoin', 'GCN', 1),
(479, 'Guncoin', 'GUN', 1),
(480, 'HamRadioCoin', 'HAM', 1),
(481, 'HeisenbergHex', 'HEX', 1),
(482, 'HTML5', 'HTML5', 1),
(483, 'IrishCoin', 'IRL', 1),
(484, 'NewYorkCoin', 'NYC', 1),
(485, 'Paccoin', 'PAC', 1),
(486, 'PolishCoin', 'PCC', 1),
(487, 'PHCoin', 'PHC', 1),
(488, 'Pandacoin', 'PND', 1),
(489, 'POWcoin', 'POW', 1),
(490, 'RussiaCoin', 'RC', 1),
(494, 'TrollCoin', 'TRL', 1),
(495, 'US Dollar', 'USD', 1),
(497, 'VirtaCoin', 'VTA', 1),
(498, 'InkwayCoin', 'LKNX', 1),
(503, 'ExclusiveCoin', 'EXCL', 1),
(505, 'EtherCoin', 'ETC', 1),
(506, 'VikingCoin', 'VIK', 1),
(507, 'XG', 'XG', 1),
(513, 'MaryJaneCoin', 'MARYJ', 1),
(516, 'unknown', 'SONG', 0),
(517, 'Magi', 'XMG', 1),
(518, 'UtilityCoin', 'UTIL', 1),
(519, 'Ruble', 'RUBLE', 1),
(520, 'Wolfcoin', 'WLF', 1),
(521, 'XCloudCoin', 'XCLD', 1),
(522, 'BitSwift', 'SWIFT', 1),
(525, 'ArchCoin', 'ARCH', 1),
(526, 'GhostCoin', 'GHOST', 1),
(527, 'SeedCoin', 'SEED', 1),
(530, 'GAIACoin', 'GAIA', 1),
(531, 'WorldWideCoin', 'WWC', 1),
(532, 'Cagecoin', 'CAGE', 1),
(533, 'Ripple', 'XRP', 0),
(534, 'WhistleCoin', 'WSTL', 1),
(537, 'Munne', 'MNE', 1),
(538, 'unknown', 'CRW', 0),
(539, 'unknown', 'SQC', 0),
(541, 'unknown', 'VOXP', 0),
(542, 'EquinoxCoin ', 'EQX', 1),
(544, 'GlowCoin', 'GLOW', 1),
(545, 'unknown', 'KRYP', 0),
(547, 'unknown', 'PLCS', 0),
(548, 'unknown', 'VTX', 0),
(549, 'MiracleCoin', 'MCL', 1),
(550, 'DopeCoin', 'DOPE', 1),
(552, 'unknown', 'DOGEB', 0),
(553, 'unknown', 'SPUDS', 0),
(554, 'VidioShare', 'VDO', 1),
(555, 'CamorraCoin', 'CAM', 1),
(556, 'NopeCoin', 'NOPE', 1),
(557, 'SparkCoin', 'SPARK', 1),
(558, 'unknown', 'UP', 0),
(560, 'CannabisDarkcoin', 'CND', 1),
(561, 'DogeCoinDark', 'DOGED', 1),
(562, 'MetalMusicCoin', 'MTLMC', 1),
(563, 'MonetaryUnit', 'MUE', 1),
(564, 'GanjaCoin', 'GANJA', 1),
(565, 'DayTraderCoin', 'DTC', 1),
(567, 'ScatterCoin', 'XSTC', 1),
(568, 'Sembro Token', 'SMBR', 1),
(569, 'CleverHash', 'CHASH', 1),
(570, 'DarkShibe', 'DSB', 1),
(571, 'HyperStake', 'HYP', 0),
(572, 'unknown', 'LOG', 0),
(573, 'unknown', 'QBK', 0),
(574, 'DigitalPrice', 'DP', 1),
(575, 'Bladecoin', 'BLA', 1),
(576, 'DarkKush', 'DANK', 1),
(578, 'Pennies', 'CENT', 0),
(579, 'BlockNet', 'BLOCK', 1),
(580, 'unknown', 'CATC', 0),
(581, 'unknown', 'VOCAL', 0),
(582, 'SecuritySysCoin', 'SCSY', 1),
(583, 'AppleBytes', 'ABY', 1),
(584, 'unknown', 'MIC', 0),
(585, 'Snowballs', 'BALLS', 1),
(586, 'RektCoin', 'REKT', 1),
(587, 'Quicksilver', 'QSLV', 1),
(588, 'unknown', 'ICNX', 0),
(590, 'unknown', 'U', 0),
(592, 'ByteCent', 'BYC', 1),
(593, 'BunnyCoin', 'BUN', 1),
(594, 'UroDark', 'UROD', 1),
(595, 'UFOCoin', 'UFO', 1),
(596, 'unknown', 'ZER', 0),
(597, 'EthereumDark', 'ETD', 1),
(598, 'Nanite', 'XNAN', 1),
(600, 'OcupyCoin', 'OCUPY', 1),
(601, 'unknown', 'ZNY', 0),
(602, 'unknown', 'FICE', 0),
(603, 'unknown', 'HLC', 0),
(604, 'Guarany', 'GUA', 1),
(605, 'unknown', 'ACHK', 0),
(606, 'unknown', 'GIMP', 0),
(607, 'unknown', 'BOARD', 0),
(608, 'GlowShares', 'GSX', 1),
(609, 'unknown', 'PFC', 0),
(610, 'Quotient', 'XQN', 1),
(611, 'OptimumCoin', 'OPTI', 1),
(612, 'Consolidated Mining', 'MN', 0),
(613, 'GreenCoin', 'GRE', 1),
(614, 'VPNCoin', 'VPN', 1),
(615, 'Bollywoodcoin', 'BDC', 1),
(616, 'ViorCoin', 'VIOR', 1),
(617, 'BitBay', 'BAY', 1),
(618, 'HawaiiCoin', 'HIC', 1),
(619, 'MalibuCoin', 'MAL', 1),
(620, 'ImperiumCoin', 'IMPC', 1),
(621, 'Diode', 'DIO', 1),
(622, 'DeafDollars', 'DEAF', 1),
(623, 'unknown', 'ALI', 0),
(624, 'BitSharesX', 'BTS', 1),
(625, 'unknown', 'EUPH', 0),
(626, 'WorldTradeFunds', 'XWT', 1),
(627, 'MobCoin', 'MOB', 1),
(628, 'PimpCash', 'PIMP', 1),
(629, 'unknown', 'ERM', 0),
(630, 'MewnCoin', 'MEWN', 1),
(631, 'unknown', 'FUD', 0),
(632, 'unknown', 'KING', 0),
(633, 'AeroME', 'AM', 1),
(634, 'unknown', 'FIND', 0),
(635, 'unknown', 'CBR', 0),
(636, 'SpreadCoin', 'SPR', 1),
(637, 'MetalCoin', 'METAL', 1),
(638, 'CheckOutCoin', 'CXC', 1),
(639, 'BitcoinFast', 'BCF', 1),
(640, 'unknown', 'STB', 0),
(641, 'unknown', 'RMS', 0),
(642, 'EventCoint', 'EVENT', 1),
(644, 'FairCoin', 'FAIR', 1),
(645, 'DarkSwift', 'DS', 1),
(646, 'unknown', 'BCENT', 0),
(647, 'unknown', 'SMLY', 0),
(648, 'PayCoin', 'XPY', 1),
(649, 'NooCoin', 'NOO', 1),
(650, 'vTorrent', 'VTR', 1),
(651, 'Clams', 'CLAM', 0),
(652, 'TittieCoin', 'TTC', 0),
(653, 'Sapience', 'XAI', 1),
(654, 'NakomotoDark', 'NKT', 1),
(655, 'Ideacoin', 'IDC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `renters`
--

CREATE TABLE `renters` (
  `id` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `apikey` varbinary(1024) DEFAULT NULL,
  `received` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `unconfirmed` double DEFAULT NULL,
  `spent` double DEFAULT NULL,
  `custom_start` double DEFAULT NULL,
  `custom_balance` double DEFAULT NULL,
  `custom_accept` double DEFAULT NULL,
  `custom_reject` double DEFAULT NULL,
  `custom_address` varchar(1024) DEFAULT NULL,
  `custom_server` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rentertxs`
--

CREATE TABLE `rentertxs` (
  `id` int(11) NOT NULL,
  `renterid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `tx` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `maxcoins` int(11) DEFAULT NULL,
  `uptime` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `algo` varchar(64) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` bigint(20) DEFAULT NULL,
  `custom_balance` double DEFAULT NULL,
  `custom_accept` double DEFAULT NULL,
  `custom_reject` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `algo`, `price`, `speed`, `custom_balance`, `custom_accept`, `custom_reject`) VALUES
(1, 'Nicehash', 'scrypt', 0.0003646, 20628000000, 0, 0, 0),
(2, 'Nicehash', 'x11', 0.0004524, 15616000000, 0, 0, 0),
(3, 'Nicehash', 'x13', 0.0003273, 185100000, 0, 0, 0),
(4, 'Nicehash', 'x15', 0.0004079, 7200000, 0, 0, 0),
(5, 'Nicehash', 'nist5', 0.001, 21900000, 0, 0, 0),
(6, 'Nicehash', 'sha256', 0.0000098, 2310347791200000, 0, 0, 0),
(7, 'Nicehash', 'scryptn', 0.0005521, 1200000, 0, 0, 0),
(8, 'Nicehash', 'neoscrypt', 0.0073366, 13600000, 0, 0, 0),
(9, 'Nicehash', 'lyra2', 0.0006123, 181400000, 0, 0, 0),
(16, 'Nicehash', 'qubit', 0.0001968, 72200000, 0, 0, 0),
(17, 'Nicehash', 'quark', 0.0004536, 65978400000, 0, 0, 0),
(18, 'Nicehash', 'zr5', 0.0001, 61865000000, 0, 0, 0),
(19, 'Nicehash', 'c11', 0.0003403, 11823800000, 0, 0, 0),
(20, 'Nicehash', 'keccak', 0.0000027, 153200000, 0, 0, 0),
(21, 'Nicehash', 'whirlx', 0.0000091, 1100700000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `param` varchar(128) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`param`, `value`, `type`) VALUES
('alcurex-disabled', '1', 'bool'),
('binance-disabled', '1', 'bool'),
('bittrex-withdraw_fee_btc', '0.0005', 'price'),
('bleutrade-withdraw_fee_btc', '0.001', 'price'),
('c-cex-DCR-BTC-disabled', '1', 'bool'),
('coinbene-disabled', '1', 'bool'),
('coinexchange-disabled', '1', 'bool'),
('coinsmarkets-disabled', '1', 'bool'),
('empoex-disabled', '1', 'bool'),
('escodex-disabled', '1', 'bool'),
('gateio-disabled', '1', 'bool'),
('jubi-disabled', '1', 'bool'),
('nova-disabled', '1', 'bool'),
('stocksexchange-disabled', '1', 'bool'),
('tradesatoshi-disabled', '1', 'bool'),
('yobit-DCR-BTC-disabled', '1', 'bool');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint(30) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `workerid` int(11) DEFAULT NULL,
  `coinid` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `error` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extranonce1` tinyint(1) DEFAULT NULL,
  `difficulty` double NOT NULL DEFAULT 0,
  `share_diff` double NOT NULL DEFAULT 0,
  `algo` varchar(16) DEFAULT 'x11'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `wallet` double DEFAULT NULL,
  `wallets` double DEFAULT NULL,
  `immature` double DEFAULT NULL,
  `margin` double DEFAULT NULL,
  `waiting` double DEFAULT NULL,
  `balances` double DEFAULT NULL,
  `onsell` double DEFAULT NULL,
  `renters` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `time`, `profit`, `wallet`, `wallets`, `immature`, `margin`, `waiting`, `balances`, `onsell`, `renters`) VALUES
(382, 1459692900, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL),
(383, 1573419600, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL),
(384, 1573420500, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL),
(385, 1573421400, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stratums`
--

CREATE TABLE `stratums` (
  `pid` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `started` int(11) UNSIGNED DEFAULT NULL,
  `algo` varchar(64) DEFAULT NULL,
  `workers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `port` int(6) UNSIGNED DEFAULT NULL,
  `symbol` varchar(16) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `fds` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `dark` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `enabled`, `active`, `dark`) VALUES
(1, 'black-tie', 1, 0, 1),
(2, 'blitzer', 1, 0, 0),
(3, 'cupertino', 1, 0, 0),
(4, 'dark-hive', 1, 0, 1),
(5, 'dot-luv', 1, 0, 1),
(6, 'eggplant', 1, 0, 1),
(7, 'excite-bike', 1, 0, 0),
(8, 'flick', 1, 0, 0),
(9, 'hot-sneaks', 1, 0, 0),
(10, 'humanity', 1, 0, 0),
(11, 'le-frog', 1, 0, 0),
(12, 'mint-choc', 1, 0, 1),
(13, 'overcast', 1, 0, 0),
(14, 'pepper-grinder', 1, 0, 0),
(15, 'redmond', 1, 1, 0),
(16, 'smoothness', 1, 0, 0),
(17, 'south-street', 1, 0, 0),
(18, 'start', 1, 0, 0),
(19, 'sunny', 1, 0, 0),
(20, 'swanky-purse', 1, 0, 1),
(21, 'trontastic', 1, 0, 1),
(22, 'ui-darkness', 1, 0, 0),
(23, 'ui-lightness', 1, 0, 1),
(24, 'vader', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `market` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `uuid` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `subscribe` tinyint(1) DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `dns` varchar(1024) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nonce1` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `worker` varchar(64) DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `coin` (`coinid`),
  ADD KEY `balance` (`balance`),
  ADD KEY `earning` (`last_earning`);

--
-- Indexes for table `algos`
--
ALTER TABLE `algos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `balanceuser`
--
ALTER TABLE `balanceuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `benchmarks`
--
ALTER TABLE `benchmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bench_userid` (`userid`),
  ADD KEY `ndx_type` (`type`),
  ADD KEY `ndx_algo` (`algo`),
  ADD KEY `ndx_time` (`time`),
  ADD KEY `ndx_chip` (`idchip`);

--
-- Indexes for table `bench_chips`
--
ALTER TABLE `bench_chips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ndx_chip_type` (`devicetype`),
  ADD KEY `ndx_chip_name` (`chip`);

--
-- Indexes for table `bench_suffixes`
--
ALTER TABLE `bench_suffixes`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `coin` (`coin_id`),
  ADD KEY `category` (`category`),
  ADD KEY `user1` (`userid`),
  ADD KEY `height1` (`height`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_coin` (`idcoin`);

--
-- Indexes for table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_ready` (`auto_ready`),
  ADD KEY `enable` (`enable`),
  ADD KEY `algo` (`algo`),
  ADD KEY `symbol` (`symbol`),
  ADD KEY `index_avg` (`index_avg`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_user_block` (`userid`,`blockid`),
  ADD KEY `user` (`userid`),
  ADD KEY `coin` (`coinid`),
  ADD KEY `block` (`blockid`),
  ADD KEY `create1` (`create_time`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `exchange`
--
ALTER TABLE `exchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coinid` (`coinid`),
  ADD KEY `status` (`status`),
  ADD KEY `market` (`market`),
  ADD KEY `send_time` (`send_time`);

--
-- Indexes for table `hashrate`
--
ALTER TABLE `hashrate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t1` (`time`),
  ADD KEY `a1` (`algo`);

--
-- Indexes for table `hashrenter`
--
ALTER TABLE `hashrenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hashstats`
--
ALTER TABLE `hashstats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `time1` (`time`);

--
-- Indexes for table `hashuser`
--
ALTER TABLE `hashuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u1` (`userid`),
  ADD KEY `t1` (`time`),
  ADD KEY `a1` (`algo`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `renterid` (`renterid`),
  ADD KEY `ready` (`ready`),
  ADD KEY `active` (`active`),
  ADD KEY `algo` (`algo`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `jobsubmits`
--
ALTER TABLE `jobsubmits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coinid` (`coinid`),
  ADD KEY `name` (`name`),
  ADD KEY `lastsent` (`lastsent`),
  ADD KEY `lasttraded` (`lasttraded`);

--
-- Indexes for table `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcoin` (`idcoin`),
  ADD KEY `idmarket` (`idmarket`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `mining`
--
ALTER TABLE `mining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nicehash`
--
ALTER TABLE `nicehash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notif_coin` (`idcoin`),
  ADD KEY `notif_checked` (`lastchecked`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coinid` (`coinid`),
  ADD KEY `created` (`created`),
  ADD KEY `market` (`market`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`,`completed`),
  ADD KEY `payouts_coin` (`idcoin`);

--
-- Indexes for table `rawcoins`
--
ALTER TABLE `rawcoins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renters`
--
ALTER TABLE `renters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentertxs`
--
ALTER TABLE `rentertxs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `renterid` (`renterid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name1` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`param`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `valid1` (`valid`),
  ADD KEY `user1` (`userid`),
  ADD KEY `worker1` (`workerid`),
  ADD KEY `coin1` (`coinid`),
  ADD KEY `jobid` (`jobid`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `stratums`
--
ALTER TABLE `stratums`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `algo1` (`algo`),
  ADD KEY `name1` (`name`),
  ADD KEY `userid` (`userid`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `algos`
--
ALTER TABLE `algos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `balanceuser`
--
ALTER TABLE `balanceuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `benchmarks`
--
ALTER TABLE `benchmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bench_chips`
--
ALTER TABLE `bench_chips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1425;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange`
--
ALTER TABLE `exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashrate`
--
ALTER TABLE `hashrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12907;

--
-- AUTO_INCREMENT for table `hashrenter`
--
ALTER TABLE `hashrenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashstats`
--
ALTER TABLE `hashstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashuser`
--
ALTER TABLE `hashuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobsubmits`
--
ALTER TABLE `jobsubmits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2590;

--
-- AUTO_INCREMENT for table `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mining`
--
ALTER TABLE `mining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nicehash`
--
ALTER TABLE `nicehash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rawcoins`
--
ALTER TABLE `rawcoins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT for table `renters`
--
ALTER TABLE `renters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rentertxs`
--
ALTER TABLE `rentertxs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `benchmarks`
--
ALTER TABLE `benchmarks`
  ADD CONSTRAINT `fk_bench_chip` FOREIGN KEY (`idchip`) REFERENCES `bench_chips` (`id`);

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `fk_bookmarks_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `fk_mh_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mh_market` FOREIGN KEY (`idmarket`) REFERENCES `markets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notif_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `fk_payouts_account` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_payouts_coin` FOREIGN KEY (`idcoin`) REFERENCES `coins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
