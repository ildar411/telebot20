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
CREATE SCHEMA IF NOT EXISTS `users` ;
USE `users` ;

-- -----------------------------------------------------
-- Table `users`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `pid` BIGINT NOT NULL,
  `walet_number` BIGINT NOT NULL,
  `walet` BIGINT NULL,
  `walet_nominal` BIGINT NULL DEFAULT 0,
  `telegram_id` BIGINT NULL,
  `nickname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `users`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `pid` BIGINT NOT NULL,
  `walet_number` BIGINT NOT NULL,
  `walet` BIGINT NULL,
  `walet_nominal` BIGINT NULL DEFAULT 0,
  `telegram_id` BIGINT NULL,
  `nickname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (1, 0, 1, 0, 437248000, 1, 1);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (2, 1, 2, 0, 1200000, 2, 2);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (3, 1, 3, 0, 1200000, 3, 3);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (4, 2, 4, 0, 200000, 4, 4);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (5, 2, 5, 0, 200000, 5, 5);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (6, 3, 6, 0, 200000, 6, 6);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (7, 3, 7, 0, 200000, 7, 7);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (8, 4, 8, 0, 4600, 8, 8);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (9, 4, 9, 0, 4600, 9, 9);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (10, 5, 10, 0, 4600, 10, 10);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (11, 5, 11, 0, 4600, 11, 11);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (12, 6, 12, 0, 4600, 12, 12);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (13, 6, 13, 0, 4600, 13, 13);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (14, 7, 14, 0, 4600, 14, 14);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (15, 7, 15, 0, 4600, 15, 15);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (16, 8, 16, 0, 700, 16, 16);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (17, 8, 17, 0, 700, 17, 17);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (18, 9, 18, 0, 700, 18, 18);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (19, 9, 19, 0, 700, 19, 19);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (20, 10, 20, 0, 700, 20, 20);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (21, 10, 21, 0, 700, 21, 21);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (22, 11, 22, 0, 700, 22, 22);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (23, 11, 23, 0, 700, 23, 23);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (24, 12, 24, 0, 700, 24, 24);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (25, 12, 25, 0, 700, 25, 25);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (26, 13, 26, 0, 700, 26, 26);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (27, 13, 27, 0, 700, 27, 27);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (28, 14, 28, 0, 700, 28, 28);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (29, 14, 29, 0, 700, 29, 29);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (30, 15, 30, 0, 700, 30, 30);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (31, 15, 31, 0, 700, 31, 31);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (32, 16, 32, 0, 200, 32, 32);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (33, 16, 33, 0, 200, 33, 33);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (34, 17, 34, 0, 200, 34, 34);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (35, 17, 35, 0, 200, 35, 35);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (36, 18, 36, 0, 200, 36, 36);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (37, 18, 37, 0, 200, 37, 37);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (38, 19, 38, 0, 200, 38, 38);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (39, 19, 39, 0, 200, 39, 39);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (40, 20, 40, 0, 200, 40, 40);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (41, 20, 41, 0, 200, 41, 41);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (42, 21, 42, 0, 200, 42, 42);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (43, 21, 43, 0, 200, 43, 43);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (44, 22, 44, 0, 200, 44, 44);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (45, 22, 45, 0, 200, 45, 45);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (46, 23, 46, 0, 200, 46, 46);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (47, 23, 47, 0, 200, 47, 47);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (48, 24, 48, 0, 200, 48, 48);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (49, 24, 49, 0, 200, 49, 49);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (50, 25, 50, 0, 200, 50, 50);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (51, 25, 51, 0, 200, 51, 51);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (52, 26, 52, 0, 200, 52, 52);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (53, 26, 53, 0, 200, 53, 53);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (54, 27, 54, 0, 200, 54, 54);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (55, 27, 34, 0, 200, 55, 55);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (56, 28, 56, 0, 200, 28, 28);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (57, 28, 57, 0, 200, 57, 57);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (58, 29, 58, 0, 200, 58, 58);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (59, 29, 59, 0, 200, 59, 59);
insert into 
user (id, pid, walet_number, walet, walet_nominal, telegram_id, nickname) 
values (34, 17, 34, 0, 200, 34, 34);








