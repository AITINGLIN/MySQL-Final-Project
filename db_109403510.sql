-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: db_final_projrct
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `LK_coursesemester2degree`
--

DROP TABLE IF EXISTS `LK_coursesemester2degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_coursesemester2degree` (
  `coursesemester_id` int NOT NULL,
  `degree_program_id` int NOT NULL,
  PRIMARY KEY (`coursesemester_id`,`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_coursesemester2degree`
--

LOCK TABLES `LK_coursesemester2degree` WRITE;
/*!40000 ALTER TABLE `LK_coursesemester2degree` DISABLE KEYS */;
INSERT INTO `LK_coursesemester2degree` VALUES (1,1),(2,1),(3,1),(3,4),(4,1),(4,4),(5,1),(6,1),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,3),(10,3),(10,4),(11,1),(12,1),(12,2),(12,3),(13,1),(14,1),(14,2),(14,3),(14,4),(15,2),(15,3),(15,4),(16,2),(16,3),(16,4),(17,2),(17,4),(18,2),(18,4),(19,2),(19,4),(20,5),(21,5),(22,5),(23,1),(23,2),(24,1),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,5),(29,5),(30,5),(31,3),(31,4),(32,3),(33,2),(33,3),(33,4),(34,3),(34,4),(35,3),(35,4),(36,5),(37,5),(38,5),(39,2),(40,3),(41,4),(42,4),(43,2),(44,4),(45,2),(46,3),(47,2),(48,3),(49,4),(50,1),(51,1),(52,2),(53,3),(53,4);
/*!40000 ALTER TABLE `LK_coursesemester2degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LK_degree2course`
--

DROP TABLE IF EXISTS `LK_degree2course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_degree2course` (
  `course_id` int NOT NULL,
  `degree_program_id` int NOT NULL,
  `course_type` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`,`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_degree2course`
--

LOCK TABLES `LK_degree2course` WRITE;
/*!40000 ALTER TABLE `LK_degree2course` DISABLE KEYS */;
INSERT INTO `LK_degree2course` VALUES (1,1,'required'),(1,2,'required'),(1,3,'required'),(1,4,'required'),(2,1,'elective'),(2,4,'elective'),(3,1,'required'),(3,2,'required'),(3,3,'elective'),(3,4,'required'),(4,1,'elective'),(4,3,'required'),(4,4,'required'),(5,1,'required'),(5,2,'elective'),(5,3,'elective'),(6,1,'required'),(6,3,'elective'),(6,4,'elective'),(7,1,'required'),(7,2,'elective'),(7,4,'required'),(8,5,'elective'),(9,1,'required'),(9,2,'required'),(9,3,'required'),(9,4,'required'),(10,2,'elective'),(10,4,'elective'),(11,5,'elective'),(12,1,'elective'),(12,3,'elective'),(12,4,'elective'),(13,2,'required'),(13,3,'required'),(13,4,'required'),(14,3,'required'),(14,5,'elective');
/*!40000 ALTER TABLE `LK_degree2course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LK_degree2student`
--

DROP TABLE IF EXISTS `LK_degree2student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_degree2student` (
  `degree_program_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`degree_program_id`,`student_id`),
  KEY `fk_tb_degree_program_has_tb_student_tb_student1_idx` (`student_id`),
  KEY `fk_tb_degree_program_has_tb_student_tb_degree_program1_idx` (`degree_program_id`),
  CONSTRAINT `fk_combine2student` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`),
  CONSTRAINT `fk_degree2combine` FOREIGN KEY (`degree_program_id`) REFERENCES `tb_degree_program` (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_degree2student`
--

LOCK TABLES `LK_degree2student` WRITE;
/*!40000 ALTER TABLE `LK_degree2student` DISABLE KEYS */;
INSERT INTO `LK_degree2student` VALUES (4,108569231),(5,108569231),(3,109234561),(5,109234561),(1,110123120),(5,110123120),(1,110123123),(5,110123123),(2,110256321),(5,110256321);
/*!40000 ALTER TABLE `LK_degree2student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LK_electivecourse`
--

DROP TABLE IF EXISTS `LK_electivecourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_electivecourse` (
  `course_id` int NOT NULL,
  `degree_program_elective_id` int NOT NULL,
  `course_type` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`,`degree_program_elective_id`),
  KEY `fk_elective2degreeprogram_idx` (`degree_program_elective_id`),
  CONSTRAINT `fk_elective2courseid` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`course_id`),
  CONSTRAINT `fk_elective2degreeprogram` FOREIGN KEY (`degree_program_elective_id`) REFERENCES `tb_degree_program` (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_electivecourse`
--

LOCK TABLES `LK_electivecourse` WRITE;
/*!40000 ALTER TABLE `LK_electivecourse` DISABLE KEYS */;
INSERT INTO `LK_electivecourse` VALUES (2,1,'elective'),(2,4,'elective'),(3,3,'elective'),(4,1,'elective'),(5,2,'elective'),(5,3,'elective'),(6,3,'elective'),(6,4,'elective'),(7,2,'elective'),(8,5,'elective'),(9,1,'elective'),(9,2,'elective'),(10,2,'elective'),(10,4,'elective'),(11,5,'elective'),(12,1,'elective'),(12,3,'elective'),(12,4,'elective'),(14,5,'');
/*!40000 ALTER TABLE `LK_electivecourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LK_prerequisitecourse`
--

DROP TABLE IF EXISTS `LK_prerequisitecourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_prerequisitecourse` (
  `course_id` int NOT NULL,
  `prerequisitecourse_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`prerequisitecourse_id`),
  KEY `fk_pre2pre_idx` (`prerequisitecourse_id`),
  CONSTRAINT `fk_pre2course` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`course_id`),
  CONSTRAINT `fk_pre2pre` FOREIGN KEY (`prerequisitecourse_id`) REFERENCES `tb_course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_prerequisitecourse`
--

LOCK TABLES `LK_prerequisitecourse` WRITE;
/*!40000 ALTER TABLE `LK_prerequisitecourse` DISABLE KEYS */;
INSERT INTO `LK_prerequisitecourse` VALUES (2,3),(5,3),(7,3),(2,6),(4,9),(12,10);
/*!40000 ALTER TABLE `LK_prerequisitecourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LK_required_course`
--

DROP TABLE IF EXISTS `LK_required_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_required_course` (
  `course_id` int NOT NULL,
  `degree_program_required_id` int NOT NULL,
  `required_grade` int NOT NULL,
  `course_tyoe` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`,`degree_program_required_id`),
  KEY `fk_2degree_program_required_idx` (`degree_program_required_id`),
  CONSTRAINT `fk_required2courseid` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`course_id`),
  CONSTRAINT `fk_required2degree_program_required` FOREIGN KEY (`degree_program_required_id`) REFERENCES `tb_degree_program` (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_required_course`
--

LOCK TABLES `LK_required_course` WRITE;
/*!40000 ALTER TABLE `LK_required_course` DISABLE KEYS */;
INSERT INTO `LK_required_course` VALUES (1,1,1,'required'),(1,2,1,'required'),(1,3,1,'required'),(1,4,1,'required'),(3,1,1,'required'),(3,2,1,'required'),(3,4,1,'required'),(4,3,1,'required'),(4,4,2,'required'),(5,1,2,'required'),(6,1,2,'required'),(7,1,3,'required'),(7,4,3,'required'),(9,1,3,'required'),(9,2,2,'required'),(9,3,3,'required'),(9,4,4,'required'),(13,2,3,'required'),(13,3,2,'required'),(13,4,3,'required'),(14,3,4,'');
/*!40000 ALTER TABLE `LK_required_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LK_teacher2course`
--

DROP TABLE IF EXISTS `LK_teacher2course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LK_teacher2course` (
  `teacher_id` int NOT NULL,
  `coursesemester_id` int NOT NULL,
  PRIMARY KEY (`teacher_id`,`coursesemester_id`),
  KEY `fk_tb_teacher_has_tb_course_tb_course1_idx` (`coursesemester_id`),
  KEY `fk_tb_teacher_has_tb_course_tb_teacher1_idx` (`teacher_id`),
  CONSTRAINT `fk_tb_teacher_has_tb_course_tb_course1` FOREIGN KEY (`coursesemester_id`) REFERENCES `tb_coursesemester` (`coursesemester_id`),
  CONSTRAINT `fk_tb_teacher_has_tb_course_tb_teacher1` FOREIGN KEY (`teacher_id`) REFERENCES `tb_teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LK_teacher2course`
--

LOCK TABLES `LK_teacher2course` WRITE;
/*!40000 ALTER TABLE `LK_teacher2course` DISABLE KEYS */;
INSERT INTO `LK_teacher2course` VALUES (2356,1),(2356,2),(5623,3),(5620,4),(5620,5),(5623,6),(5623,7),(5623,8),(5623,9),(5623,10),(1245,11),(5623,11),(1245,12),(5620,13),(5620,14),(5620,15),(5620,16),(5620,17),(5623,17),(5620,18),(5623,18),(5620,19),(5623,19),(3120,20),(3120,21),(3120,22),(1245,23),(1245,24),(1245,25),(5623,26),(1245,27),(3120,28),(3120,29),(3120,30),(1245,31),(1245,32),(2356,33),(2356,34),(2356,35),(3120,36),(3120,37),(3120,38),(2356,39),(2356,40),(2356,41),(5623,42),(5623,43),(5620,44),(1245,45),(5623,45),(1245,46),(5623,46),(2356,47),(2356,48),(2356,49),(5623,50),(5623,51),(1245,52),(5620,53);
/*!40000 ALTER TABLE `LK_teacher2course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course`
--

DROP TABLE IF EXISTS `tb_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_course` (
  `course_id` int NOT NULL,
  `course_code` varchar(45) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`),
  UNIQUE KEY `course_name_UNIQUE` (`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course`
--

LOCK TABLES `tb_course` WRITE;
/*!40000 ALTER TABLE `tb_course` DISABLE KEYS */;
INSERT INTO `tb_course` VALUES (1,'IM1023','Finance Management'),(2,'IM1022','Data Science'),(3,'IM560','Programming(Basic)'),(4,'IM2056','Introduction to Blockchain'),(5,'IM1025','Machine Learning'),(6,'IM2048','Introduction to DataBase'),(7,'IM561','Programming(Advanced)'),(8,'IM4085','Basic Chinese'),(9,'IM2060','Information Security'),(10,'IM2062','Introduction to Internet'),(11,'IM4083','Basic English'),(12,'IM2063','Practical Course of Cloud Computing'),(13,'IM1050','Marketing Management'),(14,'IM1062','Physical Education');
/*!40000 ALTER TABLE `tb_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course_card`
--

DROP TABLE IF EXISTS `tb_course_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_course_card` (
  `course_card_id` int NOT NULL,
  `coursesemester_id` int NOT NULL,
  `serial_number` int NOT NULL,
  PRIMARY KEY (`course_card_id`),
  UNIQUE KEY `course_card_id_UNIQUE` (`course_card_id`),
  UNIQUE KEY `serial_number_UNIQUE` (`serial_number`),
  KEY `fk_tb_course_card_tb_course1_idx` (`coursesemester_id`),
  CONSTRAINT `fk_tb_course_card_tb_course1` FOREIGN KEY (`coursesemester_id`) REFERENCES `tb_coursesemester` (`coursesemester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course_card`
--

LOCK TABLES `tb_course_card` WRITE;
/*!40000 ALTER TABLE `tb_course_card` DISABLE KEYS */;
INSERT INTO `tb_course_card` VALUES (1,45,50001),(2,45,50002),(3,45,50003),(4,45,50004),(5,45,50005),(6,44,50006),(7,44,50007),(8,44,50008),(9,44,50009),(10,44,50010),(11,44,50011),(12,44,50012),(13,51,50013),(14,51,50014),(15,51,50015),(16,51,50016),(17,51,50017),(18,51,50018),(19,51,50019),(20,51,50020);
/*!40000 ALTER TABLE `tb_course_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_coursesemester`
--

DROP TABLE IF EXISTS `tb_coursesemester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_coursesemester` (
  `coursesemester_id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_semester` int NOT NULL,
  `course_time` varchar(45) NOT NULL,
  `course_room` varchar(45) NOT NULL,
  PRIMARY KEY (`coursesemester_id`,`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`coursesemester_id`),
  KEY `fk_tb_coursesemester_tb_course1_idx` (`course_id`),
  CONSTRAINT `fk_tb_coursesemester_tb_course1` FOREIGN KEY (`course_id`) REFERENCES `tb_course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_coursesemester`
--

LOCK TABLES `tb_coursesemester` WRITE;
/*!40000 ALTER TABLE `tb_coursesemester` DISABLE KEYS */;
INSERT INTO `tb_coursesemester` VALUES (1,1,1121,'(Wed) 234','I1-104'),(2,1,1111,'(Wed) 234','I1-104'),(3,2,1121,'(Fri) 234','I1-404'),(4,2,1112,'(Fri) 234','I1-404'),(5,2,1112,'(Fri) 234','I1-404'),(6,3,1111,'(Sun) 678','I1-407'),(7,3,1101,'(Fri) 678','I1-407'),(8,3,1091,'(Fri) 678','I1-407'),(9,4,1112,'(Mon) 234','I1-404'),(10,4,1101,'(Tue) 234','I1-404'),(11,5,1121,'(Mon) 567','I1-104'),(12,5,1092,'(Mon) 567','I1-104'),(13,6,1121,'(Wed) 567','I1-103'),(14,6,1111,'(Mon) 567','I1-103'),(15,6,1101,'(Mon) 567','I1-103'),(16,6,1091,'(Mon) 567','I1-103'),(17,7,1112,'(Tue) 234','I1-407'),(18,7,1102,'(Tue) 234','I1-407'),(19,7,1092,'(Tue) 234','I1-407'),(20,8,1121,'(Wed) 789','I1-404'),(21,8,1112,'(Wed) 789','I1-404'),(22,8,1102,'(Wed) 789','I1-404'),(23,9,1121,'(Tue) 678','I1-404'),(24,9,1111,'(Tue) 678','I1-404'),(25,9,1101,'(Tue) 678','I1-404'),(26,10,1121,'(Thu) 678','l1-409'),(27,10,1111,'(Thu) 678','l1-409'),(28,11,1121,'(Mon) 234','I1-404'),(29,11,1111,'(Mon) 234','I1-404'),(30,11,1101,'(Mon) 234','I1-404'),(31,12,1121,'(Thu) 678','I1-407'),(32,12,1112,'(Thu) 678','I1-407'),(33,13,1121,'(Thu) 567','I1-507'),(34,13,1111,'(Thu) 567','I1-507'),(35,13,1101,'(Thu) 567','I1-507'),(36,14,1121,'(Wed) 678','I1-408'),(37,14,1111,'(Wed) 678','I1-408'),(38,14,1101,'(Wed) 678','I1-408'),(39,1,1121,'(Sun) 234','I1-104'),(40,1,1121,'(Mon) 234','I1-104'),(41,1,1121,'(Tue) 234','I1-104'),(42,4,1112,'(Tue) 234','I1-404'),(43,3,1121,'(Fri) 678','I1-407'),(44,2,1102,'(Sun) 234','I1-404'),(45,5,1121,'(Tue) 567','I1-104'),(46,5,1121,'(Wed) 567','I1-104'),(47,1,1111,'(Sun) 234','I1-104'),(48,1,1111,'(Mon) 234','I1-104'),(49,1,1111,'(Tue) 234','I1-104'),(50,3,1121,'(Sun) 678','I1-407'),(51,4,1121,'(Wed) 234','I1-404'),(52,9,1111,'(Mon) 678','I1-404'),(53,6,1121,'(Mon) 567','I1-103');
/*!40000 ALTER TABLE `tb_coursesemester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_degree_program`
--

DROP TABLE IF EXISTS `tb_degree_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_degree_program` (
  `degree_program_id` int NOT NULL,
  `degree_program_name` varchar(100) NOT NULL,
  PRIMARY KEY (`degree_program_id`),
  UNIQUE KEY `degree_program_id_UNIQUE` (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_degree_program`
--

LOCK TABLES `tb_degree_program` WRITE;
/*!40000 ALTER TABLE `tb_degree_program` DISABLE KEYS */;
INSERT INTO `tb_degree_program` VALUES (1,'Bachelor of Information Management Degree Program'),(2,'Bachelor of Business Management Degree Program'),(3,'Bachelor of Applied Economics Degree Program'),(4,'Bachelor of Financial Management Degree Program'),(5,'Liberal Education');
/*!40000 ALTER TABLE `tb_degree_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student`
--

DROP TABLE IF EXISTS `tb_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_phone` int NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `grade` int NOT NULL,
  `student_salt` char(100) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`),
  UNIQUE KEY `student_email_UNIQUE` (`student_email`),
  UNIQUE KEY `student_phone_UNIQUE` (`student_phone`),
  UNIQUE KEY `student_salt_UNIQUE` (`student_salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student`
--

LOCK TABLES `tb_student` WRITE;
/*!40000 ALTER TABLE `tb_student` DISABLE KEYS */;
INSERT INTO `tb_student` VALUES (108569231,'Timmy Huang',912587773,'sagittis.nullam@google.com',4,'XcZg6Be^cU2y'),(109234561,'Peter Wang',958351743,'sed.auctor@hotmail.com',3,'Rv$uGmL&C!%g'),(110123120,'Mei',988008346,'adipiscing.enim.mi@outlook.com',1,'7gB%z9Svg8EW'),(110123123,'Kevin Wang',921003614,'in.consequat@yahoo.com',2,'isljqjwdjio'),(110256321,'Jeter Liu',922830125,'nullam.velit@yahoo.com',2,'JJQF0j%tkx3i');
/*!40000 ALTER TABLE `tb_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_course`
--

DROP TABLE IF EXISTS `tb_student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_course` (
  `student_course_id` int NOT NULL,
  `student_id` int NOT NULL,
  `coursesemester_id` int NOT NULL,
  `course_selection_status` varchar(50) NOT NULL,
  `course_card_id` int DEFAULT NULL,
  PRIMARY KEY (`student_course_id`),
  UNIQUE KEY `student_course_id_UNIQUE` (`student_course_id`),
  KEY `fk_studentcourse2student_idx` (`student_id`),
  KEY `fk_studentcourse2coursemester_id_idx` (`coursesemester_id`),
  CONSTRAINT `fk_studentcourse2coursemester_id` FOREIGN KEY (`coursesemester_id`) REFERENCES `tb_coursesemester` (`coursesemester_id`),
  CONSTRAINT `fk_studentcourse2student` FOREIGN KEY (`student_id`) REFERENCES `tb_student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_course`
--

LOCK TABLES `tb_student_course` WRITE;
/*!40000 ALTER TABLE `tb_student_course` DISABLE KEYS */;
INSERT INTO `tb_student_course` VALUES (1,110123123,2,'preliminary',NULL),(2,110123123,6,'enrolled',NULL),(3,110123123,24,'enrolled',NULL),(4,110123123,11,'enrolled',NULL),(5,110123123,13,'enrolled',NULL),(6,110123123,51,'enrolled',17);
/*!40000 ALTER TABLE `tb_student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_credential`
--

DROP TABLE IF EXISTS `tb_student_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_credential` (
  `hash_student_id` int NOT NULL AUTO_INCREMENT,
  `student_credentical_id` int NOT NULL,
  `student_hash_password` varchar(200) NOT NULL,
  PRIMARY KEY (`hash_student_id`,`student_credentical_id`),
  UNIQUE KEY `hash_student_id_UNIQUE` (`hash_student_id`),
  UNIQUE KEY `student_credentical_id_UNIQUE` (`student_credentical_id`),
  CONSTRAINT `fk_studentcredential2student1` FOREIGN KEY (`student_credentical_id`) REFERENCES `tb_student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_credential`
--

LOCK TABLES `tb_student_credential` WRITE;
/*!40000 ALTER TABLE `tb_student_credential` DISABLE KEYS */;
INSERT INTO `tb_student_credential` VALUES (1,110123123,'5459ffea690882061cfa56fa9033278370e48de356c700637aad68d14f2ae0ae'),(2,110123120,'07703ba76ae595a212c8317146fb292fb773f34314a3708a6f3e916bbf6e499c'),(3,110256321,'1caf7cfa34bdb90fd7a332dfed5a5e0d1a153d6a164234aa98b7ba611b83abe7'),(4,109234561,'ea8ced964d6826e1eede67dccaea05e543e4bcf84ff06d6af8f7877413a91538'),(5,108569231,'7a09363a667de652e1666b0810219bb7886036dca13af909cd755c80df946365');
/*!40000 ALTER TABLE `tb_student_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_teacher`
--

DROP TABLE IF EXISTS `tb_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_teacher` (
  `teacher_id` int NOT NULL,
  `teacher_name` varchar(45) NOT NULL,
  `teacher_phone` int NOT NULL,
  `teacher_mail` varchar(45) NOT NULL,
  `teacher_salt` char(60) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`),
  UNIQUE KEY `teacher_mail_UNIQUE` (`teacher_mail`),
  UNIQUE KEY `teacher_phone_UNIQUE` (`teacher_phone`),
  UNIQUE KEY `teacher_salt_UNIQUE` (`teacher_salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher`
--

LOCK TABLES `tb_teacher` WRITE;
/*!40000 ALTER TABLE `tb_teacher` DISABLE KEYS */;
INSERT INTO `tb_teacher` VALUES (1245,'Thor Chang',970691667,'dui.quis.accumsan@google.com','&@^ODhk0MH&l'),(2356,'Ota Huang',960105109,'nec.leo.morbi@protonmail.com','aZjy*GvZt@s*'),(3120,'Charle Yang',961749001,'sociosqu.ad@yahoo.com','j8tI5!wG88PM'),(5620,'Pole Huang',928735721,'proin.non@protonmail.com','n7UDOe0uspZk'),(5623,'LIlly Chang',968169143,'arcu.vel.quam@hotmail.com','wlmM33nAD@SR');
/*!40000 ALTER TABLE `tb_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_teacher_credential`
--

DROP TABLE IF EXISTS `tb_teacher_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_teacher_credential` (
  `hash_teacher_id` int NOT NULL AUTO_INCREMENT,
  `teacher_credential_id` int NOT NULL,
  `teacher_hash_password` varchar(200) NOT NULL,
  PRIMARY KEY (`hash_teacher_id`,`teacher_credential_id`),
  UNIQUE KEY `hash_teacher_id_UNIQUE` (`hash_teacher_id`),
  UNIQUE KEY `teacher_credential_id_UNIQUE` (`teacher_credential_id`),
  CONSTRAINT `fk_teachercredential2teacher` FOREIGN KEY (`teacher_credential_id`) REFERENCES `tb_teacher` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher_credential`
--

LOCK TABLES `tb_teacher_credential` WRITE;
/*!40000 ALTER TABLE `tb_teacher_credential` DISABLE KEYS */;
INSERT INTO `tb_teacher_credential` VALUES (1,2356,'ccd108b762527fcdcdb8c5b6cad6480e9b81a5d92f29e6793d6865b274bc50dc'),(2,3120,'a5c5e74448987538a8bffda3518f59e2f3785cf460d4f882a2c563af654fe13f'),(3,5620,'1a4c96ddeda1e2bfc16abd7bd6f8a72dc416c10c824747cbe5b1f9cc20671c40'),(4,5623,'e9c59dd5748d8c0be520b37658c8da542720916cc6d7ff627ad2ba0e76237bca'),(5,1245,'5ad2e13f01b6c6597301b4dd8fa5b2a055c6e4245e84f63344f6bbb5c0f3c802');
/*!40000 ALTER TABLE `tb_teacher_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_final_projrct'
--

--
-- Dumping routines for database 'db_final_projrct'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetCourseStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetCourseStudent`(

IN in_course_id INT,
OUT out_number_of_row int
)
BEGIN
 
 
SELECT 
c1.course_semester,
LK_coursesemester2degree.degree_program_id,
tb_course.course_code,
tb_course.course_name,
tb_student_course.student_id,
tb_student.student_name

FROM tb_student

LEFT JOIN  tb_student_course ON 

tb_student_course.student_id=tb_student.student_id

LEFT JOIN  tb_coursesemester c1 ON 
tb_student_course.coursesemester_id=c1.coursesemester_id

LEFT JOIN LK_coursesemester2degree ON 
LK_coursesemester2degree.coursesemester_id=c1.coursesemester_id

LEFT JOIN  tb_coursesemester c2 ON 
LK_coursesemester2degree.coursesemester_id=c2.coursesemester_id

LEFT JOIN  tb_course ON 
tb_course.course_id=c2.course_id

WHERE 

in_course_id=c1.coursesemester_id;

SELECT found_rows() INTO out_number_of_row;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetCourseWithSemesterAndTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetCourseWithSemesterAndTeacher`(

IN in_teacher_id INT,
IN in_semester INT,
OUT out_number_of_row int


)
BEGIN


SELECT

    c1.course_semester,
	LK_teacher2course.teacher_id,
    tb_course.course_code,
    tb_course.course_name,
    degree_program_id
    
FROM LK_teacher2course

INNER JOIN  tb_coursesemester c1 ON 
LK_teacher2course.coursesemester_id=c1.coursesemester_id

INNER JOIN LK_coursesemester2degree ON 
LK_coursesemester2degree.coursesemester_id=c1.coursesemester_id

INNER JOIN  tb_coursesemester c2 ON 
LK_coursesemester2degree.coursesemester_id=c2.coursesemester_id

INNER JOIN  tb_course ON 
tb_course.course_id=c2.course_id


    
WHERE
LK_teacher2course.teacher_id=in_teacher_id AND
    c1.course_semester=in_semester;
   
SELECT found_rows() INTO out_number_of_row;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetDegreeProgramCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetDegreeProgramCourse`(

IN in_degree_program_id INT,
OUT out_number_of_row INT

)
BEGIN

SELECT 
    tb_degree_program.degree_program_name,
    tb_course.course_code,
    tb_course.course_name,
    course_type 'required or elective'
    
FROM
    tb_degree_program
INNER JOIN
   LK_degree2course USING (degree_program_id)
INNER JOIN
   tb_course USING (course_id)
   
WHERE 
in_degree_program_id=tb_degree_program.degree_program_id

ORDER BY 
    course_type DESC;

SELECT found_rows() INTO out_number_of_row;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetPrerequisiteCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetPrerequisiteCourse`(

 IN in_course_code varchar(45),
 OUT out_number_of_row INT

)
BEGIN

SELECT c1.course_code, c1.course_name, c2.course_code AS 'prerequisite_course_code', c2.course_name AS 'prerequisite_course_name'

FROM tb_course c1

left JOIN LK_prerequisitecourse ON 
c1.course_id = LK_prerequisitecourse.course_id

left JOIN tb_course c2  ON 
LK_prerequisitecourse.prerequisitecourse_id=c2.course_id

 WHERE

 in_course_code=c1.course_code;
 
 SELECT found_rows() INTO out_number_of_row;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSelectableCourses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetSelectableCourses`(
IN in_student_id INT,
IN in_semester_id INT,
OUT out_number_of_row int
)
BEGIN

DECLARE student_grade INT ;



SELECT grade INTO student_grade
FROM tb_student
WHERE student_id = in_student_id;

SELECT c.course_code, c.course_name, cs.course_semester,dp.degree_program_name
    FROM tb_degree_program dp
    INNER JOIN LK_required_course re  ON dp.degree_program_id = re.degree_program_required_id
    INNER JOIN tb_course c ON re.course_id = c.course_id
    INNER JOIN tb_coursesemester cs ON c.course_id = cs.course_id
    WHERE dp.degree_program_id IN (
        SELECT degree_program_id
        FROM LK_degree2student
        WHERE student_id = in_student_id
    )
    AND cs.course_semester = in_semester_id
    AND re.required_grade=student_grade

    

    UNION
    
   
    SELECT c.course_code, c.course_name, cs.course_semester, lep.degree_program_name
    FROM tb_degree_program lep
    INNER JOIN LK_electivecourse el ON lep.degree_program_id = el.degree_program_elective_id
    INNER JOIN tb_course c ON el.course_id = c.course_id
    INNER JOIN tb_coursesemester cs ON c.course_id = cs.course_id
    
    WHERE lep.degree_program_id IN (
        SELECT degree_program_id
        FROM LK_degree2student
        WHERE student_id = in_student_id
    )
     AND cs.course_semester = in_semester_id;
    
SELECT  found_rows() INTO out_number_of_row ;
	



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetSelectionCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetSelectionCourse`(
IN in_student_id INT,
IN in_semester INT,
OUT out_number_of_row int

)
BEGIN

SELECT 
    
    tb_student_course.student_id,
    tb_coursesemester.course_semester,
    tb_course.course_code,
    tb_course.course_name,
    course_selection_status
    
FROM
   tb_student_course
LEFT JOIN  tb_coursesemester ON 
    tb_coursesemester.coursesemester_id=tb_student_course.coursesemester_id
    
LEFT JOIN  tb_course ON 
    tb_course.course_id=tb_coursesemester.course_id
    
 WHERE
   student_id=in_student_id AND
   course_semester=in_semester;

SELECT  found_rows() INTO out_number_of_row ;
   


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetStudentCourseWithCourseCard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetStudentCourseWithCourseCard`(

IN in_course_id INT,
OUT out_number_of_row int
)
BEGIN

select 
c1.course_semester,
LK_coursesemester2degree.degree_program_id,
course_code,
course_name,
s1.student_id,
student_name,
serial_number

FROM tb_course

JOIN tb_coursesemester c1 ON
tb_course.course_id=c1.course_id

JOIN LK_coursesemester2degree ON
LK_coursesemester2degree.coursesemester_id=c1.coursesemester_id

JOIN tb_coursesemester c2 ON
LK_coursesemester2degree.coursesemester_id=c2.coursesemester_id

JOIN tb_student_course s1 ON
c2.coursesemester_id=s1.coursesemester_id

JOIN tb_student ON
s1.student_id=tb_student.student_id


JOIN tb_student_course s2 ON
tb_student.student_id=s2.student_id

JOIN tb_course_card ON

s2.course_card_id=tb_course_card.course_card_id

WHERE  

in_course_id=c1.coursesemester_id;

SELECT found_rows() INTO out_number_of_row;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Login`(
    IN in_student_id INT,
    IN in_hashedpwd VARCHAR(200),
    OUT status_code INT
)
BEGIN
    DECLARE student_count INT;
    DECLARE pwd_match INT;
    
    -- 檢查學生是否存在
    SELECT COUNT(*) INTO student_count
    FROM tb_student_credential
    WHERE student_credentical_id = in_student_id;
    
    IF student_count = 0 THEN
        -- 學生不存在
        SET status_code = 3;
    ELSE
        -- 學生存在，檢查密碼是否正確
        SELECT IF(student_hash_password = in_hashedpwd, 1, 2) INTO pwd_match
        FROM tb_student_credential
        WHERE student_credentical_id = in_student_id;
        
        IF pwd_match = 1 THEN
            -- 密碼正確
            SET status_code = 1;
        ELSE
            -- 密碼錯誤
            SET status_code = 2;
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdatePwd`(
IN in_student_id int, 
IN in_hashedPwd varchar(200),
IN in_salt char(64),
OUT affected_row_num int

)
BEGIN

 UPDATE tb_student_credential
    SET student_hash_password = in_hashedPwd, student_salt = in_salt
    WHERE student_credentical_id = in_student_id;
    
    SET affected_row_num = ROW_COUNT();
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateWithdrawCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_UpdateWithdrawCourse`(

IN in_student_id INT,
IN in_course_id INT

)
BEGIN

UPDATE tb_student_course
    SET course_selection_status = 'Withdrawn'
    WHERE student_id = in_student_id AND coursesemester_id = in_course_id;



select student_id, LK_coursesemester2degree.degree_program_id, course_code,course_name,c1.course_semester, course_selection_status

FROM tb_student_course

JOIN tb_coursesemester c1 ON
tb_student_course.coursesemester_id=c1.coursesemester_id

JOIN LK_coursesemester2degree ON 
LK_coursesemester2degree.coursesemester_id=c1.coursesemester_id

JOIN  tb_coursesemester c2 ON 
LK_coursesemester2degree.coursesemester_id=c2.coursesemester_id

JOIN tb_course ON
c2.course_id=tb_course.course_id


WHERE 
course_selection_status = 'Withdrawn'AND
student_id = in_student_id AND
c1.coursesemester_id = in_course_id ;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 20:24:50
