-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: musicaldb
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `musical_id` int DEFAULT NULL,
  `summary` text,
  PRIMARY KEY (`id`),
  KEY `musical_id` (`musical_id`),
  CONSTRAINT `details_ibfk_1` FOREIGN KEY (`musical_id`) REFERENCES `musicals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,1,'\'레 미제라블\'은 사회적 격변과 혁명을 배경으로 한 19세기 프랑스를 배경으로 한 대대적인 뮤지컬 서사시이다. 줄거리는 여러 인물, 주로 빵 한 덩어리를 훔친 죄로 오랜 징역형을 선고받은 후 구속을 추구하는 전과자 장 발장의 삶을 중심으로 전개됩니다. 장발장은 자신을 재창조하여 성공적인 사업가이자 시장으로 성장하지만, 냉혹한 경위 자베르의 추적을 받습니다. 장발장의 여정과 함께 뮤지컬은 고군분투하는 공장 노동자 판틴을 포함한 다른 캐릭터의 삶을 따릅니다. 판틴의 딸인 코제트, 학생 혁명가 마리우스, 그리고 마리우스를 사랑하는 젊은 여성 에포닌. 정의, 사랑, 희생, 자유 추구라는 주제를 통해 \"레 미제라블\"은 사회적 불의와 정치적 혼란을 배경으로 인간 정신의 회복력을 탐구합니다.'),(2,2,'\'헤드윅 앤 더 앵그리 인치\'는 동독 트랜스젠더 록 뮤지션 헤드윅 로빈슨과 그녀가 이끄는 밴드 앵그리 인치의 이야기를 그린 록 뮤지컬이다. 줄거리는 동베를린의 헨젤이라는 어린 소년에서 미국에 사는 글램 록 디바로 헤드윅의 여정을 따라갑니다. 그 과정에서 헤드윅은 성 정체성, 사랑, 자기 수용 추구라는 주제를 탐구합니다. 뮤지컬은 헤드위그의 복잡한 관계, 특히 그녀의 전 애인이자 밴드 동료인 토미 그노시스(Tommy Gnosis)와의 복잡한 관계뿐만 아니라 그녀의 나머지 절반을 찾고 개인적인 성취를 달성하려는 그녀의 탐구를 탐구합니다. 유머, 애절함, 짜릿한 록 음악의 혼합을 통해 \"Hedwig and the Angry Inch\"는 정체성과 인간 관계에 대한 가슴 아프고 도발적인 탐구를 제공합니다.'),(3,3,'\'노트르담 드 파리\'는 빅토르 위고의 고전 소설 \'노트르담의 꼽추\'를 원작으로 한 뮤지컬이다. 15세기 파리를 배경으로 하는 이 작품은 노트르담 대성당의 기형 종지기 콰지모도와 아름다운 집시 댄서 에스메랄다에 대한 그의 사랑을 중심으로 전개됩니다. 줄거리에는 사랑, 배신, 사회적 불의, 연민의 힘이라는 주제가 얽혀 있습니다. 콰지모도가 고립과 사회적 거부로 어려움을 겪는 동안 에스메랄다의 친절함과 용기는 주변 사람들에게 희망과 변화를 불러일으키고 궁극적으로 대성당에서 극적인 클라이맥스로 이어집니다.'),(4,4,'\'시카고\'는 광란의 20년대 시카고를 배경으로 살인 혐의로 기소된 보드빌 연주자 록시 하트와 합창 소녀 ​​벨마 켈리의 삶을 그린 뮤지컬이다. 줄거리는 명성, 재산, 무죄 판결을 위해 경쟁하면서 부패한 형사 사법 제도에서의 경험을 중심으로 전개됩니다. 재판과 언론의 관심을 받는 동안 그들은 교활한 변호사 Billy Flynn의 안내를 받고 Matron \"Mama\" Morton의 도전을 받습니다. 뮤지컬은 재즈, 화려함, 스캔들을 배경으로 유명인 문화, 조작, 아메리칸 드림 추구 등의 주제를 탐구합니다.'),(5,5,'\'디어 에반 핸슨\'은 사회적으로 불안한 고등학생 에반 핸슨이 같은 반 친구 코너 머피의 죽음으로 인해 거짓말의 그물에 휩싸이게 되는 이야기를 그린다. 오해 이후 에반은 코너 가족의 슬픔에 휩싸이게 되고, 일련의 편지를 통해 그와 우정을 쌓게 된다. Evan의 속임수가 걷잡을 수 없이 커지면서 그는 자신이 수용과 연결의 운동의 중심에 있음을 깨닫고 궁극적으로 비극에 직면했을 때 정직, 공감, 인간 연결의 힘의 중요성을 배우게 됩니다.'),(6,6,'\"렌트\"는 1980년대 후반과 1990년대 초반 HIV/AIDS 위기가 최고조에 달했던 시기에 뉴욕 시 이스트 빌리지에 살고 있는 고군분투하는 예술가, 음악가, 활동가 그룹의 이야기를 담고 있습니다. 줄거리는 그들의 관계, 열정, 빈곤, 중독, 사랑, 상실에 대한 투쟁을 중심으로 전개됩니다. 도시 생활의 어려움과 에이즈 전염병의 파괴적인 영향 속에서 우정, 창의성, 회복력, 사회 정의를 위한 투쟁이라는 주제를 묘사합니다.'),(7,7,'\'일 테노레\'는 오페라계의 웅장함 속에서 두각을 나타내는 재능 있는 오페라 가수, 즉 테너의 삶을 중심으로 펼쳐지는 가상의 뮤지컬이다. 줄거리는 보잘것없는 시작부터 국제 무대에서 유명한 인물이 되기까지의 그의 여정을 따릅니다. 그 과정에서 그는 자신의 기술에 대한 헌신을 시험하는 사랑, 경쟁, 개인적인 도전에 직면하게 됩니다. 그는 명성에 대한 압박과 경력에 대한 요구와 씨름하면서 자신의 불안감과 내면의 악마에 맞서야 합니다. 열정적인 연주와 고조되는 멜로디를 통해 \"일 테노레\"는 오페라 세계의 드라마, 로맨스, 스펙터클을 포착하는 동시에 표면 아래에 있는 인간의 감정을 탐구합니다.'),(8,8,'아버지를 죽이고 \"잊어버려\"라는 말과 붉은 향기만 남긴 채 날아가듯 사라진 살인자.  치밀하고 냉철한 존재에 매료된 투우는 언젠가 그 살인자의 심장에 칼을 꽂고 말겠다고 다짐한다. 20년 후, 투우의 기억보다 더 노쇠한 모습의 살인자, 65세의 조각. 40여 년간 청부살인을 업으로 삼아왔지만 나이가 들면서 몸도 마음도 삐걱거려 퇴물 취급을 받는다. 오랜 시간 삶의 희로애락을 외면하고 살아온 그에게도 어느새 온기가 스며들기 시작한다. 마침내 투우는 그때와는 모든 것이 너무나도 달라진 조각을 찾아낸다. 단 한 번의 빛나는 순간을 위해, 가장 완벽한 복수를 위해 조각과 투우는 마주한다.'),(9,9,'뮤지컬 줄거리'),(10,10,'뮤지컬 줄거리'),(11,11,'뮤지컬 줄거리'),(12,12,'뮤지컬 줄거리'),(13,13,'뮤지컬 줄거리'),(14,14,'뮤지컬 줄거리'),(15,15,'뮤지컬 줄거리'),(16,16,'뮤지컬 줄거리'),(17,17,'뮤지컬 줄거리'),(18,18,'뮤지컬 줄거리'),(19,19,'뮤지컬 줄거리'),(20,20,'뮤지컬 줄거리');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musicals`
--

DROP TABLE IF EXISTS `musicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musicals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ranking` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musicals`
--

LOCK TABLES `musicals` WRITE;
/*!40000 ALTER TABLE `musicals` DISABLE KEYS */;
INSERT INTO `musicals` VALUES (1,'레미제라블','x',1),(2,'헤드윅','x',2),(3,'노트르담 드 파리','x',3),(4,'시카고','x',4),(5,'디어 에반 헨슨','x',5),(6,'렌트','x',6),(7,'일 테노레','x',7),(8,'파과','x',8),(9,'영웅','x',9),(10,'그레이트 코멧','x',10),(11,'드라큘라','x',11),(12,'프랑켄슈타인','x',12),(13,'빨래','x',13),(14,'마리 앙투아네트','x',14),(15,'레베카','x',15),(16,'몬테크리스토','x',16),(17,'스쿨 오브 락','x',17),(18,'브론테','x',18),(19,'웨스턴 스토리','x',19),(20,'마리퀴리','x',20);
/*!40000 ALTER TABLE `musicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `musical_id` int DEFAULT NULL,
  `reviewer_name` varchar(255) DEFAULT NULL,
  `review_text` text,
  `review_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `musical_id` (`musical_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`musical_id`) REFERENCES `musicals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (5,3,'gudo','대성당','2024-06-03'),(6,4,'gudo','All that Jazz','2024-05-30'),(8,1,'charmin_gu','On my own','2024-05-28'),(9,6,'조나단 라슨','52만 5600분의 귀한 시간들','2024-06-03'),(12,5,'에반','나에게 쓰는 편지','2024-05-30'),(14,1,'gudo','레미제라블','2024-06-03'),(15,1,'자베르','노잼','2024-06-03'),(17,2,'ㅇㅇ','하니는 그런 말투 안써요','2024-06-03'),(18,1,'gudo','ㅇㅇ','2024-06-03');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'musicaldb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 14:49:42
