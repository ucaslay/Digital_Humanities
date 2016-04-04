DROP DATABASE IF EXISTS `Problem-3`;
CREATE DATABASE `Problem-3`;
USE `Problem-3`;
CREATE TABLE `people` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`born` DATE,
	`artist_or_Reviewer` VARCHAR(8) NOT NULL
);

CREATE TABLE `performance` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`performance_by` INTEGER NOT NULL,
	`style` VARCHAR(20) NOT NULL,
	`when` DATE,
	`where` VARCHAR(50),
	FOREIGN KEY (`performance_by`) REFERENCES `people`(`id`)
);

CREATE TABLE `Review` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`reviewer` INTEGER NOT NULL,
	`playbill_or_newspaper` VARCHAR(10) NOT NULL,
	FOREIGN KEY (`reviewer`) REFERENCES `people`(`id`)
);

