-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ecommerce_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ecommerce_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecommerce_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci ;
USE `ecommerce_db` ;

-- -----------------------------------------------------
-- Table `ecommerce_db`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce_db`.`customer` (
  `idcustomer` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `birth_date` DATE NOT NULL,
  `phone_number` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `mail_UNIQUE` (`mail` ASC),
  PRIMARY KEY (`idcustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce_db`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce_db`.`category` (
  `idcategory` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce_db`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce_db`.`item` (
  `iditem` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(200) NOT NULL,
  `release_date` DATE NOT NULL,
  `cancel_date` DATE NULL,
  `price` FLOAT NOT NULL,
  `path` VARCHAR(100) NULL,
  `category_idcategory` INT NOT NULL,
  `customer_idcustomer` INT NOT NULL,
  PRIMARY KEY (`iditem`),
  INDEX `fk_item_category1_idx` (`category_idcategory` ASC),
  INDEX `fk_item_customer1_idx` (`customer_idcustomer` ASC),
  CONSTRAINT `fk_item_category1`
    FOREIGN KEY (`category_idcategory`)
    REFERENCES `ecommerce_db`.`category` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_customer1`
    FOREIGN KEY (`customer_idcustomer`)
    REFERENCES `ecommerce_db`.`customer` (`idcustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecommerce_db`.`purchase_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce_db`.`purchase_order` (
  `idpurchase_order` INT NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `quantity` INT NOT NULL,
  `total` DECIMAL NOT NULL,
  `customer_idcustomer` INT NOT NULL,
  `item_iditem` INT NOT NULL,
  PRIMARY KEY (`idpurchase_order`),
  INDEX `fk_order_customer_idx` (`customer_idcustomer` ASC),
  INDEX `fk_order_item1_idx` (`item_iditem` ASC),
  CONSTRAINT `fk_order_customer`
    FOREIGN KEY (`customer_idcustomer`)
    REFERENCES `ecommerce_db`.`customer` (`idcustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_item1`
    FOREIGN KEY (`item_iditem`)
    REFERENCES `ecommerce_db`.`item` (`iditem`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
