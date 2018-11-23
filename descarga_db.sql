/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.22-MariaDB : Database - descarga_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`descarga_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `descarga_db`;

/*Table structure for table `descarga` */

DROP TABLE IF EXISTS `descarga`;

CREATE TABLE `descarga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prioridad` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(198) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `ruta` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completada` tinyint(1) NOT NULL,
  `privada` tinyint(1) NOT NULL DEFAULT '0',
  `directa` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `completada_en` datetime DEFAULT NULL,
  `pc` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCFE06EF47645AE` (`url`),
  UNIQUE KEY `UNIQ_7FCFE06E989D9B62` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `descarga` */

insert  into `descarga`(`id`,`url`,`prioridad`,`nombre`,`slug`,`descripcion`,`ruta`,`completada`,`privada`,`directa`,`created`,`completada_en`,`pc`,`correo`) values (1,'http://localhost/descarga/web/solicitudes/nueva-solicitud-de-descarga','Baja','mi cosa','mi-cosa','asdadsad',NULL,1,0,0,'2018-02-01 17:29:56',NULL,NULL,'levian@cimab.transnet.cu');

/*Table structure for table `fos_user` */

DROP TABLE IF EXISTS `fos_user`;

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `fos_user` */

insert  into `fos_user`(`id`,`username`,`username_canonical`,`email`,`email_canonical`,`enabled`,`salt`,`password`,`last_login`,`locked`,`expired`,`expires_at`,`confirmation_token`,`password_requested_at`,`roles`,`credentials_expired`,`credentials_expire_at`) values (1,'admin','admin','admin@admin.com','admin@admin.com',1,'219h7qs9tdi8osokc0gkkc8go8g44kk','$2y$13$sq5NGepT1FN1OGLPj03fz.ndvlDgfaPbNHAmWndDVOUc2CqQifAWi','2018-02-01 17:35:14',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
