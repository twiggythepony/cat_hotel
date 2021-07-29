-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cat_hotel
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cat_hotel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cat_hotel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cat_hotel`;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` varchar(10) NOT NULL,
  `guest_id` varchar(10) NOT NULL,
  `room_id` varchar(10) NOT NULL,
  `cat_id` varchar(10) DEFAULT NULL,
  `no_of_guests` int NOT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FK_guest` (`guest_id`),
  KEY `FK_room` (`room_id`),
  KEY `FK_cat` (`cat_id`),
  CONSTRAINT `FK_cat` FOREIGN KEY (`cat_id`) REFERENCES `cat` (`cat_id`),
  CONSTRAINT `FK_guest` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  CONSTRAINT `FK_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('B01','G01','R101',NULL,1,'2021-01-01','2021-01-02'),('B02','G02','R203','C01',3,'2021-01-05','2021-01-07'),('B03','G03','R201','C02',2,'2021-01-06','2021-01-07'),('B04','G04','R201','C08',2,'2021-01-11','2021-01-12'),('B05','G05','R202','C15',5,'2021-02-14','2021-02-20'),('B06','G06','R203','C02',1,'2021-02-15','2021-02-16'),('B07','G07','R102',NULL,7,'2021-02-25','2021-02-26'),('B08','G08','R101',NULL,4,'2021-03-01','2021-03-03'),('B09','G09','R203','C07',2,'2021-03-11','2021-03-14'),('B10','G10','R102',NULL,3,'2021-03-17','2021-03-19'),('B11','G11','R101',NULL,4,'2021-03-20','2021-03-22'),('B12','G01','R201','C03',1,'2021-04-03','2021-04-04'),('B13','G12','R203','C01',4,'2021-04-09','2021-04-11'),('B14','G13','R201',NULL,1,'2021-04-10','2021-04-12'),('B15','G14','R202','C10',2,'2021-04-21','2021-04-22'),('B16','G15','R203','C04',4,'2021-04-21','2021-04-25'),('B17','G07','R101',NULL,1,'2021-05-21','2021-05-22'),('B18','G16','R102',NULL,7,'2021-05-24','2021-05-26'),('B19','G17','R201','C13',5,'2021-05-25','2021-05-26'),('B20','G18','R202','C01',2,'2021-05-26','2021-05-28'),('B21','G19','R204','C18',1,'2021-05-27','2021-05-28'),('B22','G11','R201','C04',4,'2021-05-28','2021-05-31'),('B23','G20','R101',NULL,2,'2021-05-28','2021-05-29'),('B24','G21','R202','C11',2,'2021-05-30','2021-05-31'),('B25','G02','R102',NULL,5,'2021-06-03','2021-06-05'),('B26','G22','R201','C08',1,'2021-06-04','2021-06-05'),('B27','G23','R203','C06',3,'2021-06-08','2021-06-09'),('B28','G17','R204','C13',1,'2021-06-11','2021-06-14'),('B29','G24','R201','C21',2,'2021-06-13','2021-06-14'),('B30','G25','R102',NULL,7,'2021-06-16','2021-06-19'),('B31','G26','R202','C08',5,'2021-06-29','2021-07-02'),('B32','G27','R201','C19',2,'2021-07-02','2021-07-03'),('B33','G28','R203','C14',1,'2021-07-07','2021-07-09'),('B34','G29','R202','C05',2,'2021-07-09','2021-07-10'),('B35','G30','R101',NULL,6,'2021-07-14','2021-07-16'),('B36','G31','R201','C01',1,'2021-07-18','2021-07-20');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `room_overcapacity` BEFORE INSERT ON `booking` FOR EACH ROW BEGIN
	DECLARE room_capacity INT;
    
	SELECT r.max_capacity INTO room_capacity
		FROM  room r
        WHERE r.room_id = NEW.room_id;
    
	IF NEW.no_of_guests > room_capacity THEN
		SIGNAL SQLSTATE '45000' SET message_text = 'Room capacity exceeded, booking not allowed';
    END IF;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_invoice` AFTER INSERT ON `booking` FOR EACH ROW BEGIN
	CALL insert_invoice(NEW.booking_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat`
--

DROP TABLE IF EXISTS `cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat` (
  `cat_id` varchar(10) NOT NULL,
  `avaliable` tinyint(1) DEFAULT NULL,
  `cat_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `DOB` date DEFAULT NULL,
  `guardian_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `FK_guardian` (`guardian_id`),
  CONSTRAINT `FK_guardian` FOREIGN KEY (`guardian_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat`
--

LOCK TABLES `cat` WRITE;
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` VALUES ('C01',1,'Sakura','Female','Munchkin','2017-01-12','E01'),('C02',1,'Kei','Female','Mix','2017-04-27','E01'),('C03',1,'Milk','Female','Munchkin','2017-05-07','E02'),('C04',1,'Mari','Female','Munchkin','2017-06-12','E02'),('C05',1,'Clea','Female','American Shorthair','2017-06-15','E01'),('C06',1,'Kashiwa','Male','Munchkin','2017-11-27','E01'),('C07',1,'Tsukushi','Female','Mix','2018-03-17','E01'),('C08',1,'Yoshino','Female','Mix','2018-05-02','E02'),('C09',1,'Yae','Female','Mix','2018-05-02','E01'),('C10',1,'Arashi','Male','Mix','2018-05-02','E04'),('C11',1,'Gou','Male','Mix','2019-06-22','E01'),('C12',1,'Hotaru-hime','Female','Mix','2020-10-17','E03'),('C13',1,'Haruka','Female','Scottish Fold','2020-07-20','E01'),('C14',1,'Luna','Female','Selkirk Rex','2020-09-05','E01'),('C15',1,'Whip','Female','Munchkin','2020-11-05','E02'),('C16',1,'Chiffon','Female','Munchkin','2020-11-05','E01'),('C17',1,'Goma','Male','Mix','2017-08-20','E01'),('C18',1,'Donguri','Female','Mix','2021-02-04','E04'),('C19',1,'Riku','Male','British Shorthair','2016-01-10','E01'),('C20',1,'Natsu','Male','Munchkin','2016-06-29','E03'),('C21',1,'Yomogi','Female','Munchkin','2017-12-04','E01'),('C22',0,'Miyu','Female','Bengal','2011-03-21','E04'),('C23',0,'Momiji','Female','Mix','2017-04-27','E01'),('C24',0,'Meru','Female','Scottish Fold','2017-05-05','E02'),('C25',0,'Jiji','Male','British Shorthair','2017-05-28','E01');
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cat_guest_partnerships`
--

DROP TABLE IF EXISTS `cat_guest_partnerships`;
/*!50001 DROP VIEW IF EXISTS `cat_guest_partnerships`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cat_guest_partnerships` AS SELECT 
 1 AS `booking_id`,
 1 AS `cat_name`,
 1 AS `guest_name`,
 1 AS `surname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guest_id` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES ('G01','Tsumugi','Nakamura','Tsumugi.Nakamura@email.com','Japan'),('G02','Sakura','Johnson','Sakura.Johnson@email.com','Japan'),('G03','Riko','Tanaka','Riko.Tanaka@email.com','Japan'),('G04','Sophia','Suzuki','Sophia.Suzuki@email.com','Japan'),('G05','Akari','Li','Akari.Li@email.com','Japan'),('G06','Lucas','Williams','Lucas.Williams@email.com','Japan'),('G07','Yuna','Suzuki','Yuna.Suzuki@email.com','Japan'),('G08','Elijah','Tanaka','Elijah.Tanaka@email.com','Japan'),('G09','Oliver','Li','Oliver.Li@email.com','Japan'),('G10','Sakura','Yamamoto','Sakura.Yamamoto@email.com','Japan'),('G11','Lucas','Nakamura','Lucas.Nakamura@email.com','Japan'),('G12','Minato','Saito','Minato.Saito@email.com','Japan'),('G13','Haruto','Johnson','Haruto.Johnson@email.com','Japan'),('G14','Hina','Ito','Hina.Ito@email.com','Japan'),('G15','Lucas','Johnson','Lucas.Johnson@email.com','Japan'),('G16','Liam','Watanabe','Liam.Watanabe@email.com','Japan'),('G17','Hiroto','Watanabe','Hiroto.Watanabe@email.com','Japan'),('G18','Tsumugi','Johnson','Tsumugi.Johnson@email.com','Japan'),('G19','Himari','Suzuki','Himari.Suzuki@email.com','Japan'),('G20','Mei','Williams','Mei.Williams@email.com','China'),('G21','Minato','Nakamura','Minato.Nakamura@email.com','Japan'),('G22','Liam','Nakamura','Liam.Nakamura@email.com','Japan'),('G23','Elijah','Saito','Elijah.Saito@email.com','Japan'),('G24','Yua','Williams','Yua.Williams@email.com','China'),('G25','Hina','Kobayashi','Hina.Kobayashi@email.com','Japan'),('G26','Himari','Li','Himari.Li@email.com','USA'),('G27','Lucas','Watanabe','Lucas.Watanabe@email.com','Japan'),('G28','Minato','Williams','Minato.Williams@email.com','Japan'),('G29','Itsuki','Li','Itsuki.Li@email.com','Japan'),('G30','Noah','Takahashi','Noah.Takahashi@email.com','Japan'),('G31','So','Kobayashi','So.Kobayashi@email.com','Japan');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `booking_id` varchar(10) NOT NULL,
  `rate_pp_per_night` int NOT NULL,
  `no_of_nights` int NOT NULL,
  `no_of_guests` int NOT NULL,
  `cat_fee_per_night` int NOT NULL,
  `total_fee` int NOT NULL,
  KEY `FK_booking` (`booking_id`),
  CONSTRAINT `FK_booking` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('B01',5000,1,1,0,5000),('B02',5000,2,3,2200,34400),('B03',5000,1,2,2200,12200),('B04',5000,1,2,2200,12200),('B05',5000,6,5,2200,163200),('B06',5000,1,1,2200,7200),('B08',5000,2,4,0,40000),('B09',5000,3,2,2200,36600),('B10',5000,2,3,0,30000),('B11',5000,2,4,0,40000),('B12',5000,1,1,2200,7200),('B13',5000,2,4,2200,44400),('B14',5000,2,1,0,10000),('B15',5000,1,2,2200,12200),('B16',5000,4,4,2200,88800),('B17',5000,1,1,0,5000),('B18',5000,2,7,0,70000),('B19',5000,1,5,2200,27200),('B20',5000,2,2,2200,24400),('B21',5000,1,1,2200,7200),('B22',5000,3,4,2200,66600),('B23',5000,1,2,0,10000),('B24',5000,1,2,2200,12200),('B25',5000,2,5,0,50000),('B26',5000,1,1,2200,7200),('B27',5000,1,3,2200,17200),('B28',5000,3,1,2200,21600),('B29',5000,1,2,2200,12200),('B30',5000,3,7,0,105000),('B31',5000,3,5,2200,81600),('B32',5000,1,2,2200,12200),('B33',5000,2,1,2200,14400),('B34',5000,1,2,2200,12200),('B35',5000,2,6,0,60000),('B36',5000,2,1,2200,14400);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` varchar(10) NOT NULL,
  `cats_allowed` tinyint(1) DEFAULT NULL,
  `max_capacity` int NOT NULL,
  `private_toilet` tinyint(1) DEFAULT NULL,
  `floor` int NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('R101',0,6,1,1),('R102',0,7,1,1),('R201',1,5,1,2),('R202',1,5,1,2),('R203',1,5,1,2),('R204',1,2,0,2);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('E01','Akihiro','Owner'),('E02','Mei','Manager'),('E03','Haruto','Employee'),('E04','Aoi','Employee'),('E05','Riku','Cleaner');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `cat_hotel`
--

USE `cat_hotel`;

--
-- Final view structure for view `cat_guest_partnerships`
--

/*!50001 DROP VIEW IF EXISTS `cat_guest_partnerships`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cat_guest_partnerships` AS select `b`.`booking_id` AS `booking_id`,`c`.`cat_name` AS `cat_name`,`g`.`first_name` AS `guest_name`,`g`.`last_name` AS `surname` from ((`booking` `b` left join `cat` `c` on((`b`.`cat_id` = `c`.`cat_id`))) join `guest` `g` on((`b`.`guest_id` = `g`.`guest_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-27 23:43:59
