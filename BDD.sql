-- -----------------------------------------------------
-- Schema ocpizza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ocpizza` DEFAULT CHARACTER SET utf8mb4 ;
USE `ocpizza` ;

-- -----------------------------------------------------
-- Table `ocpizza`.`Adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Adresse` (
  `idAdresse` INT NOT NULL AUTO_INCREMENT,
  `rue` VARCHAR(45) NOT NULL,
  `complement` VARCHAR(45) NULL,
  `codePostal` VARCHAR(45) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAdresse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Commerce`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Commerce` (
  `idCommerce` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `idAdresse` INT NOT NULL,
  PRIMARY KEY (`idCommerce`, `idAdresse`),
  INDEX `fk_Commerce_Adresse1_idx` (`idAdresse` ASC) VISIBLE,
  CONSTRAINT `fk_Point_Vente_Adresse1`
    FOREIGN KEY (`idAdresse`)
    REFERENCES `ocpizza`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Client` (
  `idClient` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `mot_de_passe` VARCHAR(200) NOT NULL,
  `idAdresse` INT NOT NULL,
  `idCommerce` INT NOT NULL,
  PRIMARY KEY (`idClient`, `idAdresse`, `idCommerce`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Client_Adresse1_idx` (`idAdresse` ASC) VISIBLE,
  INDEX `fk_Client_Commerce1_idx` (`idCommerce` ASC) VISIBLE,
  CONSTRAINT `fk_Client_Adresse1`
    FOREIGN KEY (`idAdresse`)
    REFERENCES `ocpizza`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Client_Commerce1`
    FOREIGN KEY (`idCommerce`)
    REFERENCES `ocpizza`.`Commerce` (`idCommerce`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Ingredient` (
  `idIngredient` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idIngredient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Recette`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Recette` (
  `idRecette` INT NOT NULL AUTO_INCREMENT,
  `recette` LONGTEXT NOT NULL,
  PRIMARY KEY (`idRecette`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Pizza` (
  `idPizza` INT NOT NULL AUTO_INCREMENT,
  `nom_pizza` VARCHAR(45) NOT NULL,
  `prix` FLOAT NOT NULL,
  `idRecette` INT NULL,
  PRIMARY KEY (`idPizza`),
  INDEX `fk_Pizza_Recette1_idx` (`idRecette` ASC) VISIBLE,
  UNIQUE INDEX `Recette_idRecette_UNIQUE` (`idRecette` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_Recette1`
    FOREIGN KEY (`idRecette`)
    REFERENCES `ocpizza`.`Recette` (`idRecette`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Etat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Etat` (
  `idEtat` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEtat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Facture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Facture` (
  `idFacture` INT NOT NULL AUTO_INCREMENT,
  `prix` FLOAT NOT NULL,
  `creation_date` DATETIME NOT NULL,
  PRIMARY KEY (`idFacture`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Commande` (
  `idCommande` INT NOT NULL AUTO_INCREMENT,
  `idClient` INT NOT NULL,
  `idEtat` INT NOT NULL,
  `idFacture` INT NULL,
  PRIMARY KEY (`idCommande`, `idClient`, `idEtat`),
  INDEX `fk_Commande_Client1_idx` (`idClient` ASC) VISIBLE,
  INDEX `fk_Commande_Etat1_idx` (`idEtat` ASC) VISIBLE,
  INDEX `fk_Commande_Facture1_idx` (`idFacture` ASC) VISIBLE,
  UNIQUE INDEX `Facture_idFacture_UNIQUE` (`idFacture` ASC) VISIBLE,
  CONSTRAINT `fk_Commande_Client1`
    FOREIGN KEY (`idClient`)
    REFERENCES `ocpizza`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Commande_Etat Commande1`
    FOREIGN KEY (`idEtat`)
    REFERENCES `ocpizza`.`Etat` (`idEtat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Commande_Facture1`
    FOREIGN KEY (`idFacture`)
    REFERENCES `ocpizza`.`Facture` (`idFacture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Role` (
  `idRole` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRole`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Employe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Employe` (
  `idEmploye` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `mot_de_passe` VARCHAR(200) NOT NULL,
  `idRole` INT NOT NULL,
  `idAdresse` INT NOT NULL,
  `idCommerce` INT NOT NULL,
  PRIMARY KEY (`idEmploye`, `idRole`, `idAdresse`, `idCommerce`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Employe_Role_idx` (`idRole` ASC) VISIBLE,
  INDEX `fk_Employe_Adresse1_idx` (`idAdresse` ASC) VISIBLE,
  INDEX `fk_Employe_Commerce1_idx` (`idCommerce` ASC) VISIBLE,
  CONSTRAINT `fk_Employe_Role`
    FOREIGN KEY (`idRole`)
    REFERENCES `ocpizza`.`Role` (`idRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employe_Adresse1`
    FOREIGN KEY (`idAdresse`)
    REFERENCES `ocpizza`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employe_Commerce1`
    FOREIGN KEY (`idCommerce`)
    REFERENCES `ocpizza`.`Commerce` (`idCommerce`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Pizza_has_Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Pizza_has_Commande` (
  `idPizza` INT NOT NULL,
  `idCommande` INT NOT NULL,
  `quantité` INT NOT NULL,
  PRIMARY KEY (`idPizza`, `idCommande`),
  INDEX `fk_Pizza_has_Commande_Commande1_idx` (`idCommande` ASC) VISIBLE,
  INDEX `fk_Pizza_has_Commande_Pizza1_idx` (`idPizza` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_has_Commande_Pizza1`
    FOREIGN KEY (`idPizza`)
    REFERENCES `ocpizza`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_has_Commande_Commande1`
    FOREIGN KEY (`idCommande`)
    REFERENCES `ocpizza`.`Commande` (`idCommande`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizza`.`Pizza_has_Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizza`.`Pizza_has_Ingredient` (
  `idPizza` INT NOT NULL,
  `idIngredient` INT NOT NULL,
  `quantite_g` FLOAT NOT NULL,
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
  `unite_g` FLOAT NOT NULL,
  `prix_unitaire` FLOAT NOT NULL,
  `date_achat` DATE NOT NULL,
  `date_expiration` DATE NOT NULL,
  `quantite_unite` FLOAT NOT NULL,
  `idIngredient` INT NOT NULL,
  `idCommerce` INT NOT NULL,
  PRIMARY KEY (`idStock`, `idIngredient`, `idCommerce`),
  INDEX `fk_Stock_Ingredient1_idx` (`idIngredient` ASC) VISIBLE,
  INDEX `fk_Stock_Commerce1_idx` (`idCommerce` ASC) VISIBLE,
  CONSTRAINT `fk_Stock_Ingredient1`
    FOREIGN KEY (`idIngredient`)
    REFERENCES `ocpizza`.`Ingredient` (`idIngredient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Stock_Point_Vente1`
    FOREIGN KEY (`idCommerce`)
    REFERENCES `ocpizza`.`Commerce` (`idCommerce`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
