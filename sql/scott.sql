-- MySQL dump 10.13  Distrib 5.6.30, for Win32 (AMD64)
--
-- Host: localhost    Database: scott
-- ------------------------------------------------------
-- Server version	5.6.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Current Database: `scott`
--

CREATE DATABASE /*!32312 IF NOT EXISTS */ `scott` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `scott`;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `DEPTNO` INT(2) NOT NULL,
  `DNAME`  VARCHAR(14) DEFAULT NULL,
  `LOC`    VARCHAR(13) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10, 'ACCOUNTING', 'NEW YORK'), (20, 'RESEARCH', 'DALLAS'), (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `EMPNO`    INT(4) NOT NULL,
  `ENAME`    VARCHAR(10)  DEFAULT NULL,
  `JOB`      VARCHAR(9)   DEFAULT NULL,
  `MGR`      INT(4)       DEFAULT NULL,
  `HIREDATE` DATE         DEFAULT NULL,
  `SAL`      DOUBLE(7, 2) DEFAULT NULL,
  `COMM`     DOUBLE(7, 2) DEFAULT NULL,
  `DEPTNO`   INT(2)       DEFAULT NULL,
  PRIMARY KEY (`EMPNO`),
  KEY `FK_emp_deptno` (`DEPTNO`),
  CONSTRAINT `FK_emp_deptno` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
  (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30),
  (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20),
  (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30),
  (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30),
  (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10),
  (7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13', 3000.00, NULL, 20),
  (7839, 'KING', 'PRESIDENT', NULL, '1981-11-30', 5000.00, NULL, NULL),
  (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30),
  (7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', 1100.00, NULL, 20),
  (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, NULL, 30),
  (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, NULL, 20),
  (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_backup_20160421`
--

DROP TABLE IF EXISTS `emp_backup_20160421`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_backup_20160421` (
  `EMPNO`    INT(4) NOT NULL,
  `ENAME`    VARCHAR(10)  DEFAULT NULL,
  `JOB`      VARCHAR(9)   DEFAULT NULL,
  `MGR`      INT(4)       DEFAULT NULL,
  `HIREDATE` DATE         DEFAULT NULL,
  `SAL`      DOUBLE(7, 2) DEFAULT NULL,
  `COMM`     DOUBLE(7, 2) DEFAULT NULL,
  `DEPTNO`   INT(2)       DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_backup_20160421`
--

LOCK TABLES `emp_backup_20160421` WRITE;
/*!40000 ALTER TABLE `emp_backup_20160421` DISABLE KEYS */;
INSERT INTO `emp_backup_20160421` VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
  (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30),
  (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20),
  (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30),
  (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30),
  (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10),
  (7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13', 3000.00, NULL, 20),
  (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, NULL),
  (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30),
  (7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', 1100.00, NULL, 20),
  (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, NULL, 30),
  (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, NULL, 20),
  (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);
/*!40000 ALTER TABLE `emp_backup_20160421` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_emp`
--

DROP TABLE IF EXISTS `new_emp`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_emp` (
  `EMPNO`    INT(4) NOT NULL,
  `ENAME`    VARCHAR(10)  DEFAULT NULL,
  `JOB`      VARCHAR(9)   DEFAULT NULL,
  `MGR`      INT(4)       DEFAULT NULL,
  `HIREDATE` DATE         DEFAULT NULL,
  `SAL`      DOUBLE(7, 2) DEFAULT NULL,
  `COMM`     DOUBLE(7, 2) DEFAULT NULL,
  `DEPTNO`   INT(2)       DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_emp`
--

LOCK TABLES `new_emp` WRITE;
/*!40000 ALTER TABLE `new_emp` DISABLE KEYS */;
INSERT INTO `new_emp` VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30),
  (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30),
  (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20),
  (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30),
  (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30),
  (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10),
  (7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13', 3000.00, NULL, 20),
  (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, NULL),
  (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30),
  (7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', 1100.00, NULL, 20),
  (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, NULL, 30),
  (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, NULL, 20),
  (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);
/*!40000 ALTER TABLE `new_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salgrade`
--

DROP TABLE IF EXISTS `salgrade`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salgrade` (
  `GRADE` INT(11) DEFAULT NULL,
  `LOSAL` INT(11) DEFAULT NULL,
  `HISAL` INT(11) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salgrade`
--

LOCK TABLES `salgrade` WRITE;
/*!40000 ALTER TABLE `salgrade` DISABLE KEYS */;
INSERT INTO `salgrade` VALUES (1, 700, 1200), (2, 1201, 1400), (3, 1401, 2000), (4, 2001, 3000), (5, 3001, 9999);
/*!40000 ALTER TABLE `salgrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `EMPNO` INT(4) NOT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp`
VALUES (7839), (7782), (7934), (7566), (7788), (7876), (7902), (7499), (7521), (7654), (7698), (7844), (7900);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `EMPNO` INT(4) NOT NULL,
  `ENAME` VARCHAR(10) DEFAULT NULL
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (7839, 'KING');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_emp`
--

DROP TABLE IF EXISTS `v_emp`;
/*!50001 DROP VIEW IF EXISTS `v_emp`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
  /*!50001 CREATE VIEW `v_emp` AS
  SELECT
    1 AS `ENAME`,
    1 AS `SAL`,
    1 AS `COMM`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `scott`
--

USE `scott`;

--
-- Final view structure for view `v_emp`
--

/*!50001 DROP VIEW IF EXISTS `v_emp`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
  /*!50001 CREATE ALGORITHM = UNDEFINED */
  /*!50013 DEFINER =`root`@`localhost`
  SQL SECURITY DEFINER */
  /*!50001 VIEW `v_emp` AS
  SELECT
    `emp`.`ENAME` AS `ENAME`,
    `emp`.`SAL`   AS `SAL`,
    `emp`.`COMM`  AS `COMM`
  FROM `emp` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2016-04-21 14:59:12
