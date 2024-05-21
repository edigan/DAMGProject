-- MySQL dump 10.13  Distrib 8.3.0, for macos14 (arm64)
--
-- Host: localhost    Database: ManufProjectDump
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
-- Current Database: `ManufProjectDump`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ManufProjectDump` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ManufProjectDump`;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `CustomerCity` varchar(255) NOT NULL,
  `CustomerState` varchar(255) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `CustomerPhone` varchar(20) NOT NULL,
  `CustomerEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `idx_customer_id` (`CustomerID`),
  KEY `idx_customer_name` (`LastName`,`FirstName`),
  KEY `idx_covering_index` (`CustomerCity`,`CustomerState`,`Zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (101,'John','Doe','New York','NY','10001','555-123-4567','john.doe@example.com'),(102,'Jane','Smith','Los Angeles','CA','90001','555-234-5678','jane.smith@example.com'),(103,'Michael','Johnson','Chicago','IL','60601','555-345-6789','michael.johnson@example.com'),(104,'Emily','Williams','Houston','TX','77001','555-456-7890','emily.williams@example.com'),(105,'David','Brown','Phoenix','AZ','85001','555-567-8901','david.brown@example.com'),(106,'Sarah','Jones','Philadelphia','PA','19101','555-678-9012','sarah.jones@example.com'),(107,'Christopher','Garcia','San Antonio','TX','78201','555-789-0123','christopher.garcia@example.com'),(108,'Jessica','Martinez','San Diego','CA','92101','555-890-1234','jessica.martinez@example.com'),(109,'Daniel','Hernandez','Dallas','TX','75201','555-901-2345','daniel.hernandez@example.com'),(110,'Ashley','Lopez','San Jose','CA','95101','555-012-3456','ashley.lopez@example.com'),(111,'Matthew','Gonzalez','Austin','TX','78701','555-125-3567','matthew.gonzalez@example.com'),(112,'Amanda','Wilson','Jacksonville','FL','32201','555-214-5278','amanda.wilson@example.com'),(113,'James','Taylor','Fort Worth','TX','76101','545-325-6789','james.taylor@example.com'),(114,'Olivia','Thomas','Columbus','OH','43001','595-416-7890','olivia.thomas@example.com'),(115,'Andrew','Harris','Indianapolis','IN','46201','505-567-8901','andrew.harris@example.com'),(116,'Elizabeth','Walker','Seattle','WA','98101','555-668-9012','elizabeth.walker@example.com'),(117,'Ryan','Moore','Denver','CO','80201','555-759-0123','ryan.moore@example.com'),(118,'Lauren','King','Washington','DC','20001','555-830-2234','lauren.king@example.com'),(119,'Justin','Lee','Boston','MA','02101','551-801-2345','justin.lee@example.com'),(120,'Megan','Perez','Nashville','TN','37201','554-112-3456','megan.perez@example.com');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerorders`
--

DROP TABLE IF EXISTS `customerorders`;
/*!50001 DROP VIEW IF EXISTS `customerorders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerorders` AS SELECT 
 1 AS `CustomerID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `OrderID`,
 1 AS `OrderDate`,
 1 AS `OrderStatus`,
 1 AS `TotalAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerstatesummary`
--

DROP TABLE IF EXISTS `customerstatesummary`;
/*!50001 DROP VIEW IF EXISTS `customerstatesummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerstatesummary` AS SELECT 
 1 AS `CustomerState`,
 1 AS `CustomerCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(255) NOT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (401,'Manufacturing'),(402,'Packaging Engineering'),(403,'Quality Assurance'),(404,'Logistics'),(405,'Quality Control'),(406,'Order Management'),(407,'Operations'),(408,'Distribution'),(409,'Inventory Management'),(410,'Transportation');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `EmployeePosition` varchar(255) NOT NULL,
  `EmployeeContact` varchar(20) NOT NULL,
  `EmployeeEmail` varchar(255) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `DepartmentID` int NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `DepartmentID` (`DepartmentID`),
  KEY `idx_employee_position` (`EmployeePosition`),
  KEY `idx_salary` (`Salary`),
  KEY `idx_employee_id` (`EmployeeID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (501,'Michael','Smith','Production Assistant','555-111-1111','michael.smith@example.com',50000.00,401),(502,'Emily','Johnson','Packaging Technician','555-222-2222','emily.johnson@example.com',55000.00,402),(503,'Christopher','Williams','Quality Inspector','555-333-3333','christopher.williams@example.com',65000.00,403),(504,'Jessica','Brown','Logistics Coordinator','555-444-4444','jessica.brown@example.com',70000.00,404),(505,'David','Jones','Shipping Clerk','555-555-5555','david.jones@example.com',45000.00,404),(506,'Amanda','Davis','Quality Control Specialist','555-666-6666','amanda.davis@example.com',75000.00,405),(507,'Daniel','Miller','Packaging Lead','555-777-7777','daniel.miller@example.com',80000.00,402),(508,'Elizabeth','Wilson','Shipping Supervisor','555-888-8888','elizabeth.wilson@example.com',85000.00,404),(509,'Andrew','Taylor','Order Coordinator','555-999-9999','andrew.taylor@example.com',90000.00,406),(510,'Olivia','Anderson','Delivery Scheduler','555-101-0101','olivia.anderson@example.com',60000.00,408),(511,'Matthew','Thomas','Delivery Personnel','555-202-0202','matthew.thomas@example.com',65000.00,408),(512,'Ashley','Jackson','Carrier Liaison','555-303-0303','ashley.jackson@example.com',70000.00,404),(513,'Justin','Harris','Warehouse Operator','555-404-0404','justin.harris@example.com',55000.00,409),(514,'Lauren','Martinez','Transit Coordinator','555-505-0505','lauren.martinez@example.com',60000.00,410),(515,'Ryan','Garcia','Exception Handler','555-606-0606','ryan.garcia@example.com',55000.00,407),(516,'Megan','Lopez','Returns Specialist','555-707-0707','megan.lopez@example.com',60000.00,406),(517,'Nicholas','King','Inventory Controller','555-808-0808','nicholas.king@example.com',70000.00,409),(518,'Stephanie','Lee','Modification Specialist','555-909-0909','stephanie.lee@example.com',75000.00,406),(519,'Kevin','Gonzalez','Approval Coordinator','555-101-1122','kevin.gonzalez@example.com',80000.00,406),(520,'Hannah','Perez','Cancellation Coordinator','555-121-2121','hannah.perez@example.com',85000.00,406);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeedepartment`
--

DROP TABLE IF EXISTS `employeedepartment`;
/*!50001 DROP VIEW IF EXISTS `employeedepartment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeedepartment` AS SELECT 
 1 AS `EmployeeID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `EmployeePosition`,
 1 AS `Salary`,
 1 AS `DepartmentName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeepurchasedetails`
--

DROP TABLE IF EXISTS `employeepurchasedetails`;
/*!50001 DROP VIEW IF EXISTS `employeepurchasedetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeepurchasedetails` AS SELECT 
 1 AS `EmployeeFirstName`,
 1 AS `EmployeeLastName`,
 1 AS `MaterialName`,
 1 AS `MaterialPrice`,
 1 AS `PurchasedQuantity`,
 1 AS `PurchaseAmount`,
 1 AS `PurchaseDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employeeswithinsalaryrange`
--

DROP TABLE IF EXISTS `employeeswithinsalaryrange`;
/*!50001 DROP VIEW IF EXISTS `employeeswithinsalaryrange`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeeswithinsalaryrange` AS SELECT 
 1 AS `EmployeeID`,
 1 AS `FullName`,
 1 AS `Position`,
 1 AS `Salary`,
 1 AS `Contact`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `OrderID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderStatus` varchar(50) NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `CustomerID` int NOT NULL,
  `ProductID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `ProductID` (`ProductID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `idx_order_date` (`OrderDate`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (301,'2024-04-01','Completed',2599.98,101,201),(302,'2024-04-02','Shipped',899.99,102,202),(303,'2024-04-03','Completed',1499.97,103,203),(304,'2024-04-04','Processing',1499.99,104,204),(305,'2024-04-05','Pending',399.98,105,205),(306,'2024-04-06','Completed',79.99,106,206),(307,'2024-04-07','Shipped',299.98,107,207),(308,'2024-04-08','Processing',499.99,108,208),(309,'2024-04-09','Pending',2699.97,109,209),(310,'2024-04-10','Completed',299.99,110,210),(311,'2024-04-11','Shipped',199.98,111,211),(312,'2024-04-12','Processing',129.99,112,212),(313,'2024-04-13','Completed',139.98,113,213),(314,'2024-04-14','Shipped',49.99,114,214),(315,'2024-04-15','Processing',119.97,115,215),(316,'2024-04-16','Pending',199.99,116,216),(317,'2024-04-17','Completed',119.98,117,217),(318,'2024-04-18','Shipped',79.99,118,218),(319,'2024-04-19','Processing',389.97,119,219),(320,'2024-04-20','Pending',129.99,120,220);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!50001 DROP VIEW IF EXISTS `orderdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderdetails` AS SELECT 
 1 AS `OrderID`,
 1 AS `OrderDate`,
 1 AS `ProductName`,
 1 AS `ProductPrice`,
 1 AS `OrderedQuantity`,
 1 AS `TotalPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `OrderItemID` int NOT NULL,
  `OrderID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  `OrderAssignmentStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`OrderID`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
INSERT INTO `OrderItem` VALUES (901,301,501,'Order Processing'),(902,302,502,'Order Packing'),(903,303,503,'Order Verification'),(904,304,504,'Quality Check'),(905,305,505,'Shipping Preparation'),(906,306,506,'Quality Assurance'),(907,307,507,'Packaging'),(908,308,508,'Shipping'),(909,309,509,'Order Confirmation'),(910,310,510,'Delivery Scheduling'),(911,311,511,'Delivery'),(912,312,512,'Carrier Handling'),(913,313,513,'Order Pickup'),(914,314,514,'In Transit'),(915,315,515,'Delivery Exception'),(916,316,516,'Return Processing'),(917,317,517,'Inventory Management'),(918,318,518,'Order Modification'),(919,319,519,'Order Modification Approval'),(920,320,520,'Order Cancellation');
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersbystate`
--

DROP TABLE IF EXISTS `ordersbystate`;
/*!50001 DROP VIEW IF EXISTS `ordersbystate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersbystate` AS SELECT 
 1 AS `CustomerState`,
 1 AS `NumberOfOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ordersspecificamount`
--

DROP TABLE IF EXISTS `ordersspecificamount`;
/*!50001 DROP VIEW IF EXISTS `ordersspecificamount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersspecificamount` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `CustomerCity`,
 1 AS `CustomerPhone`,
 1 AS `CustomerEmail`,
 1 AS `TotalAmount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pendingorders`
--

DROP TABLE IF EXISTS `pendingorders`;
/*!50001 DROP VIEW IF EXISTS `pendingorders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pendingorders` AS SELECT 
 1 AS `OrderID`,
 1 AS `OrderStatus`,
 1 AS `TotalAmount`,
 1 AS `ProductName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductDescription` text,
  `ProductPrice` decimal(10,2) NOT NULL,
  `AvailableQuantity` int NOT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `idx_product_name` (`ProductName`),
  KEY `idx_product_price` (`ProductPrice`),
  KEY `idx_covering_index` (`ProductName`,`ProductPrice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (201,'PrecisionBook Laptop','15-inch laptop with Intel Core i7 processor and 16GB RAM',1299.99,50),(202,'SmartSync Smartphone','6.5-inch smartphone with OLED display and dual-camera setup',899.99,100),(203,'TabTech Tablet','10-inch tablet with Android OS and 128GB storage',499.99,75),(204,'WorkPro Desktop Computer','Desktop computer with AMD Ryzen 7 processor and 32GB RAM',1499.99,30),(205,'SyncTrack Smartwatch','Smartwatch with heart rate monitor and GPS tracking',199.99,150),(206,'SoundWave Bluetooth Speaker','Wireless Bluetooth speaker with 20W output',79.99,200),(207,'NoiseGuard Headphones','Over-ear headphones with noise-canceling feature',149.99,100),(208,'GameMaster Gaming Console','Next-gen gaming console with 4K HDR support',499.99,50),(209,'CapturePro Digital Camera','Mirrorless digital camera with 24MP sensor and 4K video recording',899.99,40),(210,'PrintPro Wireless Printer','Wireless all-in-one printer with scanner and copier functions',299.99,60),(211,'DataVault External Hard Drive','2TB external hard drive with USB 3.0 connectivity',99.99,100),(212,'NetSpeed Wireless Router','Dual-band wireless router with MU-MIMO technology',129.99,80),(213,'FitTrack Fitness Tracker','Fitness tracker with sleep monitoring and water resistance',69.99,120),(214,'DentaCare Electric Toothbrush','Electric toothbrush with multiple cleaning modes',49.99,150),(215,'BrewMaster Coffee Maker','Programmable coffee maker with 12-cup capacity',39.99,90),(216,'CleanPro Vacuum Cleaner','Bagless upright vacuum cleaner with HEPA filter',199.99,70),(217,'BlendTech Blender','High-speed blender with stainless steel blades',59.99,110),(218,'ToastMaster Toaster Oven','Countertop toaster oven with convection heating',79.99,80),(219,'HeatWave Microwave Oven','Compact microwave oven with 0.9 cubic feet capacity',129.99,50),(220,'AirCrisp Air Fryer','Oil-less air fryer with digital touchscreen controls',129.99,60);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductOrder`
--

DROP TABLE IF EXISTS `ProductOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductOrder` (
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `OrderedQuantity` int NOT NULL,
  PRIMARY KEY (`OrderID`,`ProductID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `productorder_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Order` (`OrderID`),
  CONSTRAINT `productorder_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOrder`
--

LOCK TABLES `ProductOrder` WRITE;
/*!40000 ALTER TABLE `ProductOrder` DISABLE KEYS */;
INSERT INTO `ProductOrder` VALUES (301,201,2),(302,202,1),(303,203,3),(304,204,1),(305,205,2),(306,206,1),(307,207,2),(308,208,1),(309,209,3),(310,210,1),(311,211,1),(312,212,1),(313,213,2),(314,214,1),(315,215,3),(316,216,1),(317,217,2),(318,218,1),(319,219,3),(320,220,2);
/*!40000 ALTER TABLE `ProductOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Purchase`
--

DROP TABLE IF EXISTS `Purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Purchase` (
  `PurchaseID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  `SupplierID` int NOT NULL,
  `PurchaseDate` date NOT NULL,
  `PurchasedQuantity` int NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `MaterialID` int NOT NULL,
  PRIMARY KEY (`PurchaseID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `SupplierID` (`SupplierID`),
  KEY `idx_purchase_material` (`MaterialID`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`),
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `Supplier` (`SupplierID`),
  CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`MaterialID`) REFERENCES `RawMaterial` (`MaterialID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Purchase`
--

LOCK TABLES `Purchase` WRITE;
/*!40000 ALTER TABLE `Purchase` DISABLE KEYS */;
INSERT INTO `Purchase` VALUES (801,501,601,'2024-02-01',50,2500.00,701),(802,502,602,'2024-02-02',100,2000.00,702),(803,503,603,'2024-02-03',75,2250.00,703),(804,504,604,'2024-02-04',80,3200.00,704),(805,505,605,'2024-02-05',60,900.00,705),(806,506,606,'2024-02-06',90,2250.00,706),(807,507,607,'2024-02-07',70,2450.00,707),(808,508,608,'2024-02-08',65,2925.00,708),(809,509,609,'2024-02-09',55,2475.00,709),(810,510,610,'2024-02-10',45,2700.00,710),(811,511,611,'2024-02-11',40,2200.00,711),(812,512,612,'2024-02-12',30,2100.00,712),(813,513,613,'2024-02-13',85,1700.00,713),(814,514,614,'2024-02-14',95,2375.00,714),(815,515,615,'2024-02-15',100,3000.00,715),(816,516,616,'2024-02-16',120,4800.00,716),(817,517,617,'2024-02-17',110,5500.00,717),(818,518,618,'2024-02-18',75,3375.00,718),(819,519,619,'2024-02-19',80,2800.00,719),(820,520,620,'2024-02-20',60,4800.00,720);
/*!40000 ALTER TABLE `Purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `purchasedetails`
--

DROP TABLE IF EXISTS `purchasedetails`;
/*!50001 DROP VIEW IF EXISTS `purchasedetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `purchasedetails` AS SELECT 
 1 AS `PurchaseID`,
 1 AS `PurchaseDate`,
 1 AS `PurchasedQuantity`,
 1 AS `Amount`,
 1 AS `EmployeeID`,
 1 AS `SupplierID`,
 1 AS `MaterialID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `RawMaterial`
--

DROP TABLE IF EXISTS `RawMaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RawMaterial` (
  `MaterialID` int NOT NULL,
  `MaterialName` varchar(255) NOT NULL,
  `MaterialDescription` text,
  `MaterialPrice` decimal(10,2) NOT NULL,
  `MaterialQuantity` int NOT NULL,
  `SupplierID` int NOT NULL,
  PRIMARY KEY (`MaterialID`),
  KEY `idx_rawmaterial_price` (`SupplierID`,`MaterialPrice`),
  CONSTRAINT `rawmaterial_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `Supplier` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RawMaterial`
--

LOCK TABLES `RawMaterial` WRITE;
/*!40000 ALTER TABLE `RawMaterial` DISABLE KEYS */;
INSERT INTO `RawMaterial` VALUES (701,'Microprocessor','The brain of electronic devices, composed of silicon and various conductive materials.',50.00,100,601),(702,'Circuit Board','Printed circuit board (PCB) for connecting electronic components and providing electrical pathways.',20.00,200,602),(703,'LCD Screen','Liquid crystal display (LCD) panel for visual output in electronic devices.',30.00,150,603),(704,'Battery Cell','Rechargeable lithium-ion battery cell for powering portable electronic devices.',40.00,120,604),(705,'LED Component','Light-emitting diode (LED) component for energy-efficient lighting applications.',15.00,250,605),(706,'Semiconductor','Semiconductor material such as silicon for electronic components and integrated circuits.',25.00,180,606),(707,'Memory Module','Random access memory (RAM) module for storing temporary data in electronic devices.',35.00,170,607),(708,'Sensor Chip','Integrated sensor chip for detecting and measuring physical phenomena in electronic devices.',18.00,220,608),(709,'Connector Port','Multi-pin connector port for facilitating data transfer and charging in electronic devices.',45.00,130,609),(710,'Capacitor','Capacitor component for storing and releasing electrical energy in electronic circuits.',60.00,100,610),(711,'Resistor','Resistor component for regulating current flow and voltage levels in electronic circuits.',55.00,110,611),(712,'Transistor','Transistor device for amplifying or switching electronic signals in circuits.',70.00,90,612),(713,'Antenna','Wireless antenna for transmitting and receiving electromagnetic signals in electronic devices.',20.00,200,613),(714,'Speaker Driver','Audio speaker driver unit for producing sound output in electronic devices.',25.00,180,614),(715,'Camera Module','Image sensor and lens module for capturing photos and videos in electronic devices.',30.00,150,615),(716,'Touchscreen Panel','Touch-sensitive screen panel for interactive input and control in electronic devices.',40.00,120,616),(717,'Heat Sink','Heat sink component for dissipating heat generated by electronic components.',50.00,100,617),(718,'Fan Blade','Rotating fan blade for cooling electronic components and improving airflow in devices.',45.00,130,618),(719,'Conductive Paste','Conductive paste material for bonding and connecting electronic components on PCBs.',35.00,170,619),(720,'Shielding Foil','Electromagnetic shielding foil for protecting electronic components from interference.',80.00,80,620),(721,'Heating Element','High-efficiency heating element for rapid and even cooking in air fryers.',40.00,100,608),(722,'Fan Motor','Powerful fan motor for circulating hot air and ensuring uniform cooking in air fryers.',35.00,120,608),(723,'Control Panel','User-friendly control panel with buttons and display for setting cooking functions and monitoring temperature.',30.00,150,608),(724,'Cooking Basket','Non-stick cooking basket for holding food items during air frying.',25.00,200,608),(725,'Outer Casing','Durable outer casing made of heat-resistant material for housing internal components and providing safety.',50.00,80,608),(726,'Air Intake Vent','Air intake vent for allowing fresh air to enter the air fryer and facilitate air circulation.',20.00,180,608),(727,'Temperature Sensor','Temperature sensor for measuring and regulating the cooking temperature inside the air fryer.',15.00,250,608),(728,'Timer Mechanism','Timer mechanism for setting cooking duration and automatically turning off the air fryer.',20.00,200,608);
/*!40000 ALTER TABLE `RawMaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supplier`
--

DROP TABLE IF EXISTS `Supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supplier` (
  `SupplierID` int NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `SupplierEmail` varchar(255) NOT NULL,
  `SupplierCity` varchar(255) NOT NULL,
  `SupplierState` varchar(255) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `SupplierContact` varchar(20) NOT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supplier`
--

LOCK TABLES `Supplier` WRITE;
/*!40000 ALTER TABLE `Supplier` DISABLE KEYS */;
INSERT INTO `Supplier` VALUES (601,'Benjamin','Johnson','benjamin.johnson@example.com','San Francisco','CA','94101','555-101-1111'),(602,'Sophia','Williams','sophia.williams@example.com','Miami','FL','33101','555-206-2222'),(603,'Ethan','Brown','ethan.brown@example.com','Portland','OR','97201','555-603-3333'),(604,'Isabella','Jones','isabella.jones@example.com','Denver','CO','80202','555-134-4444'),(605,'William','Miller','william.miller@example.com','Seattle','WA','98102','555-051-5555'),(606,'Emma','Davis','emma.davis@example.com','Austin','TX','78702','555-376-6666'),(607,'James','Garcia','james.garcia@example.com','Chicago','IL','60602','555-071-7777'),(608,'Olivia','Martinez','olivia.martinez@example.com','New Orleans','LA','70112','555-180-8888'),(609,'Alexander','Hernandez','alexander.hernandez@example.com','Las Vegas','NV','89101','755-199-9999'),(610,'Amelia','Lopez','amelia.lopez@example.com','San Diego','CA','92102','055-121-1212'),(611,'Michael','Gonzalez','michael.gonzalez@example.com','Atlanta','GA','30301','455-232-2323'),(612,'Mia','Wilson','mia.wilson@example.com','Philadelphia','PA','19102','855-143-3434'),(613,'Daniel','Taylor','daniel.taylor@example.com','Boston','MA','02102','455-404-4545'),(614,'Charlotte','Thomas','charlotte.thomas@example.com','Houston','TX','77002','155-505-5656'),(615,'Matthew','Harris','matthew.harris@example.com','Phoenix','AZ','85002','505-666-6767'),(616,'Sofia','Walker','sofia.walker@example.com','Dallas','TX','75202','535-707-7878'),(617,'Jackson','Moore','jackson.moore@example.com','San Antonio','TX','78202','505-891-7989'),(618,'Lily','King','lily.king@example.com','Los Angeles','CA','90002','565-109-1909'),(619,'Lucas','Lee','lucas.lee@example.com','New York','NY','10002','555-929-2919'),(620,'Avery','Perez','avery.perez@example.com','Washington','DC','20002','155-229-1929');
/*!40000 ALTER TABLE `Supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `suppliersintx_ca`
--

DROP TABLE IF EXISTS `suppliersintx_ca`;
/*!50001 DROP VIEW IF EXISTS `suppliersintx_ca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `suppliersintx_ca` AS SELECT 
 1 AS `SupplierID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `SupplierEmail`,
 1 AS `SupplierCity`,
 1 AS `SupplierState`,
 1 AS `Zipcode`,
 1 AS `SupplierContact`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplierwithmultiplematerials`
--

DROP TABLE IF EXISTS `supplierwithmultiplematerials`;
/*!50001 DROP VIEW IF EXISTS `supplierwithmultiplematerials`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplierwithmultiplematerials` AS SELECT 
 1 AS `MaterialName`,
 1 AS `MaterialDescription`,
 1 AS `MaterialPrice`,
 1 AS `MaterialQuantity`,
 1 AS `SupplierName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'ManufProjectDump'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerByState` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomerByState`(
    IN p_CustomerState VARCHAR(255)
)
BEGIN
    SELECT * FROM Customer WHERE CustomerState = p_CustomerState;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmployeesByDepartment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeesByDepartment`(
    IN p_DepartmentID INT
)
BEGIN
    SELECT * FROM Employee WHERE DepartmentID = p_DepartmentID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetOrderDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrderDetails`(
    IN p_OrderID INT
)
BEGIN
    SELECT o.OrderID, o.OrderDate, o.OrderStatus,o.TotalAmount,
           p.ProductID,
           c.CustomerID
    FROM `Order` o
    INNER JOIN Product p ON o.ProductID = p.ProductID
    INNER JOIN Customer c ON o.CustomerID = c.CustomerID
    WHERE o.OrderID = p_OrderID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRawMaterialsBySupplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRawMaterialsBySupplier`(
    IN p_SupplierID INT
)
BEGIN
    SELECT * FROM RawMaterial WHERE SupplierID = p_SupplierID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSpecificCustomerById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSpecificCustomerById`(
    IN p_CustomerID INT
)
BEGIN
    SELECT * FROM Customer WHERE CustomerID = p_CustomerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSuppliersByNameAndCity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSuppliersByNameAndCity`(
    IN p_FirstName VARCHAR(255),
    IN p_LastName VARCHAR(255),
    IN p_SupplierCity VARCHAR(255)
)
BEGIN
    SELECT * FROM Supplier WHERE FirstName = p_FirstName AND LastName = p_LastName AND SupplierCity = p_SupplierCity;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `ManufProjectDump`
--

USE `ManufProjectDump`;

--
-- Final view structure for view `customerorders`
--

/*!50001 DROP VIEW IF EXISTS `customerorders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerorders` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`FirstName` AS `FirstName`,`c`.`LastName` AS `LastName`,`o`.`OrderID` AS `OrderID`,`o`.`OrderDate` AS `OrderDate`,`o`.`OrderStatus` AS `OrderStatus`,`o`.`TotalAmount` AS `TotalAmount` from (`customer` `c` join `order` `o` on((`c`.`CustomerID` = `o`.`CustomerID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerstatesummary`
--

/*!50001 DROP VIEW IF EXISTS `customerstatesummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerstatesummary` AS select `customer`.`CustomerState` AS `CustomerState`,count(0) AS `CustomerCount` from `customer` group by `customer`.`CustomerState` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeedepartment`
--

/*!50001 DROP VIEW IF EXISTS `employeedepartment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeedepartment` AS select `e`.`EmployeeID` AS `EmployeeID`,`e`.`FirstName` AS `FirstName`,`e`.`LastName` AS `LastName`,`e`.`EmployeePosition` AS `EmployeePosition`,`e`.`Salary` AS `Salary`,`d`.`DepartmentName` AS `DepartmentName` from (`employee` `e` join `department` `d` on((`e`.`DepartmentID` = `d`.`DepartmentID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeepurchasedetails`
--

/*!50001 DROP VIEW IF EXISTS `employeepurchasedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeepurchasedetails` AS select `e`.`FirstName` AS `EmployeeFirstName`,`e`.`LastName` AS `EmployeeLastName`,`rm`.`MaterialName` AS `MaterialName`,`rm`.`MaterialPrice` AS `MaterialPrice`,`pu`.`PurchasedQuantity` AS `PurchasedQuantity`,`pu`.`Amount` AS `PurchaseAmount`,`pu`.`PurchaseDate` AS `PurchaseDate` from ((`employee` `e` join `purchase` `pu` on((`e`.`EmployeeID` = `pu`.`EmployeeID`))) join `rawmaterial` `rm` on((`pu`.`MaterialID` = `rm`.`MaterialID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeeswithinsalaryrange`
--

/*!50001 DROP VIEW IF EXISTS `employeeswithinsalaryrange`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeeswithinsalaryrange` AS select `employee`.`EmployeeID` AS `EmployeeID`,concat(`employee`.`FirstName`,' ',`employee`.`LastName`) AS `FullName`,`employee`.`EmployeePosition` AS `Position`,`employee`.`Salary` AS `Salary`,`employee`.`EmployeeContact` AS `Contact`,`employee`.`EmployeeEmail` AS `Email` from `employee` where (`employee`.`Salary` between 50000 and 60000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderdetails`
--

/*!50001 DROP VIEW IF EXISTS `orderdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderdetails` AS select `o`.`OrderID` AS `OrderID`,`o`.`OrderDate` AS `OrderDate`,`p`.`ProductName` AS `ProductName`,`p`.`ProductPrice` AS `ProductPrice`,`op`.`OrderedQuantity` AS `OrderedQuantity`,(`op`.`OrderedQuantity` * `p`.`ProductPrice`) AS `TotalPrice` from ((`order` `o` join `productorder` `op` on((`o`.`OrderID` = `op`.`OrderID`))) join `product` `p` on((`op`.`ProductID` = `p`.`ProductID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ordersbystate`
--

/*!50001 DROP VIEW IF EXISTS `ordersbystate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersbystate` AS select `c`.`CustomerState` AS `CustomerState`,count(`o`.`OrderID`) AS `NumberOfOrders` from (`customer` `c` join `order` `o` on((`c`.`CustomerID` = `o`.`CustomerID`))) group by `c`.`CustomerState` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ordersspecificamount`
--

/*!50001 DROP VIEW IF EXISTS `ordersspecificamount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersspecificamount` AS select `c`.`FirstName` AS `FirstName`,`c`.`LastName` AS `LastName`,`c`.`CustomerCity` AS `CustomerCity`,`c`.`CustomerPhone` AS `CustomerPhone`,`c`.`CustomerEmail` AS `CustomerEmail`,`o`.`TotalAmount` AS `TotalAmount` from (`order` `o` join `customer` `c` on((`o`.`CustomerID` = `c`.`CustomerID`))) where (`o`.`TotalAmount` > 200) order by `o`.`TotalAmount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pendingorders`
--

/*!50001 DROP VIEW IF EXISTS `pendingorders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pendingorders` AS select `o`.`OrderID` AS `OrderID`,`o`.`OrderStatus` AS `OrderStatus`,`o`.`TotalAmount` AS `TotalAmount`,`p`.`ProductName` AS `ProductName` from (`order` `o` join `product` `p` on((`o`.`ProductID` = `p`.`ProductID`))) where (`o`.`OrderStatus` = 'Pending') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `purchasedetails`
--

/*!50001 DROP VIEW IF EXISTS `purchasedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `purchasedetails` AS select `pu`.`PurchaseID` AS `PurchaseID`,`pu`.`PurchaseDate` AS `PurchaseDate`,`pu`.`PurchasedQuantity` AS `PurchasedQuantity`,`pu`.`Amount` AS `Amount`,`e`.`EmployeeID` AS `EmployeeID`,`s`.`SupplierID` AS `SupplierID`,`rm`.`MaterialID` AS `MaterialID` from (((`purchase` `pu` join `employee` `e` on((`pu`.`EmployeeID` = `e`.`EmployeeID`))) join `supplier` `s` on((`pu`.`SupplierID` = `s`.`SupplierID`))) join `rawmaterial` `rm` on((`pu`.`MaterialID` = `rm`.`MaterialID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `suppliersintx_ca`
--

/*!50001 DROP VIEW IF EXISTS `suppliersintx_ca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `suppliersintx_ca` AS select `supplier`.`SupplierID` AS `SupplierID`,`supplier`.`FirstName` AS `FirstName`,`supplier`.`LastName` AS `LastName`,`supplier`.`SupplierEmail` AS `SupplierEmail`,`supplier`.`SupplierCity` AS `SupplierCity`,`supplier`.`SupplierState` AS `SupplierState`,`supplier`.`Zipcode` AS `Zipcode`,`supplier`.`SupplierContact` AS `SupplierContact` from `supplier` where (`supplier`.`SupplierState` in ('TX','CA')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplierwithmultiplematerials`
--

/*!50001 DROP VIEW IF EXISTS `supplierwithmultiplematerials`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplierwithmultiplematerials` AS select `rm`.`MaterialName` AS `MaterialName`,`rm`.`MaterialDescription` AS `MaterialDescription`,`rm`.`MaterialPrice` AS `MaterialPrice`,`rm`.`MaterialQuantity` AS `MaterialQuantity`,concat(`s`.`FirstName`,' ',`s`.`LastName`) AS `SupplierName` from (`rawmaterial` `rm` join `supplier` `s` on((`rm`.`SupplierID` = `s`.`SupplierID`))) where `s`.`SupplierID` in (select `rawmaterial`.`SupplierID` from `rawmaterial` group by `rawmaterial`.`SupplierID` having (count(0) > 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-27 18:17:17
