-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'JcQaRLDee0HFVom9vnkV3HOiB2KM1MEo',1,'2023-03-01 01:08:20','2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2028-03-01 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,'Top Slider Image 2','2028-03-01 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,'Homepage middle 1','2028-03-01 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(4,'Homepage middle 2','2028-03-01 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(5,'Homepage middle 3','2028-03-01 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(6,'Homepage big 1','2028-03-01 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(7,'Homepage bottom small','2028-03-01 00:00:00','not_set','NTVVBH9MLPSJ','promotion/7.jpg','/products',0,7,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(8,'Product sidebar','2028-03-01 00:00:00','product-sidebar','6GNGUBPM1CT7','promotion/8.jpg','/products',0,8,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(9,'Homepage big 2','2028-03-01 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Quo eius nostrum provident incidunt. Sint porro autem sunt et delectus. Impedit neque sit ut et amet.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(2,'Fashion',0,'Ut ex voluptatibus id laudantium omnis. Iure ut accusamus delectus ea ut tenetur quasi. Natus eum id itaque qui quae. Id accusantium quidem dolor quia facere quod est vitae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(3,'Electronic',0,'Nam corrupti in dolor. Et dolor quasi veniam maxime totam et. Quidem maxime nulla dicta ut. Occaecati incidunt qui doloremque magni et dolorem debitis. Repudiandae molestiae quia vero animi est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(4,'Commercial',0,'Optio veniam explicabo aut sit eos fugit. At est distinctio dicta maiores a dolorum. Dolorem et animi dolore reprehenderit omnis sint. Aspernatur provident rerum ea quas vel eveniet expedita.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Edgardo Herman Sr.','kaitlin.nitzsche@example.net','260.725.4682','36252 Chasity Stravenue\nGerlachfurt, IL 24620-3152','Porro velit dolorem rerum.','Nulla laudantium officia sit ut veritatis cum nobis. At commodi deleniti nemo. Earum ipsam rerum nostrum quia magni ut voluptatibus. Blanditiis non sit vel architecto odit quos est aliquam. Odio ab saepe qui saepe veniam modi voluptate. Et sit et eveniet voluptas. Et porro praesentium aut quia explicabo. Architecto quisquam necessitatibus quam excepturi saepe dolor omnis. Fugit at et dolores optio delectus aspernatur dignissimos suscipit. Neque est maiores ullam nobis et itaque natus.','read','2023-03-01 01:08:20','2023-03-01 01:08:20'),(2,'Mr. Carlos Ankunding MD','giovanny93@example.net','+1.681.335.0605','190 Runolfsson Mountain Apt. 491\nAntwonbury, VA 20709-6360','Odio explicabo esse occaecati quod.','Et sed aut quibusdam veritatis. Suscipit enim alias qui iusto facilis temporibus eos. Vero perferendis vel velit explicabo sit impedit. Dolores quas voluptates magni nihil incidunt. Odit odit corporis corrupti voluptatem aspernatur voluptatibus vel. Accusamus quo rerum consequuntur deleniti. Odit quia sed non debitis expedita dolor nihil. Exercitationem aspernatur qui a quam provident pariatur qui. Quasi possimus beatae hic distinctio architecto incidunt eos.','read','2023-03-01 01:08:20','2023-03-01 01:08:20'),(3,'Kolby Ritchie','nora05@example.com','+1.281.390.8774','194 Eileen Point\nNorth Ryderville, IA 38638','Animi et cupiditate hic quaerat repudiandae.','Quia magnam nemo cum. Autem minus alias ad facere nemo ad praesentium repellendus. Veniam cupiditate nam dolorem. Eveniet sint est eum incidunt. At explicabo non libero ut magni soluta labore. Eaque accusamus aperiam explicabo quae. Tempora ex provident sed fuga debitis quam eos. Quia ab eos voluptatem sed repudiandae et similique. Distinctio ut voluptatum laudantium minima. Possimus dolor ex placeat fugiat recusandae qui nostrum.','unread','2023-03-01 01:08:20','2023-03-01 01:08:20'),(4,'Charlie McLaughlin','cremin.dallin@example.net','916-409-4397','964 Heaney Run\nWest Elza, DE 95436-4254','Consequatur fugiat velit aut.','Esse quia eos inventore illum. Necessitatibus ratione similique eveniet hic odit quo. Expedita dolorem quisquam et recusandae quia illo officia assumenda. Quaerat culpa quia consectetur nihil. Hic at eligendi qui magnam non. Illum quod et sequi quis non. Ut pariatur quis et pariatur dicta debitis. Cum debitis nihil sapiente. Ipsam nam eum odit quis a. Sit aut soluta dolores est dolor numquam sed. Reiciendis eum itaque nam velit. Libero dicta temporibus quibusdam excepturi fugit magnam.','unread','2023-03-01 01:08:20','2023-03-01 01:08:20'),(5,'Lysanne Gibson','crona.dorothea@example.org','+1 (478) 351-9700','863 Sauer Villages\nPort Nedra, WY 27172','Ab atque quibusdam animi fuga doloremque.','Quasi aut suscipit voluptas qui. Laborum eligendi error molestiae quisquam hic. Sunt provident sed quis ex aut eum. Eligendi et eos explicabo veritatis magnam. Modi et beatae vel inventore aut earum. Sed aut eveniet repellendus. Sed atque impedit atque error minima rerum sed. Labore nobis consequatur qui expedita et excepturi cupiditate. Quidem quam est iusto eius facilis beatae. Fuga ea aut quia.','read','2023-03-01 01:08:20','2023-03-01 01:08:20'),(6,'Giuseppe Schmidt','jerde.tevin@example.com','+1.602.699.4694','20360 Brenden Port\nLake Carolynmouth, IL 03710-6240','Deleniti quis ipsam placeat ut quam est natus.','Repellendus eligendi velit debitis. Voluptate occaecati dicta rerum ea sapiente et enim. Eos esse optio delectus ipsam a quis. Aspernatur non provident nulla itaque fuga doloribus velit. Expedita sapiente minus repellendus qui est reprehenderit iste fuga. Adipisci doloribus impedit in tempora a optio. Sit sit laudantium vel nesciunt facilis. Quibusdam iusto repudiandae fuga et voluptas reprehenderit. Perferendis veritatis voluptas eos velit sint omnis nam.','read','2023-03-01 01:08:20','2023-03-01 01:08:20'),(7,'Theodore Goyette MD','jay.tromp@example.net','+14583059419','836 Dax Greens\nDesmondport, LA 26354-9917','Cumque occaecati non sed.','Eum fugiat aspernatur error dolorem sequi incidunt. Excepturi beatae ea libero dicta. Eos eum qui ut sint autem impedit. Fuga praesentium omnis repellat. Voluptas omnis facilis in ut. Sed ut iste aliquid. Inventore debitis dolores adipisci commodi. Eos maiores sed quos odio fugiat. Ipsum voluptas aperiam officiis ut perferendis rem.','read','2023-03-01 01:08:20','2023-03-01 01:08:20'),(8,'Kaitlyn O\'Kon','mcclure.sharon@example.org','332.269.8523','795 Maye Isle\nWest Dakota, MN 45099-1448','Accusantium occaecati perspiciatis repellendus.','Corrupti exercitationem fugit recusandae repellendus tenetur. Enim assumenda vel consequuntur rerum est. Totam sed in nesciunt qui. Dolorem quos possimus ea qui occaecati iusto. Est id consequatur quia commodi qui quod. Optio et eum optio quo asperiores eveniet voluptatem. Nihil laudantium aliquid quisquam fuga maxime possimus. Fugit quaerat perferendis sed ut deserunt corrupti. Vero velit vitae aut.','unread','2023-03-01 01:08:20','2023-03-01 01:08:20'),(9,'Mrs. Reta Oberbrunner I','helmer.schimmel@example.org','(510) 574-7480','957 Herminia Forest\nNew Gaylord, NH 56295-8707','Odit quia est excepturi.','Culpa pariatur dolor provident consequatur ut voluptatem laboriosam. Accusamus necessitatibus exercitationem doloribus sunt non perferendis. Rerum unde ratione in repellat. At beatae enim accusamus praesentium. Vero cumque modi culpa assumenda odio labore. Vero fugit provident optio omnis consequatur ut et earum. Quasi voluptas ut consequatur quo. Sit est magnam quos non animi sint tempore.','unread','2023-03-01 01:08:20','2023-03-01 01:08:20'),(10,'Dr. Jamaal Gorczany PhD','bosco.jakayla@example.com','681-793-5408','63876 Mackenzie Cliff\nPort Quinnport, MN 55771-8080','In ipsa voluptatem dolor sed.','Et nam enim dignissimos. Repellat voluptatem optio repellat temporibus eum non qui explicabo. Ut ipsum quia nostrum architecto alias eos ullam. Animi recusandae repudiandae eveniet maiores voluptatibus qui quis. Praesentium assumenda consectetur rerum voluptatem illo et dolores. Tenetur neque delectus omnis reprehenderit nihil sunt. Labore error libero quasi qui ut. Inventore dolorem recusandae perspiciatis illum.','unread','2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2023-03-01 01:08:13','2023-03-01 01:08:13');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(2,'EUR','€',0,2,1,0,0.84,'2023-03-01 01:08:13','2023-03-01 01:08:13'),(3,'VND','₫',0,0,2,0,23203,'2023-03-01 01:08:13','2023-03-01 01:08:13');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Asha White','customer@botble.com','+15126274515','MG','Hawaii','East Raeganstad','9546 Harvey Isle Apt. 108',1,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','57844'),(2,'Asha White','customer@botble.com','+15412850723','HT','Vermont','South Wilfordhaven','906 Rebekah Villages',1,0,'2023-03-01 01:08:19','2023-03-01 01:08:19','12497-1990'),(3,'Berenice Kertzmann','vendor@botble.com','+13602311866','AS','Louisiana','Bruenborough','578 Mary Creek Apt. 413',2,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','18276'),(4,'Berenice Kertzmann','vendor@botble.com','+18636374808','GF','New Jersey','Danton','994 Hester Groves',2,0,'2023-03-01 01:08:19','2023-03-01 01:08:19','36807'),(5,'Devan Walsh','edmond94@example.net','+19289544358','LV','Delaware','Elwinville','5588 Predovic Forks',3,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','49975'),(6,'Lavinia Swaniawski','kassandra.stanton@example.net','+12833921869','YT','Kentucky','North Hassie','82857 Peter Orchard',4,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','64811-2722'),(7,'Dr. Lesley Pfannerstill','wilford.mante@example.org','+17329750666','BA','New Mexico','Wunschland','991 Linnie Well Apt. 812',5,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','88738'),(8,'Emma Considine','paucek.reynold@example.net','+16406400424','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',6,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','34548'),(9,'Jarred Boyer PhD','creichert@example.net','+15183674459','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',7,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','68756'),(10,'Erling Yost','simonis.toy@example.com','+12406469350','TZ','Michigan','West Bert','423 Juanita Valley Suite 911',8,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','17094-6790'),(11,'Ilene Bahringer','lisandro.lockman@example.org','+15412246687','AS','Alaska','Lake Stephenfort','812 Price Causeway Suite 304',9,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','77428'),(12,'Prof. Maudie Bechtelar II','mabelle.trantow@example.com','+12163907108','NE','Texas','Baronshire','1514 Nikolas Pine',10,1,'2023-03-01 01:08:19','2023-03-01 01:08:19','51997');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Asha White','customer@botble.com','$2y$10$XeM9RnPMV0VkMqhlzzkgyuRfp9zoFhO5N7400wN6UobPwy2C0kfv2','customers/1.jpg','1983-02-10','+18546890485',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:19','2023-03-01 08:08:19',NULL,'activated',0,NULL),(2,'Berenice Kertzmann','vendor@botble.com','$2y$10$7IigDtwo.53tYoAj8QgRiujt5MGFHXe7a4yPT4VuzOdTn9ymVYB9S','customers/7.jpg','1999-02-25','+12517535331',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:23','2023-03-01 08:08:19',NULL,'activated',1,'2023-03-01 08:08:23'),(3,'Devan Walsh','edmond94@example.net','$2y$10$S5JNbuFr0MctolEY6wvxGuSVAOpxKfOnVwQaljdimtR4Y5Nw7iXIu','customers/1.jpg','1981-02-21','+15043634584',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:23','2023-03-01 08:08:19',NULL,'activated',1,'2023-03-01 08:08:23'),(4,'Lavinia Swaniawski','kassandra.stanton@example.net','$2y$10$xSMDBRd./JNdxcrCyP8yjeX1D5yrRq9fFQX494ADmcDXP27HJ8HOW','customers/2.jpg','1996-02-03','+12024754221',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:19','2023-03-01 08:08:19',NULL,'activated',0,NULL),(5,'Dr. Lesley Pfannerstill','wilford.mante@example.org','$2y$10$jIh.VUF3Pneg5c41YjRjUOr1tgAs7aIYPt2QWBZ6C2/jzz8wvYL3G','customers/3.jpg','1974-02-20','+13416388371',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:23','2023-03-01 08:08:19',NULL,'activated',1,'2023-03-01 08:08:23'),(6,'Emma Considine','paucek.reynold@example.net','$2y$10$1KB0.yNnOGrezClqdcM7B.5j8wnYLhQkeUWE0DG6EZuFuTcRKZTei','customers/4.jpg','1976-02-19','+14634496018',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:19','2023-03-01 08:08:19',NULL,'activated',0,NULL),(7,'Jarred Boyer PhD','creichert@example.net','$2y$10$ZOWoY.MTqrB6osnEKnceJuWCkdkpMdSrYZFOqX2JMsKjtVjoMXkWe','customers/5.jpg','1996-02-20','+12397123451',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:19','2023-03-01 08:08:19',NULL,'activated',0,NULL),(8,'Erling Yost','simonis.toy@example.com','$2y$10$JjJ/AfI/ZP8CWSPW7zJXK.va99zOSZ3n.ToXqI7aOcDhvVBa8MC/G','customers/6.jpg','1998-02-05','+13108213193',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:19','2023-03-01 08:08:19',NULL,'activated',0,NULL),(9,'Ilene Bahringer','lisandro.lockman@example.org','$2y$10$bd8u/TY3VZUUXqY.6hZsSeRuAfllZQElSAyEX4LrS26CuNzn32Er2','customers/7.jpg','1989-02-22','+17697607365',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:23','2023-03-01 08:08:19',NULL,'activated',1,'2023-03-01 08:08:23'),(10,'Prof. Maudie Bechtelar II','mabelle.trantow@example.com','$2y$10$9fcq8oz2mgl7bvulQjUX3eOMsIrYPyxaDtEPKTIBQVdLF0EhsXbES','customers/8.jpg','1973-02-27','+12694800631',NULL,'2023-03-01 01:08:19','2023-03-01 01:08:19','2023-03-01 08:08:19',NULL,'activated',0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,32.9025,20,1),(1,2,24.3,17,4),(1,3,14.4,12,5),(1,4,182.04,8,1),(1,5,308.52,14,2),(1,6,236.88,13,2),(1,7,532.22,14,2),(1,8,795.887,15,5),(1,9,274.01,15,1),(1,10,422.1,20,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2023-03-31 00:00:00','published','2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(1,2,'2 Year',10,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(1,3,'3 Year',20,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(2,4,'4GB',0,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(2,5,'8GB',10,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(2,6,'16GB',20,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(3,7,'Core i5',0,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(3,8,'Core i7',10,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(3,9,'Core i9',20,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(4,10,'128GB',0,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(4,11,'256GB',10,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(4,12,'512GB',20,9999,0,'2023-03-01 01:08:22','2023-03-01 01:08:22');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-03-01 01:08:22','2023-03-01 01:08:22'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-03-01 01:08:22','2023-03-01 01:08:22');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',1,'68756','shipping_address'),(2,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',2,'68756','shipping_address'),(3,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',3,'68756','shipping_address'),(4,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',4,'34548','shipping_address'),(5,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',5,'34548','shipping_address'),(6,'Erling Yost','+12406469350','simonis.toy@example.com','TZ','Michigan','West Bert','423 Juanita Valley Suite 911',6,'17094-6790','shipping_address'),(7,'Erling Yost','+12406469350','simonis.toy@example.com','TZ','Michigan','West Bert','423 Juanita Valley Suite 911',7,'17094-6790','shipping_address'),(8,'Erling Yost','+12406469350','simonis.toy@example.com','TZ','Michigan','West Bert','423 Juanita Valley Suite 911',8,'17094-6790','shipping_address'),(9,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',9,'34548','shipping_address'),(10,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',10,'34548','shipping_address'),(11,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',11,'64811-2722','shipping_address'),(12,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',12,'64811-2722','shipping_address'),(13,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',13,'64811-2722','shipping_address'),(14,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',14,'51997','shipping_address'),(15,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',15,'51997','shipping_address'),(16,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',16,'51997','shipping_address'),(17,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',17,'51997','shipping_address'),(18,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',18,'64811-2722','shipping_address'),(19,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',19,'64811-2722','shipping_address'),(20,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',20,'64811-2722','shipping_address'),(21,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',21,'51997','shipping_address'),(22,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',22,'51997','shipping_address'),(23,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',23,'51997','shipping_address'),(24,'Asha White','+15126274515','customer@botble.com','MG','Hawaii','East Raeganstad','9546 Harvey Isle Apt. 108',24,'57844','shipping_address'),(25,'Asha White','+15126274515','customer@botble.com','MG','Hawaii','East Raeganstad','9546 Harvey Isle Apt. 108',25,'57844','shipping_address'),(26,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',26,'34548','shipping_address'),(27,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',27,'34548','shipping_address'),(28,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',28,'34548','shipping_address'),(29,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',29,'34548','shipping_address'),(30,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',30,'34548','shipping_address'),(31,'Emma Considine','+16406400424','paucek.reynold@example.net','KW','Oklahoma','South Samantamouth','1725 Conn Isle Apt. 717',31,'34548','shipping_address'),(32,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',32,'64811-2722','shipping_address'),(33,'Lavinia Swaniawski','+12833921869','kassandra.stanton@example.net','YT','Kentucky','North Hassie','82857 Peter Orchard',33,'64811-2722','shipping_address'),(34,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',34,'51997','shipping_address'),(35,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',35,'51997','shipping_address'),(36,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',36,'51997','shipping_address'),(37,'Prof. Maudie Bechtelar II','+12163907108','mabelle.trantow@example.com','NE','Texas','Baronshire','1514 Nikolas Pine',37,'51997','shipping_address'),(38,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',38,'68756','shipping_address'),(39,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',39,'68756','shipping_address'),(40,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',40,'68756','shipping_address'),(41,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',41,'68756','shipping_address'),(42,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',42,'68756','shipping_address'),(43,'Jarred Boyer PhD','+15183674459','creichert@example.net','AT','Maine','Thielmouth','1093 Geovany Brook Suite 237',43,'68756','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(3,'confirm_payment','Payment was confirmed (amount $1,455.00) by %user_name%',0,1,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-02-25 17:08:23','2023-02-25 17:08:23'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-02-25 17:08:23','2023-02-25 17:08:23'),(7,'confirm_payment','Payment was confirmed (amount $997.00) by %user_name%',0,2,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-02-17 09:08:23','2023-02-17 09:08:23'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-02-17 09:08:23','2023-02-17 09:08:23'),(11,'create_shipment','Created shipment for order',0,3,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(12,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-02-22 17:08:23','2023-02-22 17:08:23'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-02-22 17:08:23','2023-02-22 17:08:23'),(15,'confirm_payment','Payment was confirmed (amount $1,269.00) by %user_name%',0,4,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-02-17 23:08:23','2023-02-17 23:08:23'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-02-17 23:08:23','2023-02-17 23:08:23'),(20,'confirm_payment','Payment was confirmed (amount $4,365.00) by %user_name%',0,5,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-02-27 13:08:23','2023-02-27 13:08:23'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-02-27 13:08:23','2023-02-27 13:08:23'),(25,'confirm_payment','Payment was confirmed (amount $1,196.00) by %user_name%',0,6,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(26,'create_shipment','Created shipment for order',0,6,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-02-24 13:08:23','2023-02-24 13:08:23'),(29,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-02-24 13:08:23','2023-02-24 13:08:23'),(30,'confirm_payment','Payment was confirmed (amount $517.00) by %user_name%',0,7,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(31,'create_shipment','Created shipment for order',0,7,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(32,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-02-14 01:08:23','2023-02-14 01:08:23'),(33,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-02-14 01:08:23','2023-02-14 01:08:23'),(34,'confirm_payment','Payment was confirmed (amount $2,454.00) by %user_name%',0,8,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(35,'create_shipment','Created shipment for order',0,8,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(37,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-02-23 09:08:23','2023-02-23 09:08:23'),(38,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-02-23 09:08:23','2023-02-23 09:08:23'),(39,'confirm_payment','Payment was confirmed (amount $423.00) by %user_name%',0,9,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(40,'create_shipment','Created shipment for order',0,9,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-02-20 13:08:23','2023-02-20 13:08:23'),(43,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-02-20 13:08:23','2023-02-20 13:08:23'),(44,'confirm_payment','Payment was confirmed (amount $818.00) by %user_name%',0,10,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(45,'create_shipment','Created shipment for order',0,10,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(46,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-02-19 17:08:23','2023-02-19 17:08:23'),(47,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-02-19 17:08:23','2023-02-19 17:08:23'),(48,'confirm_payment','Payment was confirmed (amount $3,054.75) by %user_name%',0,11,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(49,'create_shipment','Created shipment for order',0,11,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-02-26 09:08:23','2023-02-26 09:08:23'),(52,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-02-26 09:08:23','2023-02-26 09:08:23'),(53,'confirm_payment','Payment was confirmed (amount $857.00) by %user_name%',0,12,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(54,'create_shipment','Created shipment for order',0,12,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-02-27 17:08:23','2023-02-27 17:08:23'),(56,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-02-27 17:08:23','2023-02-27 17:08:23'),(57,'create_shipment','Created shipment for order',0,13,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-02-17 19:08:23','2023-02-17 19:08:23'),(60,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-02-17 19:08:23','2023-02-17 19:08:23'),(61,'confirm_payment','Payment was confirmed (amount $1,800.00) by %user_name%',0,14,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(62,'create_shipment','Created shipment for order',0,14,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-02-25 07:08:23','2023-02-25 07:08:23'),(65,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-02-25 07:08:23','2023-02-25 07:08:23'),(66,'confirm_payment','Payment was confirmed (amount $3,543.00) by %user_name%',0,15,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(67,'create_shipment','Created shipment for order',0,15,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-02-24 09:08:23','2023-02-24 09:08:23'),(69,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-02-24 09:08:23','2023-02-24 09:08:23'),(70,'create_shipment','Created shipment for order',0,16,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-02-25 13:08:23','2023-02-25 13:08:23'),(72,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-02-25 13:08:23','2023-02-25 13:08:23'),(73,'create_shipment','Created shipment for order',0,17,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-02-25 19:08:23','2023-02-25 19:08:23'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-02-25 19:08:23','2023-02-25 19:08:23'),(76,'confirm_payment','Payment was confirmed (amount $3,612.00) by %user_name%',0,18,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(79,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(80,'confirm_payment','Payment was confirmed (amount $2,826.00) by %user_name%',0,19,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(81,'create_shipment','Created shipment for order',0,19,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(83,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(84,'confirm_payment','Payment was confirmed (amount $3,639.00) by %user_name%',0,20,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(86,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-02-20 19:08:23','2023-02-20 19:08:23'),(87,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-02-20 19:08:23','2023-02-20 19:08:23'),(88,'confirm_payment','Payment was confirmed (amount $1,269.00) by %user_name%',0,21,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(89,'create_shipment','Created shipment for order',0,21,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-02-24 11:08:23','2023-02-24 11:08:23'),(91,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-02-24 11:08:23','2023-02-24 11:08:23'),(92,'confirm_payment','Payment was confirmed (amount $538.00) by %user_name%',0,22,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(93,'create_shipment','Created shipment for order',0,22,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(94,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-02-25 09:08:24','2023-02-25 09:08:24'),(96,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-02-25 09:08:24','2023-02-25 09:08:24'),(97,'confirm_payment','Payment was confirmed (amount $3,354.00) by %user_name%',0,23,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(98,'create_shipment','Created shipment for order',0,23,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-02-28 05:08:24','2023-02-28 05:08:24'),(101,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-02-28 05:08:24','2023-02-28 05:08:24'),(102,'confirm_payment','Payment was confirmed (amount $2,834.00) by %user_name%',0,24,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(103,'create_shipment','Created shipment for order',0,24,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-02-22 09:08:24','2023-02-22 09:08:24'),(105,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-02-22 09:08:24','2023-02-22 09:08:24'),(106,'confirm_payment','Payment was confirmed (amount $1,114.00) by %user_name%',0,25,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(107,'create_shipment','Created shipment for order',0,25,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-02-22 07:08:24','2023-02-22 07:08:24'),(110,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-02-22 07:08:24','2023-02-22 07:08:24'),(111,'confirm_payment','Payment was confirmed (amount $2,412.00) by %user_name%',0,26,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(112,'create_shipment','Created shipment for order',0,26,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(113,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-02-25 07:08:24','2023-02-25 07:08:24'),(115,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-02-25 07:08:24','2023-02-25 07:08:24'),(116,'confirm_payment','Payment was confirmed (amount $1,213.00) by %user_name%',0,27,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(117,'create_shipment','Created shipment for order',0,27,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-02-25 01:08:24','2023-02-25 01:08:24'),(120,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-02-25 01:08:24','2023-02-25 01:08:24'),(121,'confirm_payment','Payment was confirmed (amount $1,290.00) by %user_name%',0,28,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(122,'create_shipment','Created shipment for order',0,28,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(123,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-02-27 01:08:24','2023-02-27 01:08:24'),(125,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-02-27 01:08:24','2023-02-27 01:08:24'),(126,'confirm_payment','Payment was confirmed (amount $3,952.00) by %user_name%',0,29,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(127,'create_shipment','Created shipment for order',0,29,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(128,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-02-25 13:08:24','2023-02-25 13:08:24'),(129,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-02-25 13:08:24','2023-02-25 13:08:24'),(130,'create_shipment','Created shipment for order',0,30,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-02-28 11:08:24','2023-02-28 11:08:24'),(132,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-02-28 11:08:24','2023-02-28 11:08:24'),(133,'confirm_payment','Payment was confirmed (amount $2,906.00) by %user_name%',0,31,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(134,'create_shipment','Created shipment for order',0,31,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-02-26 01:08:24','2023-02-26 01:08:24'),(136,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-02-26 01:08:24','2023-02-26 01:08:24'),(137,'confirm_payment','Payment was confirmed (amount $597.00) by %user_name%',0,32,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(138,'create_shipment','Created shipment for order',0,32,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(139,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-02-26 01:08:24','2023-02-26 01:08:24'),(141,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-02-26 01:08:24','2023-02-26 01:08:24'),(142,'create_shipment','Created shipment for order',0,33,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(143,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-02-24 21:08:24','2023-02-24 21:08:24'),(144,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-02-24 21:08:24','2023-02-24 21:08:24'),(145,'confirm_payment','Payment was confirmed (amount $3,618.00) by %user_name%',0,34,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(146,'create_shipment','Created shipment for order',0,34,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(147,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-02-26 23:08:24','2023-02-26 23:08:24'),(149,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-02-26 23:08:24','2023-02-26 23:08:24'),(150,'create_shipment','Created shipment for order',0,35,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-02-26 17:08:24','2023-02-26 17:08:24'),(152,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-02-26 17:08:24','2023-02-26 17:08:24'),(153,'confirm_payment','Payment was confirmed (amount $160.50) by %user_name%',0,36,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(154,'create_shipment','Created shipment for order',0,36,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(155,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(156,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-02-27 17:08:24','2023-02-27 17:08:24'),(157,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-02-27 17:08:24','2023-02-27 17:08:24'),(158,'create_shipment','Created shipment for order',0,37,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(159,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(160,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-02-26 19:08:24','2023-02-26 19:08:24'),(161,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-02-26 19:08:24','2023-02-26 19:08:24'),(162,'confirm_payment','Payment was confirmed (amount $160.50) by %user_name%',0,38,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(163,'create_shipment','Created shipment for order',0,38,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(164,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(165,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-02-28 07:08:24','2023-02-28 07:08:24'),(166,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-02-28 07:08:24','2023-02-28 07:08:24'),(167,'confirm_payment','Payment was confirmed (amount $3,724.00) by %user_name%',0,39,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(168,'create_shipment','Created shipment for order',0,39,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(169,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-02-28 17:08:24','2023-02-28 17:08:24'),(170,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-02-28 17:08:24','2023-02-28 17:08:24'),(171,'confirm_payment','Payment was confirmed (amount $1,743.00) by %user_name%',0,40,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(172,'create_shipment','Created shipment for order',0,40,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-02-27 09:08:24','2023-02-27 09:08:24'),(174,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-02-27 09:08:24','2023-02-27 09:08:24'),(175,'confirm_payment','Payment was confirmed (amount $557.00) by %user_name%',0,41,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(176,'create_shipment','Created shipment for order',0,41,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(177,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-02-28 17:08:24','2023-02-28 17:08:24'),(178,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-02-28 17:08:24','2023-02-28 17:08:24'),(179,'confirm_payment','Payment was confirmed (amount $3,345.00) by %user_name%',0,42,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(180,'create_shipment','Created shipment for order',0,42,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(181,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-02-28 05:08:24','2023-02-28 05:08:24'),(183,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-02-28 05:08:24','2023-02-28 05:08:24'),(184,'confirm_payment','Payment was confirmed (amount $556.00) by %user_name%',0,43,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(185,'create_shipment','Created shipment for order',0,43,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(186,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(187,'update_status','Order confirmed by %user_name%',0,4,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(188,'update_status','Order confirmed by %user_name%',0,5,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(189,'update_status','Order confirmed by %user_name%',0,6,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(190,'update_status','Order confirmed by %user_name%',0,8,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(191,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(192,'update_status','Order confirmed by %user_name%',0,11,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(193,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(194,'update_status','Order confirmed by %user_name%',0,22,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(195,'update_status','Order confirmed by %user_name%',0,23,NULL,'2023-03-01 01:08:25','2023-03-01 01:08:25'),(196,'update_status','Order confirmed by %user_name%',0,25,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(197,'update_status','Order confirmed by %user_name%',0,26,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(198,'update_status','Order confirmed by %user_name%',0,27,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(199,'update_status','Order confirmed by %user_name%',0,28,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(200,'update_status','Order confirmed by %user_name%',0,32,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(201,'update_status','Order confirmed by %user_name%',0,34,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(202,'update_status','Order confirmed by %user_name%',0,36,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(203,'update_status','Order confirmed by %user_name%',0,38,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(204,'update_status','Order confirmed by %user_name%',0,42,NULL,'2023-03-01 01:08:26','2023-03-01 01:08:26'),(205,'update_status','Order confirmed by %user_name%',0,43,NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,517.00,0.00,'[]',NULL,43,'Samsung Smart Phone (Digital)','products/9-1.jpg',540.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(2,1,1,938.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18-2.jpg',661.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(3,2,1,997.00,0.00,'[]',NULL,67,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',627.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(4,3,3,1118.00,0.00,'[]',NULL,71,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1887.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(5,4,3,423.00,0.00,'[]',NULL,35,'Nikon HD camera','products/6.jpg',2094.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(6,5,3,517.00,0.00,'[]',NULL,42,'Samsung Smart Phone (Digital)','products/9.jpg',1620.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(7,5,3,938.00,0.00,'[]',NULL,60,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',1983.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(8,6,2,598.00,0.00,'[]',NULL,40,'Audio Equipment','products/7.jpg',1658.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(9,7,1,517.00,0.00,'[]',NULL,43,'Samsung Smart Phone (Digital)','products/9-1.jpg',540.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(10,8,3,818.00,0.00,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12','products/20.jpg',1836.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(11,9,1,423.00,0.00,'[]',NULL,37,'Nikon HD camera','products/6.jpg',698.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(12,10,1,818.00,0.00,'[]',NULL,66,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',612.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(13,11,3,80.25,0.00,'[]',NULL,25,'Dual Camera 20MP (Digital)','products/1.jpg',2034.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(14,11,3,938.00,0.00,'[]',NULL,61,'Aveeno Moisturizing Body Shower 450ml','products/18-2.jpg',1983.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(15,12,1,857.00,0.00,'[]',NULL,33,'Smart Watch External (Digital)','products/5-1.jpg',754.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(16,13,1,818.00,0.00,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12','products/20.jpg',612.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(17,14,3,600.00,0.00,'[]',NULL,31,'Red &amp; Black Headphone','products/4.jpg',2139.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(18,15,2,1165.00,0.00,'[]',NULL,47,'Xbox One Wireless Controller Black Color','products/11.jpg',1570.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(19,15,1,1213.00,0.00,'[]',NULL,64,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',573.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(20,16,1,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',678.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(21,16,3,1213.00,0.00,'[]',NULL,63,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',1719.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(22,17,1,1115.00,0.00,'[]',NULL,41,'Smart Televisions','products/8.jpg',650.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(23,18,2,600.00,0.00,'[]',NULL,31,'Red &amp; Black Headphone','products/4.jpg',1426.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(24,18,2,1206.00,0.00,'[]',NULL,45,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',1620.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(25,19,2,857.00,0.00,'[]',NULL,33,'Smart Watch External (Digital)','products/5-1.jpg',1508.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(26,19,2,556.00,0.00,'[]',NULL,58,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1046.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(27,20,3,1213.00,0.00,'[]',NULL,63,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',1719.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(28,21,3,423.00,0.00,'[]',NULL,34,'Nikon HD camera','products/6.jpg',2094.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(29,22,1,538.00,0.00,'[]',NULL,56,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',680.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','physical',0),(30,23,3,1118.00,0.00,'[]',NULL,71,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',1887.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(31,24,1,598.00,0.00,'[]',NULL,39,'Audio Equipment','products/7.jpg',829.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(32,24,2,1118.00,0.00,'[]',NULL,74,'Ciate Palemore Lipstick Bold Red Color','products/23-3.jpg',1258.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(33,25,2,557.00,0.00,'[]',NULL,49,'EPSION Plaster Printer','products/12-1.jpg',1406.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(34,26,2,1206.00,0.00,'[]',NULL,44,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',1620.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(35,27,1,1213.00,0.00,'[]',NULL,63,'NYX Beauty Couton Pallete Makeup 12','products/19.jpg',573.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(36,28,1,20.00,0.00,'[]',NULL,28,'Beat Headphone','products/3.jpg',635.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(37,28,2,635.00,0.00,'[]',NULL,69,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1650.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(38,29,1,598.00,0.00,'[]',NULL,40,'Audio Equipment','products/7.jpg',829.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(39,29,3,1118.00,0.00,'[]',NULL,73,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1887.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(40,30,1,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',678.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(41,31,3,598.00,0.00,'[]',NULL,38,'Audio Equipment','products/7.jpg',2487.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(42,31,2,556.00,0.00,'[]',NULL,58,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',1046.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(43,32,2,20.00,0.00,'[]',NULL,30,'Beat Headphone','products/3.jpg',1270.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(44,32,1,557.00,0.00,'[]',NULL,48,'EPSION Plaster Printer','products/12.jpg',703.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(45,33,2,1118.00,0.00,'[]',NULL,73,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',1258.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(46,34,3,1206.00,0.00,'[]',NULL,44,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',2430.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(47,35,1,938.00,0.00,'[]',NULL,59,'Aveeno Moisturizing Body Shower 450ml','products/18.jpg',661.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(48,36,2,80.25,0.00,'[]',NULL,24,'Dual Camera 20MP (Digital)','products/1.jpg',1356.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(49,37,1,1118.00,0.00,'[]',NULL,74,'Ciate Palemore Lipstick Bold Red Color','products/23-3.jpg',629.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(50,38,2,80.25,0.00,'[]',NULL,25,'Dual Camera 20MP (Digital)','products/1.jpg',1356.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(51,39,3,818.00,0.00,'[]',NULL,66,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',1836.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(52,39,2,635.00,0.00,'[]',NULL,69,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',1650.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(53,40,1,1206.00,0.00,'[]',NULL,45,'Herschel Leather Duffle Bag In Brown Color','products/10-1.jpg',810.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(54,40,1,537.00,0.00,'[]',NULL,53,'B&amp;O Play Mini Bluetooth Speaker','products/14.jpg',727.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(55,41,1,557.00,0.00,'[]',NULL,49,'EPSION Plaster Printer','products/12-1.jpg',703.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(56,42,3,1115.00,0.00,'[]',NULL,41,'Smart Televisions','products/8.jpg',1950.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0),(57,43,1,556.00,0.00,'[]',NULL,58,'Samsung Gear VR Virtual Reality Headset (Digital)','products/17.jpg',523.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',7,'1','default','pending',1455.00,0.00,0.00,NULL,NULL,0.00,1455.00,1,NULL,1,NULL,'u4VqpE0Yu7CM8stluS2xCypUi5pds',1,'2023-02-24 01:08:23','2023-03-01 01:08:23',3),(2,'#10000002',7,'1','default','pending',997.00,0.00,0.00,NULL,NULL,0.00,997.00,1,NULL,1,NULL,'EJ0fuXwhTvvlvz70jJywZQmo4SGVS',2,'2023-02-25 17:08:23','2023-03-01 01:08:23',1),(3,'#10000003',7,'1','default','completed',3354.00,0.00,0.00,NULL,NULL,0.00,3354.00,1,NULL,1,'2023-03-01 01:08:23','XCcBFUxJKgD3u21gKUJK8eBmjT3dC',3,'2023-02-17 09:08:23','2023-03-01 01:08:23',2),(4,'#10000004',6,'1','default','completed',1269.00,0.00,0.00,NULL,NULL,0.00,1269.00,1,NULL,1,'2023-03-01 01:08:24','dXKvB32FeHWAfdfzTbc8DU9OimB61',4,'2023-02-22 17:08:23','2023-03-01 01:08:24',4),(5,'#10000005',6,'1','default','completed',4365.00,0.00,0.00,NULL,NULL,0.00,4365.00,1,NULL,1,'2023-03-01 01:08:25','b6pcMGfxWwUUJNTNAMwXynmX1YgoV',5,'2023-02-17 23:08:23','2023-03-01 01:08:25',3),(6,'#10000006',8,'1','default','completed',1196.00,0.00,0.00,NULL,NULL,0.00,1196.00,1,NULL,1,'2023-03-01 01:08:25','2TVqG8EAthA5hMit54ASNwC9mKRp5',6,'2023-02-27 13:08:23','2023-03-01 01:08:25',2),(7,'#10000007',8,'1','default','pending',517.00,0.00,0.00,NULL,NULL,0.00,517.00,1,NULL,1,NULL,'mqKWEYhegASqrlAyAcqmSsHPjzA1E',7,'2023-02-24 13:08:23','2023-03-01 01:08:23',3),(8,'#10000008',8,'1','default','completed',2454.00,0.00,0.00,NULL,NULL,0.00,2454.00,1,NULL,1,'2023-03-01 01:08:25','h41rYo8ueGW1uB3SNZtTsXij3Nwnm',8,'2023-02-14 01:08:23','2023-03-01 01:08:25',1),(9,'#10000009',6,'1','default','completed',423.00,0.00,0.00,NULL,NULL,0.00,423.00,1,NULL,1,'2023-03-01 01:08:25','wTbZaG4uTSXkbZrJfzazTx5GizYot',9,'2023-02-23 09:08:23','2023-03-01 01:08:25',4),(10,'#10000010',6,'1','default','pending',818.00,0.00,0.00,NULL,NULL,0.00,818.00,1,NULL,1,NULL,'ZRJ7nMVt0RD8Kre3kBE6cAC8IyGah',10,'2023-02-20 13:08:23','2023-03-01 01:08:23',1),(11,'#10000011',4,'1','default','completed',3054.75,0.00,0.00,NULL,NULL,0.00,3054.75,1,NULL,1,'2023-03-01 01:08:25','2pke8OjmSBEQz8b71aABEnYkBmbSt',11,'2023-02-19 17:08:23','2023-03-01 01:08:25',3),(12,'#10000012',4,'1','default','pending',857.00,0.00,0.00,NULL,NULL,0.00,857.00,1,NULL,1,NULL,'ULLZaClSwQtTyJs27zF8D5hdotjSu',12,'2023-02-26 09:08:23','2023-03-01 01:08:23',2),(13,'#10000013',4,'1','default','completed',818.00,0.00,0.00,NULL,NULL,0.00,818.00,1,NULL,1,'2023-03-01 01:08:23','XYfTkSo4JopwPziPzmaQrJDKHg1pV',13,'2023-02-27 17:08:23','2023-03-01 01:08:23',1),(14,'#10000014',10,'1','default','completed',1800.00,0.00,0.00,NULL,NULL,0.00,1800.00,1,NULL,1,'2023-03-01 01:08:25','qRpH3R5BaSveU9E89nnaISppNbQcA',14,'2023-02-17 19:08:23','2023-03-01 01:08:25',2),(15,'#10000015',10,'1','default','pending',3543.00,0.00,0.00,NULL,NULL,0.00,3543.00,1,NULL,1,NULL,'aY4ync4MuYgSR5h2xzgij0eHXU5dg',15,'2023-02-25 07:08:23','2023-03-01 01:08:23',3),(16,'#10000016',10,'1','default','pending',3719.25,0.00,0.00,NULL,NULL,0.00,3719.25,1,NULL,1,NULL,'EKAq00bknJSu7qeV3AXRSsCtlXQNt',16,'2023-02-24 09:08:23','2023-03-01 01:08:23',3),(17,'#10000017',10,'1','default','pending',1115.00,0.00,0.00,NULL,NULL,0.00,1115.00,1,NULL,1,NULL,'Av0sOtCn6NKOPlMV4c60G3fD3VaT7',17,'2023-02-25 13:08:23','2023-03-01 01:08:23',1),(18,'#10000018',4,'1','default','pending',3612.00,0.00,0.00,NULL,NULL,0.00,3612.00,1,NULL,1,NULL,'LXPht5YfyK5M9KIVT2NsUZzSl2j7n',18,'2023-02-25 19:08:23','2023-03-01 01:08:23',2),(19,'#10000019',4,'1','default','pending',2826.00,0.00,0.00,NULL,NULL,0.00,2826.00,1,NULL,1,NULL,'Ov7Xe3PemXxFMwyyXQBLvg1isk7nE',19,'2023-02-24 01:08:23','2023-03-01 01:08:23',2),(20,'#10000020',4,'1','default','pending',3639.00,0.00,0.00,NULL,NULL,0.00,3639.00,1,NULL,1,NULL,'4K7p0IObJBoc7ahbgxC1KDXXpdapo',20,'2023-02-24 01:08:23','2023-03-01 01:08:23',3),(21,'#10000021',10,'1','default','pending',1269.00,0.00,0.00,NULL,NULL,0.00,1269.00,1,NULL,1,NULL,'mZN2h9Lhd6cgMMDAntJr3xkgPfKBx',21,'2023-02-20 19:08:23','2023-03-01 01:08:23',4),(22,'#10000022',10,'1','default','completed',538.00,0.00,0.00,NULL,NULL,0.00,538.00,1,NULL,1,'2023-03-01 01:08:25','3MMMFYrVtVNqAya7tjwbBWHdDUbyR',22,'2023-02-24 11:08:23','2023-03-01 01:08:25',1),(23,'#10000023',10,'1','default','completed',3354.00,0.00,0.00,NULL,NULL,0.00,3354.00,1,NULL,1,'2023-03-01 01:08:25','8l9Lrr3sKBnNgaoX0qBwDXzZ3VzgN',23,'2023-02-25 09:08:24','2023-03-01 01:08:25',2),(24,'#10000024',1,'1','default','pending',2834.00,0.00,0.00,NULL,NULL,0.00,2834.00,1,NULL,1,NULL,'NoRcsizms5aPn97aV2n8oNwb9lLc3',24,'2023-02-28 05:08:24','2023-03-01 01:08:24',2),(25,'#10000025',1,'1','default','completed',1114.00,0.00,0.00,NULL,NULL,0.00,1114.00,1,NULL,1,'2023-03-01 01:08:26','vOCzLUYD7K8Fc4OoKWu2iIv0K2uFp',25,'2023-02-22 09:08:24','2023-03-01 01:08:26',1),(26,'#10000026',6,'1','default','completed',2412.00,0.00,0.00,NULL,NULL,0.00,2412.00,1,NULL,1,'2023-03-01 01:08:26','2nebCKL1bMueMxZ6ddoxsgF7sSPPz',26,'2023-02-22 07:08:24','2023-03-01 01:08:26',2),(27,'#10000027',6,'1','default','completed',1213.00,0.00,0.00,NULL,NULL,0.00,1213.00,1,NULL,1,'2023-03-01 01:08:26','leWz5erhxV8tFks2GMgBS42svNAux',27,'2023-02-25 07:08:24','2023-03-01 01:08:26',3),(28,'#10000028',6,'1','default','completed',1290.00,0.00,0.00,NULL,NULL,0.00,1290.00,1,NULL,1,'2023-03-01 01:08:26','roPqv1nHPosmigIzEn8rfG5wRvVaa',28,'2023-02-25 01:08:24','2023-03-01 01:08:26',1),(29,'#10000029',6,'1','default','pending',3952.00,0.00,0.00,NULL,NULL,0.00,3952.00,1,NULL,1,NULL,'bqDtQjSaOFzpEsj6ull2sLRoUuKBE',29,'2023-02-27 01:08:24','2023-03-01 01:08:24',2),(30,'#10000030',6,'1','default','pending',80.25,0.00,0.00,NULL,NULL,0.00,80.25,1,NULL,1,NULL,'AZm6LuhceRzEv75jPvkJloasgbPDF',30,'2023-02-25 13:08:24','2023-03-01 01:08:24',3),(31,'#10000031',6,'1','default','pending',2906.00,0.00,0.00,NULL,NULL,0.00,2906.00,1,NULL,1,NULL,'9Nsa74k5AL9Cs5fprNrDuTyi2BCpp',31,'2023-02-28 11:08:24','2023-03-01 01:08:24',2),(32,'#10000032',4,'1','default','completed',597.00,0.00,0.00,NULL,NULL,0.00,597.00,1,NULL,1,'2023-03-01 01:08:26','mlOgawMco0nhqDzsU8KLnmJKwt8kH',32,'2023-02-26 01:08:24','2023-03-01 01:08:26',1),(33,'#10000033',4,'1','default','pending',2236.00,0.00,0.00,NULL,NULL,0.00,2236.00,1,NULL,1,NULL,'RKc8ZZEimz3lVPpY2g1s9uzHLP5ad',33,'2023-02-26 01:08:24','2023-03-01 01:08:24',2),(34,'#10000034',10,'1','default','completed',3618.00,0.00,0.00,NULL,NULL,0.00,3618.00,1,NULL,1,'2023-03-01 01:08:26','knM90MNfUBFQc1MoLkfcAEAurg00z',34,'2023-02-24 21:08:24','2023-03-01 01:08:26',2),(35,'#10000035',10,'1','default','pending',938.00,0.00,0.00,NULL,NULL,0.00,938.00,1,NULL,1,NULL,'mw9eu5B1qZoW5fhc55vuro5BIC6un',35,'2023-02-26 23:08:24','2023-03-01 01:08:24',3),(36,'#10000036',10,'1','default','completed',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'2023-03-01 01:08:26','Dfi9pyjfETouEXowDy8jtQ2zjRPkT',36,'2023-02-26 17:08:24','2023-03-01 01:08:26',3),(37,'#10000037',10,'1','default','completed',1118.00,0.00,0.00,NULL,NULL,0.00,1118.00,1,NULL,1,'2023-03-01 01:08:24','RNxYFG0PHfMwC7voENreVtLOoCggS',37,'2023-02-27 17:08:24','2023-03-01 01:08:24',2),(38,'#10000038',7,'1','default','completed',160.50,0.00,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'2023-03-01 01:08:26','1x0c8eb8WMDpCQjBCEq6BrMSLUAeP',38,'2023-02-26 19:08:24','2023-03-01 01:08:26',3),(39,'#10000039',7,'1','default','pending',3724.00,0.00,0.00,NULL,NULL,0.00,3724.00,1,NULL,1,NULL,'EQwMfUHp3bCTDBbIJ0iz5z2iMvbAx',39,'2023-02-28 07:08:24','2023-03-01 01:08:24',1),(40,'#10000040',7,'1','default','pending',1743.00,0.00,0.00,NULL,NULL,0.00,1743.00,1,NULL,1,NULL,'vahOJ3hlOxx2lnr4K4ed9MtzcsR1S',40,'2023-02-28 17:08:24','2023-03-01 01:08:24',2),(41,'#10000041',7,'1','default','pending',557.00,0.00,0.00,NULL,NULL,0.00,557.00,1,NULL,1,NULL,'sm8tK8A9pauXJuX05aBvOhODKlOm9',41,'2023-02-27 09:08:24','2023-03-01 01:08:24',1),(42,'#10000042',7,'1','default','completed',3345.00,0.00,0.00,NULL,NULL,0.00,3345.00,1,NULL,1,'2023-03-01 01:08:26','HkYfpzobo7lpDIOUk7urpsorFtkzQ',42,'2023-02-28 17:08:24','2023-03-01 01:08:26',1),(43,'#10000043',7,'1','default','completed',556.00,0.00,0.00,NULL,NULL,0.00,556.00,1,NULL,1,'2023-03-01 01:08:27','2qLyueTZMIOJiYao9th2sNVOAW9fR',43,'2023-02-28 05:08:24','2023-03-01 01:08:27',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-03-01 01:08:18','2023-03-01 01:08:18',0),(2,'Size','size','text',1,1,1,'published',1,'2023-03-01 01:08:18','2023-03-01 01:08:18',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(6,2,'S','s',NULL,NULL,1,1,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(7,2,'M','m',NULL,NULL,0,2,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(8,2,'L','l',NULL,NULL,0,3,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2023-03-01 01:08:18','2023-03-01 01:08:18'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2023-03-01 01:08:18','2023-03-01 01:08:18');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(23,'Networking',17,NULL,'published',1,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2023-03-01 01:08:14','2023-03-01 01:08:14');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (2,7),(3,1),(3,4),(3,11),(4,7),(4,17),(4,20),(5,1),(5,18),(6,4),(6,16),(7,10),(7,20),(8,21),(8,22),(9,5),(9,19),(9,20),(9,21),(10,7),(10,12),(12,6),(12,16),(12,23),(13,15),(13,19),(14,14),(14,15),(15,9),(15,10),(16,3),(17,6),(17,9),(17,10),(17,15),(17,16),(18,6),(19,5),(19,13),(20,12),(20,18),(20,22),(21,2),(21,3),(21,4),(21,14),(21,17),(21,18),(21,22),(22,3),(22,14),(22,17),(22,23),(23,21),(24,2),(24,21),(25,6),(25,8),(25,12),(25,20),(26,2),(26,16),(27,5),(28,5),(28,9),(28,10),(28,11),(28,23),(29,8),(29,9),(29,11),(29,18),(30,12),(31,19),(31,22),(32,8),(33,1),(33,8),(33,14),(34,7),(34,13),(35,13),(36,1),(36,4),(36,15),(36,17),(37,11),(37,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,3),(1,8),(1,11),(1,14),(1,16),(1,17),(1,18),(1,21),(1,23),(2,4),(2,7),(2,10),(2,12),(2,20),(2,22),(3,1),(3,5),(3,6),(3,9),(3,13),(3,15),(3,19);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-03-01 01:08:14','2023-03-01 01:08:14',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-03-01 01:08:14','2023-03-01 01:08:14',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-03-01 01:08:14','2023-03-01 01:08:14',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,4),(1,7),(1,13),(1,14),(1,16),(1,17),(1,20),(2,4),(2,7),(2,9),(2,10),(2,13),(2,19),(3,15),(3,18),(3,19),(3,20),(4,3),(4,7),(4,14),(4,19),(4,20),(5,6),(5,9),(5,11),(5,12),(5,17),(5,18),(5,19),(6,4),(6,7),(6,8),(6,11),(6,13),(6,15),(7,4),(7,5),(7,10),(7,11),(7,15),(8,10),(8,11),(8,12),(8,13),(8,15),(9,1),(9,8),(9,10),(9,18),(9,19),(10,3),(10,5),(10,11),(10,12),(10,13),(10,15),(10,17),(11,2),(11,4),(11,5),(11,9),(11,16),(12,3),(12,9),(12,11),(12,14),(12,15),(12,18),(12,20),(13,1),(13,2),(13,5),(13,7),(13,17),(14,2),(14,6),(14,7),(14,9),(14,12),(14,15),(15,3),(15,5),(15,8),(15,14),(15,17),(15,19),(16,2),(16,4),(16,7),(16,12),(16,13),(16,18),(17,3),(17,8),(17,9),(17,10),(17,14),(17,15),(17,19),(18,3),(18,5),(18,7),(18,9),(18,14),(18,15),(19,2),(19,4),(19,10),(19,11),(19,17),(20,3),(20,5),(20,6),(20,7),(20,15),(20,19),(21,2),(21,4),(21,12),(21,14),(21,15),(21,18),(22,5),(22,6),(22,8),(22,11),(22,17),(22,18),(23,7),(23,10),(23,13),(23,15),(23,16),(23,18),(23,19);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(3,32,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(4,32,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(5,32,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(6,32,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(7,33,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(8,33,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(9,33,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(10,33,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(11,42,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(12,42,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(13,42,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(14,43,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(15,43,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(16,43,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(17,51,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(18,51,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(19,58,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(20,58,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(21,58,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(22,58,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(23,67,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(24,67,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18'),(25,67,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-03-01 08:08:18\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2023-03-01 01:08:18','2023-03-01 01:08:18');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,6),(1,9),(1,12),(1,15),(2,3),(2,21),(3,18);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-03-01 01:08:14','2023-03-01 01:08:14'),(2,'New','#00c9a7','published','2023-03-01 01:08:14','2023-03-01 01:08:14'),(3,'Sale','#fe9931','published','2023-03-01 01:08:14','2023-03-01 01:08:14');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,4),(2,2),(2,5),(3,1),(3,2),(3,6),(4,2),(4,3),(4,4),(5,3),(5,4),(5,5),(6,2),(6,4),(7,3),(7,5),(8,2),(8,6),(9,1),(9,2),(9,5),(10,3),(10,5),(11,1),(11,2),(11,3),(12,4),(12,5),(13,3),(13,4),(14,1),(14,2),(14,3),(15,1),(15,4),(16,1),(16,5),(16,6),(17,1),(17,3),(18,1),(19,1),(19,5),(19,6),(20,2),(20,5),(21,4),(21,5),(22,2),(22,5),(22,6),(23,3),(23,4),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(2,'Mobile',NULL,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(3,'Iphone',NULL,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(4,'Printer',NULL,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(5,'Office',NULL,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(6,'IT',NULL,'published','2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (11,1,6),(25,1,13),(63,1,32),(69,1,35),(73,1,37),(79,1,40),(81,1,41),(95,1,48),(97,1,49),(3,2,2),(5,2,3),(13,2,7),(27,2,14),(31,2,16),(41,2,21),(45,2,23),(49,2,25),(61,2,31),(67,2,34),(87,2,44),(101,2,51),(1,3,1),(7,3,4),(9,3,5),(33,3,17),(35,3,18),(37,3,19),(47,3,24),(51,3,26),(83,3,42),(91,3,46),(19,4,10),(23,4,12),(43,4,22),(57,4,29),(75,4,38),(89,4,45),(93,4,47),(99,4,50),(15,5,8),(17,5,9),(21,5,11),(29,5,15),(39,5,20),(53,5,27),(55,5,28),(59,5,30),(65,5,33),(71,5,36),(77,5,39),(85,5,43),(14,6,7),(32,6,16),(34,6,17),(40,6,20),(50,6,25),(62,6,31),(78,6,39),(88,6,44),(92,6,46),(96,6,48),(100,6,50),(6,7,3),(18,7,9),(36,7,18),(58,7,29),(74,7,37),(76,7,38),(80,7,40),(4,8,2),(8,8,4),(10,8,5),(16,8,8),(42,8,21),(48,8,24),(52,8,26),(54,8,27),(56,8,28),(60,8,30),(64,8,32),(72,8,36),(82,8,41),(84,8,42),(98,8,49),(22,9,11),(24,9,12),(26,9,13),(44,9,22),(70,9,35),(86,9,43),(102,9,51),(2,10,1),(12,10,6),(20,10,10),(28,10,14),(30,10,15),(38,10,19),(46,10,23),(66,10,33),(68,10,34),(90,10,45),(94,10,47);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,3,1),(6,29,3,0),(7,30,3,0),(8,31,4,1),(9,32,5,1),(10,33,5,0),(11,34,6,1),(12,35,6,0),(13,36,6,0),(14,37,6,0),(15,38,7,1),(16,39,7,0),(17,40,7,0),(18,41,8,1),(19,42,9,1),(20,43,9,0),(21,44,10,1),(22,45,10,0),(23,46,10,0),(24,47,11,1),(25,48,12,1),(26,49,12,0),(27,50,12,0),(28,51,13,1),(29,52,14,1),(30,53,14,0),(31,54,15,1),(32,55,16,1),(33,56,16,0),(34,57,16,0),(35,58,17,1),(36,59,18,1),(37,60,18,0),(38,61,18,0),(39,62,18,0),(40,63,19,1),(41,64,19,0),(42,65,20,1),(43,66,20,0),(44,67,21,1),(45,68,22,1),(46,69,22,0),(47,70,22,0),(48,71,23,1),(49,72,23,0),(50,73,23,0),(51,74,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-03-01',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-151-A0',0,10,0,1,1,4,0,0,80.25,NULL,NULL,NULL,20.00,11.00,14.00,678.00,NULL,117668,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-140-A0',0,13,0,1,1,1,0,0,40.5,NULL,NULL,NULL,14.00,15.00,20.00,789.00,NULL,130919,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-118-A0',0,16,0,1,1,7,0,0,20,NULL,NULL,NULL,10.00,10.00,12.00,635.00,NULL,187842,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-104-A0',0,14,0,1,1,5,0,0,600,492,NULL,NULL,20.00,10.00,16.00,713.00,NULL,40010,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-162-A0',0,18,0,1,1,3,0,0,857,NULL,NULL,NULL,12.00,19.00,12.00,754.00,NULL,33333,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-172-A0',0,11,0,1,1,2,0,0,423,NULL,NULL,NULL,15.00,12.00,20.00,698.00,NULL,15660,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-124-A0',0,13,0,1,1,7,0,0,598,NULL,NULL,NULL,12.00,19.00,19.00,829.00,NULL,163723,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-146-A0',0,19,0,1,1,4,0,0,1115,925.45,NULL,NULL,14.00,10.00,10.00,650.00,NULL,128585,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-140-A0',0,18,0,1,1,4,0,0,517,NULL,NULL,NULL,20.00,14.00,16.00,540.00,NULL,72774,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-195-A0',0,12,0,1,0,4,0,0,1206,NULL,NULL,NULL,15.00,16.00,15.00,810.00,NULL,178396,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-184-A0',0,18,0,1,0,3,0,0,1165,NULL,NULL,NULL,12.00,15.00,19.00,785.00,NULL,119059,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-172-A0',0,10,0,1,0,5,0,0,557,423.32,NULL,NULL,19.00,12.00,14.00,703.00,NULL,18885,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-122-A0',0,20,0,1,0,3,0,0,508,NULL,NULL,NULL,10.00,12.00,13.00,693.00,NULL,195599,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-150-A0',0,14,0,1,0,5,0,0,537,NULL,NULL,NULL,18.00,16.00,20.00,727.00,NULL,83285,'2023-03-01 01:08:17','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-156-A0',0,15,0,1,0,7,0,0,590,NULL,NULL,NULL,17.00,13.00,16.00,520.00,NULL,112468,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-115-A0',0,12,0,1,0,1,0,0,538,473.44,NULL,NULL,10.00,17.00,19.00,680.00,NULL,19628,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-190-A0',0,14,0,1,0,7,0,0,556,NULL,NULL,NULL,12.00,17.00,14.00,523.00,NULL,56615,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-179-A0',0,12,0,1,0,3,0,0,938,NULL,NULL,NULL,12.00,18.00,10.00,661.00,NULL,189039,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-139-A0',0,14,0,1,0,4,0,0,1213,NULL,NULL,NULL,17.00,12.00,19.00,573.00,NULL,172873,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-163-A0',0,13,0,1,0,2,0,0,818,605.32,NULL,NULL,18.00,14.00,15.00,612.00,NULL,113169,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-182-A0',0,11,0,1,0,2,0,0,997,NULL,NULL,NULL,11.00,18.00,12.00,627.00,NULL,159642,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-139-A0',0,20,0,1,0,7,0,0,635,NULL,NULL,NULL,12.00,11.00,12.00,825.00,NULL,105311,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-120-A0',0,12,0,1,0,2,0,0,1118,NULL,NULL,NULL,15.00,12.00,17.00,629.00,NULL,146334,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-151-A0',0,10,0,1,0,4,1,0,80.25,NULL,NULL,NULL,20.00,11.00,14.00,678.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-151-A0-A1',0,10,0,1,0,4,1,0,80.25,NULL,NULL,NULL,20.00,11.00,14.00,678.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-140-A0',0,13,0,1,0,1,1,0,40.5,NULL,NULL,NULL,14.00,15.00,20.00,789.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-140-A0-A1',0,13,0,1,0,1,1,0,40.5,NULL,NULL,NULL,14.00,15.00,20.00,789.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-118-A0',0,16,0,1,0,7,1,0,20,NULL,NULL,NULL,10.00,10.00,12.00,635.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-118-A0-A1',0,16,0,1,0,7,1,0,20,NULL,NULL,NULL,10.00,10.00,12.00,635.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-118-A0-A2',0,16,0,1,0,7,1,0,20,NULL,NULL,NULL,10.00,10.00,12.00,635.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(31,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-104-A0',0,14,0,1,0,5,1,0,600,492,NULL,NULL,20.00,10.00,16.00,713.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(32,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-162-A0',0,18,0,1,0,3,1,0,857,NULL,NULL,NULL,12.00,19.00,12.00,754.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-162-A0-A1',0,18,0,1,0,3,1,0,857,NULL,NULL,NULL,12.00,19.00,12.00,754.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(34,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-172-A0',0,11,0,1,0,2,1,0,423,NULL,NULL,NULL,15.00,12.00,20.00,698.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(35,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-172-A0-A1',0,11,0,1,0,2,1,0,423,NULL,NULL,NULL,15.00,12.00,20.00,698.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-172-A0-A2',0,11,0,1,0,2,1,0,423,NULL,NULL,NULL,15.00,12.00,20.00,698.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-172-A0-A3',0,11,0,1,0,2,1,0,423,NULL,NULL,NULL,15.00,12.00,20.00,698.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-124-A0',0,13,0,1,0,7,1,0,598,NULL,NULL,NULL,12.00,19.00,19.00,829.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-124-A0-A1',0,13,0,1,0,7,1,0,598,NULL,NULL,NULL,12.00,19.00,19.00,829.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(40,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-124-A0-A2',0,13,0,1,0,7,1,0,598,NULL,NULL,NULL,12.00,19.00,19.00,829.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(41,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-146-A0',0,19,0,1,0,4,1,0,1115,925.45,NULL,NULL,14.00,10.00,10.00,650.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(42,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-140-A0',0,18,0,1,0,4,1,0,517,NULL,NULL,NULL,20.00,14.00,16.00,540.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(43,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-140-A0-A1',0,18,0,1,0,4,1,0,517,NULL,NULL,NULL,20.00,14.00,16.00,540.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(44,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-195-A0',0,12,0,1,0,4,1,0,1206,NULL,NULL,NULL,15.00,16.00,15.00,810.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-195-A0-A1',0,12,0,1,0,4,1,0,1206,NULL,NULL,NULL,15.00,16.00,15.00,810.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-195-A0-A2',0,12,0,1,0,4,1,0,1206,NULL,NULL,NULL,15.00,16.00,15.00,810.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(47,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-184-A0',0,18,0,1,0,3,1,0,1165,NULL,NULL,NULL,12.00,15.00,19.00,785.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(48,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-172-A0',0,10,0,1,0,5,1,0,557,423.32,NULL,NULL,19.00,12.00,14.00,703.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(49,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-172-A0-A1',0,10,0,1,0,5,1,0,557,445.6,NULL,NULL,19.00,12.00,14.00,703.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(50,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-172-A0-A2',0,10,0,1,0,5,1,0,557,484.59,NULL,NULL,19.00,12.00,14.00,703.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(51,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-122-A0',0,20,0,1,0,3,1,0,508,NULL,NULL,NULL,10.00,12.00,13.00,693.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(52,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-150-A0',0,14,0,1,0,5,1,0,537,NULL,NULL,NULL,18.00,16.00,20.00,727.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(53,'B&amp;O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-150-A0-A1',0,14,0,1,0,5,1,0,537,NULL,NULL,NULL,18.00,16.00,20.00,727.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(54,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-156-A0',0,15,0,1,0,7,1,0,590,NULL,NULL,NULL,17.00,13.00,16.00,520.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(55,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-115-A0',0,12,0,1,0,1,1,0,538,473.44,NULL,NULL,10.00,17.00,19.00,680.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(56,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-115-A0-A1',0,12,0,1,0,1,1,0,538,462.68,NULL,NULL,10.00,17.00,19.00,680.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-115-A0-A2',0,12,0,1,0,1,1,0,538,408.88,NULL,NULL,10.00,17.00,19.00,680.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(58,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-190-A0',0,14,0,1,0,7,1,0,556,NULL,NULL,NULL,12.00,17.00,14.00,523.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(59,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-179-A0',0,12,0,1,0,3,1,0,938,NULL,NULL,NULL,12.00,18.00,10.00,661.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(60,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-179-A0-A1',0,12,0,1,0,3,1,0,938,NULL,NULL,NULL,12.00,18.00,10.00,661.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(61,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-179-A0-A2',0,12,0,1,0,3,1,0,938,NULL,NULL,NULL,12.00,18.00,10.00,661.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(62,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]','SW-179-A0-A3',0,12,0,1,0,3,1,0,938,NULL,NULL,NULL,12.00,18.00,10.00,661.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(63,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-139-A0',0,14,0,1,0,4,1,0,1213,NULL,NULL,NULL,17.00,12.00,19.00,573.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-139-A0-A1',0,14,0,1,0,4,1,0,1213,NULL,NULL,NULL,17.00,12.00,19.00,573.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-163-A0',0,13,0,1,0,2,1,0,818,605.32,NULL,NULL,18.00,14.00,15.00,612.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-163-A0-A1',0,13,0,1,0,2,1,0,818,678.94,NULL,NULL,18.00,14.00,15.00,612.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(67,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-182-A0',0,11,0,1,0,2,1,0,997,NULL,NULL,NULL,11.00,18.00,12.00,627.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(68,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-139-A0',0,20,0,1,0,7,1,0,635,NULL,NULL,NULL,12.00,11.00,12.00,825.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(69,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-139-A0-A1',0,20,0,1,0,7,1,0,635,NULL,NULL,NULL,12.00,11.00,12.00,825.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(70,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-139-A0-A2',0,20,0,1,0,7,1,0,635,NULL,NULL,NULL,12.00,11.00,12.00,825.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(71,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-120-A0',0,12,0,1,0,2,1,0,1118,NULL,NULL,NULL,15.00,12.00,17.00,629.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(72,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-120-A0-A1',0,12,0,1,0,2,1,0,1118,NULL,NULL,NULL,15.00,12.00,17.00,629.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(73,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-120-A0-A2',0,12,0,1,0,2,1,0,1118,NULL,NULL,NULL,15.00,12.00,17.00,629.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(74,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-3.jpg\"]','SW-120-A0-A3',0,12,0,1,0,2,1,0,1118,NULL,NULL,NULL,15.00,12.00,17.00,629.00,NULL,0,'2023-03-01 01:08:18','2023-03-01 01:08:23','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Beat Headphone',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Beat Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Smart Watch External',NULL,NULL),('vi',33,'Smart Watch External',NULL,NULL),('vi',34,'Nikon HD camera',NULL,NULL),('vi',35,'Nikon HD camera',NULL,NULL),('vi',36,'Nikon HD camera',NULL,NULL),('vi',37,'Nikon HD camera',NULL,NULL),('vi',38,'Audio Equipment',NULL,NULL),('vi',39,'Audio Equipment',NULL,NULL),('vi',40,'Audio Equipment',NULL,NULL),('vi',41,'Smart Televisions',NULL,NULL),('vi',42,'Samsung Smart Phone',NULL,NULL),('vi',43,'Samsung Smart Phone',NULL,NULL),('vi',44,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',47,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',48,'EPSION Plaster Printer',NULL,NULL),('vi',49,'EPSION Plaster Printer',NULL,NULL),('vi',50,'EPSION Plaster Printer',NULL,NULL),('vi',51,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',52,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',53,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',54,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',55,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',56,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',58,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',59,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',60,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',61,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',62,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',63,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',64,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',67,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',68,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',69,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',70,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',71,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',72,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',73,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',74,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,5,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(2,3,18,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(3,1,6,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/13.jpg\"}'),(4,7,5,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/22.jpg\"}'),(5,3,20,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(6,4,16,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\"]'),(7,7,13,3.00,'Best ecommerce CMS online store!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(8,5,7,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(9,2,21,5.00,'Good app, good backup service and support. Good documentation.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(10,9,19,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(11,7,18,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/19.jpg\"}'),(12,2,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/21.jpg\"}'),(13,4,1,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(14,8,10,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/2.jpg\"]'),(15,1,18,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(16,8,5,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(17,5,6,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(18,8,21,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/10.jpg\"}'),(19,7,1,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(20,3,19,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(21,6,21,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/14.jpg\"}'),(22,10,2,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(23,1,16,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\"]'),(24,7,7,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(25,1,4,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(26,5,12,3.00,'Clean & perfect source code','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(27,1,20,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(28,2,11,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\"]'),(29,10,3,3.00,'Clean & perfect source code','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(30,5,13,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(31,8,1,3.00,'Good app, good backup service and support. Good documentation.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(32,6,8,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/9.jpg\"}'),(33,9,21,3.00,'Clean & perfect source code','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\"]'),(34,2,6,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\"]'),(35,3,7,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/1.jpg\"]'),(37,2,19,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(38,2,12,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(39,2,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(40,4,6,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/19.jpg\"}'),(41,8,11,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-03-01 01:08:19','2023-03-01 01:08:19','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(43,3,17,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-03-01 01:08:19','2023-03-01 01:08:19','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(44,4,17,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(45,2,15,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(46,2,4,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(49,1,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(50,6,6,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-03-01 01:08:20','2023-03-01 01:08:20','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/16.jpg\"}'),(51,8,16,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/2.jpg\"]'),(52,5,16,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(53,6,14,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\"]'),(54,1,14,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(55,1,19,2.00,'Good app, good backup service and support. Good documentation.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(56,4,3,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(57,7,19,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/13.jpg\"}'),(59,9,20,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(60,1,12,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(62,10,11,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(64,7,23,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(65,8,15,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(68,1,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(70,6,1,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(71,3,12,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(73,6,9,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(75,5,8,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(78,10,21,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/12.jpg\"}'),(79,2,14,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/2.jpg\"]'),(80,2,22,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/2.jpg\"]'),(81,3,9,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(82,9,16,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-03-01 01:08:20','2023-03-01 01:08:20','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/13.jpg\"}'),(84,3,8,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(87,9,3,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(89,4,21,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(90,7,2,5.00,'Good app, good backup service and support. Good documentation.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(91,5,4,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(94,9,14,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/4.jpg\"]'),(95,1,5,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(96,9,7,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(97,9,8,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/1.jpg\"]'),(100,6,10,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-03-01 01:08:20','2023-03-01 01:08:20','[\"products\\/3.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-02-27 09:08:23','2023-03-01 01:08:23'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-02-25 17:08:23','2023-02-25 17:08:23'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-02-27 09:08:23','2023-03-01 01:08:23'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-02-17 09:08:23','2023-02-17 09:08:23'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-02-27 09:08:23','2023-03-01 01:08:23'),(7,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,3,3,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-02-22 17:08:23','2023-02-22 17:08:23'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-02-27 11:08:23','2023-03-01 01:08:23'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-02-17 23:08:23','2023-02-17 23:08:23'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-02-27 11:08:23','2023-03-01 01:08:23'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-02-27 13:08:23','2023-02-27 13:08:23'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-02-27 13:08:23','2023-03-01 01:08:23'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-02-24 13:08:23','2023-02-24 13:08:23'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-02-27 13:08:23','2023-03-01 01:08:23'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-02-14 01:08:23','2023-02-14 01:08:23'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-02-27 13:08:23','2023-03-01 01:08:23'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(23,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-02-23 09:08:23','2023-02-23 09:08:23'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-02-27 15:08:23','2023-03-01 01:08:23'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(26,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-02-20 13:08:23','2023-02-20 13:08:23'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-02-27 15:08:23','2023-03-01 01:08:23'),(28,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-02-19 17:08:23','2023-02-19 17:08:23'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-02-27 17:08:23','2023-03-01 01:08:23'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(31,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-02-26 09:08:23','2023-02-26 09:08:23'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-02-27 17:08:23','2023-03-01 01:08:23'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-02-27 17:08:23','2023-02-27 17:08:23'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-02-27 17:08:23','2023-03-01 01:08:23'),(35,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,13,13,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(36,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(37,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-02-17 19:08:23','2023-02-17 19:08:23'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-02-27 19:08:23','2023-03-01 01:08:23'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-03-01 01:08:23','2023-03-01 01:08:23'),(40,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-02-25 07:08:23','2023-02-25 07:08:23'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-02-27 19:08:23','2023-03-01 01:08:23'),(42,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-02-24 09:08:23','2023-02-24 09:08:23'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-02-27 21:08:23','2023-03-01 01:08:23'),(44,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-02-25 13:08:23','2023-02-25 13:08:23'),(45,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-02-27 21:08:23','2023-03-01 01:08:23'),(46,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-02-25 19:08:23','2023-02-25 19:08:23'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-02-27 23:08:23','2023-03-01 01:08:23'),(48,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-02-28 01:08:23','2023-03-01 01:08:23'),(50,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-02-24 01:08:23','2023-02-24 01:08:23'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-02-28 01:08:23','2023-03-01 01:08:23'),(52,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-02-20 19:08:23','2023-02-20 19:08:23'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-02-28 03:08:23','2023-03-01 01:08:23'),(54,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-02-24 11:08:23','2023-02-24 11:08:23'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-02-28 03:08:24','2023-03-01 01:08:24'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(57,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-02-25 09:08:24','2023-02-25 09:08:24'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-02-28 03:08:24','2023-03-01 01:08:24'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(60,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-02-28 05:08:24','2023-02-28 05:08:24'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-02-28 05:08:24','2023-03-01 01:08:24'),(62,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-02-22 09:08:24','2023-02-22 09:08:24'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-02-28 05:08:24','2023-03-01 01:08:24'),(64,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(65,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-02-22 07:08:24','2023-02-22 07:08:24'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-02-28 07:08:24','2023-03-01 01:08:24'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(68,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-02-25 07:08:24','2023-02-25 07:08:24'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-02-28 07:08:24','2023-03-01 01:08:24'),(70,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,27,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(71,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-02-25 01:08:24','2023-02-25 01:08:24'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-02-28 09:08:24','2023-03-01 01:08:24'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(74,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-02-27 01:08:24','2023-02-27 01:08:24'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-02-28 09:08:24','2023-03-01 01:08:24'),(76,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-02-25 13:08:24','2023-02-25 13:08:24'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-02-28 11:08:24','2023-03-01 01:08:24'),(78,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-02-28 11:08:24','2023-02-28 11:08:24'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-02-28 11:08:24','2023-03-01 01:08:24'),(80,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-02-26 01:08:24','2023-02-26 01:08:24'),(81,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-02-28 13:08:24','2023-03-01 01:08:24'),(82,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(83,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-02-26 01:08:24','2023-02-26 01:08:24'),(84,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-02-28 13:08:24','2023-03-01 01:08:24'),(85,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-02-24 21:08:24','2023-02-24 21:08:24'),(86,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-02-28 15:08:24','2023-03-01 01:08:24'),(87,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,34,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(88,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-02-26 23:08:24','2023-02-26 23:08:24'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-02-28 15:08:24','2023-03-01 01:08:24'),(90,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-02-26 17:08:24','2023-02-26 17:08:24'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-02-28 17:08:24','2023-03-01 01:08:24'),(92,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(93,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-02-27 17:08:24','2023-02-27 17:08:24'),(94,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-02-28 17:08:24','2023-03-01 01:08:24'),(95,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,37,37,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,37,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(97,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-02-26 19:08:24','2023-02-26 19:08:24'),(98,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-02-28 19:08:24','2023-03-01 01:08:24'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,38,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(100,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-02-28 07:08:24','2023-02-28 07:08:24'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-02-28 19:08:24','2023-03-01 01:08:24'),(102,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-02-28 17:08:24','2023-02-28 17:08:24'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-02-28 21:08:24','2023-03-01 01:08:24'),(104,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-02-27 09:08:24','2023-02-27 09:08:24'),(105,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-02-28 21:08:24','2023-03-01 01:08:24'),(106,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-02-28 17:08:24','2023-02-28 17:08:24'),(107,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-02-28 23:08:24','2023-03-01 01:08:24'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2023-03-01 01:08:24','2023-03-01 01:08:24'),(109,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-02-28 05:08:24','2023-02-28 05:08:24'),(110,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-02-28 23:08:24','2023-03-01 01:08:24'),(111,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,43,'2023-03-01 01:08:24','2023-03-01 01:08:24');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,1201.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0051810959','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 08:08:23',NULL,NULL,NULL),(2,2,NULL,627.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0020054266','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 08:08:23',NULL,NULL,NULL),(3,3,NULL,1887.00,NULL,NULL,'','delivered',3354.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD008639977','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:23','2023-03-01 08:08:23',NULL,NULL),(4,4,NULL,2094.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0086646207','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 08:08:23','2023-03-01 08:08:23',NULL,NULL),(5,5,NULL,3603.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0062131431','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-10 08:08:23','2023-03-01 08:08:23',NULL,NULL),(6,6,NULL,1658.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD006227623','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:23','2023-03-01 08:08:23',NULL,NULL),(7,7,NULL,540.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0086116166','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 08:08:23',NULL,NULL,NULL),(8,8,NULL,1836.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0063400332','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:23','2023-03-01 08:08:23',NULL,NULL),(9,9,NULL,698.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0045598615','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:23','2023-03-01 08:08:23',NULL,NULL),(10,10,NULL,612.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0031671030','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:23',NULL,NULL,NULL),(11,11,NULL,4017.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD009522683','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-10 08:08:23','2023-03-01 08:08:23',NULL,NULL),(12,12,NULL,754.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0080279352','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-05 08:08:23',NULL,NULL,NULL),(13,13,NULL,612.00,NULL,NULL,'','delivered',818.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0063682199','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-11 08:08:23','2023-03-01 08:08:23',NULL,NULL),(14,14,NULL,2139.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0067179880','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-08 08:08:23','2023-03-01 08:08:23',NULL,NULL),(15,15,NULL,2143.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0058523095','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-08 08:08:23',NULL,NULL,NULL),(16,16,NULL,2397.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD005678894','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-09 08:08:23',NULL,NULL,NULL),(17,17,NULL,650.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0059569729','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:23',NULL,NULL,NULL),(18,18,NULL,3046.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0036073009','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:23',NULL,NULL,NULL),(19,19,NULL,2554.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD009876535','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:23',NULL,NULL,NULL),(20,20,NULL,1719.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0085748211','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-07 08:08:23',NULL,NULL,NULL),(21,21,NULL,2094.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0082795052','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-07 08:08:23',NULL,NULL,NULL),(22,22,NULL,680.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:23','2023-03-01 01:08:23','JJD0044703860','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-02 08:08:23','2023-03-01 08:08:23',NULL,NULL),(23,23,NULL,1887.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0084111077','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-07 08:08:24','2023-03-01 08:08:24',NULL,NULL),(24,24,NULL,2087.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0055701028','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-07 08:08:24',NULL,NULL,NULL),(25,25,NULL,1406.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0061014184','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-07 08:08:24','2023-03-01 08:08:24',NULL,NULL),(26,26,NULL,1620.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0024476305','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-04 08:08:24','2023-03-01 08:08:24',NULL,NULL),(27,27,NULL,573.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD007430415','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:24','2023-03-01 08:08:24',NULL,NULL),(28,28,NULL,2285.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0035920095','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-05 08:08:24','2023-03-01 08:08:24',NULL,NULL),(29,29,NULL,2716.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0080121783','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-05 08:08:24',NULL,NULL,NULL),(30,30,NULL,678.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0083952114','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-04 08:08:24',NULL,NULL,NULL),(31,31,NULL,3533.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0032386866','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:24',NULL,NULL,NULL),(32,32,NULL,1973.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0072757169','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:24','2023-03-01 08:08:24',NULL,NULL),(33,33,NULL,1258.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0024060204','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-08 08:08:24',NULL,NULL,NULL),(34,34,NULL,2430.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0011170404','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:24','2023-03-01 08:08:24',NULL,NULL),(35,35,NULL,661.00,NULL,NULL,'','approved',938.00,'pending','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0018596856','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-09 08:08:24',NULL,NULL,NULL),(36,36,NULL,1356.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0085890062','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:24','2023-03-01 08:08:24',NULL,NULL),(37,37,NULL,629.00,NULL,NULL,'','delivered',1118.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0051456823','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-11 08:08:24','2023-03-01 08:08:24',NULL,NULL),(38,38,NULL,1356.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0058403787','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-08 08:08:24','2023-03-01 08:08:24',NULL,NULL),(39,39,NULL,3486.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0028040245','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:24',NULL,NULL,NULL),(40,40,NULL,1537.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0074229782','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-10 08:08:24',NULL,NULL,NULL),(41,41,NULL,703.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD008693868','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-11 08:08:24',NULL,NULL,NULL),(42,42,NULL,1950.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0026861068','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-06 08:08:24','2023-03-01 08:08:24',NULL,NULL),(43,43,NULL,523.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-03-01 01:08:24','2023-03-01 01:08:24','JJD0087696717','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-03-03 08:08:24','2023-03-01 08:08:24',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(2,'None',0.000000,2,'published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(3,'Import Tax',15.000000,3,'published','2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,'PAYMENT',1,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,'ORDER &amp; RETURNS',2,'published','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','6f37e4a804eb3645a5d4b6c3ca7abb1a',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','6f37e4a804eb3645a5d4b6c3ca7abb1a',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','cefff51bc5eed6ed24a66db902b9aad1',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','81e3bab6b21b009bf454dffd9e9300b1',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','1eb566716ae3ef0f3377c354dee3c253',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','c6fbb2686ea87d91a3550076cffce86c',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','ffb843620867f6b3dbcfb58381bdb67c',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','832af9aee70e0c8ea1f0d9d87de77cca',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','81e3bab6b21b009bf454dffd9e9300b1',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','1eb566716ae3ef0f3377c354dee3c253',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','c6fbb2686ea87d91a3550076cffce86c',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','ffb843620867f6b3dbcfb58381bdb67c',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',916,'brands/1.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(2,0,'2','2',1,'image/jpeg',916,'brands/2.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(3,0,'3','3',1,'image/jpeg',916,'brands/3.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(4,0,'4','4',1,'image/jpeg',916,'brands/4.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(5,0,'5','5',1,'image/jpeg',916,'brands/5.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(6,0,'6','6',1,'image/jpeg',916,'brands/6.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(7,0,'7','7',1,'image/jpeg',916,'brands/7.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(8,0,'1','1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(9,0,'2','2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(10,0,'3','3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(11,0,'4','4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(12,0,'5','5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(13,0,'6','6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(14,0,'7','7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(15,0,'8','8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(16,0,'1','1',3,'image/jpeg',2165,'products/1.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(17,0,'10-1','10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(18,0,'10-2','10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(19,0,'10','10',3,'image/jpeg',2165,'products/10.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(20,0,'11-1','11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(21,0,'11-2','11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(22,0,'11-3','11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(23,0,'11','11',3,'image/jpeg',2165,'products/11.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(24,0,'12-1','12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(25,0,'12-2','12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(26,0,'12-3','12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(27,0,'12','12',3,'image/jpeg',2165,'products/12.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(28,0,'13-1','13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(29,0,'13','13',3,'image/jpeg',2165,'products/13.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(30,0,'14','14',3,'image/jpeg',2165,'products/14.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(31,0,'15-1','15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(32,0,'15','15',3,'image/jpeg',2165,'products/15.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(33,0,'16','16',3,'image/jpeg',2165,'products/16.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(34,0,'17-1','17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(35,0,'17-2','17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(36,0,'17-3','17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(37,0,'17','17',3,'image/jpeg',2165,'products/17.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(38,0,'18-1','18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(39,0,'18-2','18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(40,0,'18-3','18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(41,0,'18','18',3,'image/jpeg',2165,'products/18.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(42,0,'19-1','19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(43,0,'19-2','19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(44,0,'19-3','19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(45,0,'19','19',3,'image/jpeg',2165,'products/19.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(46,0,'2-1','2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(47,0,'2-2','2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(48,0,'2-3','2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2023-03-01 01:08:15','2023-03-01 01:08:15',NULL),(49,0,'2','2',3,'image/jpeg',2165,'products/2.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(50,0,'20-1','20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(51,0,'20-2','20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(52,0,'20-3','20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(53,0,'20','20',3,'image/jpeg',2165,'products/20.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(54,0,'21-1','21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(55,0,'21-2','21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(56,0,'21','21',3,'image/jpeg',2165,'products/21.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(57,0,'22-1','22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(58,0,'22-2','22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(59,0,'22-3','22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(60,0,'22','22',3,'image/jpeg',2165,'products/22.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(61,0,'23-1','23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(62,0,'23-2','23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(63,0,'23-3','23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(64,0,'23','23',3,'image/jpeg',2165,'products/23.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(65,0,'3','3',3,'image/jpeg',2165,'products/3.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(66,0,'4-1','4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(67,0,'4-2','4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(68,0,'4-3','4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2023-03-01 01:08:16','2023-03-01 01:08:16',NULL),(69,0,'4','4',3,'image/jpeg',2165,'products/4.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(70,0,'5-1','5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(71,0,'5-2','5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(72,0,'5-3','5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(73,0,'5','5',3,'image/jpeg',2165,'products/5.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(74,0,'6','6',3,'image/jpeg',2165,'products/6.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(75,0,'7','7',3,'image/jpeg',2165,'products/7.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(76,0,'8-1','8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(77,0,'8-2','8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(78,0,'8-3','8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(79,0,'8','8',3,'image/jpeg',2165,'products/8.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(80,0,'9-1','9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(81,0,'9-2','9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(82,0,'9','9',3,'image/jpeg',2165,'products/9.jpg','[]','2023-03-01 01:08:17','2023-03-01 01:08:17',NULL),(83,0,'1','1',4,'image/jpeg',2165,'customers/1.jpg','[]','2023-03-01 01:08:18','2023-03-01 01:08:18',NULL),(84,0,'10','10',4,'image/jpeg',2165,'customers/10.jpg','[]','2023-03-01 01:08:18','2023-03-01 01:08:18',NULL),(85,0,'2','2',4,'image/jpeg',2165,'customers/2.jpg','[]','2023-03-01 01:08:18','2023-03-01 01:08:18',NULL),(86,0,'3','3',4,'image/jpeg',2165,'customers/3.jpg','[]','2023-03-01 01:08:18','2023-03-01 01:08:18',NULL),(87,0,'4','4',4,'image/jpeg',2165,'customers/4.jpg','[]','2023-03-01 01:08:19','2023-03-01 01:08:19',NULL),(88,0,'5','5',4,'image/jpeg',2165,'customers/5.jpg','[]','2023-03-01 01:08:19','2023-03-01 01:08:19',NULL),(89,0,'6','6',4,'image/jpeg',2165,'customers/6.jpg','[]','2023-03-01 01:08:19','2023-03-01 01:08:19',NULL),(90,0,'7','7',4,'image/jpeg',2165,'customers/7.jpg','[]','2023-03-01 01:08:19','2023-03-01 01:08:19',NULL),(91,0,'8','8',4,'image/jpeg',2165,'customers/8.jpg','[]','2023-03-01 01:08:19','2023-03-01 01:08:19',NULL),(92,0,'9','9',4,'image/jpeg',2165,'customers/9.jpg','[]','2023-03-01 01:08:19','2023-03-01 01:08:19',NULL),(93,0,'1','1',5,'image/jpeg',2165,'news/1.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(94,0,'10','10',5,'image/jpeg',2165,'news/10.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(95,0,'11','11',5,'image/jpeg',2165,'news/11.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(96,0,'2','2',5,'image/jpeg',2165,'news/2.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(97,0,'3','3',5,'image/jpeg',2165,'news/3.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(98,0,'4','4',5,'image/jpeg',2165,'news/4.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(99,0,'5','5',5,'image/jpeg',2165,'news/5.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(100,0,'6','6',5,'image/jpeg',2165,'news/6.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(101,0,'7','7',5,'image/jpeg',2165,'news/7.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(102,0,'8','8',5,'image/jpeg',2165,'news/8.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(103,0,'9','9',5,'image/jpeg',2165,'news/9.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(105,0,'1-md','1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(108,0,'2-md','2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(111,0,'3-md','3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(113,0,'1','1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(114,0,'2','2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(115,0,'3','3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(116,0,'4','4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(117,0,'5','5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(118,0,'6','6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(119,0,'7','7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(120,0,'8','8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(121,0,'9','9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(122,0,'app','app',8,'image/png',1849,'general/app.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(124,0,'favicon','favicon',8,'image/png',1925,'general/favicon.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(126,0,'logo-light','logo-light',8,'image/png',783,'general/logo-light.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(127,0,'logo','logo',8,'image/png',793,'general/logo.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(134,0,'1','1',9,'image/png',3482,'stores/1.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(135,0,'10','10',9,'image/png',1675,'stores/10.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(136,0,'11','11',9,'image/png',1857,'stores/11.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(137,0,'12','12',9,'image/png',2046,'stores/12.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(138,0,'13','13',9,'image/png',1597,'stores/13.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(139,0,'14','14',9,'image/png',1649,'stores/14.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(140,0,'15','15',9,'image/png',2120,'stores/15.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(141,0,'16','16',9,'image/png',2556,'stores/16.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(142,0,'17','17',9,'image/png',2631,'stores/17.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(143,0,'2','2',9,'image/png',3369,'stores/2.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(144,0,'3','3',9,'image/png',3044,'stores/3.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(145,0,'4','4',9,'image/png',3096,'stores/4.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(146,0,'5','5',9,'image/png',3607,'stores/5.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(147,0,'6','6',9,'image/png',3778,'stores/6.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(148,0,'7','7',9,'image/png',1566,'stores/7.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(149,0,'8','8',9,'image/png',1773,'stores/8.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(150,0,'9','9',9,'image/png',1671,'stores/9.png','[]','2023-03-01 01:08:22','2023-03-01 01:08:22',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(2,0,'product-categories','product-categories',0,'2023-03-01 01:08:13','2023-03-01 01:08:13',NULL),(3,0,'products','products',0,'2023-03-01 01:08:14','2023-03-01 01:08:14',NULL),(4,0,'customers','customers',0,'2023-03-01 01:08:18','2023-03-01 01:08:18',NULL),(5,0,'news','news',0,'2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(6,0,'sliders','sliders',0,'2023-03-01 01:08:20','2023-03-01 01:08:20',NULL),(7,0,'promotion','promotion',0,'2023-03-01 01:08:21','2023-03-01 01:08:21',NULL),(8,0,'general','general',0,'2023-03-01 01:08:22','2023-03-01 01:08:22',NULL),(9,0,'stores','stores',0,'2023-03-01 01:08:22','2023-03-01 01:08:22',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,5,'main-menu','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-amp-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:22'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:22'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:22'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:22'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,'Quick links','quick-links','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,'Company','company','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(4,'Business','business','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(5,'Menu chính','menu-chinh','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(7,'Công ty','cong-ty','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(8,'Doanh nghiệp','doanh-nghiep','published','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2023-03-01 01:08:14','2023-03-01 01:08:14'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:17','2023-03-01 01:08:17'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-03-01 01:08:18','2023-03-01 01:08:18'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2020_11_18_150916_ads_create_ads_table',2),(28,'2021_12_02_035301_add_ads_translations_table',2),(29,'2015_06_29_025744_create_audit_history',3),(30,'2015_06_18_033822_create_blog_table',4),(31,'2021_02_16_092633_remove_default_value_for_author_type',4),(32,'2021_12_03_030600_create_blog_translations',4),(33,'2022_04_19_113923_add_index_to_table_posts',4),(34,'2016_06_17_091537_create_contacts_table',5),(35,'2020_03_05_041139_create_ecommerce_tables',6),(36,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(37,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(38,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(39,'2021_02_18_073505_update_table_ec_reviews',6),(40,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(41,'2021_03_10_025153_change_column_tax_amount',6),(42,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(43,'2021_04_28_074008_ecommerce_create_product_label_table',6),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(45,'2021_06_28_153141_correct_slugs_data',6),(46,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(47,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(48,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(49,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(51,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(52,'2021_11_23_071403_correct_languages_for_product_variations',6),(53,'2021_11_28_031808_add_product_tags_translations',6),(54,'2021_12_01_031123_add_featured_image_to_ec_products',6),(55,'2022_01_01_033107_update_table_ec_shipments',6),(56,'2022_02_16_042457_improve_product_attribute_sets',6),(57,'2022_03_22_075758_correct_product_name',6),(58,'2022_04_19_113334_add_index_to_ec_products',6),(59,'2022_04_28_144405_remove_unused_table',6),(60,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(61,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(62,'2022_06_16_095633_add_index_to_some_tables',6),(63,'2022_06_30_035148_create_order_referrals_table',6),(64,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(65,'2022_08_14_032836_create_ec_order_returns_table',6),(66,'2022_08_14_033554_create_ec_order_return_items_table',6),(67,'2022_08_15_040324_add_billing_address',6),(68,'2022_08_30_091114_support_digital_products_table',6),(69,'2022_09_13_095744_create_options_table',6),(70,'2022_09_13_104347_create_option_value_table',6),(71,'2022_10_05_163518_alter_table_ec_order_product',6),(72,'2022_10_12_041517_create_invoices_table',6),(73,'2022_10_12_142226_update_orders_table',6),(74,'2022_10_13_024916_update_table_order_returns',6),(75,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(76,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(77,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(78,'2022_11_19_041643_add_ec_tax_product_table',6),(79,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(80,'2022_12_17_041532_fix_address_in_order_invoice',6),(81,'2022_12_26_070329_create_ec_product_views_table',6),(82,'2023_01_04_033051_fix_product_categories',6),(83,'2023_01_09_050400_add_ec_global_options_translations_table',6),(84,'2023_01_10_093754_add_missing_option_value_id',6),(85,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(86,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(87,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(88,'2023_02_27_095752_remove_duplicate_reviews',6),(89,'2018_07_09_221238_create_faq_table',7),(90,'2021_12_03_082134_create_faq_translations',7),(91,'2016_10_03_032336_create_languages_table',8),(92,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(93,'2021_12_03_075608_create_page_translations',9),(94,'2019_11_18_061011_create_country_table',10),(95,'2021_12_03_084118_create_location_translations',10),(96,'2021_12_03_094518_migrate_old_location_data',10),(97,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(98,'2022_01_16_085908_improve_plugin_location',10),(99,'2022_08_04_052122_delete_location_backup_tables',10),(100,'2022_10_29_065232_increase_states_abbreviation_column',10),(101,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(102,'2021_07_06_030002_create_marketplace_table',11),(103,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(104,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(105,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(106,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(107,'2021_12_06_031304_update_table_mp_customer_revenues',11),(108,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(109,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(110,'2022_11_02_071413_add_more_info_for_store',11),(111,'2022_11_02_080444_add_tax_info',11),(112,'2023_02_01_062030_add_store_translations',11),(113,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(114,'2023_02_17_023648_fix_store_prefix',11),(115,'2017_10_24_154832_create_newsletter_table',12),(116,'2017_05_18_080441_create_payment_tables',13),(117,'2021_03_27_144913_add_customer_type_into_table_payments',13),(118,'2021_05_24_034720_make_column_currency_nullable',13),(119,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(120,'2021_10_19_020859_update_metadata_field',13),(121,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(122,'2022_07_07_153354_update_charge_id_in_table_payments',13),(123,'2017_07_11_140018_create_simple_slider_table',14),(124,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,9,4,1269.00,0.00,1269.00,0.00,'USD',NULL,'2023-01-27 01:08:24','2023-01-27 01:08:24',0,NULL),(2,5,5,4365.00,0.00,4365.00,0.00,'USD',NULL,'2023-02-10 17:08:25','2023-02-10 17:08:25',0,NULL),(3,3,6,1196.00,0.00,1196.00,0.00,'USD',NULL,'2023-02-18 01:08:25','2023-02-18 01:08:25',0,NULL),(4,2,8,2454.00,0.00,2454.00,0.00,'USD',NULL,'2023-02-25 09:08:25','2023-02-25 09:08:25',0,NULL),(5,9,9,423.00,0.00,423.00,1269.00,'USD',NULL,'2023-02-10 17:08:25','2023-02-10 17:08:25',0,NULL),(6,5,11,3054.75,0.00,3054.75,4365.00,'USD',NULL,'2023-02-18 01:08:25','2023-02-18 01:08:25',0,NULL),(7,3,14,1800.00,0.00,1800.00,1196.00,'USD',NULL,'2023-02-03 09:08:25','2023-02-03 09:08:25',0,NULL),(8,2,22,538.00,0.00,538.00,2454.00,'USD',NULL,'2023-02-18 01:08:25','2023-02-18 01:08:25',0,NULL),(9,3,23,3354.00,0.00,3354.00,2996.00,'USD',NULL,'2023-02-21 17:08:25','2023-02-21 17:08:25',0,NULL),(10,2,25,1114.00,0.00,1114.00,2992.00,'USD',NULL,'2023-01-27 01:08:26','2023-01-27 01:08:26',0,NULL),(11,3,26,2412.00,0.00,2412.00,6350.00,'USD',NULL,'2023-02-03 09:08:26','2023-02-03 09:08:26',0,NULL),(12,5,27,1213.00,0.00,1213.00,7419.75,'USD',NULL,'2023-02-14 09:08:26','2023-02-14 09:08:26',0,NULL),(13,2,28,1290.00,0.00,1290.00,4106.00,'USD',NULL,'2023-02-14 09:08:26','2023-02-14 09:08:26',0,NULL),(14,2,32,597.00,0.00,597.00,5396.00,'USD',NULL,'2023-02-03 09:08:26','2023-02-03 09:08:26',0,NULL),(15,3,34,3618.00,0.00,3618.00,8762.00,'USD',NULL,'2023-02-10 17:08:26','2023-02-10 17:08:26',0,NULL),(16,5,36,160.50,0.00,160.50,8632.75,'USD',NULL,'2023-02-03 09:08:26','2023-02-03 09:08:26',0,NULL),(17,5,38,160.50,0.00,160.50,8793.25,'USD',NULL,'2023-02-10 17:08:26','2023-02-10 17:08:26',0,NULL),(18,2,42,3345.00,0.00,3345.00,5993.00,'USD',NULL,'2023-01-27 01:08:26','2023-01-27 01:08:26',0,NULL),(19,3,43,556.00,0.00,556.00,12380.00,'USD',NULL,'2023-01-27 01:08:27','2023-01-27 01:08:27',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,2180.00,9338.00,'USD','','{\"name\":\"Prof. Aaron Rosenbaum\",\"number\":\"+19497162406\",\"full_name\":\"Sigurd Raynor\",\"description\":\"Kendall Kutch\"}',NULL,0,'completed',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(2,2,0.00,1778.00,7158.00,'USD','','{\"name\":\"Prof. Aaron Rosenbaum\",\"number\":\"+19497162406\",\"full_name\":\"Sigurd Raynor\",\"description\":\"Kendall Kutch\"}',NULL,0,'processing',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(3,2,0.00,306.00,5380.00,'USD','','{\"name\":\"Prof. Aaron Rosenbaum\",\"number\":\"+19497162406\",\"full_name\":\"Sigurd Raynor\",\"description\":\"Kendall Kutch\"}',NULL,0,'completed',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(4,2,0.00,1650.00,5074.00,'USD','','{\"name\":\"Prof. Aaron Rosenbaum\",\"number\":\"+19497162406\",\"full_name\":\"Sigurd Raynor\",\"description\":\"Kendall Kutch\"}',NULL,0,'pending',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(5,3,0.00,406.00,12936.00,'USD','','{\"name\":\"Harrison Kling\",\"number\":\"+17343894883\",\"full_name\":\"Mitchel Harvey\",\"description\":\"Prof. Dino Crooks DVM\"}',NULL,0,'processing',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(6,3,0.00,3295.00,12530.00,'USD','','{\"name\":\"Harrison Kling\",\"number\":\"+17343894883\",\"full_name\":\"Mitchel Harvey\",\"description\":\"Prof. Dino Crooks DVM\"}',NULL,0,'pending',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(7,5,0.00,1469.00,8953.75,'USD','','{\"name\":\"Sierra Brakus\",\"number\":\"+14794014950\",\"full_name\":\"Jaydon Christiansen PhD\",\"description\":\"Colby Krajcik\"}',NULL,0,'completed',NULL,'2023-03-01 01:08:27','2023-03-01 01:08:27',NULL),(8,5,0.00,133.00,7484.75,'USD','','{\"name\":\"Sierra Brakus\",\"number\":\"+14794014950\",\"full_name\":\"Jaydon Christiansen PhD\",\"description\":\"Colby Krajcik\"}',NULL,0,'pending',NULL,'2023-03-01 01:08:28','2023-03-01 01:08:28',NULL),(9,5,0.00,929.00,7351.75,'USD','','{\"name\":\"Sierra Brakus\",\"number\":\"+14794014950\",\"full_name\":\"Jaydon Christiansen PhD\",\"description\":\"Colby Krajcik\"}',NULL,0,'completed',NULL,'2023-03-01 01:08:28','2023-03-01 01:08:28',NULL),(10,5,0.00,417.00,6422.75,'USD','','{\"name\":\"Sierra Brakus\",\"number\":\"+14794014950\",\"full_name\":\"Jaydon Christiansen PhD\",\"description\":\"Colby Krajcik\"}',NULL,0,'processing',NULL,'2023-03-01 01:08:28','2023-03-01 01:08:28',NULL),(11,9,0.00,438.00,1692.00,'USD','','{\"name\":\"Peyton Ratke\",\"number\":\"+14347378327\",\"full_name\":\"Mrs. Gladys Torphy\",\"description\":\"Prof. Mortimer Rolfson MD\"}',NULL,0,'processing',NULL,'2023-03-01 01:08:28','2023-03-01 01:08:28',NULL),(12,9,0.00,381.00,1254.00,'USD','','{\"name\":\"Peyton Ratke\",\"number\":\"+14347378327\",\"full_name\":\"Mrs. Gladys Torphy\",\"description\":\"Prof. Mortimer Rolfson MD\"}',NULL,0,'completed',NULL,'2023-03-01 01:08:28','2023-03-01 01:08:28',NULL),(13,9,0.00,264.00,873.00,'USD','','{\"name\":\"Peyton Ratke\",\"number\":\"+14347378327\",\"full_name\":\"Mrs. Gladys Torphy\",\"description\":\"Prof. Mortimer Rolfson MD\"}',NULL,0,'pending',NULL,'2023-03-01 01:08:28','2023-03-01 01:08:28',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','erdman.coralie@example.org','+19365165474','8074 Rau Drive Apt. 444','MG','Delaware','O\'Haraberg',2,'stores/1.png','Sint error quasi esse et.','Repellat odit eos ut rem amet. Dignissimos molestiae at est qui sit distinctio ut. Veniam ut reprehenderit vitae.','published',NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23',NULL,NULL),(2,'Global Office','margarett.nader@example.org','+15105649985','989 Rocky Garden','VG','California','Issacbury',3,'stores/2.png','Ullam maxime magnam modi.','Similique praesentium repellat rerum. Voluptatem fuga ut ipsa officiis sequi consequatur voluptatem.','published',NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23',NULL,NULL),(3,'Young Shop','stracke.paolo@example.net','+15854866236','37953 Smith Flat Apt. 052','GI','Nebraska','Brownburgh',5,'stores/3.png','Quaerat impedit odio voluptates ratione.','Enim earum et accusamus soluta suscipit. Et aut quaerat impedit amet molestiae iure necessitatibus iste. Placeat nemo et repellendus magnam numquam.','published',NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23',NULL,NULL),(4,'Global Store','moshe.weimann@example.net','+13325165181','7381 Bosco Crescent Apt. 126','PY','Vermont','East Krystina',9,'stores/4.png','Error minus vero aut suscipit.','Facere dolores nobis saepe architecto. Velit perferendis commodi nam voluptatibus enim molestiae.','published',NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,3424.00,0.00,9338.00,'$2y$10$cIZtiHo3zTTctXHagFP3KOIHT2mApGAnFUSOeVhEW8v66eGoqcZtW','{\"name\":\"Prof. Aaron Rosenbaum\",\"number\":\"+19497162406\",\"full_name\":\"Sigurd Raynor\",\"description\":\"Kendall Kutch\"}','2023-03-01 01:08:23','2023-03-01 01:08:27','bank_transfer',NULL),(2,3,9235.00,0.00,12936.00,'$2y$10$0iYAmud7GPqKcZWHAlhev.iUHN6aarAAwiMQVrkH.0qMcPBiVEBry','{\"name\":\"Harrison Kling\",\"number\":\"+17343894883\",\"full_name\":\"Mitchel Harvey\",\"description\":\"Prof. Dino Crooks DVM\"}','2023-03-01 01:08:23','2023-03-01 01:08:27','bank_transfer',NULL),(3,5,6005.75,0.00,8953.75,'$2y$10$ELmubWBj6fiXV.GOESPrhucmCQtp7a2hR2.1JqdOjEl8Ckx91mDta','{\"name\":\"Sierra Brakus\",\"number\":\"+14794014950\",\"full_name\":\"Jaydon Christiansen PhD\",\"description\":\"Colby Krajcik\"}','2023-03-01 01:08:23','2023-03-01 01:08:28','bank_transfer',NULL),(4,9,609.00,0.00,1692.00,'$2y$10$lRiSn45Z/XveOvixOMyIneMU6z91Uli0p1hGM6s0Hw72y/D/kuy7i','{\"name\":\"Peyton Ratke\",\"number\":\"+14347378327\",\"full_name\":\"Mrs. Gladys Torphy\",\"description\":\"Prof. Mortimer Rolfson MD\"}','2023-03-01 01:08:23','2023-03-01 01:08:28','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,'About us','<p>Gryphon. \'The reason is,\' said the Dodo, pointing to the Knave \'Turn them over!\' The Knave shook his head mournfully. \'Not I!\' said the Cat; and this was the only one who got any advantage from the trees as well as she remembered that she had grown so large a house, that she had found the fan and gloves--that is, if I would talk on such a fall as this, I shall have some fun now!\' thought Alice. \'I mean what I see\"!\' \'You might just as the Dormouse say?\' one of these cakes,\' she thought, and.</p><p>NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head down to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the last few minutes, and she went round the refreshments!\' But there seemed to listen, the whole pack of cards!\' At this moment Five, who had been looking at the flowers and the Queen of Hearts were seated on their slates, and then keep tight hold of its little eyes, but it was very like having a game of play with a little startled.</p><p>As soon as she was now about a thousand times as large as the soldiers did. After these came the royal children; there were a Duck and a fan! Quick, now!\' And Alice was very nearly getting up and saying, \'Thank you, it\'s a French mouse, come over with diamonds, and walked two and two, as the White Rabbit, \'but it doesn\'t matter which way I ought to speak, but for a few yards off. The Cat seemed to be no use speaking to it,\' she thought, and rightly too, that very few things indeed were really.</p><p>Queen left off, quite out of the Shark, But, when the White Rabbit blew three blasts on the hearth and grinning from ear to ear. \'Please would you like the Mock Turtle replied, counting off the cake. * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice indignantly, and she tried to speak, and no more to do with this creature when I got up very carefully, remarking, \'I really must be Mabel after all, and I don\'t think,\' Alice went timidly up to her usual height. It was the first.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,'Terms Of Use','<p>Dodo. Then they all looked so good, that it might appear to others that what you would seem to see if there are, nobody attends to them--and you\'ve no idea how confusing it is you hate--C and D,\' she added in an offended tone, and added \'It isn\'t directed at all,\' said the Cat, \'if you don\'t even know what a delightful thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Off with his head!\' she said, \'than waste it in asking riddles that have no sort of idea that they had settled down in.</p><p>But do cats eat bats, I wonder?\' And here Alice began to cry again. \'You ought to be no doubt that it might tell her something worth hearing. For some minutes it puffed away without being invited,\' said the Mock Turtle went on. Her listeners were perfectly quiet till she heard a little bottle that stood near the door with his knuckles. It was the fan and gloves--that is, if I chose,\' the Duchess said in a low curtain she had accidentally upset the milk-jug into his cup of tea, and looked at.</p><p>GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be off, and that in some alarm. This time there were a Duck and a crash of broken glass, from which she found she could not make out at all the jelly-fish out of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the lefthand bit of the day; and this was the same side of the Gryphon, with a large ring, with the other: the Duchess replied, in a tone of this was the first to break the silence. \'What day of.</p><p>Alice severely. \'What are they doing?\' Alice whispered to the Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"Be what you had been for some time busily writing in his confusion he bit a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of its little eyes, but it was as long as there was room for this, and Alice was beginning to think about it, even if my head would.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(4,'Terms &amp; Conditions','<p>SOMEBODY ought to have been a holiday?\' \'Of course not,\' said Alice in a low voice. \'Not at all,\' said the Hatter: \'I\'m on the floor, and a Long Tale They were just beginning to see anything; then she had not a VERY good opportunity for repeating his remark, with variations. \'I shall do nothing of the song. \'What trial is it?\' Alice panted as she went round the rosetree; for, you see, Alice had not long to doubt, for the accident of the garden: the roses growing on it but tea. \'I don\'t like.</p><p>Gryphon, and the shrill voice of the what?\' said the March Hare. \'Sixteenth,\' added the Gryphon; and then added them up, and there they lay sprawling about, reminding her very much what would be quite absurd for her to wink with one eye, How the Owl and the bright eager eyes were nearly out of the sort,\' said the Mock Turtle had just begun to dream that she was saying, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door, and knocked. \'There\'s.</p><p>I begin, please your Majesty,\' the Hatter said, turning to the Knave was standing before them, in chains, with a little pattering of feet on the whole place around her became alive with the lobsters and the whole court was a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Queen ordering off her knowledge, as there was room for YOU, and no more to do that,\' said the Cat. \'--so long as you are; secondly, because she was small enough to get into that lovely.</p><p>At this moment the door and found quite a new idea to Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'that\'s not at all know whether it was out of sight, he said in a hot tureen! Who for such dainties would not stoop? Soup of the crowd below, and there they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me the truth: did you begin?\' The Hatter looked at Alice, as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may stand.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(5,'Refund Policy','<p>Who ever saw one that size? Why, it fills the whole cause, and condemn you to learn?\' \'Well, there was mouth enough for it to the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her answer. \'They\'re done with a table in the back. However, it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said the sage, as he said to herself. \'I dare say you never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I shall have to beat time.</p><p>CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am now? That\'ll be a comfort, one way--never to be Involved in this way! Stop this moment, I tell you!\' But she waited for some minutes. The Caterpillar was the White Rabbit cried out, \'Silence in the shade: however, the moment she appeared; but she felt sure it would be like, \'--for they haven\'t got much evidence YET,\' she said to one of the sea.\' \'I couldn\'t afford to learn it.\' said the Pigeon in a very truthful child; \'but.</p><p>I think I must be the right distance--but then I wonder what Latitude or Longitude either, but thought they were nice grand words to say.) Presently she began fancying the sort of thing that would happen: \'\"Miss Alice! Come here directly, and get ready for your interesting story,\' but she felt certain it must be off, then!\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a back-somersault in at the jury-box, and saw that, in her hand, and made another.</p><p>And she went on eagerly. \'That\'s enough about lessons,\' the Gryphon whispered in a melancholy air, and, after waiting till she had someone to listen to her, And mentioned me to him: She gave me a good thing!\' she said this, she noticed a curious croquet-ground in her pocket) till she was now more than that, if you wouldn\'t squeeze so.\' said the Duck: \'it\'s generally a ridge or furrow in the back. At last the Mock Turtle had just begun to dream that she had but to her great disappointment it.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(10,'Affiliate','<p>Cheshire Cat, she was trying to explain it as far as they would call after her: the last few minutes that she was exactly one a-piece all round. \'But she must have got in as well,\' the Hatter said, tossing his head sadly. \'Do I look like one, but it all is! I\'ll try if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the morning, just time to go, for the baby, and not to her, one on each side, and opened their eyes and mouths so VERY.</p><p>March Hare was said to the King, and the procession came opposite to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said the Dodo, pointing to Alice a little startled when she first saw the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little while, however, she waited patiently. \'Once,\' said the Dormouse, not choosing to notice this question, but hurriedly went on, \'\"--found it advisable to go near.</p><p>Alice in a dreamy sort of lullaby to it in asking riddles that have no answers.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, the squeaking of the jury wrote it down into its face to see it quite plainly through the doorway; \'and even if my head would go round a deal too flustered to tell me your history, you know,\' the Hatter replied. \'Of course twinkling begins with a great letter, nearly as large as himself, and this Alice thought she might as well as she spoke--fancy.</p><p>This time there were three gardeners at it, busily painting them red. Alice thought over all the jurymen are back in their paws. \'And how did you begin?\' The Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish you could keep it to his son, \'I feared it might tell her something about the crumbs,\' said the Gryphon. \'I mean, what makes them so shiny?\' Alice looked all round the refreshments!\' But there seemed to be in before the trial\'s begun.\'.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(11,'Career','<p>Sir, With no jury or judge, would be the right size again; and the March Hare moved into the sky all the rats and--oh dear!\' cried Alice, quite forgetting that she remained the same thing as \"I sleep when I sleep\" is the reason they\'re called lessons,\' the Gryphon at the March Hare. \'It was the BEST butter, you know.\' \'Who is this?\' She said this last remark. \'Of course they were\', said the Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the March Hare. \'Yes, please do!\'.</p><p>William the Conqueror.\' (For, with all her riper years, the simple and loving heart of her sharp little chin into Alice\'s shoulder as she stood still where she was holding, and she jumped up in great fear lest she should meet the real Mary Ann, what ARE you talking to?\' said the White Rabbit, who was reading the list of the fact. \'I keep them to be a lesson to you to sit down without being seen, when she looked up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King.</p><p>He says it kills all the jurymen on to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine THIS witness.\' \'Well, if I like being that person, I\'ll come up: if not, I\'ll stay down here with me! There are no mice in the wood, \'is to grow here,\' said the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would have appeared to them she heard a little shriek, and went on again:-- \'I didn\'t know how to spell \'stupid,\' and that is enough,\' Said his.</p><p>YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook took the hookah out of a good deal worse off than before, as the other.\' As soon as there was a bright idea came into Alice\'s head. \'Is that the best plan.\' It sounded an excellent plan, no doubt, and very nearly in the chimney as she left her, leaning her head was so small as this is May it won\'t be raving mad--at least not so mad as it happens; and if it had a pencil that.</p>',1,NULL,'default',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'BQRGPUI3HY','paypal',NULL,1455.00,1,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'Y9KCJUJTZI','paypal',NULL,997.00,2,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'RMFICORHLK','cod',NULL,3354.00,3,'pending','confirm',7,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'GTR3J2K3BL','paypal',NULL,1269.00,4,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'ENT1NSAKII','razorpay',NULL,4365.00,5,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'JHLROA2L97','mollie',NULL,1196.00,6,'completed','confirm',8,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'QLQHIQAKIF','razorpay',NULL,517.00,7,'completed','confirm',8,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'OJF2UESDIE','razorpay',NULL,2454.00,8,'completed','confirm',8,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'BNIQYIPBLS','sslcommerz',NULL,423.00,9,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'JZZQVCZJ8F','stripe',NULL,818.00,10,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'ZTZGTRRTVZ','stripe',NULL,3054.75,11,'completed','confirm',4,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'FF8DWSG1TH','paypal',NULL,857.00,12,'completed','confirm',4,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'NGSROYLIBW','cod',NULL,818.00,13,'pending','confirm',4,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'VGVVTYH00B','razorpay',NULL,1800.00,14,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'VIFBGAFZUK','paypal',NULL,3543.00,15,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'YWPVJ083M0','bank_transfer',NULL,3719.25,16,'pending','confirm',10,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'ICTKH3Y1L5','bank_transfer',NULL,1115.00,17,'pending','confirm',10,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'BWWZFKCWXJ','sslcommerz',NULL,3612.00,18,'completed','confirm',4,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'LFYC5ZITI8','paystack',NULL,2826.00,19,'completed','confirm',4,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'7BAFQOUFUU','stripe',NULL,3639.00,20,'completed','confirm',4,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'IKMT4DZA3P','mollie',NULL,1269.00,21,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'NQHWHWS9DI','stripe',NULL,538.00,22,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:23','2023-03-01 01:08:23','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'QBMHNREIKO','paystack',NULL,3354.00,23,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'3Z2E2XJAU1','razorpay',NULL,2834.00,24,'completed','confirm',1,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'UBEUVJ9QUA','stripe',NULL,1114.00,25,'completed','confirm',1,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'MMK1GOBJOR','paypal',NULL,2412.00,26,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'A7CXCJTG7O','sslcommerz',NULL,1213.00,27,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'SLZZXD3N1Q','paypal',NULL,1290.00,28,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'OYMKLNVPPC','paystack',NULL,3952.00,29,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'B78CIUZONF','bank_transfer',NULL,80.25,30,'pending','confirm',6,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'VL3PNLZTZY','mollie',NULL,2906.00,31,'completed','confirm',6,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'WOMJEKC5AH','mollie',NULL,597.00,32,'completed','confirm',4,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'NPK0FY69DW','bank_transfer',NULL,2236.00,33,'pending','confirm',4,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'NQPPJFI1AM','paypal',NULL,3618.00,34,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'K0PTLVT0W5','cod',NULL,938.00,35,'pending','confirm',10,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'AS4WDVI8CV','mollie',NULL,160.50,36,'completed','confirm',10,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'MVQDB5PVKN','cod',NULL,1118.00,37,'pending','confirm',10,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'EQDATVNBVB','stripe',NULL,160.50,38,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'PWICORGTUG','mollie',NULL,3724.00,39,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'YK4ZCB8CRX','sslcommerz',NULL,1743.00,40,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'I87X7776DE','mollie',NULL,557.00,41,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'EPS1WSWG1B','razorpay',NULL,3345.00,42,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'ZMJAXFADAT','sslcommerz',NULL,556.00,43,'completed','confirm',7,NULL,NULL,'2023-03-01 01:08:24','2023-03-01 01:08:24','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(2,2),(4,2),(2,3),(3,3),(1,4),(4,4),(2,5),(4,5),(1,6),(4,6),(2,7),(4,7),(1,8),(4,8),(1,9),(4,9),(1,10),(4,10),(1,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',902,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2195,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1337,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1104,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',433,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',548,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1834,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1071,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1338,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1461,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2491,NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-03-01 01:08:13'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','1b5193a2a30d0599f4075651f8973916',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_status','1',NULL,NULL),(13,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(16,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(17,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(19,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(20,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(21,'ecommerce_store_name','Martfury',NULL,NULL),(22,'ecommerce_store_phone','1800979769',NULL,NULL),(23,'ecommerce_store_address','502 New Street',NULL,NULL),(24,'ecommerce_store_state','Brighton VIC',NULL,NULL),(25,'ecommerce_store_city','Brighton VIC',NULL,NULL),(26,'ecommerce_store_country','AU',NULL,NULL),(27,'theme','martfury',NULL,NULL),(28,'admin_logo','general/logo-light.png',NULL,NULL),(29,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(30,'theme-martfury-seo_description','Martfury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, Martfury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(31,'theme-martfury-copyright','© 2023 Martfury. All Rights Reserved.',NULL,NULL),(32,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(33,'theme-martfury-logo','general/logo.png',NULL,NULL),(34,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(35,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(36,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(37,'theme-martfury-email','contact@martfury.co',NULL,NULL),(38,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(39,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(40,'theme-martfury-homepage_id','1',NULL,NULL),(41,'theme-martfury-blog_page_id','6',NULL,NULL),(42,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(43,'theme-martfury-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(44,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(45,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(46,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(47,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(48,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(49,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(50,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(51,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(52,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(53,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(54,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(55,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(56,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(57,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(58,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(59,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(60,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(61,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(62,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(63,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(64,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(65,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(66,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(67,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(68,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(69,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(70,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(71,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(72,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(73,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(74,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(75,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(76,'theme-martfury-social-name-1','Facebook','2023-03-01 01:08:22','2023-03-01 01:08:22'),(77,'theme-martfury-social-url-1','https://www.facebook.com/','2023-03-01 01:08:22','2023-03-01 01:08:22'),(78,'theme-martfury-social-icon-1','fa-facebook','2023-03-01 01:08:22','2023-03-01 01:08:22'),(79,'theme-martfury-social-color-1','#3b5999','2023-03-01 01:08:22','2023-03-01 01:08:22'),(80,'theme-martfury-social-name-2','Twitter','2023-03-01 01:08:22','2023-03-01 01:08:22'),(81,'theme-martfury-social-url-2','https://www.twitter.com/','2023-03-01 01:08:22','2023-03-01 01:08:22'),(82,'theme-martfury-social-icon-2','fa-twitter','2023-03-01 01:08:22','2023-03-01 01:08:22'),(83,'theme-martfury-social-color-2','#55ACF9','2023-03-01 01:08:22','2023-03-01 01:08:22'),(84,'theme-martfury-social-name-3','Instagram','2023-03-01 01:08:22','2023-03-01 01:08:22'),(85,'theme-martfury-social-url-3','https://www.instagram.com/','2023-03-01 01:08:22','2023-03-01 01:08:22'),(86,'theme-martfury-social-icon-3','fa-instagram','2023-03-01 01:08:22','2023-03-01 01:08:22'),(87,'theme-martfury-social-color-3','#E1306C','2023-03-01 01:08:22','2023-03-01 01:08:22'),(88,'theme-martfury-social-name-4','Youtube','2023-03-01 01:08:22','2023-03-01 01:08:22'),(89,'theme-martfury-social-url-4','https://www.youtube.com/','2023-03-01 01:08:22','2023-03-01 01:08:22'),(90,'theme-martfury-social-icon-4','fa-youtube','2023-03-01 01:08:22','2023-03-01 01:08:22'),(91,'theme-martfury-social-color-4','#FF0000','2023-03-01 01:08:22','2023-03-01 01:08:22'),(92,'theme-martfury-vi-copyright','© 2023 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(93,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(94,'theme-martfury-vi-homepage_id','1',NULL,NULL),(95,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(96,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(97,'theme-martfury-vi-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(98,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(99,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(100,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(101,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(102,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2023-03-01 01:08:21','2023-03-01 01:08:21'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2023-03-01 01:08:21','2023-03-01 01:08:21'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2023-03-01 01:08:21','2023-03-01 01:08:21');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-03-01 01:08:13','2023-03-01 01:08:13'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-03-01 01:08:14','2023-03-01 01:08:14'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:17','2023-03-01 01:08:17'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2023-03-01 01:08:18','2023-03-01 01:08:18'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-01 01:08:20','2023-03-01 01:08:20'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-01 01:08:20','2023-03-01 01:08:20'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-01 01:08:20','2023-03-01 01:08:20'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-01 01:08:20','2023-03-01 01:08:20'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-01 01:08:20','2023-03-01 01:08:20'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-03-01 01:08:20','2023-03-01 01:08:20'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-03-01 01:08:20','2023-03-01 01:08:20'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-03-01 01:08:20','2023-03-01 01:08:20'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-03-01 01:08:20','2023-03-01 01:08:20'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-03-01 01:08:20','2023-03-01 01:08:20'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-03-01 01:08:20','2023-03-01 01:08:20'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(84,'sexy-clutches-how-to-buy-amp-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-03-01 01:08:20','2023-03-01 01:08:21'),(94,'home',1,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(97,'terms-amp-conditions',4,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(104,'career',11,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2023-03-01 01:08:21','2023-03-01 01:08:21'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-03-01 01:08:23','2023-03-01 01:08:23'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-03-01 01:08:23','2023-03-01 01:08:23'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-03-01 01:08:23','2023-03-01 01:08:23'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-03-01 01:08:23','2023-03-01 01:08:23');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-03-01 01:08:20','2023-03-01 01:08:20'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-03-01 01:08:20','2023-03-01 01:08:20');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$d6/cySvRcslicf7BdTB7uOFHDxiutNAW0M5U8MJeHKYYiMvZ2Ein.',NULL,'2023-03-01 01:08:20','2023-03-01 01:08:20','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2023-03-01 01:08:22','2023-03-01 01:08:22'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2023-03-01 01:08:22','2023-03-01 01:08:22');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01 15:08:59