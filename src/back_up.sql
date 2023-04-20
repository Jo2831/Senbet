-- MySQL dump 10.13  Distrib 5.7.40, for Linux (x86_64)
--
-- Host: localhost    Database: ketero_db
-- ------------------------------------------------------
-- Server version	5.7.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `senbet_db`
--

		
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `senbet_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `senebt_db`;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('585239d9-590d-464d-b179-07202bbae51e','2023-01-01 13:05:17','2023-01-01 13:05:17','Assosa'),('61300e0e-c2ae-46ba-841d-7df44ff13cd8','2023-01-01 13:05:17','2023-01-01 13:05:17','Harar'),('6196089b-17c8-4c55-9bd6-dfd77a44b4bc','2023-01-01 13:05:17','2023-01-01 13:05:17','Semera'),('6c81fe30-3092-4038-af10-fe6432d3d5bd','2023-01-01 13:05:17','2023-01-01 13:05:17','Jigjiga'),('76870e82-0e1b-4c8c-96cb-7fe3720bb648','2023-01-01 13:05:16','2023-01-01 13:05:16','Addis Ababa'),('8284a022-4880-431f-88d8-6d9cfbe1cbe0','2023-01-01 13:05:17','2023-01-01 13:05:17','Mekele'),('8706dd9d-2142-416a-8b35-84d5ee34c223','2023-01-01 13:05:16','2023-01-01 13:05:16','Adama'),('9e957a50-d01b-491d-9dc8-f5c861a767e1','2023-01-01 13:05:17','2023-01-01 13:05:17','Diredawa'),('a2be4f75-9bb0-4c6f-8f24-ae093d016680','2023-01-08 14:02:32','2023-01-08 14:02:32','Jimma'),('cbf93818-63ee-418f-a1ba-4eb445a1a298','2023-01-01 13:05:17','2023-01-01 13:05:17','Bahirdar'),('d178efb1-0725-4699-9f35-7acc3f97fb62','2023-01-01 13:05:17','2023-01-01 13:05:17','Gambela'),('f3dac045-0864-46de-b7d6-f337437fc838','2023-01-08 14:03:32','2023-01-08 14:03:32','Debre Markos'),('fc55cb2a-b5ff-4604-8da7-2ed268dbfb90','2023-01-01 13:05:17','2023-01-01 13:05:17','Hawasa');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_service`
--

DROP TABLE IF EXISTS `hotel_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_service` (
  `hotel_id` varchar(60) NOT NULL,
  `service_id` varchar(60) NOT NULL,
  PRIMARY KEY (`hotel_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `hotel_service_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hotel_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_service`
--

LOCK TABLES `hotel_service` WRITE;
/*!40000 ALTER TABLE `hotel_service` DISABLE KEYS */;
INSERT INTO `hotel_service` VALUES ('162777c6-e3aa-420c-a5d6-ca241f23f0b6','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('4cd81a67-5881-4960-96aa-03386ceb7041','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('81067221-b876-4ef7-8928-8d883041786e','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('8356701b-102e-4739-b305-b07325b4b73a','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('e238a5b0-de15-4945-9742-b16a430e197a','0c26975d-a4e8-4f80-ab3a-6bbf9fa12161'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('4cd81a67-5881-4960-96aa-03386ceb7041','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('8356701b-102e-4739-b305-b07325b4b73a','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('b9a9c4c6-8494-474a-8c67-796c6a020338','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('e238a5b0-de15-4945-9742-b16a430e197a','18bc54ea-8755-4e68-9b9c-d1c677a87195'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('50626a3b-acf0-4b32-be07-21dd0936223c','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('81067221-b876-4ef7-8928-8d883041786e','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('8356701b-102e-4739-b305-b07325b4b73a','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('e238a5b0-de15-4945-9742-b16a430e197a','3137e441-b171-4d5a-bab5-421cfaba4b7e'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('50626a3b-acf0-4b32-be07-21dd0936223c','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('6c9a52c7-3648-441f-a1ce-4b3314604638','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('81067221-b876-4ef7-8928-8d883041786e','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('8356701b-102e-4739-b305-b07325b4b73a','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('b9a9c4c6-8494-474a-8c67-796c6a020338','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('e238a5b0-de15-4945-9742-b16a430e197a','318fdcc4-7ea1-4e64-be85-a9bfa7037b5d'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','42f80966-2bbe-485a-b5de-519f175fd109'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','42f80966-2bbe-485a-b5de-519f175fd109'),('e238a5b0-de15-4945-9742-b16a430e197a','42f80966-2bbe-485a-b5de-519f175fd109'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('50626a3b-acf0-4b32-be07-21dd0936223c','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('5c02e5f5-7caf-4c8d-a284-c7ebaaede6b3','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('8356701b-102e-4739-b305-b07325b4b73a','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('b9a9c4c6-8494-474a-8c67-796c6a020338','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('e238a5b0-de15-4945-9742-b16a430e197a','5e909d89-a7c1-41ba-b7b8-ecc9976715f6'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('4cd81a67-5881-4960-96aa-03386ceb7041','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('8356701b-102e-4739-b305-b07325b4b73a','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('e238a5b0-de15-4945-9742-b16a430e197a','64f6f718-8c80-48dd-81dd-aebdacad8c1a'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','69a4b356-33ad-4816-93f3-6cc354f146e0'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','69a4b356-33ad-4816-93f3-6cc354f146e0'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','69a4b356-33ad-4816-93f3-6cc354f146e0'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','69a4b356-33ad-4816-93f3-6cc354f146e0'),('8356701b-102e-4739-b305-b07325b4b73a','69a4b356-33ad-4816-93f3-6cc354f146e0'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','69a4b356-33ad-4816-93f3-6cc354f146e0'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','69a4b356-33ad-4816-93f3-6cc354f146e0'),('b9a9c4c6-8494-474a-8c67-796c6a020338','69a4b356-33ad-4816-93f3-6cc354f146e0'),('e238a5b0-de15-4945-9742-b16a430e197a','69a4b356-33ad-4816-93f3-6cc354f146e0'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('4cd81a67-5881-4960-96aa-03386ceb7041','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('8356701b-102e-4739-b305-b07325b4b73a','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('e238a5b0-de15-4945-9742-b16a430e197a','6afdd75f-3498-4e98-b04d-d8f62c11a33f'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','70351cc7-2bcf-4913-8736-fbe2e7007649'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','70351cc7-2bcf-4913-8736-fbe2e7007649'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','70351cc7-2bcf-4913-8736-fbe2e7007649'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','70351cc7-2bcf-4913-8736-fbe2e7007649'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','70351cc7-2bcf-4913-8736-fbe2e7007649'),('4cd81a67-5881-4960-96aa-03386ceb7041','70351cc7-2bcf-4913-8736-fbe2e7007649'),('50626a3b-acf0-4b32-be07-21dd0936223c','70351cc7-2bcf-4913-8736-fbe2e7007649'),('5c02e5f5-7caf-4c8d-a284-c7ebaaede6b3','70351cc7-2bcf-4913-8736-fbe2e7007649'),('6c9a52c7-3648-441f-a1ce-4b3314604638','70351cc7-2bcf-4913-8736-fbe2e7007649'),('8356701b-102e-4739-b305-b07325b4b73a','70351cc7-2bcf-4913-8736-fbe2e7007649'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','70351cc7-2bcf-4913-8736-fbe2e7007649'),('b9a9c4c6-8494-474a-8c67-796c6a020338','70351cc7-2bcf-4913-8736-fbe2e7007649'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','70351cc7-2bcf-4913-8736-fbe2e7007649'),('e238a5b0-de15-4945-9742-b16a430e197a','70351cc7-2bcf-4913-8736-fbe2e7007649'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','7597332a-441d-45b0-9329-c899054bcfc1'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','7597332a-441d-45b0-9329-c899054bcfc1'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','7597332a-441d-45b0-9329-c899054bcfc1'),('4cd81a67-5881-4960-96aa-03386ceb7041','7597332a-441d-45b0-9329-c899054bcfc1'),('5c02e5f5-7caf-4c8d-a284-c7ebaaede6b3','7597332a-441d-45b0-9329-c899054bcfc1'),('6c9a52c7-3648-441f-a1ce-4b3314604638','7597332a-441d-45b0-9329-c899054bcfc1'),('81067221-b876-4ef7-8928-8d883041786e','7597332a-441d-45b0-9329-c899054bcfc1'),('8356701b-102e-4739-b305-b07325b4b73a','7597332a-441d-45b0-9329-c899054bcfc1'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','7597332a-441d-45b0-9329-c899054bcfc1'),('e238a5b0-de15-4945-9742-b16a430e197a','7597332a-441d-45b0-9329-c899054bcfc1'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('5c02e5f5-7caf-4c8d-a284-c7ebaaede6b3','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('8356701b-102e-4739-b305-b07325b4b73a','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('b9a9c4c6-8494-474a-8c67-796c6a020338','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('e238a5b0-de15-4945-9742-b16a430e197a','77eb050d-7eb9-4508-8814-8e67ed3d8020'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','7db2b231-4aa1-4205-af4f-50b628c34773'),('50626a3b-acf0-4b32-be07-21dd0936223c','7db2b231-4aa1-4205-af4f-50b628c34773'),('5c02e5f5-7caf-4c8d-a284-c7ebaaede6b3','7db2b231-4aa1-4205-af4f-50b628c34773'),('8356701b-102e-4739-b305-b07325b4b73a','7db2b231-4aa1-4205-af4f-50b628c34773'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','7db2b231-4aa1-4205-af4f-50b628c34773'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','7db2b231-4aa1-4205-af4f-50b628c34773'),('e238a5b0-de15-4945-9742-b16a430e197a','7db2b231-4aa1-4205-af4f-50b628c34773'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('4cd81a67-5881-4960-96aa-03386ceb7041','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('50626a3b-acf0-4b32-be07-21dd0936223c','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('8356701b-102e-4739-b305-b07325b4b73a','7fc
6a762-cf41-4902-b1d1-be7379142fc0'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('b9a9c4c6-8494-474a-8c67-796c6a020338','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('e238a5b0-de15-4945-9742-b16a430e197a','7fc6a762-cf41-4902-b1d1-be7379142fc0'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','916c72b9-5c99-422b-bc62-06f255e23d2b'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','916c72b9-5c99-422b-bc62-06f255e23d2b'),('50626a3b-acf0-4b32-be07-21dd0936223c','916c72b9-5c99-422b-bc62-06f255e23d2b'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','916c72b9-5c99-422b-bc62-06f255e23d2b'),('e238a5b0-de15-4945-9742-b16a430e197a','916c72b9-5c99-422b-bc62-06f255e23d2b'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('81067221-b876-4ef7-8928-8d883041786e','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('8356701b-102e-4739-b305-b07325b4b73a','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('e238a5b0-de15-4945-9742-b16a430e197a','ab74f654-2c6c-4709-be4b-ede2f954c40d'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','adfec329-9522-448f-baa2-82c8b1fcdc40'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','adfec329-9522-448f-baa2-82c8b1fcdc40'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','adfec329-9522-448f-baa2-82c8b1fcdc40'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','adfec329-9522-448f-baa2-82c8b1fcdc40'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','adfec329-9522-448f-baa2-82c8b1fcdc40'),('50626a3b-acf0-4b32-be07-21dd0936223c','adfec329-9522-448f-baa2-82c8b1fcdc40'),('6c9a52c7-3648-441f-a1ce-4b3314604638','adfec329-9522-448f-baa2-82c8b1fcdc40'),('81067221-b876-4ef7-8928-8d883041786e','adfec329-9522-448f-baa2-82c8b1fcdc40'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','adfec329-9522-448f-baa2-82c8b1fcdc40'),('b9a9c4c6-8494-474a-8c67-796c6a020338','adfec329-9522-448f-baa2-82c8b1fcdc40'),('e238a5b0-de15-4945-9742-b16a430e197a','adfec329-9522-448f-baa2-82c8b1fcdc40'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','b237ed25-99ff-4125-b192-8b76c73805d1'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','b237ed25-99ff-4125-b192-8b76c73805d1'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','b237ed25-99ff-4125-b192-8b76c73805d1'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','b237ed25-99ff-4125-b192-8b76c73805d1'),('4cd81a67-5881-4960-96aa-03386ceb7041','b237ed25-99ff-4125-b192-8b76c73805d1'),('81067221-b876-4ef7-8928-8d883041786e','b237ed25-99ff-4125-b192-8b76c73805d1'),('8356701b-102e-4739-b305-b07325b4b73a','b237ed25-99ff-4125-b192-8b76c73805d1'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','b237ed25-99ff-4125-b192-8b76c73805d1'),('e238a5b0-de15-4945-9742-b16a430e197a','b237ed25-99ff-4125-b192-8b76c73805d1'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('4cd81a67-5881-4960-96aa-03386ceb7041','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('5c02e5f5-7caf-4c8d-a284-c7ebaaede6b3','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('6c9a52c7-3648-441f-a1ce-4b3314604638','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('81067221-b876-4ef7-8928-8d883041786e','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('8356701b-102e-4739-b305-b07325b4b73a','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('b9a9c4c6-8494-474a-8c67-796c6a020338','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('e238a5b0-de15-4945-9742-b16a430e197a','b5aee4be-4663-4223-8653-6ffdb7ca4326'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('4cd81a67-5881-4960-96aa-03386ceb7041','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('81067221-b876-4ef7-8928-8d883041786e','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('8356701b-102e-4739-b305-b07325b4b73a','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('b9a9c4c6-8494-474a-8c67-796c6a020338','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('d9348c5f-0ebc-4559-bca3-7846b7f60afb','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('e238a5b0-de15-4945-9742-b16a430e197a','c437c2db-67fd-49b4-8b75-36bafa9af2a6'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('50626a3b-acf0-4b32-be07-21dd0936223c','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('8356701b-102e-4739-b305-b07325b4b73a','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('b9a9c4c6-8494-474a-8c67-796c6a020338','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('e238a5b0-de15-4945-9742-b16a430e197a','ce802257-49e4-4d3c-a149-ffcb04a68b63'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','e123677f-1659-44d0-87e7-f2d979624e09'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','e123677f-1659-44d0-87e7-f2d979624e09'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','e123677f-1659-44d0-87e7-f2d979624e09'),('4cd81a67-5881-4960-96aa-03386ceb7041','e123677f-1659-44d0-87e7-f2d979624e09'),('81067221-b876-4ef7-8928-8d883041786e','e123677f-1659-44d0-87e7-f2d979624e09'),('8356701b-102e-4739-b305-b07325b4b73a','e123677f-1659-44d0-87e7-f2d979624e09'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','e123677f-1659-44d0-87e7-f2d979624e09'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','e123677f-1659-44d0-87e7-f2d979624e09'),('e238a5b0-de15-4945-9742-b16a430e197a','e123677f-1659-44d0-87e7-f2d979624e09'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','f044b107-c333-43e1-9e86-e27f58550552'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','f044b107-c333-43e1-9e86-e27f58550552'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','f044b107-c333-43e1-9e86-e27f58550552'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','f044b107-c333-43e1-9e86-e27f58550552'),('6c9a52c7-3648-441f-a1ce-4b3314604638','f044b107-c333-43e1-9e86-e27f58550552'),('81067221-b876-4ef7-8928-8d883041786e','f044b107-c333-43e1-9e86-e27f58550552'),('8356701b-102e-4739-b305-b07325b4b73a','f044b107-c333-43e1-9e86-e27f58550552'),('8cc2bb01-54ad-4d2d-bd90-b101d328b723','f044b107-c333-43e1-9e86-e27f58550552'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','f044b107-c333-43e1-9e86-e27f58550552'),('b9a9c4c6-8494-474a-8c67-796c6a020338','f044b107-c333-43e1-9e86-e27f58550552'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','f044b107-c333-43e1-9e86-e27f58550552'),('e238a5b0-de15-4945-9742-b16a430e197a','f044b107-c333-43e1-9e86-e27f58550552'),('162777c6-e3aa-420c-a5d6-ca241f23f0b6','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('3b1122e3-a490-4aeb-ac7e-cca0bff183d2','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('42b70e6c-97c1-4dba-9271-67db2b4e52a6','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('4cd81a67-5881-4960-96aa-03386ceb7041','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('81067221-b876-4ef7-8928-8d883041786e','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('8356701b-102e-4739-b305-b07325b4b73a','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('b01a308d-2d5a-4903-aa6e-4370f5d6a013','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('d8760304-f34d-4d93-adaf-81dc4dd3925e','f2ca34d7-a806-44d9-b36e-c76dec13311d'),('e238a5b0-de15-4945-9742-b16a430e197a','f2ca34d7-a806-44d9-b36e-c76dec13311d');
/*!40000 ALTER TABLE `hotel_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `entrance_price` int(11) NOT NULL,
  `image_url` varchar(20000) NOT NULL,
  `lattitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `email_address` varchar(128) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `location` varchar(20000) NOT NULL,
  `city_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hotels` VALUES ('162777c6-e3aa-420c-a5d6-ca241f23f0b6','2023-01-08 11:04:34','2023-01-08 11:04:34','shger park ','Sheger Park (Amharic: ሸገር ፓርክ), also known as Friendship Park, is the biggest urban park in Addis Ababa, Ethiopia. The park is right next to Unity Park which holds inside it a zoo, and historical archives. The park sister park unity park was opened by Prime Minister Abiy Ahmed with foreign heads of state and government such as the presidents of Uganda, Kenya, Somalia, and prime minister of Sudan. Sheger park was opened on 10 September 2020, seeing high level Ethiopian government ministers, the president, and the prime minister and first lady herself seen in the opening ceremony.',100,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcityaddisababa.gov.et%2Fam%2Flandmarks%2Fsheger-park&psig=AOvVaw1Pc9ndhicEIQ48jw4Jky1A&ust=1681992282708000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNDFwtbztf4CFQAAAAAdAAAAABAE',9.057541, 38.738874,'shager_park@gmail.com','0251113636','https://goo.gl/maps/ABGsLC1x2z5C7uJn6','76870e82-0e1b-4c8c-96cb-7fe3720bb648'),('29bf7880-f235-4498-9736-3a26bf1b0f5d','2023-01-08 10:52:30','2023-01-08 10:52:30','unity park','Located within the National Grand Palace, Unity Park offers travelers the opportunity to learn about nature and Ethiopian history and culture. Here, you can view historical buildings and artifacts, learn about indigenous plants at the traditional garden, and check out the exotic animals at the zoo, including the endemic black mane lion. There are also a couple of restaurants or cafes where you can refuel throughout the day.',300,'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Unity_Park_Addis_Ababa_Ethiopia_3.jpg/375px-Unity_Park_Addis_Ababa_Ethiopia_3.jpg',9.028720, 38.763954,'unity@gmail.com','0115502332','https://goo.gl/maps/qDnB8veyf1FBqPPF7','76870e82-0e1b-4c8c-96cb-7fe3720bb648'),('36babfa6-cd34-4c8c-bae1-a95c8ef429e1','2023-01-07 19:10:10','2023-01-07 19:10:10','hop music consert','hop music consert is organized by hop music production on the consert attend a lot of audience and musician.',450,'https://ethiopianbusinessreview.net/wp-content/uploads/2022/08/addis-hearing-stage-sound-again.jpg',8.990495534597883, 38.789522008768024,'info@milinum.com','0115514141','https://goo.gl/maps/xNYNahsQz93ZAmLx8','76870e82-0e1b-4c8c-96cb-7fe3720bb648')
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hotel_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('4ae7cf42-d524-4746-8161-ddc52580784d','2023-01-07 18:48:04','2023-01-07 18:48:04','d8760304-f34d-4d93-adaf-81dc4dd3925e','14d1652f-a94c-4cb0-923a-0c0d7256e820'),('a19138c6-7fb6-45fb-ae99-17f21725992f','2023-03-22 06:46:29','2023-03-22 06:46:29','e238a5b0-de15-4945-9742-b16a430e197a','3783a33b-2366-4794-bac7-c156c7ce7b15'),('a66dbe9d-dd04-4b96-bf2d-6201c3955356','2023-01-07 18:36:56','2023-01-07 18:36:56','3b1122e3-a490-4aeb-ac7e-cca0bff183d2','14d1652f-a94c-4cb0-923a-0c0d7256e820');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES ('0c26975d-a4e8-4f80-ab3a-6bbf9fa12161','2023-01-01 17:15:33','2023-01-01 17:15:33','zoo visting','visiting wild animals and enjoy with them.'),('18bc54ea-8755-4e68-9b9c-d1c677a87195','2023-01-01 17:04:00','2023-01-01 17:04:00','parking service','we have enough parking area to park your cars'),('3137e441-b171-4d5a-bab5-421cfaba4b7e','2023-01-01 17:13:59','2023-01-01 17:13:59','cafe service','we have cafe, bar and restaurant you can enjoy it.'),('318fdcc4-7ea1-4e64-be85-a9bfa7037b5d','2023-01-01 16:48:48','2023-01-01 16:48:48','snack service','we will give you snack and water if you attend our concert'),
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `place_of_birth` varchar(128) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--


-- Dump completed on 2023-04-15 19:54:50
