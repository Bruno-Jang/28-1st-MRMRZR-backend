-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zara_db
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-1:10.6.7+maria~focal

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `products_options_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_products_options_id_3077a5cc_fk_products_options_id` (`products_options_id`),
  KEY `carts_user_id_3a9d1785_fk_users_id` (`user_id`),
  CONSTRAINT `carts_products_options_id_3077a5cc_fk_products_options_id` FOREIGN KEY (`products_options_id`) REFERENCES `products_options` (`id`),
  CONSTRAINT `carts_user_id_3a9d1785_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Women');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'carts','cart'),(1,'contenttypes','contenttype'),(11,'orders','order'),(13,'orders','orderitem'),(12,'orders','orderstatus'),(4,'products','category'),(5,'products','item'),(6,'products','product'),(9,'products','productimage'),(8,'products','productoption'),(7,'products','size'),(2,'sessions','session'),(3,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'users','0001_initial','2022-05-25 13:53:34.463594'),(2,'products','0001_initial','2022-05-25 13:53:34.625986'),(3,'carts','0001_initial','2022-05-25 13:53:34.669246'),(4,'contenttypes','0001_initial','2022-05-25 13:53:34.687019'),(5,'contenttypes','0002_remove_content_type_name','2022-05-25 13:53:34.714080'),(6,'orders','0001_initial','2022-05-25 13:53:34.818143'),(7,'products','0002_alter_product_sizes','2022-05-25 13:53:34.823677'),(8,'products','0003_alter_product_sizes','2022-05-25 13:53:34.830960'),(9,'products','0004_alter_product_sizes','2022-05-25 13:53:34.836895'),(10,'products','0005_remove_product_sizes','2022-05-25 13:53:34.841952'),(11,'products','0006_product_sizes','2022-05-25 13:53:34.847855'),(12,'sessions','0001_initial','2022-05-25 13:53:34.866092');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `items_category_id_004c9b1f_fk_categories_id` (`category_id`),
  CONSTRAINT `items_category_id_004c9b1f_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'아우터',1),(2,'상의',1),(3,'하의',1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` char(32) NOT NULL,
  `address` varchar(100) NOT NULL,
  `order_status_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_number` (`order_number`),
  KEY `orders_order_status_id_05e726df_fk_orders_status_id` (`order_status_id`),
  KEY `orders_user_id_7e2523fb_fk_users_id` (`user_id`),
  CONSTRAINT `orders_order_status_id_05e726df_fk_orders_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `orders_status` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_items`
--

DROP TABLE IF EXISTS `orders_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `products_options_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_items_order_id_fb463d5e_fk_orders_id` (`order_id`),
  KEY `orders_items_products_options_id_ad609a6b_fk_products_options_id` (`products_options_id`),
  CONSTRAINT `orders_items_order_id_fb463d5e_fk_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orders_items_products_options_id_ad609a6b_fk_products_options_id` FOREIGN KEY (`products_options_id`) REFERENCES `products_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_items`
--

LOCK TABLES `orders_items` WRITE;
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status`
--

LOCK TABLES `orders_status` WRITE;
/*!40000 ALTER TABLE `orders_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `product_number` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_item_id_29b469c7_fk_items_id` (`item_id`),
  CONSTRAINT `products_item_id_29b469c7_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'워터 패딩 점퍼','J00001','신축성 있는 마감',79000.00,0,1),(2,'에코 후드 재킷','J00002','후드 달린 긴소매 재킷',89000.00,0,1),(3,'포켓터블 블루 재킷','J00003','하이넥 방수 재킷',49000.00,0,1),(4,'콘트라스트 버튼 울 코트','J00004','울 혼방 소재 코트. 라펠 칼라와 긴소매 디자인.',109000.00,1,1),(5,'컬러 데님 크롭 점퍼','J00005','라펠 칼라 반소매 점퍼',49000.00,1,1),(6,'벨티드 패딩 점퍼','J00006','롤업 스타일 긴소매 점퍼',109000.00,0,1),(7,'플루이드 재킷','J00007','버튼과 탭이 달린 롤업 소매 디자인 라펠 칼라 재킷',59000.00,1,1),(8,'퍼프 슬리브 미디 드레스','J00008','우아한 실루엣',115000.00,1,1),(9,'맥시 드레이프 드레스','J00009',' 여유로운 착용감',99000.00,0,1),(10,'스트럭처 숄더 패드 재킷','J00010','우아하고 섬세한 실루엣',149000.00,0,1),(11,'프런트 코어 셔츠','T00001','긴소매 셔츠',18000.00,0,2),(12,'어웨이크 패턴 셔츠','T00002','라펠 칼라 셔츠',19000.00,0,2),(13,'자수 디테일 포플린 셔츠','T00003','톤온톤 자수가 매치된 피터팬 칼라 셔츠',49000.00,0,2),(14,'펀칭 자수 블라우스','T00004','브이넥 마감 라운드넥 긴소매 블라우스',89000.00,1,2),(15,'리본 로맨틱 블라우스','T00005','리본이 달린 하이넥 긴소매 블라우스',59000.00,1,2),(16,'볼륨 슬리브 원피스','T00006','벌룬 스타일 반소매 라운드넥 원피스',39000.00,0,2),(17,'울 터틀넥 스웨터','T00007','시즌에 구애받지 않는 클래식 스웨터',175000.00,1,2),(18,'리브드 울 탑','T00008','모던한 디자인',115000.00,1,2),(19,'체크 울 베스트','T00009',' 인상적인 디테일',139000.00,1,2),(20,'레귤러 핏 모크넥 베스트','T00010','섬세한 패턴',135000.00,1,2),(21,'크루이프 진','P00001','붉은 크루이프 진',39000.00,1,3),(22,'블루패턴 플레어 팬츠','P00002','하이 웨이스트 팬츠',39000.00,0,3),(23,'조거 팬츠','P00003','화려한 조거 팬츠',29000.00,1,3),(24,'린나이 드레이프 스커트','P00004','하이웨이스트 미디 스커트',19000.00,1,3),(25,'새틴 스커트','P00005','세련된 스커트',29000.00,0,3),(26,'파자마 스타일 스트레이트 팬츠','P00006','신축성 있는 허리 부분에서 끈으로 핏 조절이 가능한 하이웨이스트 팬츠',49000.00,1,3),(27,'리브드 와이드 팬츠','P00007','신축성 있는 허리 디자인의 하이웨이스트 팬츠',39000.00,0,3),(28,'크롭트 스트레이트 진','P00008','리사이클 코튼 소재의 데님 진',89000.00,1,3),(29,'스쿠버 팬츠','P00009','부드럽고 신축성 있는 스쿠버 소재의 팬츠',69000.00,1,3),(30,'스트레이트 핏 치노','P00010','감각적인 데이 룩에 모던함을 더하는 치노팬츠',119000.00,1,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(16000) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_images_product_id_95b46f84_fk_products_id` (`product_id`),
  CONSTRAINT `products_images_product_id_95b46f84_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` VALUES (1,'https://images.unsplash.com/photo-1521164275317-a65412b69b80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHdvbWFuJTIwd2ludGVyJTIwJTIwamFja2V0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',1),(2,'https://images.unsplash.com/photo-1600702562172-5324a6b12095?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',1),(3,'https://images.unsplash.com/photo-1561778233-89714b6f2033?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fHdvbWFuJTIwaG9vZCUyMGphY2tldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',2),(4,'https://images.unsplash.com/photo-1551545978-ab5ce4e49b99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',2),(5,'https://images.unsplash.com/photo-1519866149690-12dfa6bfafe8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',3),(6,'https://images.unsplash.com/photo-1506425113699-8c19d098e614?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',3),(7,'https://images.unsplash.com/photo-1489348611450-4c0d746d949b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80',3),(8,'https://images.unsplash.com/photo-1535631849663-2ff9eeebf4b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTB8fHdvbWFuJTIwc2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',4),(9,'https://images.unsplash.com/photo-1540933823387-f2151e77fcdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTF8fHdvbWFuJTIwc2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',4),(10,'https://images.unsplash.com/photo-1496361001419-80f0d1be777a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',5),(11,'https://images.unsplash.com/photo-1496360938681-9a918bfabc66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODR8fHdvbWFuJTIwc2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',5),(12,'https://images.unsplash.com/photo-1527628217451-b2414a1ee733?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdvbWFuJTIwamVhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',6),(13,'https://images.unsplash.com/photo-1472749551955-e2319841d9a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHdvbWFuJTIwamVhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',6),(14,'https://images.unsplash.com/photo-1506152450634-209d83087969?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODN8fHdvbWFuJTIwamVhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',6),(15,'https://images.unsplash.com/photo-1475180098004-ca77a66827be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHdvbWFuJTIwcGhhbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',7),(16,'https://images.unsplash.com/photo-1441123100240-f9f3f77ed41b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI0fHx3b21hbiUyMHBoYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',7),(17,'https://images.unsplash.com/photo-1552902865-b72c031ac5ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGpvZ2dlciUyMHBoYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',8),(18,'https://images.unsplash.com/photo-1553247407-23251ce81f59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGpvZ2dlciUyMHBoYW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',8),(19,'https://images.unsplash.com/photo-1582142306909-195724d33ffc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',9),(20,'https://images.unsplash.com/photo-1583496661160-fb5886a0aaaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2tpcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',9),(21,'https://images.unsplash.com/photo-1619583541439-63542c5d8d52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2tpcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',9),(22,'https://images.unsplash.com/photo-1571423483570-eb27018d1ec0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fHNraXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',10),(23,'https://images.unsplash.com/photo-1613893251373-22925cf3c4c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHNraXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',10),(24,'https://images.unsplash.com/photo-1579175548716-343defbdea9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc2fHxza2lydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',10),(25,'https://cdn.pixabay.com/photo/2017/08/06/12/04/people-2591867_1280.jpg',11),(26,'https://images.unsplash.com/photo-1584110426067-6c1615e60e9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',11),(27,'https://images.unsplash.com/photo-1582377865071-6e622dc74d8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2591&q=80',11),(28,'https://cdn.pixabay.com/photo/2021/07/04/02/20/women-6385226_1280.jpg',12),(29,'https://cdn.pixabay.com/photo/2015/06/10/13/23/clothesline-804812_1280.jpg',13),(30,'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_1280.jpg',14),(31,'https://cdn.pixabay.com/photo/2016/11/22/19/08/hangers-1850082_1280.jpg',15),(32,'https://cdn.pixabay.com/photo/2012/04/18/03/04/jacket-36715_1280.png',16),(33,'https://cdn.pixabay.com/photo/2014/05/21/14/54/feet-349687_1280.jpg',17),(34,'https://cdn.pixabay.com/photo/2018/03/01/14/57/portrait-3190849_1280.jpg',18),(35,'https://cdn.pixabay.com/photo/2020/01/21/11/39/running-4782722_1280.jpg',19),(36,'https://cdn.pixabay.com/photo/2016/03/27/21/52/woman-1284411_1280.jpg',20),(37,'https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg',21),(38,'https://images.pexels.com/photos/2043590/pexels-photo-2043590.jpeg',22),(39,'https://images.pexels.com/photos/2065195/pexels-photo-2065195.jpeg',23),(40,'https://images.pexels.com/photos/2065200/pexels-photo-2065200.jpeg',24),(41,'https://images.pexels.com/photos/2853909/pexels-photo-2853909.jpeg',25),(42,'https://images.pexels.com/photos/833185/pexels-photo-833185.jpeg',26),(43,'https://images.pexels.com/photos/1394882/pexels-photo-1394882.jpeg',27),(44,'https://images.pexels.com/photos/3046336/pexels-photo-3046336.jpeg',28),(45,'https://images.pexels.com/photos/4355702/pexels-photo-4355702.jpeg',29),(46,'https://images.pexels.com/photos/937658/pexels-photo-937658.jpeg',30);
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_options_product_id_f0169358_fk_products_id` (`product_id`),
  KEY `products_options_size_id_cd98b9d6_fk_sizes_id` (`size_id`),
  CONSTRAINT `products_options_product_id_f0169358_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_options_size_id_cd98b9d6_fk_sizes_id` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options`
--

LOCK TABLES `products_options` WRITE;
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` VALUES (1,20,1,1),(2,30,1,2),(3,40,1,3),(4,30,1,4),(5,20,1,5),(6,10,2,1),(7,30,2,2),(8,20,2,3),(9,10,2,4),(10,10,2,5),(11,30,3,1),(12,30,3,2),(13,20,3,3),(14,10,3,4),(15,20,3,5),(16,20,4,1),(17,20,4,2),(18,20,4,3),(19,10,4,4),(20,10,4,5),(21,20,5,1),(22,30,5,2),(23,30,5,3),(24,10,5,4),(25,10,5,5),(26,20,6,1),(27,20,6,2),(28,20,6,3),(29,10,6,4),(30,10,6,5),(31,20,7,1),(32,20,7,2),(33,10,7,3),(34,10,7,4),(35,10,7,5),(36,10,8,1),(37,10,8,2),(38,10,8,3),(39,30,8,4),(40,20,8,5),(41,30,9,1),(42,30,9,2),(43,30,9,3),(44,20,9,4),(45,10,9,5),(46,20,10,1),(47,20,10,2),(48,30,10,3),(49,10,10,4),(50,10,10,5),(51,20,11,1),(52,30,11,2),(53,35,11,3),(54,30,11,4),(55,20,11,5),(56,20,12,1),(57,30,12,2),(58,35,12,3),(59,30,12,4),(60,21,12,5),(61,20,13,1),(62,30,13,2),(63,35,13,3),(64,30,13,4),(65,22,13,5),(66,5,14,1),(67,35,14,2),(68,60,14,3),(69,35,14,4),(70,10,14,5),(71,5,15,1),(72,35,15,2),(73,60,15,3),(74,35,15,4),(75,11,15,5),(76,20,16,1),(77,30,16,2),(78,35,16,3),(79,30,16,4),(80,25,16,5),(81,10,17,1),(82,40,17,2),(83,50,17,3),(84,40,17,4),(85,10,17,5),(86,10,18,1),(87,40,18,2),(88,50,18,3),(89,40,18,4),(90,11,18,5),(91,10,19,1),(92,40,19,2),(93,50,19,3),(94,40,19,4),(95,12,19,5),(96,10,20,1),(97,40,20,2),(98,50,20,3),(99,40,20,4),(100,13,20,5),(101,10,21,1),(102,0,21,2),(103,20,21,3),(104,10,21,4),(105,19,21,5),(106,10,22,1),(107,30,22,2),(108,20,22,3),(109,0,22,4),(110,20,22,5),(111,10,23,1),(112,30,23,2),(113,20,23,3),(114,10,23,4),(115,0,23,5),(116,10,24,1),(117,30,24,2),(118,20,24,3),(119,0,24,4),(120,22,24,5),(121,10,25,1),(122,0,25,2),(123,20,25,3),(124,10,25,4),(125,23,25,5),(126,10,26,1),(127,30,26,2),(128,0,26,3),(129,10,26,4),(130,24,26,5),(131,10,27,1),(132,30,27,2),(133,20,27,3),(134,10,27,4),(135,25,27,5),(136,10,28,1),(137,0,28,2),(138,20,28,3),(139,10,28,4),(140,26,28,5),(141,10,29,1),(142,30,29,2),(143,20,29,3),(144,10,29,4),(145,27,29,5),(146,10,30,1),(147,30,30,2),(148,20,30,3),(149,10,30,4),(150,0,30,5);
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'XS'),(2,'S'),(3,'M'),(4,'L'),(5,'XL');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'bruno','sdnu@naver.com','$2b$12$FsX0ZqyZcY0NJitRHx30IOFNoArTO9/zpzf27NIBI3pc7JTtpiRkq',NULL,NULL,'2022-05-25 14:22:43.684719','2022-05-25 14:22:43.684742'),(6,'smith','smith@yahoo.co.kr','$2b$12$bOimNzFkY6d5RN9RIb./auQIcJAQS9f1vrhX9789kEQJ.8KZ3QUXC',NULL,NULL,'2022-05-25 14:24:40.243660','2022-05-25 14:24:40.243687');
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

-- Dump completed on 2022-05-25 19:32:05
