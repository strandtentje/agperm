
--
-- Table structure for table `GroupGrant`
--

DROP TABLE IF EXISTS `GroupGrant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupGrant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) DEFAULT NULL,
  `resource` varchar(45) DEFAULT NULL,
  `subresource` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resix` (`resource`),
  KEY `subresix` (`subresource`),
  KEY `actionix` (`action`),
  KEY `gnix` (`groupname`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usernameix` (`username`),
  KEY `nameix` (`groupname`)
);