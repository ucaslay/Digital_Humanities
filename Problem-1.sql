DROP DATABASE IF EXISTS `Problem-1`;
CREATE DATABASE `Problem-1`;
USE `Problem-1`;
CREATE TABLE `books` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`title` VARCHAR(100) NOT NULL,
	`author` VARCHAR(50) NOT NULL,
	`published` DATE,
	`signature` VARCHAR(20) NOT NULL
);

CREATE TABLE `people` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	`borrowed_books_id` INTEGER,
	FOREIGN KEY (`borrowed_books_id`) REFERENCES `books`(`id`)
);

CREATE TABLE `Lending` (
	`id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`borrowed` DATE,
	`borrowed_books_id` INTEGER NOT NULL,
	`borrower_id` INTEGER NOT NULL,
	FOREIGN KEY (`borrowed_books_id`) REFERENCES `books`(`id`),
	FOREIGN KEY (`borrower_id`) REFERENCES `people`(`id`)
);

