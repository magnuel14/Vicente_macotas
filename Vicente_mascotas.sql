-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Vicente_mascotas
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'administrativos'),(1,'veterinarios');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,1,28),(1,1,32),(3,1,36),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,2,14),(18,2,15),(19,2,16),(20,2,17),(21,2,18),(22,2,19),(23,2,20),(24,2,21),(25,2,22),(26,2,23),(27,2,24),(28,2,25),(29,2,26),(30,2,27),(31,2,28),(32,2,29),(33,2,30),(34,2,31),(35,2,32),(36,2,33),(37,2,34),(38,2,35),(39,2,36);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cliente',7,'add_cliente'),(26,'Can change cliente',7,'change_cliente'),(27,'Can delete cliente',7,'delete_cliente'),(28,'Can view cliente',7,'view_cliente'),(29,'Can add mascota',8,'add_mascota'),(30,'Can change mascota',8,'change_mascota'),(31,'Can delete mascota',8,'delete_mascota'),(32,'Can view mascota',8,'view_mascota'),(33,'Can add turnos',9,'add_turnos'),(34,'Can change turnos',9,'change_turnos'),(35,'Can delete turnos',9,'delete_turnos'),(36,'Can view turnos',9,'view_turnos');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `api_token` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$IsBZpk9g11G6$Ub3LaGrNdVTxINiWKJj+qTMhk9+gXrB1W5rNsuGOvMA=','2020-08-15 15:16:12.000000',1,'magnuel','Manuel','Vicente','manuelvicente912@gmail.com',1,1,'2020-08-15 15:15:08.000000','LSqK1LBRltB1EwHwmQMk9kYPH9NbDh0hwKNxwhQR2cByDPofm3dAEyqMcL875N2J67ekr0wxQP1hoq8A5ANeR4qaAfqxCuIDsXNhSuFqwV1qjwanvbrjxALM8oqFH18igxoFawYdopvQXuDDLWtDSv'),(2,'pbkdf2_sha256$180000$qoLMJDW1LJrB$8WdBfFI1pUGoTE0M2byx2JEUekDe0xMH4Fgh3y1EXaM=',NULL,0,'valegtino','Valentino','Pérez','manuelvicente67@hotmail.com',0,1,'2020-08-15 18:35:00.000000','hqPQG5fZL0jxOnbRon67CL65hhb0Hxg7Hmwo7TczisnKvEAKjeU0kjJZMZSlWo8MHPutIL9B91QJRKoHUR3YHnXXAOcTQWAg9VqneutUTdgvGPE9mHf0X0E0T9jVW8M1CV3WG55o8XEe5tP997FtOC');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,2),(2,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-08-15 15:17:38.246691','1','Veterinario',1,'[{\"added\": {}}]',3,1),(2,'2020-08-15 15:18:16.858820','2','administrativos',1,'[{\"added\": {}}]',3,1),(3,'2020-08-15 15:18:32.307545','1','veterinarios',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',3,1),(4,'2020-08-15 18:34:38.235146','1','magnuel',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\"]}}]',4,1),(5,'2020-08-15 18:35:00.342904','2','valegtino',1,'[{\"added\": {}}]',4,1),(6,'2020-08-15 18:35:43.587747','2','valegtino',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'modelos','cliente'),(8,'modelos','mascota'),(9,'modelos','turnos'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-08-15 15:13:13.201500'),(2,'auth','0001_initial','2020-08-15 15:13:13.545142'),(3,'admin','0001_initial','2020-08-15 15:13:14.323403'),(4,'admin','0002_logentry_remove_auto_add','2020-08-15 15:13:14.455496'),(5,'admin','0003_logentry_add_action_flag_choices','2020-08-15 15:13:14.471728'),(6,'contenttypes','0002_remove_content_type_name','2020-08-15 15:13:14.605057'),(7,'auth','0002_alter_permission_name_max_length','2020-08-15 15:13:14.682792'),(8,'auth','0003_alter_user_email_max_length','2020-08-15 15:13:14.714145'),(9,'auth','0004_alter_user_username_opts','2020-08-15 15:13:14.727455'),(10,'auth','0005_alter_user_last_login_null','2020-08-15 15:13:14.789471'),(11,'auth','0006_require_contenttypes_0002','2020-08-15 15:13:14.794697'),(12,'auth','0007_alter_validators_add_error_messages','2020-08-15 15:13:14.819527'),(13,'auth','0008_alter_user_username_max_length','2020-08-15 15:13:14.902425'),(14,'auth','0009_alter_user_last_name_max_length','2020-08-15 15:13:14.977328'),(15,'auth','0010_alter_group_name_max_length','2020-08-15 15:13:14.996112'),(16,'auth','0011_update_proxy_permissions','2020-08-15 15:13:15.018274'),(17,'modelos','0001_initial','2020-08-15 15:13:15.095985'),(18,'sessions','0001_initial','2020-08-15 15:13:15.264818'),(19,'modelos','0002_auto_20200815_1558','2020-08-15 15:58:21.538121'),(20,'modelos','0003_remove_turnos_valor','2020-08-15 16:05:55.758580'),(21,'modelos','0004_auto_20200815_2118','2020-08-15 21:18:20.696766'),(22,'modelos','0005_auto_20200816_0247','2020-08-16 02:47:46.039098');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('m3kmyu7rmgxs5kt1a1ovtu2ex0mh890w','Y2U0NWQ5NDk2YTBmZGQzMzZhNTQxY2U5NTFjNjNiZTFjN2IyNDFhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDE3NWI5ZDM1NjY5ZGYzZmIzOWJkNWY4NWYxYTEwNjdmNWYxMGFkIn0=','2020-08-29 15:16:12.045074');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos_cliente`
--

DROP TABLE IF EXISTS `modelos_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelos_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(70) NOT NULL,
  `apellidos` varchar(70) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `api_token` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modelos_cliente_cedula_e53b6a8b_uniq` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos_cliente`
--

LOCK TABLES `modelos_cliente` WRITE;
/*!40000 ALTER TABLE `modelos_cliente` DISABLE KEYS */;
INSERT INTO `modelos_cliente` VALUES (1,'Mario','Lopez','2611279','0996264784','mariolopez65@gmail.com','1105219245','mario1412',NULL),(2,'David','Rios','2611271','099554823','davidrios65@hotmail.com','1105219240','david1412','t1vjudWrkYWTKqnky1gts3d1C5b6Vrp3WU7fiyfdIMjU5PI5QZfK52yfS9avbjKNgqNop8KclO4H3MGfqJklMpgs5U7AkvfI6aL2AfmVAvd6nGMfih2MuX85MgxbTwG7ViaIcTxu3P63q7s6wIESSc'),(3,'Daniel','Calle','2611272','099553240','danielcalle67@hotmail.com','1105219243','daniel1412',NULL),(4,'Santiago','Noblecilla','2612134','09940378','santiagonoblecilla65@hotmail.com','1105219235','santiago1412',NULL);
/*!40000 ALTER TABLE `modelos_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos_mascota`
--

DROP TABLE IF EXISTS `modelos_mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelos_mascota` (
  `mascota_id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_mas` varchar(20) NOT NULL,
  `nombres_mas` varchar(100) NOT NULL,
  `raza` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`mascota_id`),
  UNIQUE KEY `numero_mas` (`numero_mas`),
  KEY `modelos_mascota_cliente_id_69bdf533_fk_modelos_c` (`cliente_id`),
  CONSTRAINT `modelos_mascota_cliente_id_69bdf533_fk_modelos_c` FOREIGN KEY (`cliente_id`) REFERENCES `modelos_cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos_mascota`
--

LOCK TABLES `modelos_mascota` WRITE;
/*!40000 ALTER TABLE `modelos_mascota` DISABLE KEYS */;
INSERT INTO `modelos_mascota` VALUES (1,'0001','Cochi','Canina','10',1),(2,'0002','Princesa','Canina','12',2),(3,'0003','Kygo','Equina','12',3),(4,'0004','Soledad','','5',2),(5,'0005','Tintin','','3',2),(6,'0006','Manita','','1',3),(7,'0007','Manito','','6',3),(8,'0008','Rodolfo','equina','14',4);
/*!40000 ALTER TABLE `modelos_mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos_turnos`
--

DROP TABLE IF EXISTS `modelos_turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelos_turnos` (
  `turnos_id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `mascota_id` int(11) NOT NULL,
  PRIMARY KEY (`turnos_id`),
  KEY `modelos_turnos_mascota_id_c2b15afa_fk_modelos_mascota_mascota_id` (`mascota_id`),
  CONSTRAINT `modelos_turnos_mascota_id_c2b15afa_fk_modelos_mascota_mascota_id` FOREIGN KEY (`mascota_id`) REFERENCES `modelos_mascota` (`mascota_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos_turnos`
--

LOCK TABLES `modelos_turnos` WRITE;
/*!40000 ALTER TABLE `modelos_turnos` DISABLE KEYS */;
INSERT INTO `modelos_turnos` VALUES (1,'2020-08-13 14:36:47.460414','Contulta','dolor de garra',1),(2,'2020-08-23 00:00:00.000000','','cortar el pelo',2),(3,'2020-08-24 00:00:00.000000','','Vacunas',3);
/*!40000 ALTER TABLE `modelos_turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-16  5:01:36
