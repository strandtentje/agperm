DROP TABLE IF EXISTS `Grant`;
DROP TABLE IF EXISTS `Group`;

CREATE TABLE `Group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usernameix` (`username`),
  KEY `nameix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


CREATE TABLE `Grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` int(11) DEFAULT NULL,
  `resource` varchar(45) DEFAULT NULL,
  `subresource` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resix` (`resource`),
  KEY `subresix` (`subresource`),
  KEY `actionix` (`action`),
  KEY `groupgrant_idx` (`group`),
  CONSTRAINT `groupgrant` FOREIGN KEY (`group`) REFERENCES `Group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


