/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.12-log : Database - freelance_example
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`freelance_example` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `freelance_example`;

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `answer` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_answer_q` (`question_id`),
  KEY `FK_answer` (`user_id`),
  CONSTRAINT `FK_answer` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_answer_q` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `answer` */

insert  into `answer`(`id`,`user_id`,`question_id`,`answer`) values (1,1,7,'Over 4 years, I have done a lot of project in java using different technologies of spring, Spring IOC, Spring batch, Spring Integration, Spring MVC. I have used hibernate as well but the last project with hibernate I have done  years ago. But I used other ORMs such as Ibatis, Mybatis, JPA, EclipseLink'),(2,1,8,'No I have not full time, but I can provide not less  then 6 hour per day.'),(3,1,9,'I am from Armenia, Timezone is GMT +4, 20-25, I prefer don\'t work on Saturday and Sunday , but  depends on deadline I can work extra  (0-18) '),(4,1,10,'Able to work effectively alone as well as in a team. Ability to adapt easily to the new environment.'),(5,1,11,'Attached'),(6,1,12,'You are already see it :)');

/*Table structure for table `attachment` */

DROP TABLE IF EXISTS `attachment`;

CREATE TABLE `attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `answer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_attachment` (`answer_id`),
  CONSTRAINT `FK_attachment` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attachment` */

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`id`,`text`) values (7,'How many years of experience of Java and Spring, Hibernate?'),(8,'Do you have a full time or part time job.'),(9,' What time of the day / night you are available to do our work\n    (per the time zone of your country).\n    So how many hours during week days - Mon to Friday?\n    So how many hours during week ends - Saturday and Sunday?'),(10,'Any thing good about your self that you like to share...?'),(11,'Your cv / resume. '),(12,'Example HTML5 / JSP, Spring, MY Sql app or Hello World that you did recently.\n    (It is important either you provide a real working url / reference to the actual work that you did or provide any example /\n     HelloWorld example with all the pieces working along with complete instructions for a non programmer to be able to compile \n     and deploy on Eclipse / Maven command line, tomcat, mySql)');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `surname` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`) values (1,'Seryozha','Hovhannisyan','seryozha.hovhannisyan@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
