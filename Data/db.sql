-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Customer` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `email` VARCHAR(100) NOT NULL,
  `lastName` VARCHAR(45) NULL,
  `firstName` VARCHAR(45) NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `userName` VARCHAR(20) NOT NULL,
  `password` VARCHAR(45) NULL,
  `isVIP` INT NULL,
  `Customer_email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`userName`),
  INDEX `fk_User_Customer_idx` (`Customer_email` ASC),
  CONSTRAINT `fk_User_Customer`
    FOREIGN KEY (`Customer_email`)
    REFERENCES `mydb`.`Customer` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Truck`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Truck` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Truck` (
  `VIN` VARCHAR(20) NOT NULL,
  `isAvailable` INT NULL,
  `truckLocation` VARCHAR(45) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Reservation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Reservation` (
  `User_userName` VARCHAR(20) NOT NULL,
  `Truck_VIN` VARCHAR(20) NOT NULL,
  `reservationID` VARCHAR(45) NOT NULL,
  `fromLocation` VARCHAR(45) NULL,
  `toLocation` VARCHAR(45) NULL,
  `rentMinutes` INT NULL,
  `fromDate` DATETIME NULL,
  `toDate` DATETIME NULL,
  PRIMARY KEY (`User_userName`, `Truck_VIN`, `reservationID`),
  INDEX `fk_User_has_Truck_Truck1_idx` (`Truck_VIN` ASC),
  INDEX `fk_User_has_Truck_User1_idx` (`User_userName` ASC),
  CONSTRAINT `fk_User_has_Truck_User1`
    FOREIGN KEY (`User_userName`)
    REFERENCES `mydb`.`User` (`userName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_Truck_Truck1`
    FOREIGN KEY (`Truck_VIN`)
    REFERENCES `mydb`.`Truck` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Payment` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Payment` (
  `Reservation_User_userName` VARCHAR(20) NOT NULL,
  `Reservation_Truck_VIN` VARCHAR(20) NOT NULL,
  `Reservation_reservationID` VARCHAR(45) NOT NULL,
  `payID` VARCHAR(45) NOT NULL,
  `amount` DECIMAL(6,2) NULL,
  INDEX `fk_Payment_Reservation1_idx` (`Reservation_User_userName` ASC, `Reservation_Truck_VIN` ASC, `Reservation_reservationID` ASC),
  PRIMARY KEY (`payID`),
  CONSTRAINT `fk_Payment_Reservation1`
    FOREIGN KEY (`Reservation_User_userName` , `Reservation_Truck_VIN` , `Reservation_reservationID`)
    REFERENCES `mydb`.`Reservation` (`User_userName` , `Truck_VIN` , `reservationID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
