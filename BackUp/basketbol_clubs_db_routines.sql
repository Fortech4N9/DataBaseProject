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
-- Temporary view structure for view `arenas_club`
--

DROP TABLE IF EXISTS `arenas_club`;
/*!50001 DROP VIEW IF EXISTS `arenas_club`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `arenas_club` AS SELECT 
 1 AS `name_club`,
 1 AS `name`,
 1 AS `number_of_constructions`,
 1 AS `capacity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_injures`
--

DROP TABLE IF EXISTS `high_injures`;
/*!50001 DROP VIEW IF EXISTS `high_injures`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_injures` AS SELECT 
 1 AS `surname`,
 1 AS `game_position`,
 1 AS `name`,
 1 AS `severity_of_injury`,
 1 AS `recovery_time`,
 1 AS `date_of_injury`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `player_sf`
--

DROP TABLE IF EXISTS `player_sf`;
/*!50001 DROP VIEW IF EXISTS `player_sf`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `player_sf` AS SELECT 
 1 AS `name`,
 1 AS `surname`,
 1 AS `carrer_start`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `arenas_club`
--

/*!50001 DROP VIEW IF EXISTS `arenas_club`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Valera`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `arenas_club` AS select `cl`.`name_club` AS `name_club`,`ar`.`name` AS `name`,`ar`.`number_of_constructions` AS `number_of_constructions`,`ar`.`capacity` AS `capacity` from ((`clubs` `cl` join `clubs_to_arenas` `cta` on((`cl`.`id_club` = `cta`.`id_club`))) join `arenas` `ar` on((`ar`.`id_arena` = `cta`.`id_arena`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_injures`
--

/*!50001 DROP VIEW IF EXISTS `high_injures`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Valera`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `high_injures` AS select `hum`.`surname` AS `surname`,`pl`.`game_position` AS `game_position`,`inj`.`name` AS `name`,`inj`.`severity_of_injury` AS `severity_of_injury`,`inj`.`recovery_time` AS `recovery_time`,`inj`.`date_of_injury` AS `date_of_injury` from ((`humans` `hum` join `players` `pl` on((`pl`.`id_human` = `hum`.`id_human`))) join `injures` `inj` on((`pl`.`id_human` = `inj`.`id_human`))) where ((`inj`.`severity_of_injury` = 'high') or (`inj`.`severity_of_injury` = 'very-high')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_sf`
--

/*!50001 DROP VIEW IF EXISTS `player_sf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Valera`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `player_sf` AS select `hum`.`name` AS `name`,`hum`.`surname` AS `surname`,`hum`.`carrer_start` AS `carrer_start` from (`humans` `hum` join `players` `pl` on((`hum`.`id_human` = `pl`.`id_human`))) where (`pl`.`game_position` = 'SF') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'basketbol_clubs_db'
--

--
-- Dumping routines for database 'basketbol_clubs_db'
--
/*!50003 DROP FUNCTION IF EXISTS `clubs_have_award` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Valera`@`%` FUNCTION `clubs_have_award`(name_club varchar(100)) RETURNS varchar(100) CHARSET utf8mb4
begin
	declare `value` varchar(100);
    declare count int default 0;
    select count(*) into count 
    from clubs cl
    join clubs_to_awards cta on cl.id_club = cta.id_club
    join awards aw on aw.id_awards =cta.id_awards
    where cl.name_club = name_club;
    if count > '0' then
		set `value` = 'есть награды';
	else 
		set `value` = 'нет наград';
	end if;
    return `value`;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `count_contract` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Valera`@`%` FUNCTION `count_contract`(kond varchar(100)) RETURNS int
begin 
	declare sum integer default 0;
    select count(*) into sum
    from contracts where kind = kond;
    return sum;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `count_human_award` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Valera`@`%` FUNCTION `count_human_award`(`name` varchar(100),surname varchar(100)) RETURNS int
begin 
	declare count integer default 0;
    select count(*) into count
    from  humans hum
    join humans_to_awards hta on hum.id_human = hta.id_human
    join awards aw on hta.id_award = aw.id_awards
    where hum.name = `name` and hum.surname = surname;
    return count;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_award` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Valera`@`%` PROCEDURE `get_award`(in club_name varchar(100))
begin
select 
aw.name,
aw.season
from awards aw
join clubs_to_awards cta on aw.id_awards = cta.id_awards
join clubs cl on cta.id_club = cl.id_club
where cl.name_club = club_name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_el_value` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Valera`@`%` PROCEDURE `get_el_value`(in stat varchar(100),`name` varchar(100),surname varchar(100))
begin
select 
el.name_stat,
el.`value`,
el.id_match,
case 
	when el.`value` > '10' and el.`value`<= 20
		then 'normal'
	when el.`value` > '20'
		then 'high'
	else 'min'
end as parametr 
from humans hum
join players pl on hum.id_human = pl.id_human
join element_stats el on pl.id_human = el.id_human
where hum.name = `name` and hum.surname = surname and el.name_stat = stat;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_injury` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Valera`@`%` PROCEDURE `get_injury`(in `name` varchar(100), surname varchar(100))
begin
select
inj.date_of_injury,
inj.name,
inj.recovery_time,
inj.severity_of_injury
from humans hum
join players pl on pl.id_human = hum.id_human
join injures inj on pl.id_human = inj.id_human
where hum.`name` = `name` and hum.surname = surname;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 10:39:42
