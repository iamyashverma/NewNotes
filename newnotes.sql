CREATE DATABASE IF NOT EXISTS `newnotes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `newnotes`;

CREATE TABLE IF NOT EXISTS `users` (
	`id` int(10) NOT NULL AUTO_INCREMENT,
    `email` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL,
    `name` varchar(100) NOT NULL,
    PRIMARY KEY(`id`)
	) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `notes` (
	`noteid` int(10) NOT NULL AUTO_INCREMENT,
    `content` varchar(1000) NOT NULL,
    `userid` int(10) NOT NULL,
    PRIMARY KEY(`noteid`),
    CONSTRAINT FOREIGN KEY(`userid`) REFERENCES users(`id`)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;