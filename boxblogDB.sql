CREATE DATABASE IF NOT EXISTS `boxblogDB`;
USE `boxblogDB`;

DROP TABLE IF EXISTS `Contents`;
DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users`(
    `user_id` INT(6) NOT NULL AUTO_INCREMENT,
    `user_fname` VARCHAR(120) NOT NULL,
    `user_lname` VARCHAR(120) NOT NULL,
    `user_age` INT(3) NOT NULL,
    `user_gender` VARCHAR(30),
    `user_username` VARCHAR(60)  NOT NULL UNIQUE,
    `user_password` VARCHAR(60) NOT NULL,
    `user_email` VARCHAR(120) NOT NULL UNIQUE,
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;

CREATE TABLE `Contents`(
    `content_id` INT(6) NOT NULL AUTO_INCREMENT,
    `user_id` INT(6),
    `content_reference` INT(6),
    `content_name` VARCHAR(150) NOT NULL UNIQUE,
    `content_text` VARCHAR(255),
    `content_date` DATE,
    `content_status` VARCHAR(30),
    `content_type` VARCHAR(60),
    PRIMARY KEY (`content_id`),
    CONSTRAINT `user_idfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users`. `user_id`,
    CONSTRAINT `content_referencefk_2` FOREIGN KEY (`content_reference`) REFERENCES `Contents`. `content_id`
) ENGINE=InnoDB DEFAULT CHARSET utf8mb4;
    