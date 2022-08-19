-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema nebula
--

CREATE DATABASE IF NOT EXISTS nebula;
USE nebula;

--
-- Definition of table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `remetente` int(16) unsigned NOT NULL,
  `destinatario` int(16) unsigned NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `datahora` datetime NOT NULL,
  `lida` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` (`id`,`remetente`,`destinatario`,`mensagem`,`datahora`,`lida`) VALUES 
 (26,1019,1020,'VGVzdGU=','2022-07-16 11:47:49',0),
 (27,1020,1023,'dGVzdGU=','2020-08-04 10:01:34',0),
 (28,1020,1023,'dGVzdGU=','2022-05-04 10:02:12',0),
 (29,1020,1023,'dGVzdGU=','2022-08-01 10:02:14',0),
 (30,1020,1023,'dGVzdGU=','2022-08-04 10:02:46',0),
 (31,1020,1023,'YQ==','2022-08-04 10:12:38',0),
 (32,1020,1023,'YQ==','2022-08-04 10:12:39',0),
 (33,1020,1023,'YQ==','2022-08-04 10:12:41',0),
 (34,1020,1023,'YQ==','2022-08-04 10:12:43',0),
 (35,1020,1023,'YQ==','2022-08-04 10:12:44',0),
 (36,1020,1023,'YQ==','2022-08-04 10:12:45',0),
 (37,1020,1023,'YQ==','2022-08-04 10:12:47',0),
 (38,1020,1023,'YQ==','2022-08-04 10:12:48',0),
 (39,1020,1023,'YQ==','2022-08-04 10:12:50',0),
 (40,1020,1023,'YQ==','2022-08-04 10:12:51',0),
 (41,1020,1023,'YQ==','2022-08-04 10:12:53',0),
 (42,1020,1022,'dGVzdGU=','2022-08-04 11:02:25',0),
 (43,1020,1022,'dGVzdGU=','2022-08-04 11:07:14',0),
 (44,1020,1022,'dWZh','2022-08-04 11:07:17',0),
 (45,1020,1022,'dGVzdGU=','2022-08-04 11:17:39',0),
 (46,1020,1023,'YQ==','2022-08-04 11:22:08',0),
 (47,1020,1023,'YQ==','2022-08-04 11:22:11',0),
 (48,1020,1023,'YQ==','2022-08-04 11:22:13',0),
 (49,1020,1023,'ZnVuY2lvbm91','2022-08-04 11:23:04',0),
 (50,1020,1023,'Q29tbyBhc3NpbT8/Pw==','2022-08-04 11:23:25',0),
 (51,1020,1023,'YWNlbnRvcyBjZXJ0b3M/','2022-08-04 11:23:30',0),
 (52,1023,1020,'b2k=','2022-08-04 11:32:40',0),
 (53,1020,1023,'YWFhYQ==','2022-08-04 11:32:44',0),
 (54,1020,1023,'bsOjbyBhY3JlZGl0byBuaXNzbw==','2022-08-04 11:32:52',0),
 (55,1020,1023,'aGVoZWhl','2022-08-04 11:32:57',0),
 (56,1020,1023,'YQ==','2022-08-04 11:35:59',0),
 (57,1020,1023,'YQ==','2022-08-04 11:36:01',0),
 (58,1020,1023,'dGVzdGU=','2022-08-04 11:37:09',0),
 (59,1020,1023,'dcOp','2022-08-04 11:37:18',0),
 (60,1020,1023,'aG1t','2022-08-04 11:37:28',0),
 (61,1020,1023,'b2sgbsOpPw==','2022-08-04 11:37:40',0),
 (62,1020,1023,'cHJvbnRp','2022-08-04 11:38:33',0),
 (63,1022,1020,'dGVzdGU=','2022-08-04 12:22:14',0),
 (64,1023,1020,'T2lpaWlpaWlpIQ==','2022-08-04 12:28:52',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;


--
-- Definition of table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(128) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(16) unsigned NOT NULL,
  `post_id` int(64) unsigned NOT NULL,
  `msg` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`,`user_id`,`post_id`,`msg`) VALUES 
 (12,1019,41,'bXRvIGJvbQ=='),
 (13,1022,42,'T2k=');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


--
-- Definition of table `conexoes`
--

DROP TABLE IF EXISTS `conexoes`;
CREATE TABLE `conexoes` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int(16) unsigned NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `valor` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conexoes`
--

/*!40000 ALTER TABLE `conexoes` DISABLE KEYS */;
INSERT INTO `conexoes` (`id`,`id_usuario`,`tipo`,`valor`) VALUES 
 (1,1019,'leaguel','VU5TQyBTYXZhbm5haA=='),
 (2,1023,'leaguel','VU5TQyBTYXZhbm5haA==');
/*!40000 ALTER TABLE `conexoes` ENABLE KEYS */;


--
-- Definition of table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `idmaior` int(16) unsigned NOT NULL,
  `idmenor` int(16) unsigned NOT NULL,
  `maiormenor` int(1) unsigned NOT NULL DEFAULT 0,
  `menormaior` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow`
--

/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` (`id`,`idmaior`,`idmenor`,`maiormenor`,`menormaior`) VALUES 
 (20,1020,1019,1,1),
 (21,1022,1019,1,1),
 (22,1021,1019,1,1),
 (23,1022,1020,1,1),
 (24,1021,1020,1,1),
 (25,1022,1021,1,1),
 (26,1023,1022,1,1),
 (27,1023,1021,1,1),
 (28,1023,1020,1,1);
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;


--
-- Definition of table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` int(16) unsigned NOT NULL,
  `post` int(64) unsigned NOT NULL,
  `validade` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(70) NOT NULL,
  `senha` varchar(70) NOT NULL,
  `codigo_2FA` varchar(16) NOT NULL,
  `validade_2FA` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`email`,`senha`,`codigo_2FA`,`validade_2FA`) VALUES 
 (1020,'9fb9f9cf5134192529735291c76049d3711e9c7a26d397f3e256be7737329299','7c974e7edd20b7e88719f5b6069bf4af7f9df4dcc1da1ab366032c8753efdd0c','URTEVSMAPBKFHOGN',0),
 (1021,'84a341c2fa9591786a95547982467cb6ec38a3e1b8fe50d129f3df07cefaad44','7c974e7edd20b7e88719f5b6069bf4af7f9df4dcc1da1ab366032c8753efdd0c','',0),
 (1022,'d3cb72d8d4d549fb4a554223cd8e3e993ead65bffd29bcb5f086630f81b7369a','7c974e7edd20b7e88719f5b6069bf4af7f9df4dcc1da1ab366032c8753efdd0c','',0),
 (1023,'8365c1a1fd89566b73f7256f420e5888f3872520f61226bc9d3960f2b6e64c74','7c974e7edd20b7e88719f5b6069bf4af7f9df4dcc1da1ab366032c8753efdd0c','OAJFRHNGTIKUEVPL',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(64) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(16) unsigned NOT NULL,
  `tipo` int(1) unsigned NOT NULL DEFAULT 0,
  `midia` varchar(70) DEFAULT NULL,
  `curtidas` int(20) unsigned NOT NULL DEFAULT 0,
  `conteudo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`,`user_id`,`tipo`,`midia`,`curtidas`,`conteudo`) VALUES 
 (42,1023,1,'10231658251604.jpg',0,'VGVzdGU='),
 (43,1022,0,NULL,0,'PGI+IHRlc3RlIDwvYj4='),
 (44,1022,0,NULL,0,'PGE+'),
 (45,1022,0,NULL,0,'aGVoZWhl'),
 (46,1023,1,'10231659626976.jpg',0,'b2xpYQ=='),
 (47,1023,1,'10231659628680.gif',0,'TU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU1NIE1NTU0gTU1NTU0gTU0=');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(16) unsigned NOT NULL DEFAULT 0,
  `usuario` varchar(16) NOT NULL DEFAULT 'Nulo',
  `uid` varchar(4) NOT NULL DEFAULT '1000',
  `bio` varchar(450) DEFAULT 'T2zDoSwgZXUgc291IG5vdm8oYSkgbm8gTmVidWxhIQ==',
  `icon` varchar(20) NOT NULL DEFAULT 'df.png',
  `banner` varchar(20) NOT NULL DEFAULT 'df.jpg',
  `seguindo` int(10) unsigned NOT NULL DEFAULT 0,
  `seguidores` int(10) unsigned NOT NULL DEFAULT 0,
  `tipo` int(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`usuario`,`uid`,`bio`,`icon`,`banner`,`seguindo`,`seguidores`,`tipo`) VALUES 
 (1020,'UNSC Sacramento','4095','RGVzdHJveWVyIFNhY3JhbWVudG8=','10201657894025.jpg','10201657894028.jpg',3,3,0),
 (1021,'UNSC Saratoga','2284','ICBPbMOhLCBldSBzb3Ugbm92byhhKSBubyBOZWJ1bGEhICA=','10211657896222.jpg','10211657896225.jpg',3,3,0),
 (1022,'UNSC Grafton','1530','ID4uPCA=','10221659624510.jpg','10221659624524.jpg',3,3,0),
 (1023,'UNSC Savannah','7825','Q0VPIGRlIHR1ZG8gYXF1aSEgOjM=','10231658246788.jpeg','10231658449774.gif',3,3,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
