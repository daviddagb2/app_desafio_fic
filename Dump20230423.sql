-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: appfic
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `communes`
--

DROP TABLE IF EXISTS `communes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communes`
--

LOCK TABLES `communes` WRITE;
/*!40000 ALTER TABLE `communes` DISABLE KEYS */;
INSERT INTO `communes` VALUES (1,'Las Condes','2023-04-22 23:21:01','2023-04-22 23:21:01'),(2,'Puente Alto','2023-04-22 23:21:01','2023-04-22 23:21:01'),(3,'La Florida','2023-04-22 23:21:01','2023-04-22 23:21:01');
/*!40000 ALTER TABLE `communes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_assignments`
--

DROP TABLE IF EXISTS `document_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_assignments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint unsigned NOT NULL,
  `commune_id` bigint unsigned NOT NULL,
  `industry_sector_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_assignments_document_id_foreign` (`document_id`),
  KEY `document_assignments_commune_id_foreign` (`commune_id`),
  KEY `document_assignments_industry_sector_id_foreign` (`industry_sector_id`),
  CONSTRAINT `document_assignments_commune_id_foreign` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`),
  CONSTRAINT `document_assignments_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`),
  CONSTRAINT `document_assignments_industry_sector_id_foreign` FOREIGN KEY (`industry_sector_id`) REFERENCES `industry_sectors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_assignments`
--

LOCK TABLES `document_assignments` WRITE;
/*!40000 ALTER TABLE `document_assignments` DISABLE KEYS */;
INSERT INTO `document_assignments` VALUES (1,1,1,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(2,2,1,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(3,3,1,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(4,4,1,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(5,5,1,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(6,6,1,3,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(7,7,1,3,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(8,1,2,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(9,8,2,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(10,3,2,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(11,4,2,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(12,5,2,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(13,9,2,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(14,6,2,3,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(15,10,2,3,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(16,9,3,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(17,11,3,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(18,12,3,2,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(19,4,3,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(20,5,3,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(21,9,3,1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(22,6,3,3,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(23,10,3,3,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(24,9,3,3,'2023-04-22 23:21:01','2023-04-22 23:21:01');
/*!40000 ALTER TABLE `document_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'Permiso de obras','Permiso de obras',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(2,'Permiso de operatividad','Permiso de operatividad',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(3,'Conformación de la sociedad','Documento de Conformación de la sociedad',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(4,'Permiso de manufactura de alimentos','Documento de Permiso de manufactura de alimentos',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(5,'Permiso de autorización Sanitaria','Documento de Permiso de autorización Sanitaria',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(6,'Permisos de importación','Documento de Permisos de importación',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(7,'Patentes legales de productos en venta','Documento de Patentes legales de productos en venta',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(8,'Permiso de manipulación de alimentos','Documento de Permiso de manipulación de alimentos',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(9,'Cédula de identidad','Documento Cédula de identidad',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(10,'Patente de manufactura de proveedores','Documento de Patente de manufactura de proveedores',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(11,'Copia de traslado inicial de mercaderías','Documento Copia de traslado inicial de mercaderías',1,'2023-04-22 23:21:01','2023-04-22 23:21:01'),(12,'Manual de buenas prácticas para la comercialización de productos','Documento manual de buenas prácticas para la comercialización de productos',1,'2023-04-22 23:21:01','2023-04-22 23:21:01');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrepreneur_documents`
--

DROP TABLE IF EXISTS `entrepreneur_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepreneur_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `entrepreneur_id` bigint unsigned NOT NULL,
  `document_assignment_id` bigint unsigned NOT NULL,
  `presented` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entrepreneur_documents_entrepreneur_id_foreign` (`entrepreneur_id`),
  KEY `entrepreneur_documents_document_assignment_id_foreign` (`document_assignment_id`),
  CONSTRAINT `entrepreneur_documents_document_assignment_id_foreign` FOREIGN KEY (`document_assignment_id`) REFERENCES `document_assignments` (`id`),
  CONSTRAINT `entrepreneur_documents_entrepreneur_id_foreign` FOREIGN KEY (`entrepreneur_id`) REFERENCES `entrepreneurs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneur_documents`
--

LOCK TABLES `entrepreneur_documents` WRITE;
/*!40000 ALTER TABLE `entrepreneur_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrepreneur_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrepreneurs`
--

DROP TABLE IF EXISTS `entrepreneurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepreneurs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(22) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `commune_id` bigint unsigned NOT NULL,
  `industry_sector_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entrepreneurs_user_id_foreign` (`user_id`),
  KEY `entrepreneurs_commune_id_foreign` (`commune_id`),
  KEY `entrepreneurs_industry_sector_id_foreign` (`industry_sector_id`),
  CONSTRAINT `entrepreneurs_commune_id_foreign` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`),
  CONSTRAINT `entrepreneurs_industry_sector_id_foreign` FOREIGN KEY (`industry_sector_id`) REFERENCES `industry_sectors` (`id`),
  CONSTRAINT `entrepreneurs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneurs`
--

LOCK TABLES `entrepreneurs` WRITE;
/*!40000 ALTER TABLE `entrepreneurs` DISABLE KEYS */;
INSERT INTO `entrepreneurs` VALUES (1,'Pasteles Miriam','8888888','Managua Nicaragua',11,1,1,'2023-04-24 05:45:32','2023-04-24 10:26:37');
/*!40000 ALTER TABLE `entrepreneurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry_sectors`
--

DROP TABLE IF EXISTS `industry_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry_sectors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry_sectors`
--

LOCK TABLES `industry_sectors` WRITE;
/*!40000 ALTER TABLE `industry_sectors` DISABLE KEYS */;
INSERT INTO `industry_sectors` VALUES (1,'Pastelería','Panadería que se especializa en productos horneados dulces, pasteles y postres','2023-04-22 23:21:01','2023-04-22 23:21:01'),(2,'Minimarket','Pequeña tienda de abarrotes que vende una variedad de alimentos y artículos del hogar','2023-04-22 23:21:01','2023-04-22 23:21:01'),(3,'Electrónica','Tiendas que venden dispositivos y gadgets electrónicos, como computadoras, smartphones y televisores','2023-04-22 23:21:01','2023-04-22 23:21:01');
/*!40000 ALTER TABLE `industry_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (34,'2014_10_12_000000_create_roles_table',1),(35,'2014_10_12_000000_create_users_table',1),(36,'2014_10_12_100000_create_password_reset_tokens_table',1),(37,'2019_08_19_000000_create_failed_jobs_table',1),(38,'2019_12_14_000001_create_personal_access_tokens_table',1),(39,'2023_04_22_033703_create_industry_sectors_table',1),(40,'2023_04_22_033732_create_communes_table',1),(41,'2023_04_22_033733_create_entrepreneurs_table',1),(42,'2023_04_22_033811_create_documents_table',1),(43,'2023_04_22_153950_create_document_assignments_table',1),(44,'2023_04_22_153950_create_entrepreneur_documents_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','2023-04-22 23:21:01','2023-04-22 23:21:01'),(2,'Vendedor','2023-04-22 23:21:01','2023-04-22 23:21:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jayne Marks MD','sean07@example.net','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'xVsTSNB2gh','2023-04-22 23:21:01','2023-04-22 23:21:01'),(2,'Brad Ernser','lemke.bailey@example.com','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'EoJzS08Gbl','2023-04-22 23:21:01','2023-04-22 23:21:01'),(3,'Dominic Beatty I','rpollich@example.org','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'mmVBczmwQG','2023-04-22 23:21:01','2023-04-22 23:21:01'),(4,'Marcellus Rosenbaum III','rafaela63@example.net','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'sjRor1v8fl','2023-04-22 23:21:01','2023-04-22 23:21:01'),(5,'Dr. Rhoda Corwin','wava02@example.org','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'Hc4kkxYFTB','2023-04-22 23:21:01','2023-04-22 23:21:01'),(6,'Mr. Enos Daugherty','kemmer.barney@example.com','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'TErKQAnd4L','2023-04-22 23:21:01','2023-04-22 23:21:01'),(7,'Ms. Fay Herman DDS','lila42@example.com','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'WpPlbnDm2l','2023-04-22 23:21:01','2023-04-22 23:21:01'),(8,'Shanelle McGlynn','towne.reymundo@example.com','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'9OeF4EMQNN','2023-04-22 23:21:01','2023-04-22 23:21:01'),(9,'Bessie Harris','huels.kiana@example.net','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'1pa1eDpVjv','2023-04-22 23:21:01','2023-04-22 23:21:01'),(10,'Kiley Torp','svandervort@example.net','2023-04-22 23:21:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',2,'GKlwC2rtH1','2023-04-22 23:21:01','2023-04-22 23:21:01'),(11,'David','2jshkug0e@mozmail.com','2023-04-22 23:21:01','$2y$10$m/mOKxmqk7JnrkJm5DjkI.mYbnUIPX0iRPFq/RcVNx29SyuJ958fO',1,'Wni8DwyuE4JAzqW6uoFTS5QGIbYVZq720etcc0EWP8Sp4fsjlmh2sjAYVjmK','2023-04-22 23:21:01','2023-04-22 23:21:01');
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

-- Dump completed on 2023-04-23 23:12:44
