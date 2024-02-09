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

ALTER TABLE `themes` ADD PRIMARY KEY (`id`);
ALTER TABLE `themes` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
