CREATE TABLE IF NOT EXISTS `cellphone` (
  `pid` varchar(64) NOT NULL,
  `playerName` varchar(32) NOT NULL,
  `messages` text NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;