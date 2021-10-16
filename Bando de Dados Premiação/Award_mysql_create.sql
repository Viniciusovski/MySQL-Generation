create database db_award;
use db_award;

CREATE TABLE `artist` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`genre` varchar(255),
	`ethnicity` varchar(255),
	`type` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`work_name` varchar(255) NOT NULL,
	`type_work` varchar(255) NOT NULL,
	`winner` BOOLEAN NOT NULL DEFAULT '0',
	`award` bigint NOT NULL,
	`artist` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Award` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`year` varchar(4) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `category` ADD CONSTRAINT `category_fk0` FOREIGN KEY (`award`) REFERENCES `Award`(`id`);

ALTER TABLE `category` ADD CONSTRAINT `category_fk1` FOREIGN KEY (`artist`) REFERENCES `artist`(`id`);




