DROP DATABASE IF EXISTS `problem-2`;
CREATE DATABASE `problem-2`;
USE `problem-2`;
CREATE TABLE `attendance` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`date_of_attendance` DATE NOT NULL
);

CREATE TABLE `homework` (
	`score` INTEGER NOT NULL
);

CREATE TABLE `project` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`names` INTEGER NOT NULL,
	FOREIGN KEY (`names`) REFERENCES `people`(`id`)
);

CREATE TABLE `people` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`attendance` INTEGER NOT NULL,
	`homework` INTEGER NOT NULL,
	`groups` INTEGER NOT NULL,
	FOREIGN KEY (`attendance`) REFERENCES `attendance`(`id`),
	FOREIGN KEY (`homework`) REFERENCES `homework`(`score`),
	FOREIGN KEY (`groups`) REFERENCES `project`(`id`)
);

