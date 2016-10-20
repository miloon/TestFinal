-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema EmilyTestFinal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EmilyTestFinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EmilyTestFinal` DEFAULT CHARACTER SET utf8 ;
USE `EmilyTestFinal` ;

-- -----------------------------------------------------
-- Table `EmilyTestFinal`.`utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmilyTestFinal`.`utilisateur` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `firstname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmilyTestFinal`.`section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmilyTestFinal`.`section` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `intitule` VARCHAR(60) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmilyTestFinal`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmilyTestFinal`.`article` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(80) NULL,
  `text` TEXT NULL,
  `date` DATETIME NULL DEFAULT NOW(),
  `utilisateurid` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_article_utilisateur_idx` (`utilisateurid` ASC),
  CONSTRAINT `fk_article_utilisateur`
    FOREIGN KEY (`utilisateurid`)
    REFERENCES `EmilyTestFinal`.`utilisateur` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmilyTestFinal`.`article_has_section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EmilyTestFinal`.`article_has_section` (
  `article_id` INT UNSIGNED NOT NULL,
  `section_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`article_id`, `section_id`),
  INDEX `fk_article_has_section_section1_idx` (`section_id` ASC),
  INDEX `fk_article_has_section_article1_idx` (`article_id` ASC),
  CONSTRAINT `fk_article_has_section_article1`
    FOREIGN KEY (`article_id`)
    REFERENCES `EmilyTestFinal`.`article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_article_has_section_section1`
    FOREIGN KEY (`section_id`)
    REFERENCES `EmilyTestFinal`.`section` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
