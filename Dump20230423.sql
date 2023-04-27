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
INSERT INTO `communes` VALUES (1,'Las Condes','2023-04-26 17:48:50','2023-04-26 17:48:50'),(2,'Puente Alto','2023-04-26 17:48:50','2023-04-26 17:48:50'),(3,'La Florida','2023-04-26 17:48:50','2023-04-26 17:48:50');
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
INSERT INTO `document_assignments` VALUES (1,1,1,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(2,2,1,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(3,3,1,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(4,4,1,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(5,5,1,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(6,6,1,3,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(7,7,1,3,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(8,1,2,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(9,8,2,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(10,3,2,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(11,4,2,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(12,5,2,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(13,9,2,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(14,6,2,3,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(15,10,2,3,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(16,9,3,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(17,11,3,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(18,12,3,2,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(19,4,3,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(20,5,3,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(21,9,3,1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(22,6,3,3,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(23,10,3,3,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(24,9,3,3,'2023-04-26 17:48:50','2023-04-26 17:48:50');
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
INSERT INTO `documents` VALUES (1,'Permiso de obras','Permiso de obras',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(2,'Permiso de operatividad','Permiso de operatividad',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(3,'Conformación de la sociedad','Documento de Conformación de la sociedad',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(4,'Permiso de manufactura de alimentos','Documento de Permiso de manufactura de alimentos',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(5,'Permiso de autorización Sanitaria','Documento de Permiso de autorización Sanitaria',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(6,'Permisos de importación','Documento de Permisos de importación',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(7,'Patentes legales de productos en venta','Documento de Patentes legales de productos en venta',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(8,'Permiso de manipulación de alimentos','Documento de Permiso de manipulación de alimentos',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(9,'Cédula de identidad','Documento Cédula de identidad',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(10,'Patente de manufactura de proveedores','Documento de Patente de manufactura de proveedores',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(11,'Copia de traslado inicial de mercaderías','Documento Copia de traslado inicial de mercaderías',1,'2023-04-26 17:48:50','2023-04-26 17:48:50'),(12,'Manual de buenas prácticas para la comercialización de productos','Documento manual de buenas prácticas para la comercialización de productos',1,'2023-04-26 17:48:50','2023-04-26 17:48:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneurs`
--

LOCK TABLES `entrepreneurs` WRITE;
/*!40000 ALTER TABLE `entrepreneurs` DISABLE KEYS */;
INSERT INTO `entrepreneurs` VALUES (1,'Super Express','8888888','Matagalpa',11,1,2,'2023-04-26 21:19:05','2023-04-27 03:46:30'),(2,'Pasteleria Mil Flores','84803590','Ciudad el Doral',11,2,1,'2023-04-27 02:05:25','2023-04-27 03:13:40'),(3,'Celulares Chavelo','8282828282','Matagalpa',11,3,3,'2023-04-27 03:44:58','2023-04-27 03:44:58'),(4,'Pasteles doña Coco','8282829292','Masaya',11,2,1,'2023-04-27 03:47:07','2023-04-27 03:47:07'),(5,'Nica Business','92929292922','Matagalpa',11,2,2,'2023-04-27 03:48:02','2023-04-27 03:48:02'),(6,'The Lab','92929292922','Matagalpa',11,2,2,'2023-04-27 03:48:15','2023-04-27 03:48:15');
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
INSERT INTO `industry_sectors` VALUES (1,'Pastelería','Panadería que se especializa en productos horneados dulces, pasteles y postres','2023-04-26 17:48:50','2023-04-26 17:48:50'),(2,'Minimarket','Pequeña tienda de abarrotes que vende una variedad de alimentos y artículos del hogar','2023-04-26 17:48:50','2023-04-26 17:48:50'),(3,'Electrónica','Tiendas que venden dispositivos y gadgets electrónicos, como computadoras, smartphones y televisores','2023-04-26 17:48:50','2023-04-26 17:48:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (46,'2014_10_12_000000_create_roles_table',1),(47,'2014_10_12_000000_create_users_table',1),(48,'2014_10_12_100000_create_password_reset_tokens_table',1),(49,'2019_08_19_000000_create_failed_jobs_table',1),(50,'2019_12_14_000001_create_personal_access_tokens_table',1),(51,'2023_04_22_033703_create_industry_sectors_table',1),(52,'2023_04_22_033732_create_communes_table',1),(53,'2023_04_22_033733_create_entrepreneurs_table',1),(54,'2023_04_22_033811_create_documents_table',1),(55,'2023_04_22_153950_create_document_assignments_table',1),(56,'2023_04_22_153950_create_entrepreneur_documents_table',1),(57,'2023_04_25_092032_add_language_to_users_table',1);
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
INSERT INTO `roles` VALUES (1,'Admin','2023-04-26 17:48:50','2023-04-26 17:48:50'),(2,'Vendedor','2023-04-26 17:48:50','2023-04-26 17:48:50');
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
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'es',
  `role_id` bigint unsigned DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'Price Schmeler','gconn@example.com','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'QKHrdF5ogn','2023-04-26 17:48:50','2023-04-26 17:48:50'),(2,'Margarete Ernser IV','grimes.ramona@example.org','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'NcwGcgLbXs','2023-04-26 17:48:50','2023-04-26 17:48:50'),(3,'Chester Boehm','stoltenberg.josianne@example.org','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'77vQyW2U18','2023-04-26 17:48:50','2023-04-26 17:48:50'),(4,'Prof. Edmund Kuhlman DDS','maymie.rau@example.net','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'zjgJkjI8nt','2023-04-26 17:48:50','2023-04-26 17:48:50'),(5,'Yadira Sporer','wkuhlman@example.org','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'AdnZsvwy03','2023-04-26 17:48:50','2023-04-26 17:48:50'),(6,'Gussie Bergnaum','metz.libby@example.org','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'M4c9uoBmQH','2023-04-26 17:48:50','2023-04-26 17:48:50'),(7,'Dr. Theron Bahringer DDS','whitney70@example.net','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'4Q4XNPjER7','2023-04-26 17:48:50','2023-04-26 17:48:50'),(8,'Anabelle Green','marcos70@example.com','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'SsuhYud5lQ','2023-04-26 17:48:50','2023-04-26 17:48:50'),(9,'Giovanni Marks','kaya.gerhold@example.org','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'cfbNvDiA9c','2023-04-26 17:48:50','2023-04-26 17:48:50'),(10,'Camron Cremin','skylar.jaskolski@example.com','2023-04-26 17:48:50','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','es',2,'0P9saXhOHC','2023-04-26 17:48:50','2023-04-26 17:48:50'),(11,'David','2jshkug0e@mozmail.com','2023-04-26 17:48:50','$2y$10$3epSi8JFUdquc7izNeaUieoqvvjplg6kL.gvDR0JkhwNp80PYjdiy','en',1,'N2mvp0347fUxIcd5nizN929cVYae6mVJO5uHf0nTMEUVFRg90lf9YHrfiwa0','2023-04-26 17:48:50','2023-04-27 15:28:49');
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

-- Dump completed on 2023-04-27  9:31:56
