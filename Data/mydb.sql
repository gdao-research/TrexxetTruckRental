CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `email` varchar(100) NOT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('a.mi@Sedidrisus.org','Benson','Ingrid'),('a.neque@malesuada.com','Turner','Justin'),('ac.orci.Ut@nibh.co.uk','Hurley','Solomon'),('Aliquam.ultrices.iaculis@sit.ca','Mckenzie','Virginia'),('ante.Vivamus.non@eutempor.org','Rivers','Roanna'),('arcu@sodalespurus.edu','Molina','Tamekah'),('at.sem.molestie@lorem.co.uk','Lopez','Neve'),('at@Pellentesquehabitantmorbi.com','Reeves','Alan'),('auctor.ullamcorper.nisl@eu.net','Simmons','Brock'),('augue@mauris.com','Hammond','Murphy'),('blandit.mattis.Cras@euneque.net','Levy','Orson'),('commodo.tincidunt.nibh@metus.co.uk','Short','Iola'),('condimentum@tinciduntDonec.com','Lambert','Madaline'),('congue.a@Vivamus.net','Clarke','Chancellor'),('consectetuer.euismod@nonummyFuscefermentum.ca','Wyatt','Sasha'),('Cras@eratnequenon.edu','Schroeder','Alan'),('Cum.sociis@uterosnon.net','Tran','Colorado'),('diam.at@Craspellentesque.ca','Clay','Whitney'),('dictum@Integer.net','Ingram','Castor'),('dolor@Inornaresagittis.co.uk','Heath','Nash'),('Donec.tempor@risusquis.co.uk','Hodge','Iliana'),('Donec@lectussitamet.edu','Wilkinson','Gage'),('dui@auctorveliteget.edu','Blake','Bianca'),('eget.magna.Suspendisse@Morbimetus.com','Banks','Cain'),('enim.Etiam@Vivamusnonlorem.edu','Hood','Lareina'),('enim@loremvehiculaet.net','Montgomery','Lewis'),('enim@turpisvitaepurus.co.uk','Macias','Jin'),('erat.Vivamus.nisi@ante.ca','Bullock','Eric'),('Etiam@adipiscingligula.net','George','Branden'),('eu.enim@congueIn.edu','Gutierrez','Miranda'),('eu.odio.tristique@Donec.org','Owens','Remedios'),('eu@CrasinterdumNunc.co.uk','Goodman','Lani'),('facilisis.facilisis.magna@anteiaculis.org','Mullins','Dale'),('facilisis@vitaesodalesat.ca','Diaz','Adara'),('felis.orci.adipiscing@infaucibus.org','Weber','Mia'),('fringilla.euismod.enim@bibendum.edu','Sanford','Deanna'),('fringilla@nislelementum.co.uk','Atkins','Vernon'),('Fusce.dolor.quam@sagittisNullam.edu','Morrow','Hyatt'),('Fusce.mollis.Duis@IntegermollisInteger.net','Beach','Ivan'),('iaculis.enim.sit@non.net','Terry','Hector'),('id@ametrisus.edu','Young','Xavier'),('imperdiet.ullamcorper.Duis@erat.co.uk','Curry','Jemima'),('Integer.urna.Vivamus@quamdignissim.com','Gardner','Adele'),('interdum.ligula@odioauctorvitae.net','Rivera','Amelia'),('ipsum.primis.in@massa.com','Richardson','Arden'),('lacus.Quisque@enimSuspendissealiquet.ca','Zamora','Quamar'),('lacus@afacilisis.net','Flowers','Sydnee'),('lacus@ut.ca','Brooks','Shay'),('libero.at@intempus.org','Hebert','Chancellor'),('libero@at.ca','Oneal','Jonah'),('ligula@luctusfelispurus.edu','Lee','Jonah'),('lobortis@enimMaurisquis.ca','Greene','Evelyn'),('Maecenas.mi@feugiat.edu','Hoffman','Ainsley'),('Maecenas@auctor.org','Burris','Charlotte'),('magna@euaugue.co.uk','Suarez','Lyle'),('mauris.blandit@Aeneangravidanunc.co.uk','Caldwell','Stacy'),('Mauris.molestie@magnaetipsum.net','Knox','Erin'),('metus.In@molestiedapibusligula.ca','Buckner','Palmer'),('molestie.sodales.Mauris@gravidanonsollicitudin.ca','Melendez','Murphy'),('morbi.tristique@perconubia.co.uk','Jimenez','Dean'),('Nam.interdum.enim@dolor.org','Bates','Genevieve'),('nibh@dignissimMaecenasornare.ca','Garcia','Violet'),('Nulla.eget.metus@nec.com','Heath','Kareem'),('nulla.In.tincidunt@duiSuspendisse.org','Huber','Melvin'),('Nulla@egestas.net','Morrow','Ezekiel'),('Nunc.laoreet.lectus@vitaepurus.net','Harding','Jana'),('Nunc.pulvinar.arcu@sagittislobortismauris.edu','Holmes','Fatima'),('Nunc.pulvinar@magnaSed.co.uk','Gilmore','Alden'),('nunc@dictum.edu','Ashley','Rylee'),('odio.tristique@feugiat.net','Rush','Kenneth'),('ornare.lectus@leoVivamus.org','Cherry','Jonah'),('pede.ultrices@Nunc.ca','Patton','Lamar'),('pellentesque@purusaccumsaninterdum.org','Vaughn','Grant'),('penatibus@sed.org','Carson','Odessa'),('pharetra.felis@Nam.net','Herman','Kevin'),('Praesent.luctus@auctorvelit.org','Dickson','Troy'),('Proin@anteipsum.co.uk','Gallegos','Gregory'),('quam.quis@velitCras.ca','Mcmahon','Malik'),('Quisque@vulputatelacus.net','Marks','Lila'),('sagittis.felis@semper.ca','Griffin','Evelyn'),('sapien@ligulaDonecluctus.com','Raymond','Katell'),('scelerisque.mollis.Phasellus@nisidictumaugue.com','Dale','Ian'),('Sed.eu@quis.com','Bowman','Akeem'),('sit.amet@lectusjusto.org','Bryan','Ebony'),('sit@cursus.co.uk','Branch','Ariel'),('sit@ridiculus.net','Wilkins','Raphael'),('sociis.natoque@nibhQuisque.ca','Roberts','Virginia'),('sodales.purus@nequeSed.com','Hester','Frances'),('tellus.justo@elitNullafacilisi.co.uk','Wooten','Adrian'),('tellus.non.magna@arcu.ca','Stout','Rose'),('tempus@interdum.edu','Hobbs','Hector'),('turpis@antebibendum.edu','Mcintosh','Leah'),('ultrices.sit@habitantmorbi.edu','King','Oren'),('ultricies.sem.magna@Morbinonsapien.com','Harvey','Hoyt'),('ut.erat@ligula.edu','Gilmore','Hanae'),('vel@scelerisquelorem.org','Clements','Cherokee'),('Vestibulum.ante@auctorquis.org','Sargent','Lacota'),('Vestibulum@porttitor.com','Estes','Megan'),('Vestibulum@utcursusluctus.net','Vincent','Chandler'),('vitae.sodales.at@Aeneaneuismodmauris.net','Haynes','Vernon');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment` (
  `Reservation_User_userName` varchar(20) NOT NULL,
  `Reservation_Truck_VIN` varchar(20) NOT NULL,
  `Reservation_reservationID` varchar(45) NOT NULL,
  `payID` varchar(45) NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`payID`),
  KEY `fk_Payment_Reservation1_idx` (`Reservation_User_userName`,`Reservation_Truck_VIN`,`Reservation_reservationID`),
  CONSTRAINT `fk_Payment_Reservation1` FOREIGN KEY (`Reservation_User_userName`, `Reservation_Truck_VIN`, `Reservation_reservationID`) REFERENCES `Reservation` (`User_userName`, `Truck_VIN`, `reservationID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES ('user0','TH3JYMN3O8R17SJI1','res0','pay0',583.33),('user4','VHLEMD973VZFDJ5VG','res1','pay1',2220.17),('user44','7FP84C8LT1HZRTQAJ','res10','pay10',1457.17),('user45','0VEK4ULAQMC66PXOX','res11','pay11',1416.33),('user48','24ZBWINVYRHLGFX7X','res12','pay12',3344.83),('user53','CM1ZCBS24ETVM9O1C','res13','pay13',2524.67),('user56','BTCMLR7UE782RVQFZ','res14','pay14',1017.33),('user62','1U2G2WYVQ5C55DXE6','res15','pay15',2500.17),('user63','QR6NVG8XZ5U56LSI2','res16','pay16',3314.50),('user72','E1QY7M98ELOZQIN45','res17','pay17',1124.67),('user73','ADJOO4C5DZHHK61J7','res18','pay18',1604.17),('user77','Z4D6J78BTZGKK3HRE','res19','pay19',915.83),('user6','HFUO0HL1QYWFF9KDM','res2','pay2',1841.00),('user79','HKNJLUCWY9YA4LG31','res20','pay20',1044.17),('user81','68C0MXSCENEBOXNF1','res21','pay21',3098.67),('user82','KYA5WKECJGYQ7LEP2','res22','pay22',1764.00),('user84','M7N3XIC4KL35KCX59','res23','pay23',360.50),('user85','PXQ0HSB8M6HXQ6S0X','res24','pay24',1733.67),('user86','GP4PFS1OGNB4GUAGO','res25','pay25',2654.17),('user91','8NE9UEI6WSIZD0SEA','res26','pay26',1913.33),('user92','EWZ95D2QL93UC0PAW','res27','pay27',704.67),('user97','FXBDSB46JXS184BH9','res28','pay28',262.50),('user99','XF3N2WUL2XF843UNZ','res29','pay29',2357.83),('user15','15ASII3SBG6C1MGJ7','res3','pay3',1242.50),('user18','5PPRGGUV2GOF5WTZ0','res4','pay4',2672.83),('user19','K9YE3W0CGBF42I7KU','res5','pay5',2920.17),('user20','WJ0AGQ1FDRA5HG4JS','res6','pay6',1314.83),('user25','794NYD7VMJTLL1ZDS','res7','pay7',1949.50),('user26','22FFTJ38HNQ4PJAPB','res8','pay8',2264.50),('user34','DRXOOOY3J1X8G0SZF','res9','pay9',1011.50);
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reservation` (
  `User_userName` varchar(20) NOT NULL,
  `Truck_VIN` varchar(20) NOT NULL,
  `reservationID` varchar(45) NOT NULL,
  `fromLocation` varchar(45) DEFAULT NULL,
  `toLocation` varchar(45) DEFAULT NULL,
  `rentMinutes` int(11) DEFAULT NULL,
  `fromDate` datetime DEFAULT NULL,
  `toDate` datetime DEFAULT NULL,
  PRIMARY KEY (`User_userName`,`Truck_VIN`,`reservationID`),
  KEY `fk_User_has_Truck_Truck1_idx` (`Truck_VIN`),
  KEY `fk_User_has_Truck_User1_idx` (`User_userName`),
  CONSTRAINT `fk_User_has_Truck_Truck1` FOREIGN KEY (`Truck_VIN`) REFERENCES `Truck` (`VIN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Truck_User1` FOREIGN KEY (`User_userName`) REFERENCES `User` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES ('user0','TH3JYMN3O8R17SJI1','res0','Louisville','Greensboro',500,'2018-01-30 23:32:40','2018-01-31 07:52:40'),('user15','15ASII3SBG6C1MGJ7','res3','Greensboro','Baltimore',1065,'2018-01-19 09:50:33','2018-01-20 03:35:33'),('user18','5PPRGGUV2GOF5WTZ0','res4','Raleigh','Chicago',2291,'2018-02-20 14:48:33','2018-02-22 04:59:33'),('user19','K9YE3W0CGBF42I7KU','res5','Boston','Orlando',2503,'2018-05-02 05:23:29','2018-05-03 23:06:29'),('user20','WJ0AGQ1FDRA5HG4JS','res6','Miami','New Orleans',1127,'2018-04-27 12:20:26','2018-04-28 07:07:26'),('user25','794NYD7VMJTLL1ZDS','res7','Baltimore','Miami',1671,'2018-01-11 10:11:57','2018-01-12 14:02:57'),('user26','22FFTJ38HNQ4PJAPB','res8','Greensboro','Nashville',1941,'2018-02-14 07:38:31','2018-02-15 15:59:31'),('user34','DRXOOOY3J1X8G0SZF','res9','Greensboro','St. Louis',867,'2018-06-03 14:48:44','2018-06-04 05:15:44'),('user4','VHLEMD973VZFDJ5VG','res1','Nashville','New York',1903,'2018-03-10 03:10:27','2018-03-11 11:53:27'),('user44','7FP84C8LT1HZRTQAJ','res10','Birmingham','Boston',1249,'2018-01-06 17:33:21','2018-01-07 14:22:21'),('user45','0VEK4ULAQMC66PXOX','res11','Louisville','Savannah',1214,'2018-08-11 16:30:41','2018-08-12 12:44:41'),('user48','24ZBWINVYRHLGFX7X','res12','Birmingham','Louisville',2867,'2018-01-24 01:45:27','2018-01-26 01:32:27'),('user53','CM1ZCBS24ETVM9O1C','res13','Charlotte','New Orleans',2164,'2018-07-03 00:05:56','2018-07-04 12:09:56'),('user56','BTCMLR7UE782RVQFZ','res14','Pittsburgh','Baltimore',872,'2018-05-08 18:22:22','2018-05-09 08:54:22'),('user6','HFUO0HL1QYWFF9KDM','res2','Birmingham','Indianapolis',1578,'2018-05-21 19:43:05','2018-05-22 22:01:05'),('user62','1U2G2WYVQ5C55DXE6','res15','Columbus','Greensboro',2143,'2018-04-01 08:27:02','2018-04-02 20:10:02'),('user63','QR6NVG8XZ5U56LSI2','res16','Charleston','Miami',2841,'2018-06-02 12:13:57','2018-06-04 11:34:57'),('user72','E1QY7M98ELOZQIN45','res17','Pittsburgh','Durham',964,'2018-07-29 04:41:16','2018-07-29 20:45:16'),('user73','ADJOO4C5DZHHK61J7','res18','Indianapolis','Greensboro',1375,'2018-01-12 11:07:06','2018-01-13 10:02:06'),('user77','Z4D6J78BTZGKK3HRE','res19','Cleveland','Birmingham',785,'2018-03-29 23:02:51','2018-03-30 12:07:51'),('user79','HKNJLUCWY9YA4LG31','res20','Miami','Charlotte',895,'2018-08-05 17:25:13','2018-08-06 08:20:13'),('user81','68C0MXSCENEBOXNF1','res21','St. Louis','Detroit',2656,'2018-06-15 00:30:58','2018-06-16 20:46:58'),('user82','KYA5WKECJGYQ7LEP2','res22','Nashville','Houston',1512,'2018-04-04 11:32:19','2018-04-05 12:44:19'),('user84','M7N3XIC4KL35KCX59','res23','New York','Houston',309,'2018-01-09 22:35:37','2018-01-10 03:44:37'),('user85','PXQ0HSB8M6HXQ6S0X','res24','Memphis','Philadelphia',1486,'2018-04-05 07:04:41','2018-04-06 07:50:41'),('user86','GP4PFS1OGNB4GUAGO','res25','Louisville','Birmingham',2275,'2018-07-02 17:32:56','2018-07-04 07:27:56'),('user91','8NE9UEI6WSIZD0SEA','res26','Columbus','Raleigh',1640,'2018-03-21 15:39:26','2018-03-22 18:59:26'),('user92','EWZ95D2QL93UC0PAW','res27','Birmingham','Baltimore',604,'2018-01-25 15:52:46','2018-01-26 01:56:46'),('user97','FXBDSB46JXS184BH9','res28','Pittsburgh','Detroit',225,'2018-08-01 05:54:00','2018-08-01 09:39:00'),('user99','XF3N2WUL2XF843UNZ','res29','Miami','Nashville',2021,'2018-08-17 08:46:38','2018-08-18 18:27:38');
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Truck`
--

DROP TABLE IF EXISTS `Truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Truck` (
  `VIN` varchar(20) NOT NULL,
  `isAvailable` int(11) DEFAULT NULL,
  `truckLocation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Truck`
--

LOCK TABLES `Truck` WRITE;
/*!40000 ALTER TABLE `Truck` DISABLE KEYS */;
INSERT INTO `Truck` VALUES ('02UAJ11URLAB67MF5',1,'Charlotte'),('0LMEHG3Q57K2EAJX0',1,'Charlotte'),('0UZQIYT2S56MK9SM7',1,'Charlotte'),('0VEK4ULAQMC66PXOX',0,'Savannah'),('13IOE0YUZK2KU87JC',1,'Charlotte'),('14UK9W4TO5ZZJXF6S',1,'Charlotte'),('15ASII3SBG6C1MGJ7',1,'Baltimore'),('15XCJ4NMUGW741PZ1',1,'Charlotte'),('17K5589RZ2O8W33P9',1,'Charlotte'),('1QFBDS4IYOASGHBKP',1,'Charlotte'),('1U2G2WYVQ5C55DXE6',1,'Greensboro'),('1UOAMZDPILZ1CGAR7',1,'Charlotte'),('1X32JL61YH2IXTR69',1,'Charlotte'),('22FFTJ38HNQ4PJAPB',1,'Nashville'),('24ZBWINVYRHLGFX7X',1,'Louisville'),('2ESKPKXPT0HYGNBIX',1,'Charlotte'),('3H28ZFKE531PF6JGO',1,'Charlotte'),('3JLGNQ766YG51URE2',1,'Charlotte'),('43SX7HTPTE8YAJ3CJ',1,'Charlotte'),('44J7CFYLHBA1Y51R4',1,'Charlotte'),('4BFKJ1K7ITA5Q3W3H',1,'Charlotte'),('4CF3II445XBNQ7T2S',1,'Charlotte'),('4EZDUJHKO92WJJ1KM',1,'Charlotte'),('4Q81S2AP3OTSTTCTU',1,'Charlotte'),('5PPRGGUV2GOF5WTZ0',1,'Chicago'),('5W9KCP5GTM2EI7DYT',1,'Charlotte'),('65HLVXTCID59HGBRG',1,'Charlotte'),('68C0MXSCENEBOXNF1',0,'Detroit'),('6WNIXUUB0QBRD42EJ',1,'Charlotte'),('78PG204L3KS8USNYQ',1,'Charlotte'),('794NYD7VMJTLL1ZDS',1,'Miami'),('7FP84C8LT1HZRTQAJ',1,'Boston'),('8FHTQ8XBRFNK1SPBS',1,'Charlotte'),('8NE9UEI6WSIZD0SEA',1,'Raleigh'),('9F2OZ87CUKUN6SO4W',1,'Charlotte'),('9RN4SVQY6VCPC65WO',1,'Charlotte'),('ADJOO4C5DZHHK61J7',1,'Greensboro'),('AMR2GWZKZKCEZLE6Q',1,'Charlotte'),('ASUYMPMA8SCH0EDQ6',1,'Charlotte'),('AT2DPYUAAQ85K02AY',1,'Charlotte'),('B8GQB8Q6GW1DFHFTU',1,'Charlotte'),('BMON68F6YOGENJJV5',1,'Charlotte'),('BTCMLR7UE782RVQFZ',0,'Baltimore'),('BVD1CATD0QPUAA9UY',1,'Charlotte'),('CM1ZCBS24ETVM9O1C',0,'New Orleans'),('DRXOOOY3J1X8G0SZF',0,'St. Louis'),('E1QY7M98ELOZQIN45',0,'Durham'),('E24CL3ROI1KX506K3',1,'Charlotte'),('EC2I7B7TBNU1RBRKP',1,'Charlotte'),('EWZ95D2QL93UC0PAW',1,'Baltimore'),('FI9CNZGYX3GJQZJR4',1,'Charlotte'),('FXBDSB46JXS184BH9',0,'Detroit'),('G9T33GZJGI82E6YL2',1,'Charlotte'),('GP4PFS1OGNB4GUAGO',0,'Birmingham'),('GUNAG9TC5GUTZHOKH',1,'Charlotte'),('H3X3FPPV0VMAH3IHR',1,'Charlotte'),('HEPMMQ1H60C7GDTZ3',1,'Charlotte'),('HFUO0HL1QYWFF9KDM',0,'Indianapolis'),('HKNJLUCWY9YA4LG31',0,'Charlotte'),('I1U0IGFU6XS3OXAAD',1,'Charlotte'),('I81F6CLBL4NU9Q9FL',1,'Charlotte'),('J67VKKVQZXTLNHO7V',1,'Charlotte'),('JFAOZXEB3BWE11DIE',1,'Charlotte'),('K4R0VURDTF19L41XC',1,'Charlotte'),('K9YE3W0CGBF42I7KU',0,'Orlando'),('KHLSTR6WTXXER9RY4',1,'Charlotte'),('KLSH7B3X2J9H1D3MB',1,'Charlotte'),('KS9BNH6M5BP55TY1Q',1,'Charlotte'),('KYA5WKECJGYQ7LEP2',1,'Houston'),('LTNHK06QYBDSZNMX5',1,'Charlotte'),('LUIXGTJZFR19D9ABQ',1,'Charlotte'),('M7N3XIC4KL35KCX59',1,'Houston'),('NI2GVAUK1MO206EQ3',1,'Charlotte'),('OEU1ZAVVSB07I63DT',1,'Charlotte'),('P6UO38J3YI86YZPPZ',1,'Charlotte'),('PGLJCJCGVKCSEFGW7',1,'Charlotte'),('PUAVBWVKVONBEF5FM',1,'Charlotte'),('PXQ0HSB8M6HXQ6S0X',1,'Philadelphia'),('PZJXRJFHE2EX1X28O',1,'Charlotte'),('Q7D5ZWPUS8XT1C19X',1,'Charlotte'),('QR6NVG8XZ5U56LSI2',0,'Miami'),('REI27B5JQBXMFKAE7',1,'Charlotte'),('ROR73BM3H5BY51SMC',1,'Charlotte'),('TFDKY0PGIO1DGA9UA',1,'Charlotte'),('TH3JYMN3O8R17SJI1',1,'Greensboro'),('VCSNX7BAVBQZN9E3B',1,'Charlotte'),('VHLEMD973VZFDJ5VG',1,'New York'),('VLV9UW14D2IWP7A2V',1,'Charlotte'),('VPOFBGRWWZB7RWCSW',1,'Charlotte'),('WFFQRJX7KL9NCZCNE',1,'Charlotte'),('WJ0AGQ1FDRA5HG4JS',0,'New Orleans'),('WSUAEPYRS4VSAXDWA',1,'Charlotte'),('WU7WLUP90F9NIVM8T',1,'Charlotte'),('XF3N2WUL2XF843UNZ',0,'Nashville'),('XLTQMR7KVXF6OENKY',1,'Charlotte'),('YAECEAJLGTT1N3UKY',1,'Charlotte'),('YIRWQ6NFJ54WAD1BV',1,'Charlotte'),('YUW5UV2M7A91J0PZ7',1,'Charlotte'),('Z4D6J78BTZGKK3HRE',1,'Birmingham'),('Z52NTBO9O3UKN0YXV',1,'Charlotte');
/*!40000 ALTER TABLE `Truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TruckDeleted`
--

DROP TABLE IF EXISTS `TruckDeleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TruckDeleted` (
  `VIN` varchar(17) NOT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TruckDeleted`
--

LOCK TABLES `TruckDeleted` WRITE;
/*!40000 ALTER TABLE `TruckDeleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `TruckDeleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userName` varchar(20) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `isVIP` int(11) DEFAULT NULL,
  `Customer_email` varchar(100) NOT NULL,
  PRIMARY KEY (`userName`),
  KEY `fk_User_Customer_idx` (`Customer_email`),
  CONSTRAINT `fk_User_Customer` FOREIGN KEY (`Customer_email`) REFERENCES `Customer` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('user0','password0',0,'tellus.justo@elitNullafacilisi.co.uk'),('user1','password1',0,'sapien@ligulaDonecluctus.com'),('user10','password10',0,'id@ametrisus.edu'),('user11','password11',0,'eu.odio.tristique@Donec.org'),('user12','password12',0,'augue@mauris.com'),('user13','password13',0,'condimentum@tinciduntDonec.com'),('user14','password14',0,'enim@loremvehiculaet.net'),('user15','password15',0,'Vestibulum@utcursusluctus.net'),('user16','password16',0,'Vestibulum@porttitor.com'),('user17','password17',0,'Etiam@adipiscingligula.net'),('user18','password18',0,'sit@cursus.co.uk'),('user19','password19',0,'turpis@antebibendum.edu'),('user2','password2',0,'Nunc.pulvinar@magnaSed.co.uk'),('user20','password20',0,'Nulla@egestas.net'),('user21','password21',0,'facilisis@vitaesodalesat.ca'),('user22','password22',0,'eu@CrasinterdumNunc.co.uk'),('user23','password23',0,'dolor@Inornaresagittis.co.uk'),('user24','password24',0,'felis.orci.adipiscing@infaucibus.org'),('user25','password25',0,'libero.at@intempus.org'),('user26','password26',0,'iaculis.enim.sit@non.net'),('user27','password27',0,'Aliquam.ultrices.iaculis@sit.ca'),('user28','password28',0,'sodales.purus@nequeSed.com'),('user29','password29',0,'vitae.sodales.at@Aeneaneuismodmauris.net'),('user3','password3',0,'sit@ridiculus.net'),('user30','password30',0,'congue.a@Vivamus.net'),('user31','password31',0,'metus.In@molestiedapibusligula.ca'),('user32','password32',0,'lacus.Quisque@enimSuspendissealiquet.ca'),('user33','password33',0,'at@Pellentesquehabitantmorbi.com'),('user34','password34',0,'facilisis.facilisis.magna@anteiaculis.org'),('user35','password35',0,'Fusce.mollis.Duis@IntegermollisInteger.net'),('user36','password36',0,'sit.amet@lectusjusto.org'),('user37','password37',0,'odio.tristique@feugiat.net'),('user38','password38',0,'morbi.tristique@perconubia.co.uk'),('user39','password39',0,'pede.ultrices@Nunc.ca'),('user4','password4',0,'sociis.natoque@nibhQuisque.ca'),('user40','password40',0,'molestie.sodales.Mauris@gravidanonsollicitudin.ca'),('user41','password41',0,'Maecenas@auctor.org'),('user42','password42',0,'ultricies.sem.magna@Morbinonsapien.com'),('user43','password43',0,'ut.erat@ligula.edu'),('user44','password44',0,'a.neque@malesuada.com'),('user45','password45',0,'Nunc.laoreet.lectus@vitaepurus.net'),('user46','password46',0,'ipsum.primis.in@massa.com'),('user47','password47',0,'eu.enim@congueIn.edu'),('user48','password48',0,'Vestibulum.ante@auctorquis.org'),('user49','password49',0,'quam.quis@velitCras.ca'),('user5','password5',0,'Proin@anteipsum.co.uk'),('user50','password50',0,'blandit.mattis.Cras@euneque.net'),('user51','password51',0,'consectetuer.euismod@nonummyFuscefermentum.ca'),('user52','password52',0,'Maecenas.mi@feugiat.edu'),('user53','password53',0,'ligula@luctusfelispurus.edu'),('user54','password54',0,'Cras@eratnequenon.edu'),('user55','password55',0,'ac.orci.Ut@nibh.co.uk'),('user56','password56',0,'fringilla.euismod.enim@bibendum.edu'),('user57','password57',0,'ultrices.sit@habitantmorbi.edu'),('user58','password58',0,'penatibus@sed.org'),('user59','password59',0,'arcu@sodalespurus.edu'),('user6','password6',0,'Nunc.pulvinar.arcu@sagittislobortismauris.edu'),('user60','password60',0,'sagittis.felis@semper.ca'),('user61','password61',0,'erat.Vivamus.nisi@ante.ca'),('user62','password62',0,'magna@euaugue.co.uk'),('user63','password63',0,'vel@scelerisquelorem.org'),('user64','password64',0,'tellus.non.magna@arcu.ca'),('user65','password65',0,'commodo.tincidunt.nibh@metus.co.uk'),('user66','password66',0,'nibh@dignissimMaecenasornare.ca'),('user67','password67',0,'Sed.eu@quis.com'),('user68','password68',0,'auctor.ullamcorper.nisl@eu.net'),('user69','password69',0,'imperdiet.ullamcorper.Duis@erat.co.uk'),('user7','password7',0,'lacus@ut.ca'),('user70','password70',0,'eget.magna.Suspendisse@Morbimetus.com'),('user71','password71',0,'Fusce.dolor.quam@sagittisNullam.edu'),('user72','password72',0,'lobortis@enimMaurisquis.ca'),('user73','password73',0,'dui@auctorveliteget.edu'),('user74','password74',0,'Quisque@vulputatelacus.net'),('user75','password75',0,'ornare.lectus@leoVivamus.org'),('user76','password76',0,'pharetra.felis@Nam.net'),('user77','password77',0,'Praesent.luctus@auctorvelit.org'),('user78','password78',0,'interdum.ligula@odioauctorvitae.net'),('user79','password79',0,'dictum@Integer.net'),('user8','password8',0,'a.mi@Sedidrisus.org'),('user80','password80',0,'Nulla.eget.metus@nec.com'),('user81','password81',0,'nulla.In.tincidunt@duiSuspendisse.org'),('user82','password82',0,'Donec@lectussitamet.edu'),('user83','password83',0,'diam.at@Craspellentesque.ca'),('user84','password84',0,'nunc@dictum.edu'),('user85','password85',0,'libero@at.ca'),('user86','password86',0,'Mauris.molestie@magnaetipsum.net'),('user87','password87',0,'Cum.sociis@uterosnon.net'),('user88','password88',0,'pellentesque@purusaccumsaninterdum.org'),('user89','password89',0,'scelerisque.mollis.Phasellus@nisidictumaugue.com'),('user9','password9',0,'enim@turpisvitaepurus.co.uk'),('user90','password90',0,'ante.Vivamus.non@eutempor.org'),('user91','password91',0,'enim.Etiam@Vivamusnonlorem.edu'),('user92','password92',0,'Integer.urna.Vivamus@quamdignissim.com'),('user93','password93',0,'lacus@afacilisis.net'),('user94','password94',0,'Donec.tempor@risusquis.co.uk'),('user95','password95',0,'mauris.blandit@Aeneangravidanunc.co.uk'),('user96','password96',0,'fringilla@nislelementum.co.uk'),('user97','password97',0,'Nam.interdum.enim@dolor.org'),('user98','password98',0,'tempus@interdum.edu'),('user99','password99',0,'at.sem.molestie@lorem.co.uk');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01  0:27:16
