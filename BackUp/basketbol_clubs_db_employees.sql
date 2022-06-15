CREATE DATABASE  IF NOT EXISTS `basketbol_clubs_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `basketbol_clubs_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: basketbol_clubs_db
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id_human` int NOT NULL,
  `position` char(90) NOT NULL,
  PRIMARY KEY (`id_human`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`id_human`) REFERENCES `humans` (`id_human`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (3,'Coach'),(4,'GM'),(5,'Scout'),(6,'Trener'),(8,'Trener'),(11,'Environmental Specialist'),(12,'Accounting Assistant IV'),(13,'Engineer III'),(14,'VP Quality Control'),(15,'Research Nurse'),(16,'Biostatistician II'),(17,'Data Coordiator'),(18,'Operator'),(19,'GIS Technical Architect'),(20,'Accountant I'),(21,'Statistician II'),(22,'General Manager'),(23,'Sales Associate'),(24,'Senior Editor'),(25,'Paralegal'),(26,'Product Engineer'),(27,'VP Sales'),(28,'Data Coordiator'),(29,'Community Outreach Specialist'),(30,'Biostatistician IV'),(31,'Nurse'),(32,'Librarian'),(33,'Dental Hygienist'),(34,'Marketing Manager'),(35,'Programmer Analyst II'),(36,'Graphic Designer'),(37,'Staff Scientist'),(38,'Senior Financial Analyst'),(39,'Research Assistant II'),(40,'Geologist IV'),(41,'Environmental Specialist'),(42,'Human Resources Manager'),(43,'Software Test Engineer II'),(44,'Engineer I'),(45,'Analog Circuit Design manager'),(46,'Web Developer II'),(47,'Marketing Manager'),(48,'Pharmacist'),(49,'Software Engineer IV'),(50,'Programmer IV'),(51,'Senior Cost Accountant'),(52,'Sales Representative'),(53,'Administrative Assistant IV'),(54,'Account Executive'),(55,'Sales Representative'),(56,'Environmental Specialist'),(57,'Associate Professor'),(58,'Structural Analysis Engineer'),(59,'Database Administrator II'),(60,'Analog Circuit Design manager'),(61,'Data Coordiator'),(62,'Payment Adjustment Coordinator'),(63,'Mechanical Systems Engineer'),(64,'Human Resources Manager'),(65,'Information Systems Manager'),(66,'Senior Financial Analyst'),(67,'Actuary'),(68,'Assistant Professor'),(69,'Staff Scientist'),(70,'Administrative Officer'),(71,'Environmental Tech'),(72,'VP Product Management'),(73,'Financial Analyst'),(74,'Analyst Programmer'),(75,'Sales Associate'),(76,'Recruiting Manager'),(77,'Recruiting Manager'),(78,'Research Associate'),(79,'Analyst Programmer'),(80,'Registered Nurse'),(81,'Dental Hygienist'),(82,'Web Developer II'),(83,'VP Sales'),(84,'Marketing Assistant'),(85,'GIS Technical Architect'),(86,'Human Resources Manager'),(87,'Automation Specialist II'),(88,'VP Accounting'),(89,'Recruiter'),(90,'Administrative Officer'),(91,'Assistant Manager'),(92,'Database Administrator IV'),(93,'Geologist II'),(94,'Help Desk Technician'),(95,'Compensation Analyst'),(96,'Pharmacist'),(97,'Dental Hygienist'),(98,'Data Coordiator'),(99,'Software Consultant'),(100,'Engineer II'),(101,'Accounting Assistant III'),(102,'Senior Sales Associate'),(103,'Marketing Manager'),(104,'Executive Secretary'),(105,'Assistant Manager'),(106,'Environmental Tech'),(107,'Health Coach III'),(108,'Nurse'),(109,'Senior Quality Engineer'),(110,'Desktop Support Technician'),(111,'Structural Engineer'),(112,'Clinical Specialist'),(113,'Structural Analysis Engineer'),(114,'Health Coach III'),(115,'Media Manager I'),(116,'Help Desk Technician'),(117,'Analog Circuit Design manager'),(118,'Quality Control Specialist'),(119,'Research Associate'),(120,'Web Developer IV'),(121,'Desktop Support Technician'),(122,'Database Administrator I'),(123,'Clinical Specialist'),(124,'Senior Cost Accountant'),(125,'Operator'),(126,'Financial Advisor'),(127,'Product Engineer'),(128,'Health Coach I'),(129,'Clinical Specialist'),(130,'Budget/Accounting Analyst IV'),(131,'VP Accounting'),(132,'Human Resources Assistant I'),(133,'Staff Scientist'),(134,'Tax Accountant'),(135,'Tax Accountant'),(136,'Senior Cost Accountant'),(137,'Chemical Engineer'),(138,'Administrative Assistant II'),(139,'Paralegal'),(140,'Actuary'),(141,'Human Resources Manager'),(142,'Administrative Assistant II'),(143,'VP Accounting'),(144,'Information Systems Manager'),(145,'Actuary'),(146,'Geological Engineer'),(147,'Quality Control Specialist'),(148,'VP Quality Control'),(149,'Statistician II'),(150,'Senior Quality Engineer'),(151,'Developer IV'),(152,'Payment Adjustment Coordinator'),(153,'Pharmacist'),(154,'Paralegal'),(155,'Mechanical Systems Engineer'),(156,'Structural Analysis Engineer'),(157,'Human Resources Manager'),(158,'Account Representative I'),(159,'Systems Administrator I'),(160,'Senior Quality Engineer'),(161,'Account Representative III'),(162,'Senior Financial Analyst'),(163,'Chemical Engineer'),(164,'Statistician IV'),(165,'Chemical Engineer'),(166,'Physical Therapy Assistant'),(167,'Programmer III'),(168,'Community Outreach Specialist'),(169,'Compensation Analyst'),(170,'Sales Representative'),(171,'Database Administrator II'),(172,'Community Outreach Specialist'),(173,'Mechanical Systems Engineer'),(174,'Librarian'),(175,'Web Designer II'),(176,'Computer Systems Analyst I'),(177,'Software Consultant'),(178,'Desktop Support Technician'),(179,'Software Engineer II'),(180,'VP Accounting'),(181,'Geological Engineer'),(182,'Editor'),(183,'Senior Financial Analyst'),(184,'Engineer IV'),(185,'Librarian'),(186,'Staff Scientist'),(187,'Programmer IV'),(188,'Geological Engineer'),(189,'Help Desk Technician'),(190,'Marketing Assistant'),(191,'Budget/Accounting Analyst III'),(192,'Registered Nurse'),(193,'Director of Sales'),(194,'Project Manager'),(195,'Recruiting Manager'),(196,'Junior Executive'),(197,'Professor'),(198,'Speech Pathologist'),(199,'Compensation Analyst'),(200,'Automation Specialist III'),(201,'Cost Accountant'),(202,'Senior Editor'),(203,'Financial Analyst'),(204,'Nurse'),(205,'Quality Control Specialist'),(206,'Administrative Assistant III'),(207,'Software Engineer III'),(208,'Food Chemist'),(209,'Senior Financial Analyst'),(210,'Nurse Practicioner'),(211,'Biostatistician II'),(212,'Recruiting Manager'),(213,'Civil Engineer'),(214,'Compensation Analyst'),(215,'Recruiter'),(216,'Geologist II'),(217,'Mechanical Systems Engineer'),(218,'Nurse'),(219,'General Manager'),(220,'Social Worker'),(221,'VP Sales'),(222,'Budget/Accounting Analyst I'),(223,'Food Chemist'),(224,'Community Outreach Specialist'),(225,'VP Marketing'),(226,'Desktop Support Technician'),(227,'Clinical Specialist'),(228,'Registered Nurse'),(229,'Junior Executive'),(230,'Cost Accountant'),(231,'Food Chemist'),(232,'Staff Scientist'),(233,'Graphic Designer'),(234,'Environmental Tech'),(235,'Marketing Manager'),(236,'Biostatistician II'),(237,'Graphic Designer'),(238,'Safety Technician I'),(239,'Help Desk Operator'),(240,'Office Assistant I'),(241,'Nurse'),(242,'Account Coordinator'),(243,'VP Quality Control'),(244,'Senior Developer'),(245,'Geological Engineer'),(246,'Nurse Practicioner'),(247,'Automation Specialist I'),(248,'Recruiting Manager'),(249,'Help Desk Technician'),(250,'Executive Secretary'),(251,'Assistant Manager'),(252,'Editor'),(253,'General Manager'),(254,'Quality Engineer'),(255,'Biostatistician IV'),(256,'Research Assistant I'),(257,'Actuary'),(258,'Biostatistician I'),(259,'Computer Systems Analyst II'),(260,'Nurse Practicioner'),(261,'Nurse Practicioner'),(262,'Financial Advisor'),(263,'Software Consultant'),(264,'Account Executive'),(265,'Electrical Engineer'),(266,'Marketing Manager'),(267,'Database Administrator IV'),(268,'Associate Professor'),(269,'Electrical Engineer'),(270,'Tax Accountant'),(271,'Junior Executive'),(272,'Account Coordinator'),(273,'Research Associate'),(274,'Nurse Practicioner'),(275,'Chief Design Engineer'),(276,'Account Executive'),(277,'Research Nurse'),(278,'Account Representative II'),(279,'Senior Editor'),(280,'Editor'),(281,'Speech Pathologist'),(282,'Information Systems Manager'),(283,'Account Executive'),(284,'Occupational Therapist'),(285,'Marketing Manager'),(286,'Senior Cost Accountant'),(287,'VP Quality Control'),(288,'Professor'),(289,'Nurse Practicioner'),(290,'Social Worker'),(291,'Structural Engineer'),(292,'Senior Editor'),(293,'Food Chemist'),(294,'Human Resources Manager'),(295,'Nurse Practicioner'),(296,'Financial Advisor'),(297,'Financial Advisor'),(298,'Tax Accountant'),(299,'Developer IV'),(300,'Media Manager I'),(301,'Electrical Engineer'),(302,'Safety Technician III'),(303,'Chief Design Engineer'),(304,'Structural Analysis Engineer'),(305,'Safety Technician I'),(306,'Structural Analysis Engineer'),(307,'Cost Accountant'),(308,'Accounting Assistant III'),(309,'Social Worker'),(310,'Civil Engineer'),(311,'Help Desk Technician'),(312,'Systems Administrator IV'),(313,'Marketing Assistant'),(314,'Sales Associate'),(315,'VP Sales'),(316,'Geological Engineer'),(317,'Technical Writer'),(318,'Business Systems Development Analyst'),(319,'Food Chemist'),(320,'Senior Quality Engineer'),(321,'Quality Control Specialist'),(322,'Nuclear Power Engineer'),(323,'Staff Accountant IV'),(324,'Quality Engineer'),(325,'Sales Representative'),(326,'Sales Associate'),(327,'Help Desk Operator'),(328,'Accounting Assistant IV'),(329,'Design Engineer'),(330,'Geologist IV'),(331,'Account Coordinator'),(332,'Statistician III'),(333,'Web Developer II'),(334,'Accounting Assistant I'),(335,'Marketing Assistant'),(336,'Professor'),(337,'VP Marketing'),(338,'VP Quality Control'),(339,'Technical Writer'),(340,'VP Sales'),(341,'Research Assistant III'),(342,'Desktop Support Technician'),(343,'Actuary'),(344,'Nurse'),(345,'Sales Representative'),(346,'Structural Engineer'),(347,'VP Quality Control'),(348,'Marketing Manager'),(349,'Professor'),(350,'Environmental Specialist'),(351,'Professor'),(352,'Recruiter'),(353,'Structural Analysis Engineer'),(354,'Web Designer I'),(355,'Graphic Designer'),(356,'Technical Writer'),(357,'Data Coordiator'),(358,'Assistant Professor'),(359,'Graphic Designer'),(360,'Assistant Manager'),(361,'Budget/Accounting Analyst I'),(362,'Teacher'),(363,'VP Quality Control'),(364,'Software Test Engineer II'),(365,'Internal Auditor'),(366,'Software Engineer I'),(367,'Graphic Designer'),(368,'Office Assistant II'),(369,'Biostatistician II'),(370,'Executive Secretary'),(371,'Physical Therapy Assistant'),(372,'Associate Professor'),(373,'Assistant Professor'),(374,'Software Test Engineer II'),(375,'Professor'),(376,'General Manager'),(377,'Registered Nurse'),(378,'Desktop Support Technician'),(379,'Clinical Specialist'),(380,'Social Worker'),(381,'Developer IV'),(382,'Analyst Programmer'),(383,'Structural Engineer'),(384,'Social Worker'),(385,'Business Systems Development Analyst'),(386,'Tax Accountant'),(387,'Product Engineer'),(388,'Programmer Analyst I'),(389,'Automation Specialist IV'),(390,'Account Coordinator'),(391,'GIS Technical Architect'),(392,'Product Engineer'),(393,'Marketing Assistant'),(394,'Statistician II'),(395,'Geological Engineer'),(396,'Database Administrator II'),(397,'Environmental Specialist'),(398,'Geologist I'),(399,'Database Administrator IV'),(400,'Sales Associate'),(401,'VP Product Management'),(402,'Account Coordinator'),(403,'Editor'),(404,'Quality Engineer'),(405,'Nurse Practicioner'),(406,'Professor'),(407,'Analog Circuit Design manager'),(408,'Environmental Tech'),(409,'Recruiting Manager'),(410,'Librarian'),(411,'Environmental Tech'),(412,'Legal Assistant'),(413,'Community Outreach Specialist'),(414,'Automation Specialist II'),(415,'Desktop Support Technician'),(416,'Actuary'),(417,'Occupational Therapist'),(418,'Computer Systems Analyst IV'),(419,'Safety Technician II'),(420,'Sales Representative'),(421,'Professor'),(422,'Junior Executive'),(423,'Staff Accountant I'),(424,'Electrical Engineer'),(425,'Software Test Engineer IV'),(426,'Staff Scientist'),(427,'Administrative Assistant II'),(428,'Human Resources Manager'),(429,'Help Desk Operator'),(430,'Civil Engineer'),(431,'Developer III'),(432,'Nurse Practicioner'),(433,'Automation Specialist I'),(434,'Legal Assistant'),(435,'Human Resources Assistant III'),(436,'Account Representative III'),(437,'Operator'),(438,'Account Representative III'),(439,'Graphic Designer'),(440,'Web Designer II'),(441,'Registered Nurse'),(442,'Software Engineer I'),(443,'Research Nurse'),(444,'Structural Analysis Engineer'),(445,'Computer Systems Analyst I'),(446,'Operator'),(447,'Editor'),(448,'Nurse'),(449,'Nuclear Power Engineer'),(450,'Safety Technician IV'),(451,'Engineer III'),(452,'Desktop Support Technician'),(453,'Senior Developer'),(454,'VP Quality Control'),(455,'Staff Accountant IV'),(456,'Staff Scientist'),(457,'Sales Associate'),(458,'Assistant Professor'),(459,'Associate Professor'),(460,'Safety Technician III'),(461,'Human Resources Assistant I'),(462,'Chemical Engineer'),(463,'Staff Scientist'),(464,'Accountant III'),(465,'Research Nurse'),(466,'Human Resources Assistant IV'),(467,'Nurse'),(468,'Analyst Programmer'),(469,'Clinical Specialist'),(470,'Professor'),(471,'VP Quality Control'),(472,'Accountant I'),(473,'Nuclear Power Engineer'),(474,'Office Assistant I'),(475,'Nurse Practicioner'),(476,'Senior Financial Analyst'),(477,'Professor'),(478,'Web Designer IV'),(479,'Actuary'),(480,'Senior Editor'),(481,'Executive Secretary'),(482,'VP Product Management'),(483,'Occupational Therapist'),(484,'Web Designer I'),(485,'Geological Engineer'),(486,'Environmental Tech'),(487,'Design Engineer'),(488,'Nurse Practicioner'),(489,'Senior Financial Analyst'),(490,'Database Administrator IV'),(491,'Web Designer I'),(492,'VP Product Management'),(493,'Account Executive'),(494,'VP Quality Control'),(495,'Civil Engineer'),(496,'Dental Hygienist'),(497,'Business Systems Development Analyst'),(498,'Statistician II'),(499,'Technical Writer'),(500,'Paralegal'),(501,'Account Executive'),(502,'Database Administrator II'),(503,'Technical Writer'),(504,'Budget/Accounting Analyst I'),(505,'Marketing Manager'),(506,'Occupational Therapist'),(507,'Internal Auditor'),(508,'Programmer I'),(509,'Environmental Tech'),(510,'Research Nurse'),(511,'Sales Associate'),(512,'Software Test Engineer IV'),(513,'Senior Financial Analyst'),(514,'Geological Engineer'),(515,'Registered Nurse'),(516,'Dental Hygienist'),(517,'Nurse'),(518,'Computer Systems Analyst IV'),(519,'Civil Engineer'),(520,'Senior Sales Associate'),(521,'Engineer II'),(522,'Teacher'),(523,'Web Designer IV'),(524,'GIS Technical Architect'),(525,'Senior Cost Accountant'),(526,'Mechanical Systems Engineer'),(527,'Assistant Professor'),(528,'Structural Analysis Engineer'),(529,'Food Chemist'),(530,'Database Administrator IV'),(531,'Nurse Practicioner'),(532,'Administrative Assistant II'),(533,'Compensation Analyst'),(534,'Statistician I'),(535,'Sales Associate'),(536,'Research Assistant IV'),(537,'Research Nurse'),(538,'Registered Nurse'),(539,'Actuary'),(540,'Safety Technician IV'),(541,'Developer I'),(542,'Systems Administrator IV'),(543,'Analyst Programmer'),(544,'Financial Analyst'),(545,'Chief Design Engineer'),(546,'Marketing Assistant'),(547,'VP Accounting'),(548,'Design Engineer'),(549,'Staff Accountant II'),(550,'Administrative Officer'),(551,'Safety Technician III'),(552,'VP Sales'),(553,'Computer Systems Analyst III'),(554,'Speech Pathologist'),(555,'Paralegal'),(556,'Statistician II'),(557,'Food Chemist'),(558,'Accountant IV'),(559,'Assistant Media Planner'),(560,'Geological Engineer'),(561,'Civil Engineer'),(562,'Mechanical Systems Engineer'),(563,'Desktop Support Technician'),(564,'Civil Engineer'),(565,'Research Associate'),(566,'Programmer Analyst III'),(567,'Financial Advisor'),(568,'Account Executive'),(569,'Legal Assistant'),(570,'Assistant Manager'),(571,'Research Assistant II'),(572,'Analyst Programmer'),(573,'Web Developer IV'),(574,'Compensation Analyst'),(575,'Clinical Specialist'),(576,'VP Accounting'),(577,'Research Nurse'),(578,'Structural Engineer'),(579,'Account Coordinator'),(580,'Marketing Assistant'),(581,'Structural Engineer'),(582,'Accountant III'),(583,'Recruiter'),(584,'Marketing Assistant'),(585,'Librarian'),(586,'Software Engineer IV'),(587,'Accounting Assistant I'),(588,'Pharmacist'),(589,'Business Systems Development Analyst'),(590,'Automation Specialist I'),(591,'Senior Editor'),(592,'Junior Executive'),(593,'Office Assistant III'),(594,'Compensation Analyst'),(595,'Safety Technician IV'),(596,'Product Engineer'),(597,'Marketing Manager'),(598,'Account Representative II'),(599,'Speech Pathologist'),(600,'Analog Circuit Design manager'),(601,'Editor'),(602,'Database Administrator III'),(603,'Sales Representative'),(604,'Speech Pathologist'),(605,'Staff Scientist'),(606,'Quality Control Specialist'),(607,'Senior Cost Accountant'),(608,'Actuary'),(609,'Environmental Specialist'),(610,'Design Engineer'),(611,'Database Administrator II'),(612,'VP Marketing'),(613,'Internal Auditor'),(614,'Nurse Practicioner'),(615,'Programmer Analyst I'),(616,'Geologist III'),(617,'Civil Engineer'),(618,'Director of Sales'),(619,'Sales Representative'),(620,'Senior Sales Associate'),(621,'Nuclear Power Engineer'),(622,'VP Marketing'),(623,'Software Engineer II'),(624,'Recruiter'),(625,'GIS Technical Architect'),(626,'Registered Nurse'),(627,'VP Product Management'),(628,'Recruiter'),(629,'VP Accounting'),(630,'Assistant Manager'),(631,'Programmer Analyst III'),(632,'Clinical Specialist'),(633,'Pharmacist'),(634,'Information Systems Manager'),(635,'Biostatistician IV'),(636,'Structural Analysis Engineer'),(637,'Analog Circuit Design manager'),(638,'Librarian'),(639,'Sales Representative'),(640,'Senior Financial Analyst'),(641,'Account Coordinator'),(642,'Payment Adjustment Coordinator'),(643,'Chief Design Engineer'),(644,'Desktop Support Technician'),(645,'Analog Circuit Design manager'),(646,'Junior Executive'),(647,'Nurse Practicioner'),(648,'Assistant Manager'),(649,'VP Quality Control'),(650,'GIS Technical Architect'),(651,'Administrative Assistant I'),(652,'Community Outreach Specialist'),(653,'General Manager'),(654,'Systems Administrator IV'),(655,'Research Assistant III'),(656,'Nurse'),(657,'VP Marketing'),(658,'Analog Circuit Design manager'),(659,'Sales Representative'),(660,'GIS Technical Architect'),(661,'Desktop Support Technician'),(662,'Executive Secretary'),(663,'Account Coordinator'),(664,'Staff Scientist'),(665,'Safety Technician IV'),(666,'Internal Auditor'),(667,'Nurse Practicioner'),(668,'Quality Engineer'),(669,'Graphic Designer'),(670,'VP Marketing'),(671,'Librarian'),(672,'Legal Assistant'),(673,'Software Consultant'),(674,'Geological Engineer'),(675,'Software Engineer I'),(676,'Financial Analyst'),(677,'Financial Analyst'),(678,'Internal Auditor'),(679,'Environmental Specialist'),(680,'Help Desk Technician'),(681,'Actuary'),(682,'Budget/Accounting Analyst III'),(683,'Project Manager'),(684,'Research Assistant I'),(685,'GIS Technical Architect'),(686,'Nurse'),(687,'Civil Engineer'),(688,'Developer IV'),(689,'Systems Administrator IV'),(690,'Pharmacist'),(691,'Editor'),(692,'Geologist IV'),(693,'Tax Accountant'),(694,'Human Resources Assistant III'),(695,'Help Desk Technician'),(696,'Financial Analyst'),(697,'Civil Engineer'),(698,'Financial Advisor'),(699,'Senior Cost Accountant'),(700,'Sales Representative'),(701,'Software Consultant'),(702,'Help Desk Operator'),(703,'VP Accounting'),(704,'Accountant IV'),(705,'Occupational Therapist'),(706,'Compensation Analyst'),(707,'Human Resources Assistant II'),(708,'Assistant Manager'),(709,'Administrative Assistant IV'),(710,'General Manager'),(711,'Structural Engineer'),(712,'Senior Editor'),(713,'Senior Cost Accountant'),(714,'Statistician III'),(715,'VP Product Management'),(716,'Technical Writer'),(717,'Editor'),(718,'Quality Control Specialist'),(719,'Account Coordinator'),(720,'Human Resources Manager'),(721,'Food Chemist'),(722,'Software Test Engineer IV'),(723,'Dental Hygienist'),(724,'Budget/Accounting Analyst I'),(725,'Analyst Programmer'),(726,'Junior Executive'),(727,'Sales Representative'),(728,'Analog Circuit Design manager'),(729,'Marketing Manager'),(730,'Associate Professor'),(731,'Account Coordinator'),(732,'Staff Accountant IV'),(733,'Project Manager'),(734,'Social Worker'),(735,'Research Assistant II'),(736,'Dental Hygienist'),(737,'Environmental Tech'),(738,'VP Quality Control'),(739,'Research Assistant I'),(740,'Systems Administrator IV'),(741,'VP Marketing'),(742,'Assistant Professor'),(743,'Human Resources Assistant IV'),(744,'Assistant Manager'),(745,'Civil Engineer'),(746,'Senior Financial Analyst'),(747,'Actuary'),(748,'Account Executive'),(749,'Compensation Analyst'),(750,'Electrical Engineer'),(751,'Software Engineer I'),(752,'Statistician II'),(753,'Clinical Specialist'),(754,'Actuary'),(755,'Structural Analysis Engineer'),(756,'Analog Circuit Design manager'),(757,'Assistant Media Planner'),(758,'Programmer Analyst I'),(759,'VP Marketing'),(760,'Accountant III'),(761,'Occupational Therapist'),(762,'Accountant II'),(763,'Marketing Assistant'),(764,'Data Coordiator'),(765,'Food Chemist'),(766,'Recruiting Manager'),(767,'Financial Analyst'),(768,'Statistician III'),(769,'Structural Analysis Engineer'),(770,'Recruiter'),(771,'Compensation Analyst'),(772,'Financial Analyst'),(773,'Automation Specialist III'),(774,'Product Engineer'),(775,'Product Engineer'),(776,'Project Manager'),(777,'Assistant Manager'),(778,'Biostatistician I'),(779,'Executive Secretary'),(780,'Operator'),(781,'Cost Accountant'),(782,'Structural Analysis Engineer'),(783,'Programmer I'),(784,'Database Administrator IV'),(785,'Product Engineer'),(786,'Recruiter'),(787,'Actuary'),(788,'VP Sales'),(789,'Pharmacist'),(790,'Senior Financial Analyst'),(791,'Sales Representative'),(792,'Dental Hygienist'),(793,'Social Worker'),(794,'Senior Financial Analyst'),(795,'Speech Pathologist'),(796,'Information Systems Manager'),(797,'Human Resources Manager'),(798,'Assistant Media Planner'),(799,'Associate Professor'),(800,'Account Representative II'),(801,'Budget/Accounting Analyst II'),(802,'Senior Financial Analyst'),(803,'Mechanical Systems Engineer'),(804,'Physical Therapy Assistant'),(805,'Assistant Manager'),(806,'Recruiter'),(807,'Information Systems Manager'),(808,'Speech Pathologist'),(809,'Office Assistant I'),(810,'Actuary'),(811,'Desktop Support Technician'),(812,'Executive Secretary'),(813,'Actuary'),(814,'Account Coordinator'),(815,'Office Assistant III'),(816,'Systems Administrator III'),(817,'Programmer II'),(818,'Sales Associate'),(819,'Senior Financial Analyst'),(820,'Pharmacist'),(821,'VP Product Management'),(822,'Nuclear Power Engineer'),(823,'Executive Secretary'),(824,'Actuary'),(825,'Tax Accountant'),(826,'Recruiter'),(827,'Dental Hygienist'),(828,'Structural Analysis Engineer'),(829,'Help Desk Operator'),(830,'Geologist IV'),(831,'Statistician I'),(832,'Product Engineer'),(833,'Assistant Professor'),(834,'Marketing Assistant'),(835,'Nuclear Power Engineer'),(836,'Research Associate'),(837,'Marketing Assistant'),(838,'Office Assistant III'),(839,'Electrical Engineer'),(840,'Electrical Engineer'),(841,'Analog Circuit Design manager'),(842,'Executive Secretary'),(843,'Food Chemist'),(844,'Statistician II'),(845,'Developer I'),(846,'Recruiter'),(847,'Staff Accountant III'),(848,'Web Developer IV'),(849,'Database Administrator I'),(850,'Account Executive'),(851,'VP Sales'),(852,'Structural Engineer'),(853,'Nuclear Power Engineer'),(854,'Staff Scientist'),(855,'General Manager'),(856,'Speech Pathologist'),(857,'Web Developer IV'),(858,'Administrative Officer'),(859,'Chief Design Engineer'),(860,'Environmental Tech'),(861,'Physical Therapy Assistant'),(862,'Marketing Manager'),(863,'Librarian'),(864,'Senior Editor'),(865,'VP Sales'),(866,'Design Engineer'),(867,'Programmer IV'),(868,'Computer Systems Analyst IV'),(869,'Structural Engineer'),(870,'Associate Professor'),(871,'Sales Associate'),(872,'Financial Advisor'),(873,'Office Assistant II'),(874,'Assistant Media Planner'),(875,'Librarian'),(876,'Information Systems Manager'),(877,'Database Administrator IV'),(878,'Health Coach II'),(879,'Geologist III'),(880,'Software Test Engineer III'),(881,'Senior Developer'),(882,'Account Executive'),(883,'Compensation Analyst'),(884,'Web Designer I'),(885,'Director of Sales'),(886,'Administrative Assistant IV'),(887,'Help Desk Technician'),(888,'Biostatistician IV'),(889,'VP Product Management'),(890,'Teacher'),(891,'Nurse Practicioner'),(892,'Graphic Designer'),(893,'Senior Cost Accountant'),(894,'Human Resources Manager'),(895,'Staff Accountant II'),(896,'Programmer Analyst II'),(897,'Social Worker'),(898,'Senior Cost Accountant'),(899,'Food Chemist'),(900,'Staff Scientist'),(901,'VP Marketing'),(902,'Analyst Programmer'),(903,'Environmental Tech'),(904,'Statistician IV'),(905,'Tax Accountant'),(906,'Senior Quality Engineer'),(907,'Teacher'),(908,'Web Developer III'),(909,'Computer Systems Analyst III'),(910,'Office Assistant I'),(911,'Product Engineer'),(912,'Software Test Engineer II'),(913,'Research Associate'),(914,'Nuclear Power Engineer'),(915,'Mechanical Systems Engineer'),(916,'Payment Adjustment Coordinator'),(917,'Staff Accountant I'),(918,'Analog Circuit Design manager'),(919,'Analyst Programmer'),(920,'Biostatistician I'),(921,'Design Engineer'),(922,'Programmer Analyst I'),(923,'Database Administrator II'),(924,'Help Desk Technician'),(925,'Geologist II'),(926,'Junior Executive'),(927,'Research Associate'),(928,'Mechanical Systems Engineer'),(929,'Food Chemist'),(930,'Software Engineer III'),(931,'Assistant Manager'),(932,'Nuclear Power Engineer'),(933,'Quality Engineer'),(934,'VP Sales'),(935,'Editor'),(936,'Media Manager I'),(937,'Senior Editor'),(938,'Financial Analyst'),(939,'Product Engineer'),(940,'Payment Adjustment Coordinator'),(941,'Associate Professor'),(942,'Senior Sales Associate'),(943,'Mechanical Systems Engineer'),(944,'Media Manager III'),(945,'Account Representative IV'),(946,'Geologist II'),(947,'Engineer III'),(948,'Senior Editor'),(949,'Community Outreach Specialist'),(950,'Analog Circuit Design manager'),(951,'Dental Hygienist'),(952,'Product Engineer'),(953,'Tax Accountant'),(954,'Cost Accountant'),(955,'Marketing Manager'),(956,'Media Manager I'),(957,'Structural Engineer'),(958,'Accounting Assistant I'),(959,'GIS Technical Architect'),(960,'Media Manager I'),(961,'Computer Systems Analyst I'),(962,'Social Worker'),(963,'GIS Technical Architect'),(964,'Administrative Assistant IV'),(965,'GIS Technical Architect'),(966,'Senior Developer'),(967,'Geologist III'),(968,'Teacher'),(969,'Geologist II'),(970,'Quality Control Specialist'),(971,'Assistant Media Planner'),(972,'Statistician III'),(973,'Senior Editor'),(974,'Electrical Engineer'),(975,'Nuclear Power Engineer'),(976,'Registered Nurse'),(977,'Sales Associate'),(978,'Graphic Designer'),(979,'Payment Adjustment Coordinator'),(980,'Biostatistician I'),(981,'Accountant IV'),(982,'Help Desk Technician'),(983,'Environmental Specialist'),(984,'Cost Accountant'),(985,'VP Product Management'),(986,'Registered Nurse'),(987,'Nuclear Power Engineer'),(988,'Graphic Designer'),(989,'Civil Engineer'),(990,'Engineer I'),(991,'Registered Nurse'),(992,'Registered Nurse'),(993,'Biostatistician III'),(994,'Paralegal'),(995,'VP Accounting'),(996,'Geologist IV'),(997,'Recruiting Manager'),(998,'Research Assistant IV'),(999,'Programmer Analyst IV'),(1000,'Tax Accountant'),(1001,'Librarian'),(1002,'Statistician II'),(1003,'VP Accounting'),(1004,'Executive Secretary'),(1005,'Product Engineer'),(1006,'Assistant Professor'),(1007,'Administrative Assistant II'),(1008,'Engineer II'),(1009,'Operator'),(1010,'Human Resources Manager');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 10:39:40