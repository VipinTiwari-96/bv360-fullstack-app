-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: adonis_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `adonis_schema`
--

DROP TABLE IF EXISTS `adonis_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  `migration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema`
--

LOCK TABLES `adonis_schema` WRITE;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` VALUES (1,'database/migrations/1761669069021_create_users_table',1,'2025-10-29 02:42:48'),(2,'database/migrations/1761669069028_create_access_tokens_table',1,'2025-10-29 02:42:48'),(3,'database/migrations/1761763362062_create_projects_table',2,'2025-10-29 18:46:10');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adonis_schema_versions`
--

DROP TABLE IF EXISTS `adonis_schema_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema_versions` (
  `version` int unsigned NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema_versions`
--

LOCK TABLES `adonis_schema_versions` WRITE;
/*!40000 ALTER TABLE `adonis_schema_versions` DISABLE KEYS */;
INSERT INTO `adonis_schema_versions` VALUES (2);
/*!40000 ALTER TABLE `adonis_schema_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_access_tokens`
--

DROP TABLE IF EXISTS `auth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_access_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_id` int unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `abilities` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_access_tokens_tokenable_id_foreign` (`tokenable_id`),
  CONSTRAINT `auth_access_tokens_tokenable_id_foreign` FOREIGN KEY (`tokenable_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_access_tokens`
--

LOCK TABLES `auth_access_tokens` WRITE;
/*!40000 ALTER TABLE `auth_access_tokens` DISABLE KEYS */;
INSERT INTO `auth_access_tokens` VALUES (5,3,'auth_token',NULL,'ad5a41c75c549dc8d9c73c836a41c2cd314acb69f6b0482e6cd16d237691d6a7','[\"*\"]','2025-10-29 13:21:50','2025-10-29 13:21:50','2025-10-30 07:11:17',NULL),(6,4,'auth_token',NULL,'5df668befa3ca7a0b9e7f145630e5a5dc2edd4e93452f2625ab448aa7459b29c','[\"*\"]','2025-10-29 14:36:17','2025-10-29 14:36:17','2025-10-30 08:33:39',NULL),(7,4,'auth_token',NULL,'d75e0980650f6ece13cf2c93f472681139fbbc4de238a1e4f4746043cd6965fd','[\"*\"]','2025-10-30 04:29:58','2025-10-30 04:29:58',NULL,NULL),(8,4,'auth_token',NULL,'986a1a69293e7bf50faf9dd2948b5f3d87f55fa2499fd65cad0502ef10bc5e0d','[\"*\"]','2025-10-30 04:40:03','2025-10-30 04:40:03',NULL,NULL),(9,4,'auth_token',NULL,'2caa20398290a085eebf18f953a32876118050cf5d979ada818f0bd4846aa7f3','[\"*\"]','2025-10-30 04:45:28','2025-10-30 04:45:28',NULL,NULL),(10,4,'auth_token',NULL,'3b5bd112520680094e912032a6d9d9f94d23051665ea4f4ac86953e4738a82e7','[\"*\"]','2025-10-30 04:47:15','2025-10-30 04:47:15',NULL,NULL),(11,4,'auth_token',NULL,'1de4564ae603bb5b4078b88aa40d5ec8bcc236ef01788d4d7da630e839761918','[\"*\"]','2025-10-30 05:07:46','2025-10-30 05:07:46',NULL,NULL),(12,4,'auth_token',NULL,'5b4c25c2ae896a3e63dac09b278b78890c0f356ff4afd5a9723a1eadce460317','[\"*\"]','2025-10-30 05:15:10','2025-10-30 05:15:10','2025-10-30 05:15:10',NULL),(13,3,'auth_token',NULL,'20a038ecce7e9194977f7b8ec72545e0ec967986307564b116a82f2c1f219b02','[\"*\"]','2025-10-30 05:18:56','2025-10-30 05:18:56','2025-10-30 05:18:56',NULL),(14,3,'auth_token',NULL,'0bc2f728f9ae9da625c16b287df9964f39fa4fa3523f5db8fd013756f13572ba','[\"*\"]','2025-10-30 05:29:30','2025-10-30 05:29:30','2025-10-30 05:46:21',NULL),(15,3,'auth_token',NULL,'3effb5a5dd489a1a373a21096f4b39e6c25596a12503425266bb9fbfeb923306','[\"*\"]','2025-10-30 05:46:33','2025-10-30 05:46:33','2025-10-30 05:48:50',NULL),(16,3,'auth_token',NULL,'3196c12a8bbf3566b5e156de8dd3c525f931a74cfe67383afaf42ad7ec3f278c','[\"*\"]','2025-10-30 05:49:56','2025-10-30 05:49:56','2025-10-30 05:49:57',NULL),(17,3,'auth_token',NULL,'6805ed485a44a75177abaf3af4413291a189f11875381e3b2ef42e13785a69fa','[\"*\"]','2025-10-30 05:51:07','2025-10-30 05:51:07','2025-10-30 05:51:07',NULL),(18,3,'auth_token',NULL,'0df1df9c70d79ad138b8915a085aa2be11afbc0d69dfbbdf36e130da90db70c9','[\"*\"]','2025-10-30 05:53:41','2025-10-30 05:53:41','2025-10-30 05:54:48',NULL),(19,3,'auth_token',NULL,'7c20283250dbb76c3684146bfc65edd98bb6d3c81b641bd468a31343edb9f4ce','[\"*\"]','2025-10-30 05:55:56','2025-10-30 05:55:56','2025-10-30 05:58:17',NULL),(20,3,'auth_token',NULL,'65a012776fdb5188aa427e528149214eab9ba20c9b7cb5d8871a91173229e9dc','[\"*\"]','2025-10-30 06:55:11','2025-10-30 06:55:11','2025-10-30 06:57:27',NULL),(21,3,'auth_token',NULL,'4daaf5137b6de2804e7a2fe16edc9cffc1b64fd6a110d2c9ea6d9ff2f958e5d3','[\"*\"]','2025-10-30 06:59:35','2025-10-30 06:59:35','2025-10-30 06:59:46',NULL),(22,3,'auth_token',NULL,'3a52391763fa5582a21ad085c36c96fcefc2d2ad665dfd77e594c2d983d42305','[\"*\"]','2025-10-30 07:02:23','2025-10-30 07:02:23','2025-10-30 07:03:39',NULL),(23,4,'auth_token',NULL,'f6c5477106e0f01d06304083675dbbcb4c4f027c9ee4e497d9c7b7d3a8a49dc0','[\"*\"]','2025-10-30 07:04:53','2025-10-30 07:04:53','2025-10-30 07:05:01',NULL),(24,3,'auth_token',NULL,'58ff3987cbeb8b7a96cb70d096a0b7acfa6e33b6294c2828d7893a5a76bbcb2c','[\"*\"]','2025-10-30 07:13:03','2025-10-30 07:13:03','2025-10-30 07:13:23',NULL),(28,3,'auth_token',NULL,'13816962713f55cc210b90619e229ef9186c162f778eeb6f85f9035724ccabba','[\"*\"]','2025-10-30 08:12:30','2025-10-30 08:12:30',NULL,NULL),(29,3,'auth_token',NULL,'2376c830403f2ec85379284bb35e34e0cb44f85fcbc93bbdcce6fad3ac7f9496','[\"*\"]','2025-10-30 08:14:01','2025-10-30 08:14:01',NULL,NULL),(30,3,'auth_token',NULL,'29a622c1dd638e6c221c555fc6cd684907323a31d1e8572a34876cd5aa1f7215','[\"*\"]','2025-10-30 08:14:48','2025-10-30 08:14:48',NULL,NULL),(31,3,'auth_token',NULL,'9cd8e826b292863e9c7010a62273b11f87c491c4ca110547a28c68efcfa0e088','[\"*\"]','2025-10-30 08:15:59','2025-10-30 08:15:59',NULL,NULL),(32,3,'auth_token',NULL,'79241c883160a8664d6653d95801b32aa0fc777da8c15a2c55627a01631aa71e','[\"*\"]','2025-10-30 08:16:48','2025-10-30 08:16:48',NULL,NULL);
/*!40000 ALTER TABLE `auth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `progress` int DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_user_id_foreign` (`user_id`),
  CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,3,'Test-A','Pending',19,'2025-10-29 18:47:50','2025-10-29 18:47:50');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'vishal','vishal@gmail.com','$scrypt$n=16384,r=8,p=1$+X1txEvzV6SnG8qx/nD14g$2A3J59svJdi1dIIRCQQ2vW9ZY0QjcA1fEAi39Gb309eGWfuPITkHv+auUvPykECvOgGPBDO7TXIVn2DGwvpE/Q','2025-10-29 10:48:54','2025-10-29 10:48:54'),(4,'rahul','rahul@gmail.com','$scrypt$n=16384,r=8,p=1$yFHdJHKbeenj9KDqfjMLJw$wc7OeDOJI84b+/BH/feB1OBeQsZemPHytDCW/h1N+515M5+5QgMmEaHnaAavZIHI+NK7SFaTAYelERXsfuMQVw','2025-10-29 14:35:32','2025-10-29 14:35:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-30 23:45:54
