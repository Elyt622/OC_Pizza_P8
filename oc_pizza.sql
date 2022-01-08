-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Adresse` (
  `idAdresse` INT NOT NULL AUTO_INCREMENT,
  `rue` VARCHAR(45) NOT NULL,
  `complement` VARCHAR(45) NULL,
  `codePostal` VARCHAR(45) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAdresse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Point_Vente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Point_Vente` (
  `idPointVente` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `Adresse_idAdresse` INT NOT NULL,
  PRIMARY KEY (`idPointVente`, `Adresse_idAdresse`),
  INDEX `fk_Point_Vente_Adresse1_idx` (`Adresse_idAdresse` ASC) VISIBLE,
  CONSTRAINT `fk_Point_Vente_Adresse1`
    FOREIGN KEY (`Adresse_idAdresse`)
    REFERENCES `mydb`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Client` (
  `idClient` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `mot_de_passe` VARCHAR(200) NOT NULL,
  `Adresse_idAdresse` INT NOT NULL,
  `Point_Vente_idPointVente` INT NOT NULL,
  PRIMARY KEY (`idClient`, `Adresse_idAdresse`, `Point_Vente_idPointVente`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Client_Adresse1_idx` (`Adresse_idAdresse` ASC) VISIBLE,
  INDEX `fk_Client_Point de Vente1_idx` (`Point_Vente_idPointVente` ASC) VISIBLE,
  CONSTRAINT `fk_Client_Adresse1`
    FOREIGN KEY (`Adresse_idAdresse`)
    REFERENCES `mydb`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Client_Point de Vente1`
    FOREIGN KEY (`Point_Vente_idPointVente`)
    REFERENCES `mydb`.`Point_Vente` (`idPointVente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ingredient` (
  `idIngredient` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idIngredient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recette`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Recette` (
  `idRecette` INT NOT NULL AUTO_INCREMENT,
  `recette` LONGTEXT NOT NULL,
  PRIMARY KEY (`idRecette`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pizza` (
  `idPizza` INT NOT NULL AUTO_INCREMENT,
  `nom_pizza` VARCHAR(45) NOT NULL,
  `prix` FLOAT NOT NULL,
  `Recette_idRecette` INT NULL,
  PRIMARY KEY (`idPizza`),
  INDEX `fk_Pizza_Recette1_idx` (`Recette_idRecette` ASC) VISIBLE,
  UNIQUE INDEX `Recette_idRecette_UNIQUE` (`Recette_idRecette` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_Recette1`
    FOREIGN KEY (`Recette_idRecette`)
    REFERENCES `mydb`.`Recette` (`idRecette`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Etat_Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Etat_Commande` (
  `idEtatCommande` INT NOT NULL AUTO_INCREMENT,
  `nom_etat` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEtatCommande`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Facture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Facture` (
  `idFacture` INT NOT NULL AUTO_INCREMENT,
  `prix` FLOAT NOT NULL,
  `creation_date` TIMESTAMP NOT NULL,
  PRIMARY KEY (`idFacture`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Commande` (
  `idCommande` INT NOT NULL AUTO_INCREMENT,
  `Client_idClient` INT NOT NULL,
  `Client_Adresse_idAdresse` INT NOT NULL,
  `EtatCommande_idEtat Commande` INT NOT NULL,
  `Facture_idFacture` INT NULL,
  PRIMARY KEY (`idCommande`, `Client_idClient`, `Client_Adresse_idAdresse`, `EtatCommande_idEtat Commande`),
  INDEX `fk_Commande_Client1_idx` (`Client_idClient` ASC, `Client_Adresse_idAdresse` ASC) VISIBLE,
  INDEX `fk_Commande_Etat Commande1_idx` (`EtatCommande_idEtat Commande` ASC) VISIBLE,
  INDEX `fk_Commande_Facture1_idx` (`Facture_idFacture` ASC) VISIBLE,
  UNIQUE INDEX `Facture_idFacture_UNIQUE` (`Facture_idFacture` ASC) VISIBLE,
  CONSTRAINT `fk_Commande_Client1`
    FOREIGN KEY (`Client_idClient` , `Client_Adresse_idAdresse`)
    REFERENCES `mydb`.`Client` (`idClient` , `Adresse_idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Commande_Etat Commande1`
    FOREIGN KEY (`EtatCommande_idEtat Commande`)
    REFERENCES `mydb`.`Etat_Commande` (`idEtatCommande`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Commande_Facture1`
    FOREIGN KEY (`Facture_idFacture`)
    REFERENCES `mydb`.`Facture` (`idFacture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Role` (
  `idRole` INT NOT NULL AUTO_INCREMENT,
  `nom_role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRole`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Employe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employe` (
  `idEmploye` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `telephone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `mot_de_passe` VARCHAR(200) NOT NULL,
  `Role_idRole` INT NOT NULL,
  `Adresse_idAdresse` INT NOT NULL,
  `Point_Vente_idPointVente` INT NOT NULL,
  PRIMARY KEY (`idEmploye`, `Role_idRole`, `Adresse_idAdresse`, `Point_Vente_idPointVente`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  INDEX `fk_Employe_Role_idx` (`Role_idRole` ASC) VISIBLE,
  INDEX `fk_Employe_Adresse1_idx` (`Adresse_idAdresse` ASC) VISIBLE,
  INDEX `fk_Employe_Point de Vente1_idx` (`Point_Vente_idPointVente` ASC) VISIBLE,
  CONSTRAINT `fk_Employe_Role`
    FOREIGN KEY (`Role_idRole`)
    REFERENCES `mydb`.`Role` (`idRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employe_Adresse1`
    FOREIGN KEY (`Adresse_idAdresse`)
    REFERENCES `mydb`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employe_Point de Vente1`
    FOREIGN KEY (`Point_Vente_idPointVente`)
    REFERENCES `mydb`.`Point_Vente` (`idPointVente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pizza_has_Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pizza_has_Commande` (
  `Pizza_idPizza` INT NOT NULL,
  `Commande_idCommande` INT NOT NULL,
  `quantité` INT NOT NULL,
  PRIMARY KEY (`Pizza_idPizza`, `Commande_idCommande`),
  INDEX `fk_Pizza_has_Commande_Commande1_idx` (`Commande_idCommande` ASC) VISIBLE,
  INDEX `fk_Pizza_has_Commande_Pizza1_idx` (`Pizza_idPizza` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_has_Commande_Pizza1`
    FOREIGN KEY (`Pizza_idPizza`)
    REFERENCES `mydb`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_has_Commande_Commande1`
    FOREIGN KEY (`Commande_idCommande`)
    REFERENCES `mydb`.`Commande` (`idCommande`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pizza_has_Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pizza_has_Ingredient` (
  `Pizza_idPizza` INT NOT NULL,
  `Ingredient_idIngredient` INT NOT NULL,
  `quantite_g` FLOAT NOT NULL,
  PRIMARY KEY (`Pizza_idPizza`, `Ingredient_idIngredient`),
  INDEX `fk_Pizza_has_Ingredient_Ingredient1_idx` (`Ingredient_idIngredient` ASC) VISIBLE,
  INDEX `fk_Pizza_has_Ingredient_Pizza1_idx` (`Pizza_idPizza` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_has_Ingredient_Pizza1`
    FOREIGN KEY (`Pizza_idPizza`)
    REFERENCES `mydb`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_has_Ingredient_Ingredient1`
    FOREIGN KEY (`Ingredient_idIngredient`)
    REFERENCES `mydb`.`Ingredient` (`idIngredient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stock` (
  `idStock` INT NOT NULL AUTO_INCREMENT,
  `unite_g` FLOAT NOT NULL,
  `prix_unitaire` FLOAT NOT NULL,
  `date_achat` DATE NOT NULL,
  `date_expiration` DATE NOT NULL,
  `quantite_unite` FLOAT NOT NULL,
  `Ingredient_idIngredient` INT NOT NULL,
  `Point_Vente_idPointVente` INT NOT NULL,
  PRIMARY KEY (`idStock`, `Ingredient_idIngredient`, `Point_Vente_idPointVente`),
  INDEX `fk_Stock_Ingredient1_idx` (`Ingredient_idIngredient` ASC) VISIBLE,
  INDEX `fk_Stock_Point_Vente1_idx` (`Point_Vente_idPointVente` ASC) VISIBLE,
  CONSTRAINT `fk_Stock_Ingredient1`
    FOREIGN KEY (`Ingredient_idIngredient`)
    REFERENCES `mydb`.`Ingredient` (`idIngredient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Stock_Point_Vente1`
    FOREIGN KEY (`Point_Vente_idPointVente`)
    REFERENCES `mydb`.`Point_Vente` (`idPointVente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
