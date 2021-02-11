-- MySQL Script generated by MySQL Workbench
-- Вс 10 янв 2021 13:27:37
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema users
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema users
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `users2` ;
USE `users2` ;

-- -----------------------------------------------------
-- Table `users`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users2`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `pid` BIGINT NOT NULL,
  `walet_number` BIGINT NOT NULL,
  `walet` BIGINT NULL,
  `walet_nominal` BIGINT NULL DEFAULT 0,
  `telegram_id` BIGINT NULL,
  `nickname` VARCHAR(45) NULL,
  `level` INT NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `users`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users2`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `pid` BIGINT NOT NULL,
  `walet_number` BIGINT NOT NULL,
  `walet` BIGINT NULL,
  `walet_nominal` BIGINT NULL DEFAULT 0,
  `telegram_id` BIGINT NULL,
  `nickname` VARCHAR(45) NULL,
  `level` INT NOT NULL,
  PRIMARY KEY (`id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (1, 0, 1, 0, 2186240000, 1, 1, 7);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (2, 1, 2, 0, 6000000, 2, 2, 6);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (3, 1, 3, 0, 6000000, 3, 3, 6);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (4, 2, 4, 0, 1000000, 4, 4, 5);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (5, 2, 5, 0, 1000000, 5, 5, 5);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (6, 3, 6, 0, 1000000, 6, 6, 5);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (7, 3, 7, 0, 1000000, 7, 7, 5);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (8, 4, 8, 0, 23000, 8, 8, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (9, 4, 9, 0, 23000, 9, 9, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (10, 5, 10, 0, 23000, 10, 10, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (11, 5, 11, 0, 23000, 11, 11, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (12, 6, 12, 0, 23000, 12, 12, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (13, 6, 13, 0, 23000, 13, 13, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (14, 7, 14, 0, 23000, 14, 14, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (15, 7, 15, 0, 23000, 15, 15, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (16, 8, 16, 0, 3500, 16, 16, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (17, 8, 17, 0, 3500, 17, 17, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (18, 9, 18, 0, 3500, 18, 18, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (19, 9, 19, 0, 3500, 19, 19, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (20, 10, 20, 0, 3500, 20, 20, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (21, 10, 21, 0, 3500, 21, 21, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (22, 11, 22, 0, 3500, 22, 22, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (23, 11, 23, 0, 3500, 23, 23, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (24, 12, 24, 0, 3500, 24, 24, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (25, 12, 25, 0, 3500, 25, 25, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (26, 13, 26, 0, 3500, 26, 26, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (27, 13, 27, 0, 3500, 27, 27, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (28, 14, 28, 0, 3500, 28, 28, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (29, 14, 29, 0, 3500, 29, 29, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (30, 15, 30, 0, 3500, 30, 30, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (31, 15, 31, 0, 3500, 31, 31, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (32, 16, 32, 0, 1000, 32, 32, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (33, 16, 33, 0, 1000, 33, 33, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (34, 17, 34, 0, 1000, 34, 34, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (35, 17, 35, 0, 1000, 35, 35, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (36, 18, 36, 0, 1000, 36, 36, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (37, 18, 37, 0, 1000, 37, 37, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (38, 19, 38, 0, 1000, 38, 38, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (39, 19, 39, 0, 1000, 39, 39, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (40, 20, 40, 0, 1000, 40, 40, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (41, 20, 41, 0, 1000, 41, 41, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (42, 21, 42, 0, 1000, 42, 42, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (43, 21, 43, 0, 1000, 43, 43, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (44, 22, 44, 0, 1000, 44, 44, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (45, 22, 45, 0, 1000, 45, 45, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (46, 23, 46, 0, 1000, 46, 46, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (47, 23, 47, 0, 1000, 47, 47, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (48, 24, 48, 0, 1000, 48, 48, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (49, 24, 49, 0, 1000, 49, 49, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (50, 25, 50, 0, 1000, 50, 50, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (51, 25, 51, 0, 1000, 51, 51, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (52, 26, 52, 0, 1000, 52, 52, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (53, 26, 53, 0, 1000, 53, 53, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (54, 27, 54, 0, 1000, 54, 54, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (55, 27, 34, 0, 1000, 55, 55, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (56, 28, 56, 0, 1000, 28, 28, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (57, 28, 57, 0, 1000, 57, 57, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (58, 29, 58, 0, 1000, 58, 58, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (59, 29, 59, 0, 1000, 59, 59, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (60, 30, 60, 0, 1000, 60, 60, 2);
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (61, 30, 61, 0, 1000, 61, 61, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (62, 30, 62, 0, 1000, 62, 62, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (63, 30, 63, 0, 1000, 63, 63, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (64, 30, 64, 0, 1000, 64, 64, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname, level) 
values (65, 30, 65, 0, 1000, 65, 65, 2);








