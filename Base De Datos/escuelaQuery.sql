-- MySQL dump 10.13  Distrib 9.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: escuela
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `alumno_tutor`
--

DROP TABLE IF EXISTS `alumno_tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_tutor` (
  `id` varchar(36) NOT NULL,
  `id_alumno` varchar(36) DEFAULT NULL,
  `id_ciclo` varchar(36) DEFAULT NULL,
  `id_tutor` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK38gscee8dmqtk3nbh0bfv8fkw` (`id_alumno`),
  KEY `FKq817kf0nhuy65itufoxhk8jid` (`id_ciclo`),
  KEY `FKeu0742toty6gm43cguw8r09g9` (`id_tutor`),
  CONSTRAINT `FK38gscee8dmqtk3nbh0bfv8fkw` FOREIGN KEY (`id_alumno`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `FKeu0742toty6gm43cguw8r09g9` FOREIGN KEY (`id_tutor`) REFERENCES `tutor` (`id`),
  CONSTRAINT `FKq817kf0nhuy65itufoxhk8jid` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclo_escolar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_tutor`
--

LOCK TABLES `alumno_tutor` WRITE;
/*!40000 ALTER TABLE `alumno_tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno_tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacion_docente_grado_grupo`
--

DROP TABLE IF EXISTS `asignacion_docente_grado_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacion_docente_grado_grupo` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `id_ciclo` varchar(36) DEFAULT NULL,
  `id_docente` varchar(36) DEFAULT NULL,
  `id_grado` varchar(36) DEFAULT NULL,
  `id_grupo` varchar(36) DEFAULT NULL,
  `fecha_creado` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqws7e493oga32vqkmjxflle32` (`id_ciclo`),
  KEY `FK26hki9l81sq00p9qnhjgpwnm4` (`id_docente`),
  KEY `FK4pbgp9pf82pm8vj2qjqojya4q` (`id_grado`),
  KEY `FKmk7xk5b0m6oy1kgq1i9oo2mvc` (`id_grupo`),
  CONSTRAINT `FK26hki9l81sq00p9qnhjgpwnm4` FOREIGN KEY (`id_docente`) REFERENCES `profesor` (`id`),
  CONSTRAINT `FK4pbgp9pf82pm8vj2qjqojya4q` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id`),
  CONSTRAINT `FKmk7xk5b0m6oy1kgq1i9oo2mvc` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id`),
  CONSTRAINT `FKqws7e493oga32vqkmjxflle32` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclo_escolar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_docente_grado_grupo`
--

LOCK TABLES `asignacion_docente_grado_grupo` WRITE;
/*!40000 ALTER TABLE `asignacion_docente_grado_grupo` DISABLE KEYS */;
INSERT INTO `asignacion_docente_grado_grupo` VALUES ('891ba836-cbf3-42af-8d20-460647d0d65c','ACTIVO','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','0dba35d1-c265-4758-a327-eedce49dcb4f','05bbaa21-52d2-4af5-9efa-b13640b9219e','2025-10-26 03:54:36.585383'),('d186c3b3-5936-4c29-8dc6-4774701eba81','ACTIVO','9182d993-76db-4dce-b96b-42405e4dfa50','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','0dba35d1-c265-4758-a327-eedce49dcb4f','05bbaa21-52d2-4af5-9efa-b13640b9219e','2025-10-26 03:56:17.413994');
/*!40000 ALTER TABLE `asignacion_docente_grado_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacion_materia_grado`
--

DROP TABLE IF EXISTS `asignacion_materia_grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacion_materia_grado` (
  `id` varchar(36) NOT NULL,
  `id_grado` varchar(36) DEFAULT NULL,
  `id_materia` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhqdk9dmfkqwc6h8gd19sasfv` (`id_grado`),
  KEY `FK6vvtu9dkae28xomqbcuipa4lo` (`id_materia`),
  CONSTRAINT `FK6vvtu9dkae28xomqbcuipa4lo` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`),
  CONSTRAINT `FKhqdk9dmfkqwc6h8gd19sasfv` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_materia_grado`
--

LOCK TABLES `asignacion_materia_grado` WRITE;
/*!40000 ALTER TABLE `asignacion_materia_grado` DISABLE KEYS */;
INSERT INTO `asignacion_materia_grado` VALUES ('142f590f-1d44-490b-abfe-a38832b109c1','5603ed93-1454-4abc-8a27-a79f84509eab','11d7a2fc-d874-4477-9f3f-adf2290465b6'),('37c2696c-3883-4dbb-9c6c-5a5a92185ba3','53657e84-2710-49d7-86e0-4fe51255aad5','1c706650-c434-4532-bd3a-9c1e1ae24eb2'),('41d2f066-5530-40f2-8c18-0923d0b19af6','a06301fd-d2fb-404c-8aaf-b343fd407466','3f0a09ef-a7c2-431a-adf7-a46054975791'),('4c20e7f7-6d0f-4307-9c93-564a7326f7c5','0dba35d1-c265-4758-a327-eedce49dcb4f','3f0a09ef-a7c2-431a-adf7-a46054975791'),('5dba7cb5-a1d9-4817-8398-b2783fdf9086','53657e84-2710-49d7-86e0-4fe51255aad5','11d7a2fc-d874-4477-9f3f-adf2290465b6'),('6bcb0e7b-abab-4846-b08a-53e26ba33a33','709946ff-ce89-45ee-972d-7a6b50112b46','1c706650-c434-4532-bd3a-9c1e1ae24eb2'),('6c6a99f2-45aa-4193-84f1-f38c5ad34d07','709946ff-ce89-45ee-972d-7a6b50112b46','3f0a09ef-a7c2-431a-adf7-a46054975791'),('7f3256b7-23e0-400f-958e-436e81a36ab7','53657e84-2710-49d7-86e0-4fe51255aad5','3f0a09ef-a7c2-431a-adf7-a46054975791'),('9290a335-c81e-4e73-9b01-57b38f314a29','5603ed93-1454-4abc-8a27-a79f84509eab','1c706650-c434-4532-bd3a-9c1e1ae24eb2'),('a410d0ba-f0af-4c1e-a85e-27601e75cbbf','b51f9f77-693e-4a87-b1c9-68ebd542b6f7','3f0a09ef-a7c2-431a-adf7-a46054975791'),('b7c5888e-0a61-4be1-b2a8-90080a483314','5603ed93-1454-4abc-8a27-a79f84509eab','3f0a09ef-a7c2-431a-adf7-a46054975791'),('bc61df09-7c47-4abc-90cb-e52e6bff8acb','b51f9f77-693e-4a87-b1c9-68ebd542b6f7','11d7a2fc-d874-4477-9f3f-adf2290465b6'),('c9835d64-ad59-4fb8-a250-8bdf4229553b','a06301fd-d2fb-404c-8aaf-b343fd407466','11d7a2fc-d874-4477-9f3f-adf2290465b6'),('ca7efcd4-30ce-439d-b8a3-f400892fa2df','a06301fd-d2fb-404c-8aaf-b343fd407466','1c706650-c434-4532-bd3a-9c1e1ae24eb2'),('cb60ac05-b149-4c31-a57b-22ef76cab984','0dba35d1-c265-4758-a327-eedce49dcb4f','1c706650-c434-4532-bd3a-9c1e1ae24eb2'),('d3be1b08-d02e-46e6-9b2f-6f87feaf0933','709946ff-ce89-45ee-972d-7a6b50112b46','11d7a2fc-d874-4477-9f3f-adf2290465b6'),('da74f294-d710-45d7-8c1c-a60793ab9376','0dba35d1-c265-4758-a327-eedce49dcb4f','11d7a2fc-d874-4477-9f3f-adf2290465b6'),('de091d10-09c0-4b2b-98c2-195efac556c9','b51f9f77-693e-4a87-b1c9-68ebd542b6f7','1c706650-c434-4532-bd3a-9c1e1ae24eb2');
/*!40000 ALTER TABLE `asignacion_materia_grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion_final`
--

DROP TABLE IF EXISTS `calificacion_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion_final` (
  `id` varchar(36) NOT NULL,
  `promedio` double NOT NULL,
  `id_alumno` varchar(36) NOT NULL,
  `id_ciclo` varchar(36) NOT NULL,
  `id_materia` varchar(36) NOT NULL,
  `id_trimestre` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmmjv15o5jt3wlm31jlu9ul5vb` (`id_alumno`),
  KEY `FKd4vp029qkjxqih326a09jtjxv` (`id_ciclo`),
  KEY `FKcucaftvy5rni9hq0oxrnxkauv` (`id_materia`),
  KEY `FK4a3ylbbfwlp3pxup7h2epvebt` (`id_trimestre`),
  CONSTRAINT `FK4a3ylbbfwlp3pxup7h2epvebt` FOREIGN KEY (`id_trimestre`) REFERENCES `trimestres` (`id`),
  CONSTRAINT `FKcucaftvy5rni9hq0oxrnxkauv` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`),
  CONSTRAINT `FKd4vp029qkjxqih326a09jtjxv` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclo_escolar` (`id`),
  CONSTRAINT `FKmmjv15o5jt3wlm31jlu9ul5vb` FOREIGN KEY (`id_alumno`) REFERENCES `estudiante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion_final`
--

LOCK TABLES `calificacion_final` WRITE;
/*!40000 ALTER TABLE `calificacion_final` DISABLE KEYS */;
INSERT INTO `calificacion_final` VALUES ('077dbf23-401c-4efc-a364-f38a84bad0e1',9.1,'bf10a76b-985c-44a0-8b3d-8ee1d3ca5dbc','9182d993-76db-4dce-b96b-42405e4dfa50','3fdf3a4a-de91-4c20-aedc-62dcc16d805d','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('098157ed-0a88-4287-999a-b8abcc5ac5ba',8,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','c22d71a5-9b97-45f0-a04e-6fc04b3ff0bd','30bca4bf-01f1-490c-a934-06b509e32d49'),('1caaf588-766d-45c0-9fe9-3268822abcd3',7,'657966f9-5964-492f-ba66-1b117fd2543e','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','11d7a2fc-d874-4477-9f3f-adf2290465b6','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('23042d15-f23e-48e3-bbb1-0579b133bbc0',8.4,'25631742-a3fc-4d67-952c-1a384705afb8','9182d993-76db-4dce-b96b-42405e4dfa50','c22d71a5-9b97-45f0-a04e-6fc04b3ff0bd','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('27c3d8c7-8d0d-4baf-bcfd-a8f7e6e20bd8',9.7,'2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','7528d53e-17dd-477c-bcfa-d029f2c8673e','ae43f518-f038-49e9-aadf-9ec5969b810a','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('28ab9ca8-f272-41db-8a25-0570b591d89f',9.5,'d527ad9f-23de-442d-8cea-764b22c01200','7528d53e-17dd-477c-bcfa-d029f2c8673e','ae43f518-f038-49e9-aadf-9ec5969b810a','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('2cbc13c2-468f-4617-8da8-25ec26b55e3d',8.1,'ab9dca51-3c10-4ae7-84b5-dd70692c0153','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','3b39f966-7d74-4f9a-985d-c27a1f68ce92','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('365cdf90-012c-476a-8ae3-c23817bd545b',8.7,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','11d7a2fc-d874-4477-9f3f-adf2290465b6','30bca4bf-01f1-490c-a934-06b509e32d49'),('544490bd-b29f-42b3-8b49-d3a273df7010',7.6,'c6f8f9af-c731-4bb3-a7b9-a5ed4c7d8b12','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','3b39f966-7d74-4f9a-985d-c27a1f68ce92','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('66f574da-43c3-4047-8d67-92605fdbe479',8,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','3f0a09ef-a7c2-431a-adf7-a46054975791','30bca4bf-01f1-490c-a934-06b509e32d49'),('6d2cc6c1-8b49-46df-8125-38b937543136',9,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','11d7a2fc-d874-4477-9f3f-adf2290465b6','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('6ff00766-0542-41d7-85ed-d1afbc4fe88d',7.8,'657966f9-5964-492f-ba66-1b117fd2543e','9182d993-76db-4dce-b96b-42405e4dfa50','c22d71a5-9b97-45f0-a04e-6fc04b3ff0bd','30bca4bf-01f1-490c-a934-06b509e32d49'),('7239358b-ed91-4840-8ce4-40d44ead625c',7.4,'657966f9-5964-492f-ba66-1b117fd2543e','7528d53e-17dd-477c-bcfa-d029f2c8673e','1c706650-c434-4532-bd3a-9c1e1ae24eb2','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('7cdcd97d-6fbe-46d2-8675-1674ea39a2f9',8.9,'25631742-a3fc-4d67-952c-1a384705afb8','3c8b9cde-5d89-45a8-8544-61933789f78c','ad22742e-d60d-41c1-8db8-91ae84e7b390','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('8e6349b9-28f0-4db6-91ce-cea854da8cbd',7.5,'657966f9-5964-492f-ba66-1b117fd2543e','7528d53e-17dd-477c-bcfa-d029f2c8673e','1c706650-c434-4532-bd3a-9c1e1ae24eb2','30bca4bf-01f1-490c-a934-06b509e32d49'),('94df5917-f452-4f9c-83d5-909bf8abc0fd',8.3,'ab9dca51-3c10-4ae7-84b5-dd70692c0153','7528d53e-17dd-477c-bcfa-d029f2c8673e','1c706650-c434-4532-bd3a-9c1e1ae24eb2','30bca4bf-01f1-490c-a934-06b509e32d49'),('9f87b1c3-0c3b-4ad8-b892-656f4552ba8e',7.8,'657966f9-5964-492f-ba66-1b117fd2543e','7528d53e-17dd-477c-bcfa-d029f2c8673e','1c706650-c434-4532-bd3a-9c1e1ae24eb2','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('9ffd2e08-1970-407a-81e4-fb46ca9e3ce8',9.2,'2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','3c8b9cde-5d89-45a8-8544-61933789f78c','3f0a09ef-a7c2-431a-adf7-a46054975791','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('a2dd06b1-dbb4-4759-8d50-061e7af4c42e',8.8,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','11d7a2fc-d874-4477-9f3f-adf2290465b6','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('ac5f73af-140e-42d9-a4bd-dcd396ebb018',9,'2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','e438a4e5-d416-401a-909f-106788e12bfa','30bca4bf-01f1-490c-a934-06b509e32d49'),('cc6f965a-80ad-48a2-9147-6ec8981f3b50',9.4,'887c80ff-6bc8-46c8-8400-a42e63a8e05e','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','e438a4e5-d416-401a-909f-106788e12bfa','c4ef9382-0679-4230-ae43-9785a9b5eb60'),('ced8d167-43ea-4b82-850d-6d5eefc8f45e',8,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','1c706650-c434-4532-bd3a-9c1e1ae24eb2','30bca4bf-01f1-490c-a934-06b509e32d49'),('d379375e-70c5-4e76-852c-68151e24f7a9',6.5,'c6f8f9af-c731-4bb3-a7b9-a5ed4c7d8b12','3c8b9cde-5d89-45a8-8544-61933789f78c','ad22742e-d60d-41c1-8db8-91ae84e7b390','30bca4bf-01f1-490c-a934-06b509e32d49'),('d7ca35ef-8404-48bb-9052-edd2d02b55a3',8,'d527ad9f-23de-442d-8cea-764b22c01200','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','ae78c5ed-762e-49b9-ba3f-49786481ad91','30bca4bf-01f1-490c-a934-06b509e32d49'),('df34f85e-1871-40ef-8077-e2dc665a9562',9.8,'887c80ff-6bc8-46c8-8400-a42e63a8e05e','9182d993-76db-4dce-b96b-42405e4dfa50','3fdf3a4a-de91-4c20-aedc-62dcc16d805d','30bca4bf-01f1-490c-a934-06b509e32d49'),('e7bffe32-a367-4cf9-b87e-0575bcb01491',8.7,'2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','3c8b9cde-5d89-45a8-8544-61933789f78c','3f0a09ef-a7c2-431a-adf7-a46054975791','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('f51b249f-3b52-450b-8d95-cb42fcffd34c',8.9,'887c80ff-6bc8-46c8-8400-a42e63a8e05e','3c8b9cde-5d89-45a8-8544-61933789f78c','3f0a09ef-a7c2-431a-adf7-a46054975791','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0'),('f7d404fb-9ce4-4158-a9d4-e760ee38d650',7.9,'2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','3c8b9cde-5d89-45a8-8544-61933789f78c','3f0a09ef-a7c2-431a-adf7-a46054975791','30bca4bf-01f1-490c-a934-06b509e32d49'),('fb1c0c17-b488-4c3e-b7f2-f150993a8c11',7.9,'bf10a76b-985c-44a0-8b3d-8ee1d3ca5dbc','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','ae78c5ed-762e-49b9-ba3f-49786481ad91','d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0');
/*!40000 ALTER TABLE `calificacion_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion_final_materia`
--

DROP TABLE IF EXISTS `calificacion_final_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion_final_materia` (
  `id` varchar(36) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `promedio` decimal(5,2) NOT NULL,
  `id_alumno` varchar(36) NOT NULL,
  `id_ciclo_escolar` varchar(36) NOT NULL,
  `id_materia` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK37ig245btlyf4e4xggwdycm3j` (`id_alumno`),
  KEY `FK9ms6y4wryhvh3nlyaepmgt05y` (`id_ciclo_escolar`),
  KEY `FK70ogf1c1r3drmuc0i1f05ijh5` (`id_materia`),
  CONSTRAINT `FK37ig245btlyf4e4xggwdycm3j` FOREIGN KEY (`id_alumno`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `FK70ogf1c1r3drmuc0i1f05ijh5` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`),
  CONSTRAINT `FK9ms6y4wryhvh3nlyaepmgt05y` FOREIGN KEY (`id_ciclo_escolar`) REFERENCES `ciclo_escolar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion_final_materia`
--

LOCK TABLES `calificacion_final_materia` WRITE;
/*!40000 ALTER TABLE `calificacion_final_materia` DISABLE KEYS */;
INSERT INTO `calificacion_final_materia` VALUES ('32f35c9b-1fe1-47dc-91d4-5214ce7654c9','2025-10-26 22:08:27.655897',9.00,'887c80ff-6bc8-46c8-8400-a42e63a8e05e','9182d993-76db-4dce-b96b-42405e4dfa50','3fdf3a4a-de91-4c20-aedc-62dcc16d805d'),('62a3f5b3-14f5-496b-ad34-292c6ad768ac','2025-10-26 22:08:14.517773',7.80,'657966f9-5964-492f-ba66-1b117fd2543e','7528d53e-17dd-477c-bcfa-d029f2c8673e','1c706650-c434-4532-bd3a-9c1e1ae24eb2'),('7b65cff6-8d26-4848-a550-f5346101efcd','2025-10-26 22:08:33.205769',8.20,'ab9dca51-3c10-4ae7-84b5-dd70692c0153','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','3b39f966-7d74-4f9a-985d-c27a1f68ce92'),('d0bee757-d664-42f0-97f1-24d9734ed895','2025-10-26 22:08:02.570609',9.30,'2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','3c8b9cde-5d89-45a8-8544-61933789f78c','3f0a09ef-a7c2-431a-adf7-a46054975791'),('dac8f45a-5076-464d-833d-541c10f3ed75','2025-10-26 22:07:41.594641',8.60,'25631742-a3fc-4d67-952c-1a384705afb8','3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','11d7a2fc-d874-4477-9f3f-adf2290465b6');
/*!40000 ALTER TABLE `calificacion_final_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campo_formativo`
--

DROP TABLE IF EXISTS `campo_formativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campo_formativo` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campo_formativo`
--

LOCK TABLES `campo_formativo` WRITE;
/*!40000 ALTER TABLE `campo_formativo` DISABLE KEYS */;
INSERT INTO `campo_formativo` VALUES ('342f06d7-433d-4dc4-8c25-82f45a0added','ACTIVO','Educación Artística'),('3a1976f1-d857-4fce-aa3d-cb83bceee1a1','ACTIVO','Ciencias Naturales'),('8b98908e-8a94-4b62-b133-1e54df6b2f5b','ACTIVO','Lengua y Literatura'),('e6a49a7d-7ed7-4441-a055-ab3e0f441636','ACTIVO','Matemáticas');
/*!40000 ALTER TABLE `campo_formativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclo_escolar`
--

DROP TABLE IF EXISTS `ciclo_escolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciclo_escolar` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo_escolar`
--

LOCK TABLES `ciclo_escolar` WRITE;
/*!40000 ALTER TABLE `ciclo_escolar` DISABLE KEYS */;
INSERT INTO `ciclo_escolar` VALUES ('3ae08819-4fb1-4c4c-bf96-2d4ed9a4a460','ACTIVO','2020-12-31','2019-01-01'),('3c8b9cde-5d89-45a8-8544-61933789f78c','ACTIVO','2023-12-31','2022-01-01'),('7528d53e-17dd-477c-bcfa-d029f2c8673e','ACTIVO','2022-12-31','2021-01-01'),('9182d993-76db-4dce-b96b-42405e4dfa50','ACTIVO','2024-12-31','2023-01-01'),('bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','ACTIVO','2019-12-31','2018-01-01');
/*!40000 ALTER TABLE `ciclo_escolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `departamento` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKorvrxr7tj23sd553todkj6m10` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `curp` varchar(255) DEFAULT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKhq1oojp22wafs63ehrprnwqtb` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES ('VARA100217HDFRMS07','ACTIVO','M007','25631742-a3fc-4d67-952c-1a384705afb8'),('CADN110625HDFRMS08','ACTIVO','M008','2ba9bcfd-abf1-4b05-b12e-fdcf46416be9'),('SARC100814HDFRMS09','ACTIVO','M009','657966f9-5964-492f-ba66-1b117fd2543e'),('PEAJ100712HDFRMS03','ACTIVO','M003','887c80ff-6bc8-46c8-8400-a42e63a8e05e'),('MADL110320HDFRMS02','ACTIVO','M002','ab9dca51-3c10-4ae7-84b5-dd70692c0153'),('RALC100115HDFRMS01','ACTIVO','M001','bf10a76b-985c-44a0-8b3d-8ee1d3ca5dbc'),('LOSF110930HDFRMS06','ACTIVO','M006','c6f8f9af-c731-4bb3-a7b9-a5ed4c7d8b12'),('PEAJ100712HDFRMS03','ACTIVO','M003','d527ad9f-23de-442d-8cea-764b22c01200');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES ('0dba35d1-c265-4758-a327-eedce49dcb4f','ACTIVO','3°'),('53657e84-2710-49d7-86e0-4fe51255aad5','ACTIVO','1°'),('5603ed93-1454-4abc-8a27-a79f84509eab','ACTIVO','2°'),('709946ff-ce89-45ee-972d-7a6b50112b46','ACTIVO','4°'),('a06301fd-d2fb-404c-8aaf-b343fd407466','ACTIVO','5°'),('b51f9f77-693e-4a87-b1c9-68ebd542b6f7','ACTIVO','6°');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES ('05bbaa21-52d2-4af5-9efa-b13640b9219e','ACTIVO','A'),('1cdbebae-1174-493b-854d-c7eb4da865eb','ACTIVO','C'),('25adcd62-a55e-482c-bac4-72d58f460455','ACTIVO','B');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscrito_alumno`
--

DROP TABLE IF EXISTS `inscrito_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscrito_alumno` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `fecha_inscripcion` datetime(6) DEFAULT NULL,
  `id_alumno` varchar(36) DEFAULT NULL,
  `id_ciclo` varchar(36) DEFAULT NULL,
  `id_docente` varchar(36) DEFAULT NULL,
  `id_grado` varchar(36) DEFAULT NULL,
  `id_grupo` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKetlaap5vtrs7x0tar1x42uvpr` (`id_alumno`),
  KEY `FK6uokpqqlkocuwmq02w3h5hg5q` (`id_ciclo`),
  KEY `FKb51xae4n5q8qlqrjd930fxqna` (`id_docente`),
  KEY `FKgagkr2a9gqiystc376af2nsjl` (`id_grado`),
  KEY `FKlg69gjxsk0gx84o8qnxfjag1m` (`id_grupo`),
  CONSTRAINT `FK6uokpqqlkocuwmq02w3h5hg5q` FOREIGN KEY (`id_ciclo`) REFERENCES `ciclo_escolar` (`id`),
  CONSTRAINT `FKb51xae4n5q8qlqrjd930fxqna` FOREIGN KEY (`id_docente`) REFERENCES `profesor` (`id`),
  CONSTRAINT `FKetlaap5vtrs7x0tar1x42uvpr` FOREIGN KEY (`id_alumno`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `FKgagkr2a9gqiystc376af2nsjl` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id`),
  CONSTRAINT `FKlg69gjxsk0gx84o8qnxfjag1m` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrito_alumno`
--

LOCK TABLES `inscrito_alumno` WRITE;
/*!40000 ALTER TABLE `inscrito_alumno` DISABLE KEYS */;
INSERT INTO `inscrito_alumno` VALUES ('1dbba53e-6582-4253-8a12-c7113b45edbf','ACTIVO','2025-10-26 05:17:12.088018','2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('34c21841-efb5-499e-90d2-a729242fb783','ACTIVO','2025-10-26 05:05:20.199375','bf10a76b-985c-44a0-8b3d-8ee1d3ca5dbc','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('6f4fb4cd-e5f4-4d32-860f-0f2ccf43b125','ACTIVO','2025-10-26 05:17:36.445944','657966f9-5964-492f-ba66-1b117fd2543e','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('82b87108-4a65-4774-a974-f2b82b2c3c32','ACTIVO','2025-10-26 05:15:10.080905','d527ad9f-23de-442d-8cea-764b22c01200','9182d993-76db-4dce-b96b-42405e4dfa50','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('86a5ca24-8ef3-4213-ac21-6dbda9efff99','ACTIVO','2025-10-26 05:06:13.421113','bf10a76b-985c-44a0-8b3d-8ee1d3ca5dbc','9182d993-76db-4dce-b96b-42405e4dfa50','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('899fdabf-02c4-4672-b04e-c6fe0c565d0a','ACTIVO','2025-10-26 05:14:12.082358','ab9dca51-3c10-4ae7-84b5-dd70692c0153','9182d993-76db-4dce-b96b-42405e4dfa50','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('bb75942e-f6fa-4186-8a55-da88eee5f7ef','ACTIVO','2025-10-26 05:16:39.245501','25631742-a3fc-4d67-952c-1a384705afb8','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e'),('e26b5723-e0c1-45d5-97dd-79d9b9f851b0','ACTIVO','2025-10-26 05:16:09.460886','c6f8f9af-c731-4bb3-a7b9-a5ed4c7d8b12','bf65d7d2-d86b-4a61-a28c-2d8b02ca2a30','0bd9fcc2-6506-4d56-91dd-372a7d06c61a','5603ed93-1454-4abc-8a27-a79f84509eab','05bbaa21-52d2-4af5-9efa-b13640b9219e');
/*!40000 ALTER TABLE `inscrito_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `campo_formativo` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK56qtx230t2nkehvw5nxlf2vyx` (`campo_formativo`),
  CONSTRAINT `FK56qtx230t2nkehvw5nxlf2vyx` FOREIGN KEY (`campo_formativo`) REFERENCES `campo_formativo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES ('11d7a2fc-d874-4477-9f3f-adf2290465b6','ACTIVO','Álgebra','342f06d7-433d-4dc4-8c25-82f45a0added'),('1c706650-c434-4532-bd3a-9c1e1ae24eb2','ACTIVO','Ortografía y Redacción','3a1976f1-d857-4fce-aa3d-cb83bceee1a1'),('3b39f966-7d74-4f9a-985d-c27a1f68ce92','ACTIVO','Ciencias Naturales','8b98908e-8a94-4b62-b133-1e54df6b2f5b'),('3f0a09ef-a7c2-431a-adf7-a46054975791','ACTIVO','Matemáticas Básicas','342f06d7-433d-4dc4-8c25-82f45a0added'),('3fdf3a4a-de91-4c20-aedc-62dcc16d805d','ACTIVO','Lengua y Literatura','3a1976f1-d857-4fce-aa3d-cb83bceee1a1'),('ad22742e-d60d-41c1-8db8-91ae84e7b390','ACTIVO','Educación Física','e6a49a7d-7ed7-4441-a055-ab3e0f441636'),('ae43f518-f038-49e9-aadf-9ec5969b810a','ACTIVO','Música','e6a49a7d-7ed7-4441-a055-ab3e0f441636'),('ae78c5ed-762e-49b9-ba3f-49786481ad91','ACTIVO','Biología','8b98908e-8a94-4b62-b133-1e54df6b2f5b'),('c22d71a5-9b97-45f0-a04e-6fc04b3ff0bd','ACTIVO','Educación Artística','e6a49a7d-7ed7-4441-a055-ab3e0f441636'),('e438a4e5-d416-401a-909f-106788e12bfa','ACTIVO','Ética y Valores','e6a49a7d-7ed7-4441-a055-ab3e0f441636');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `clave_presupuestal` varchar(255) DEFAULT NULL,
  `especialidad` varchar(255) DEFAULT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKg3tinbhdgsswp3ybgj2xvltie` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES ('CPE005','Educación Física','ACTIVO','PEAJ880930IJ5','5591122334','0bd9fcc2-6506-4d56-91dd-372a7d06c61a'),('CPL002','Lengua y Literatura','ACTIVO','GOTM900723CD2','5587423695','4c9bedc8-c64a-462f-a9c7-64c029fee60a'),('CPM001','Matemáticas','ACTIVO','RALC850412AB1','5546789123','53e41100-6757-43ed-b788-c2c54f4549fc'),('CPB004','Biología','ACTIVO','HECA950218GH4','5576432189','7ecd4804-b47c-460c-84a2-28b765889396'),('CPH003','Historia','ACTIVO','MADL821105EF3','5598765432','f9804722-3e5c-4708-a701-82dbe85d61ad');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimestres`
--

DROP TABLE IF EXISTS `trimestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trimestres` (
  `id` varchar(36) NOT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimestres`
--

LOCK TABLES `trimestres` WRITE;
/*!40000 ALTER TABLE `trimestres` DISABLE KEYS */;
INSERT INTO `trimestres` VALUES ('30bca4bf-01f1-490c-a934-06b509e32d49','ACTIVO','Trimestre dos'),('c4ef9382-0679-4230-ae43-9785a9b5eb60','ACTIVO','Trimestre uno'),('d3b0c977-7d6d-4fa9-a581-8d8c38cc0de0','ACTIVO','Trimestre tres');
/*!40000 ALTER TABLE `trimestres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor` (
  `id` varchar(36) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `estatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `parentesco` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` varchar(36) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` enum('DIRECTOR','ESTUDIANTE','PROFESOR') DEFAULT NULL,
  `sexo` enum('FEMENINO','MASCULINO') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('0bd9fcc2-6506-4d56-91dd-372a7d06c61a','Pérez Aguilar','jorge.perez@example.com','1988-09-30','Jorge','$2a$10$VrJumJXLJ5tZNqXq1EzkOekjqNYWbZct11Q2zxvXqjmXJ37kjbQqu','PROFESOR','MASCULINO'),('25631742-a3fc-4d67-952c-1a384705afb8','Vargas Ruiz','alejandro.vargas@example.com','2010-02-17','Alejandro','$2a$10$wqHZKSFiUeCnR0XIIPz6GOln6jvo/xCc1DHMTFqw2uyk7WLAvO/eK','ESTUDIANTE','MASCULINO'),('2ba9bcfd-abf1-4b05-b12e-fdcf46416be9','Castillo Medina','daniel.castillo@example.com','2011-06-25','Daniel','$2a$10$axAhWzUV0V2lAPbGYXcNROsmD6viwHGGErLuX1u5P5tBSvynkf6D6','ESTUDIANTE','MASCULINO'),('4c9bedc8-c64a-462f-a9c7-64c029fee60a','Gómez Torres','maria.gomez@example.com','1990-07-23','María','$2a$10$xb8bLLJjFLvMsDiA2Pz3JeuiUBTljEP4OjpBCwOaScGmMyARAww.G','PROFESOR','FEMENINO'),('53e41100-6757-43ed-b788-c2c54f4549fc','Ramírez López','carlos.ramirez@example.com','1985-04-12','Carlos','$2a$10$1y8vYZ45jxw/by4ilvfiXeoQdkEgreIJFfffEwbKMFFSw0Sdc9rfq','PROFESOR','MASCULINO'),('657966f9-5964-492f-ba66-1b117fd2543e','Santos Moreno','ricardo.santos@example.com','2010-08-14','Ricardo','$2a$10$YOGJzbaOmKrjrmMEq3n/9OfPxxbMaqBs2NYW4ZBHjEr6l.sPOW8O6','ESTUDIANTE','MASCULINO'),('7ecd4804-b47c-460c-84a2-28b765889396','Hernández Cruz','ana.hernandez@example.com','1995-02-18','Ana','$2a$10$pz3pD25tARDURRX8UTUgJeJx2FHCGAV3Jm0lo7w..0bf1rg0DeTBC','PROFESOR','FEMENINO'),('887c80ff-6bc8-46c8-8400-a42e63a8e05e','Pérez Aguilar','jorge.perez@example.com','2010-07-12','Jorge','$2a$10$QSigTMa91obME3m2aA6ax.Dtdy9F/qNDOvnd9mpWi6dDg.SJdzmj2','ESTUDIANTE','MASCULINO'),('ab9dca51-3c10-4ae7-84b5-dd70692c0153','Martínez Díaz','luis.martinez@example.com','2011-03-20','Luis','$2a$10$Ed9kCMTJmHdmwbjmBx2fkuLd4ThUDYEzdQEtqIiZMvK9UbgKjZr1a','ESTUDIANTE','MASCULINO'),('bf10a76b-985c-44a0-8b3d-8ee1d3ca5dbc','Ramírez López','carlos.ramirez@example.com','2010-01-15','Carlos','$2a$10$OnEYm6Mrh2Tbfr8isQb5Pu/ERjpw.ehmDr6ISp3DOkg4CjSFcecd6','ESTUDIANTE','MASCULINO'),('c6f8f9af-c731-4bb3-a7b9-a5ed4c7d8b12','López Sánchez','fernando.lopez@example.com','2011-09-30','Fernando','$2a$10$vgFoDE/zkvRZk28L8JkFp.9m9LfRIndXEoiJ4PdSxSu8ccRCwPeZK','ESTUDIANTE','MASCULINO'),('d527ad9f-23de-442d-8cea-764b22c01200','Pérez Aguilar','jorge.perez@example.com','2010-07-12','Jorge','$2a$10$i3PLLrcQ6yQS/EskQf7cHeprpf8btOP44t/nwmBzVCT8i53flG1A6','ESTUDIANTE','MASCULINO'),('f9804722-3e5c-4708-a701-82dbe85d61ad','Martínez Díaz','luis.martinez@example.com','1982-11-05','Luis','$2a$10$6wz6oDMsR/pwvzCyS9h9o.NosR0wNqsvBGFoxGTGVXtRLEgI1z1hO','PROFESOR','MASCULINO');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-26 18:05:50
