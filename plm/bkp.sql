-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: dbpladelamaso
-- ------------------------------------------------------
-- Server version	5.5.53-0+deb8u1-log

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
-- Current Database: `dbpladelamaso`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dbpladelamaso` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dbpladelamaso`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add userprofile',7,'add_userprofile'),(20,'Can change userprofile',7,'change_userprofile'),(21,'Can delete userprofile',7,'delete_userprofile'),(22,'Can add varemes',8,'add_varemes'),(23,'Can change varemes',8,'change_varemes'),(24,'Can delete varemes',8,'delete_varemes'),(25,'Can add tipus vins',9,'add_tipusvins'),(26,'Can change tipus vins',9,'change_tipusvins'),(27,'Can delete tipus vins',9,'delete_tipusvins'),(28,'Can add vins',10,'add_vins'),(29,'Can change vins',10,'change_vins'),(30,'Can delete vins',10,'delete_vins'),(34,'Can add empresa',12,'add_empresa'),(35,'Can change empresa',12,'change_empresa'),(36,'Can delete empresa',12,'delete_empresa'),(37,'Can add email',13,'add_email'),(38,'Can change email',13,'change_email'),(39,'Can delete email',13,'delete_email'),(40,'Can add preus vins',14,'add_preusvins'),(41,'Can change preus vins',14,'change_preusvins'),(42,'Can delete preus vins',14,'delete_preusvins');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$JP4xxnyYjCIC$+PA+dZ6oZGIEwpj0p06pO0kuq203riMQ2hVKR9jJEjM=','2016-12-12 18:32:19',1,'billy76','','','billy@virtelix.eu',1,1,'2016-12-12 00:04:39');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-12-12 00:19:17','1','Varema 2015',1,'',8,1),(2,'2016-12-12 00:23:50','1','TrepatNegre2015',1,'',9,1),(3,'2016-12-12 00:26:12','1','Grillat',1,'',10,1),(4,'2016-12-12 00:31:00','1','Grillat',2,'Modificado/a icones.',10,1),(5,'2016-12-12 00:31:17','1','TrepatNegre2015',2,'Modificado/a icones.',9,1),(6,'2016-12-12 00:31:30','1','Varema 2015',2,'Modificado/a icones.',8,1),(7,'2016-12-12 00:37:25','1','Grillat',2,'Modificado/a descripciovi.',10,1),(8,'2016-12-12 00:47:39','5','Pla de la Masó',1,'',12,1),(9,'2016-12-12 00:50:58','5','Pla de la Masó',2,'Modificado/a icones y descripcioempresa.',12,1),(10,'2016-12-12 00:51:12','5','Pla de la Masó',2,'No ha cambiado ningún campo.',12,1),(11,'2016-12-12 00:56:50','1','Test',1,'',13,1),(12,'2016-12-12 01:14:54','1','PreusVins object',1,'',14,1),(13,'2016-12-12 01:16:09','1','PreusVins object',2,'No ha cambiado ningún campo.',14,1),(14,'2016-12-12 12:35:26','1','Varema 2015',2,'Modificado/a descripciovarema.',8,1),(15,'2016-12-12 12:37:22','2','Varema 2014',1,'',8,1),(16,'2016-12-12 12:38:01','3','Varema 2016',1,'',8,1),(17,'2016-12-12 13:16:43','1','Varema 2015',2,'No ha cambiado ningún campo.',8,1),(18,'2016-12-12 13:30:38','2','Varema 2014',2,'Modificado/a descripciovarema.',8,1),(19,'2016-12-12 13:31:32','3','Varema 2016',2,'Modificado/a descripciovarema.',8,1),(20,'2016-12-12 18:28:34','1','Grillat',2,'No ha cambiado ningún campo.',10,1),(21,'2016-12-12 18:36:15','1','TrepatNegre2015',2,'No ha cambiado ningún campo.',9,1),(22,'2016-12-12 18:37:02','2','Blanc Barrica',1,'',9,1),(23,'2016-12-12 23:12:47','2','Clos Montblanc',1,'',10,1),(24,'2016-12-13 01:11:42','1','PreusVins object',2,'No ha cambiado ningún campo.',14,1),(25,'2016-12-13 01:12:35','2','PreusVins object',1,'',14,1);
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
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(13,'plm','email'),(12,'plm','empresa'),(14,'plm','preusvins'),(9,'plm','tipusvins'),(7,'plm','userprofile'),(8,'plm','varemes'),(10,'plm','vins'),(6,'sessions','session');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-12-11 19:32:23'),(2,'auth','0001_initial','2016-12-11 19:32:25'),(3,'admin','0001_initial','2016-12-11 19:32:25'),(4,'contenttypes','0002_remove_content_type_name','2016-12-11 19:32:26'),(5,'auth','0002_alter_permission_name_max_length','2016-12-11 19:32:26'),(6,'auth','0003_alter_user_email_max_length','2016-12-11 19:32:26'),(7,'auth','0004_alter_user_username_opts','2016-12-11 19:32:26'),(8,'auth','0005_alter_user_last_login_null','2016-12-11 19:32:26'),(9,'auth','0006_require_contenttypes_0002','2016-12-11 19:32:26'),(10,'sessions','0001_initial','2016-12-11 19:32:26'),(11,'plm','0001_initial','2016-12-11 20:00:33'),(12,'plm','0002_auto_20161212_0130','2016-12-12 00:30:19'),(13,'plm','0003_auto_20161212_0134','2016-12-12 00:35:04'),(14,'plm','0004_auto_20161212_0138','2016-12-12 00:38:47'),(15,'plm','0005_auto_20161212_0148','2016-12-12 00:48:35'),(16,'plm','0006_auto_20161212_0150','2016-12-12 00:50:11'),(17,'plm','0007_email','2016-12-12 00:55:26'),(18,'plm','0008_preusvins','2016-12-12 01:11:55'),(19,'plm','0009_preusvins_taxa','2016-12-12 01:15:56');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('b2x6mdsmb1syk3827alhv214t7ccq1dv','OWMzN2E0NTU1Njc2OWRjNTgzNTg4MjIxNTU5ZWZlN2NmYjEyZmMyMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZTkzNjQ1ZmIzZjZkZDJlN2VjN2E0YWI2NDlmZjM5NmU2YjI3MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-26 13:16:20'),('cciz49f7l0xxlrxphbo75vdb7x4pgblf','OWMzN2E0NTU1Njc2OWRjNTgzNTg4MjIxNTU5ZWZlN2NmYjEyZmMyMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZTkzNjQ1ZmIzZjZkZDJlN2VjN2E0YWI2NDlmZjM5NmU2YjI3MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-26 00:05:35'),('hss69q49kk6wit4b2i5lag2ci1pjrga7','OWMzN2E0NTU1Njc2OWRjNTgzNTg4MjIxNTU5ZWZlN2NmYjEyZmMyMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZTkzNjQ1ZmIzZjZkZDJlN2VjN2E0YWI2NDlmZjM5NmU2YjI3MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-26 02:23:19'),('nj62stz3x3d0a1f5fqmq0cle6nud8sgy','OWMzN2E0NTU1Njc2OWRjNTgzNTg4MjIxNTU5ZWZlN2NmYjEyZmMyMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZTkzNjQ1ZmIzZjZkZDJlN2VjN2E0YWI2NDlmZjM5NmU2YjI3MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-26 18:32:19');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_email`
--

DROP TABLE IF EXISTS `plm_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_email`
--

LOCK TABLES `plm_email` WRITE;
/*!40000 ALTER TABLE `plm_email` DISABLE KEYS */;
INSERT INTO `plm_email` VALUES (1,'billy@virtelx.eu','Test','Test','2016-12-12 00:56:28'),(2,'billy@virtelix.cat','Test','Test','2016-12-12 10:14:58'),(3,'billy@virtelix.cat','Test','Test','2016-12-12 10:17:18'),(4,'billy@virtelix.cat','skjdfaklsfj','klasdjfaklsdjfñldjfñlkajdfklajsdñlkfafadfasdfasdf','2016-12-12 10:18:17'),(5,'billy@virtelix.eu','Jjjjj','Jjjjjjjjjj','2016-12-12 22:33:24'),(6,'billy@virtelix.cat','test','test','2016-12-12 23:08:19'),(7,'billy@virtelix.cat','test','test','2016-12-13 01:05:42');
/*!40000 ALTER TABLE `plm_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_empresa`
--

DROP TABLE IF EXISTS `plm_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_empresa` (
  `idempresa` int(11) NOT NULL AUTO_INCREMENT,
  `icones` varchar(100) DEFAULT NULL,
  `titolempresa` varchar(15) DEFAULT NULL,
  `descripcioempresa` longtext,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`idempresa`),
  KEY `plm_empres_user_id_6001c093_fk_auth_user_id` (`user_id`),
  CONSTRAINT `plm_empres_user_id_6001c093_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_empresa`
--

LOCK TABLES `plm_empresa` WRITE;
/*!40000 ALTER TABLE `plm_empresa` DISABLE KEYS */;
INSERT INTO `plm_empresa` VALUES (5,'photos/empresa/logo_feEjiqy.png','Pla de la Masó','Som una colla d’amics. Els nostres  avantpassats han treballat les vinyes de casa durant generacions i nosaltres els agafem el relleu: la seva passió, l’esforç, el compromís i la pertinença a la terra. De les vinyes velles escollim els millors raïms, de varietats autòctones com el macabeu, la parellada i el trepat.  Vinificades amb petites produccions molt cuidades per oferir-vos vins on la fruita i la terra hi siguin ben presents.\r\n\r\nPla de la Masó, actualment Promasó, és la plaça al costat del Castell. L’únic topònim barberenc que conserva el mot Masó, que utilitzaven els templers per referir-se a la seva casa-castell.',1);
/*!40000 ALTER TABLE `plm_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_preusvins`
--

DROP TABLE IF EXISTS `plm_preusvins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_preusvins` (
  `idpreuvi` int(11) NOT NULL AUTO_INCREMENT,
  `preubrut` decimal(10,2) NOT NULL,
  `preunet` decimal(10,2) NOT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `idvi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `taxa` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idpreuvi`),
  KEY `plm_preusvins_idvi_id_2d869f36_fk_plm_vins_idvi` (`idvi_id`),
  KEY `plm_preusvins_user_id_79ec7f71_fk_auth_user_id` (`user_id`),
  CONSTRAINT `plm_preusvins_idvi_id_2d869f36_fk_plm_vins_idvi` FOREIGN KEY (`idvi_id`) REFERENCES `plm_vins` (`idvi`),
  CONSTRAINT `plm_preusvins_user_id_79ec7f71_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_preusvins`
--

LOCK TABLES `plm_preusvins` WRITE;
/*!40000 ALTER TABLE `plm_preusvins` DISABLE KEYS */;
INSERT INTO `plm_preusvins` VALUES (1,76.00,91.76,'1',1,1,21.00),(2,76.00,96.00,'1',2,1,21.00);
/*!40000 ALTER TABLE `plm_preusvins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_tipusvins`
--

DROP TABLE IF EXISTS `plm_tipusvins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_tipusvins` (
  `idtipusvi` int(11) NOT NULL AUTO_INCREMENT,
  `titoltipusvi` varchar(15) DEFAULT NULL,
  `descripciotipusvi` longtext,
  `user_id` int(11) NOT NULL,
  `icones` varchar(100),
  PRIMARY KEY (`idtipusvi`),
  KEY `plm_tipusvins_user_id_1426d3e5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `plm_tipusvins_user_id_1426d3e5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_tipusvins`
--

LOCK TABLES `plm_tipusvins` WRITE;
/*!40000 ALTER TABLE `plm_tipusvins` DISABLE KEYS */;
INSERT INTO `plm_tipusvins` VALUES (1,'TrepatNegre2015','Trepat Negre Any 2015',1,'photos/tipusvins/logo.png'),(2,'Blanc Barrica','Tipus Vi Blanc de Barrica varema 2015',1,'');
/*!40000 ALTER TABLE `plm_tipusvins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_userprofile`
--

DROP TABLE IF EXISTS `plm_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `plm_userprofile_user_id_1f548c38_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_userprofile`
--

LOCK TABLES `plm_userprofile` WRITE;
/*!40000 ALTER TABLE `plm_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `plm_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_varemes`
--

DROP TABLE IF EXISTS `plm_varemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_varemes` (
  `idvarema` int(11) NOT NULL AUTO_INCREMENT,
  `titolvarema` varchar(15) DEFAULT NULL,
  `descripciovarema` longtext,
  `anyvarema` varchar(4) NOT NULL,
  `fotosvarema1` varchar(100) DEFAULT NULL,
  `fotosvarema2` varchar(100) DEFAULT NULL,
  `fotosvarema3` varchar(100) DEFAULT NULL,
  `fotosvarema4` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icones` varchar(100),
  PRIMARY KEY (`idvarema`),
  KEY `plm_varemes_user_id_3762e6f1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `plm_varemes_user_id_3762e6f1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_varemes`
--

LOCK TABLES `plm_varemes` WRITE;
/*!40000 ALTER TABLE `plm_varemes` DISABLE KEYS */;
INSERT INTO `plm_varemes` VALUES (1,'Varema 2015','Una primavera seca i amb altes temperatures, i un juliol molt calorós i amb poques pluges ha condicionat la producció i es preveuen una quantitat de quilos semblant al 2014, ja que aquest any les condicions climatològiques han fet que el gra de raïm no creixi tant. Ara bé, la qualitat serà excel·lent.Així ho ha explicat la presidenta de la DO Conca de Barberà, Mariona Rendé, que destaca que \"l\'anyada del 2015 serà recordada com una de les que tindrà major qualitat, enguany sortiran molt bons vins\".\r\n\r\nRendé també destaca que la qualitat del raïm d\'aquesta collita permetrà \"implantar a la comarca els vins de finca, uns vins de gran qualitat i que alguns cellers tenen pensat elaborar\".\r\n\r\nCellers i cooperatives coincideixen que serà un bon any, un raïm sa i les temperatures refrescants d\'aquestes últimes nits permeten allargar el procés de maduració. També el trepat, la varietat autòctona de la Conca de Barberà, més rústica i resistent, serà de qualitat.\r\n\r\nDesprés de veremar les varietats tradicionals i, més endavant el trepat, quedarà el cabernet i la parellada per finalitzar aquesta campanya 2015. Es preveu que s\'allargui fins a finals de setembre i/o principis d\'octubre. Si el temps segueix així permetrà l\'elaboració de grans vins blancs, rosats i negres DO Conca de Barberà.','2015','photos/varemas/varema1.png','photos/varemas/varema2.png','photos/varemas/verema3.png','photos/varemas/verema4.png',1,'photos/varemas/logo.png'),(2,'Varema 2014','La DO Catalunya ha tancat la verema d’aquest 2015 amb un total de 50.9 milions de quilos de raïm de cellers. D’aquests, 23,2 milions corresponen a raïm blanc, i 27,7 corresponen a raïm negre. Les xifres representen un increment del 12.7% respecte de la verema de l’any anterior, i això confirma el creixement del sector en aquesta denominació d’origen.\r\n\r\nDesprés de dos anys amb bones collites, s’esperava que aquest 2015 tingués una producció menor pel desgast dels ceps. A més, també tenien en compte les gelades primaverals en varietats primerenques com el chardonnay, alguna pedregada i la falta de pluges. Per tot això, s’esperava una forta reducció de la collita, concretament al voltant del 30% de la producció global de tot Catalunya. Al final, la xifra s’ha vist reduïda només en un 4% respecte del 2014.\r\n\r\nLa verema s’ha vist avançada entre 10 i 15 dies per les intenses onades de calor del mes de juliol. Tot i això, el raïm presenta un bon grau alcohòlic i la varietat de raïm negre té una maduresa fenòlica amb una bona qualitat.','2014','photos/varemas/varema1_MOvtVIW.png','photos/varemas/varema2_79AtDBh.png','photos/varemas/varema3_wmaAxto.png','photos/varemas/varema4_oEpE2Md.png',1,'photos/varemas/logo_bmHLM61.png'),(3,'Varema 2016','La Denominació d’Origen Catalunya tanca la verema 2016 amb un total de 53.021.204 kg de raïm, repartits entre 11.699 pesades. Aquesta xifra representa un 4,1% més que a la verema del 2015 (51 milions de kg), deixant enrere les previsions a la baixa que s’havien fet inicialment, i que auguraven una reducció en la producció degut especialment a haver patit un hivern molt sec.\r\n\r\nFinalment les pluges caigudes a principis de primavera han estat suficients per garantir una bona brotada i un bon desenvolupament vegetatiu dels ceps, amb una càrrega de raïms generosa. D’altra banda, varietats de maduració tardana i amb importància quantitativa la DO Catalunya, com són la Parellada, el Cabernet Sauvignon i la Carinyena, han contribuït a incrementar aquesta xifra final.\r\n\r\nPel que fa a l’aspecte sanitari i qualitatiu dels raïms, tot i presentar una mida de gra reduïda a causa de la falta d’aigua, són d’una qualitat força bona. Les graduacions alcohòliques en potència són elevades, amb un valor mitjà global de 12,7% vol. i mantenint un bon equilibri amb l’acidesa.','2016','photos/varemas/varema1_jgZrFIm.png','photos/varemas/varema2_3r2BVLE.png','photos/varemas/varema3_K9B4Eun.png','photos/varemas/varema4_6Yvpzrt.png',1,'photos/varemas/logo_l1wyA1W.png');
/*!40000 ALTER TABLE `plm_varemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plm_vins`
--

DROP TABLE IF EXISTS `plm_vins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plm_vins` (
  `idvi` int(11) NOT NULL AUTO_INCREMENT,
  `titolvi` varchar(15) DEFAULT NULL,
  `descripciovi` longtext,
  `fotosvi1` varchar(100) DEFAULT NULL,
  `fotosvi2` varchar(100) DEFAULT NULL,
  `fotosvi3` varchar(100) DEFAULT NULL,
  `fotosvi4` varchar(100) DEFAULT NULL,
  `idtipusvi_id` int(11) NOT NULL,
  `idvarema_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `icones` varchar(100),
  PRIMARY KEY (`idvi`),
  KEY `plm_vins_idtipusvi_id_31b60b8c_fk_plm_tipusvins_idtipusvi` (`idtipusvi_id`),
  KEY `plm_vins_idvarema_id_79579ed3_fk_plm_varemes_idvarema` (`idvarema_id`),
  KEY `plm_vins_user_id_50353db5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `plm_vins_idtipusvi_id_31b60b8c_fk_plm_tipusvins_idtipusvi` FOREIGN KEY (`idtipusvi_id`) REFERENCES `plm_tipusvins` (`idtipusvi`),
  CONSTRAINT `plm_vins_idvarema_id_79579ed3_fk_plm_varemes_idvarema` FOREIGN KEY (`idvarema_id`) REFERENCES `plm_varemes` (`idvarema`),
  CONSTRAINT `plm_vins_user_id_50353db5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plm_vins`
--

LOCK TABLES `plm_vins` WRITE;
/*!40000 ALTER TABLE `plm_vins` DISABLE KEYS */;
INSERT INTO `plm_vins` VALUES (1,'Grillat','100% trepat, de vinyes velles, afruïtat, fresc, jove, blau de tros, despreoucupat i ¡ una mica  grillat !','photos/vins/vitrepat2015_negre.png','photos/vins/vitrepat2015_negre_RzWyJVp.png','photos/vins/vitrepat2015_negre_iotuAf8.png','photos/vins/vitrepat2015_negre_8qD6nJ4.png',1,1,1,'photos/vins/logo.png'),(2,'Clos Montblanc','Varietats 	Chardonnay\r\n	\r\nCupatge 	100% Chardonnay\r\n\r\nDO 	        Catalunya\r\n\r\nVinya 	Finca de la família amb vinya de 20 anys situada sota la Serra de Miramar.\r\n\r\nSòl 	        Textura franca i composició calcària.\r\n\r\nVerema 	Finals d\'agost.\r\n\r\nVinificació  Selecció de raïms al camp i verema mecànica durant la nit, per tal d\'aprofitar la temperatura fresca i que el raïm arribi en perfectes condicions al celler. Fermentació total en bótes de roure francès de diverses procedències. Temps en bóta entre 3 i 4 mesos.\r\n\r\nNota tast   Color groc palla amb tonalitats ambres. Aroma dalta intensitat i molt persistent, notes de fruita i notes de fumats . En boca és rodó, ampli, sedós i elegant.\r\n\r\nContingut d’alcohol 14º\r\n\r\nSucres residuals < 3,5 g/L','photos/vins/closmontblanc2015_VpViUnG.png','photos/vins/closmontblanc2015_umjwsuO.png','photos/vins/closmontblanc2015_GU9vFX2.png','photos/vins/closmontblanc2015_cxUzZpV.png',2,1,1,'photos/vins/logoclosmontblanc2015_aYNbMFg.png');
/*!40000 ALTER TABLE `plm_vins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbpladelamaso'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-13  3:05:57
