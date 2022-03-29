-- -----------------------------------------------------
-- Schema ocpizza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ocpizza` DEFAULT CHARACTER SET utf8mb4 ;
USE `ocpizza` ;

-- -----------------------------------------------------
-- Table `ocpizza`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Address` (
  `idAddress` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NOT NULL,
  `complement` VARCHAR(45) NULL,
  `codePostal` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAddress`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Shop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Shop` (
  `idShop` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `idAddress` INT NOT NULL,
  PRIMARY KEY (`idShop`, `idAddress`),
  INDEX `fk_Shop_Address1_idx` (`idAddress` ASC) VISIBLE,
  CONSTRAINT `fk_Shop_Address1`
    FOREIGN KEY (`idAddress`)
    REFERENCES `ocpizza`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Customer` (
  `idCustomer` INT NOT NULL AUTO_INCREMENT,
  `lastname` VARCHAR(45) NOT NULL,
  `fistname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `idAddress` INT NOT NULL,
  `idShop` INT NOT NULL,
  PRIMARY KEY (`idCustomer`, `idAddress`, `idShop`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Customer_Address1_idx` (`idAddress` ASC) VISIBLE,
  INDEX `fk_Customer_Shop1_idx` (`idShop` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_Address1`
    FOREIGN KEY (`idAddress`)
    REFERENCES `ocpizza`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_Shop1`
    FOREIGN KEY (`idShop`)
    REFERENCES `ocpizza`.`Shop` (`idShop`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Ingredient` (
  `idIngredient` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idIngredient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Recipe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Recipe` (
  `idRecipe` INT NOT NULL AUTO_INCREMENT,
  `recipe` LONGTEXT NOT NULL,
  PRIMARY KEY (`idRecipe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Pizza` (
  `idPizza` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `price` FLOAT NOT NULL,
  `idRecipe` INT NULL,
  PRIMARY KEY (`idPizza`),
  INDEX `fk_Pizza_Recette1_idx` (`idRecipe` ASC) VISIBLE,
  UNIQUE INDEX `Recette_idRecette_UNIQUE` (`idRecipe` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_Recette1`
    FOREIGN KEY (`idRecipe`)
    REFERENCES `ocpizza`.`Recipe` (`idRecipe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Status` (
  `idStatus` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStatus`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Invoice` (
  `idInvoice` INT NOT NULL AUTO_INCREMENT,
  `price` FLOAT NOT NULL,
  `creationDate` DATETIME NOT NULL,
  PRIMARY KEY (`idInvoice`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Order_`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Order_` (
  `idOrder_` INT NOT NULL AUTO_INCREMENT,
  `idCustomer` INT NOT NULL,
  `idStatus` INT NOT NULL,
  `idInvoice` INT NULL,
  PRIMARY KEY (`idOrder_`, `idCustomer`, `idStatus`),
  INDEX `fk_Order_Customer1_idx` (`idCustomer` ASC) VISIBLE,
  INDEX `fk_Order_Status1_idx` (`idStatus` ASC) VISIBLE,
  INDEX `fk_Order_Invoice1_idx` (`idInvoice` ASC) VISIBLE,
  UNIQUE INDEX `Invoice_idInvoice_UNIQUE` (`idInvoice` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`idCustomer`)
    REFERENCES `ocpizza`.`Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Status1`
    FOREIGN KEY (`idStatus`)
    REFERENCES `ocpizza`.`Status` (`idStatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Invoice1`
    FOREIGN KEY (`idInvoice`)
    REFERENCES `ocpizza`.`Invoice` (`idInvoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Role` (
  `idRole` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRole`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Employee` (
  `idEmployee` INT NOT NULL AUTO_INCREMENT,
  `lastname` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `birthday` DATE NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `idRole` INT NOT NULL,
  `idAddress` INT NOT NULL,
  `idShop` INT NOT NULL,
  PRIMARY KEY (`idEmployee`, `idRole`, `idAddress`, `idShop`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Employee_Role_idx` (`idRole` ASC) VISIBLE,
  INDEX `fk_Employee_Address1_idx` (`idAddress` ASC) VISIBLE,
  INDEX `fk_Employee_Shop1_idx` (`idShop` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_Role`
    FOREIGN KEY (`idRole`)
    REFERENCES `ocpizza`.`Role` (`idRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Address1`
    FOREIGN KEY (`idAddress`)
    REFERENCES `ocpizza`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Shop1`
    FOREIGN KEY (`idShop`)
    REFERENCES `ocpizza`.`Shop` (`idShop`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`PizzaHasIngredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`PizzaHasIngredient` (
  `idPizza` INT NOT NULL,
  `idIngredient` INT NOT NULL,
  `gramQuantity` FLOAT NOT NULL,
  PRIMARY KEY (`idPizza`, `idIngredient`),
  INDEX `fk_Pizza_has_Ingredient_Ingredient1_idx` (`idIngredient` ASC) VISIBLE,
  INDEX `fk_Pizza_has_Ingredient_Pizza1_idx` (`idPizza` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_has_Ingredient_Pizza1`
    FOREIGN KEY (`idPizza`)
    REFERENCES `ocpizza`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_has_Ingredient_Ingredient1`
    FOREIGN KEY (`idIngredient`)
    REFERENCES `ocpizza`.`Ingredient` (`idIngredient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Stock` (
  `idStock` INT NOT NULL AUTO_INCREMENT,
  `unitaryGrams` FLOAT NOT NULL,
  `unitaryPrice` FLOAT NOT NULL,
  `purchaseDate` DATE NOT NULL,
  `expirationDate` DATE NOT NULL,
  `unitQuantity` FLOAT NOT NULL,
  `idIngredient` INT NOT NULL,
  `idShop` INT NOT NULL,
  PRIMARY KEY (`idStock`, `idIngredient`, `idShop`),
  INDEX `fk_Stock_Ingredient1_idx` (`idIngredient` ASC) VISIBLE,
  INDEX `fk_Stock_Commerce1_idx` (`idShop` ASC) VISIBLE,
  CONSTRAINT `fk_Stock_Ingredient1`
    FOREIGN KEY (`idIngredient`)
    REFERENCES `ocpizza`.`Ingredient` (`idIngredient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Stock_Point_Vente1`
    FOREIGN KEY (`idShop`)
    REFERENCES `ocpizza`.`Shop` (`idShop`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`OrderHasPizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`OrderHasPizza` (
  `idOrder_` INT NOT NULL,
  `idPizza` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`idPizza`, `idOrder_`),
  INDEX `fk_Order_has_Pizza_Pizza1_idx` (`idPizza` ASC) VISIBLE,
  INDEX `fk_Order_has_Pizza_Order1_idx` (`idOrder_` ASC) VISIBLE,
  CONSTRAINT `fk_Order_has_Pizza_Order1`
    FOREIGN KEY (`idOrder_`)
    REFERENCES `ocpizza`.`Order_` (`idOrder_`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_has_Pizza_Pizza1`
    FOREIGN KEY (`idPizza`)
    REFERENCES `ocpizza`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
