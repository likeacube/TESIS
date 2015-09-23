SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idclie` INT(5) NOT NULL COMMENT 'Id',
  `rut` INT(8) NULL COMMENT 'Rut',
  `dv` CHAR(1) NULL COMMENT 'Dígito verificador',
  `nomb` VARCHAR(128) NULL COMMENT 'Nombres',
  `apells` VARCHAR(128) NULL COMMENT 'Apellidos',
  `fenac` DATE NULL COMMENT 'Fecha nacimiento',
  `fevalde` DATE NULL COMMENT 'Fecha de activación',
  PRIMARY KEY (`idclie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empresa` (
  `idemp` INT(5) NOT NULL COMMENT 'Id Empresa',
  `rutemp` INT(8) NULL COMMENT 'Rut Empresa',
  `dvemp` CHAR(1) NULL COMMENT 'Dígito verificador Empresa',
  `nomb` VARCHAR(128) NULL COMMENT 'Nombre Empresa',
  `fenac` DATE NULL COMMENT 'Fecha de inicio de actividades',
  `fevalde` DATE NULL COMMENT 'Fecha de activación empresa',
  `Cliente_idclie` INT(5) NOT NULL,
  PRIMARY KEY (`idemp`),
  INDEX `fk_Empresa_Cliente1_idx` (`Cliente_idclie` ASC),
  CONSTRAINT `fk_Empresa_Cliente1`
    FOREIGN KEY (`Cliente_idclie`)
    REFERENCES `mydb`.`Cliente` (`idclie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Estados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Estados` (
  `idest` INT(5) NOT NULL COMMENT 'Id estado',
  `nomest` VARCHAR(32) NULL COMMENT 'Nombre de estado',
  `descest` VARCHAR(128) NULL COMMENT 'Nombre de estado',
  PRIMARY KEY (`idest`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idus` INT(5) NOT NULL COMMENT 'Id Usuario',
  `usernom` VARCHAR(8) NULL COMMENT 'Nombre Usuario para acceder',
  `cod` VARCHAR(8) NULL COMMENT 'Clave de usuario para acceder',
  `nomb` VARCHAR(128) NULL COMMENT 'Nombres del usuario',
  `Apells` VARCHAR(128) NULL COMMENT 'Apellidos del Usuario',
  `fecrea` DATE NULL COMMENT 'Fecha de creación del Usuario',
  `fevalha` DATE NULL COMMENT 'Fecha de expiración de cuenta',
  `Estados_idest` INT(5) NOT NULL,
  PRIMARY KEY (`idus`),
  INDEX `fk_Usuario_Estados1_idx` (`Estados_idest` ASC),
  CONSTRAINT `fk_Usuario_Estados1`
    FOREIGN KEY (`Estados_idest`)
    REFERENCES `mydb`.`Estados` (`idest`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EmprGeo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EmprGeo` (
  `idempgeo` INT NOT NULL COMMENT 'Id empresa geocalización',
  `latitud` FLOAT NULL COMMENT 'Parametros para la busqueda ',
  `longitud` FLOAT NULL COMMENT 'Parametros para la busqueda',
  `Empresa_idemp` INT(5) NOT NULL,
  `tipo` VARCHAR(75) NULL,
  PRIMARY KEY (`idempgeo`),
  INDEX `fk_EmprGeo_Empresa1_idx` (`Empresa_idemp` ASC),
  CONSTRAINT `fk_EmprGeo_Empresa1`
    FOREIGN KEY (`Empresa_idemp`)
    REFERENCES `mydb`.`Empresa` (`idemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stock` (
  `idstock` INT NOT NULL COMMENT 'is stock',
  `totalpro` INT NULL,
  `restpro` INT NULL,
  PRIMARY KEY (`idstock`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pais` (
  `idpais` INT NOT NULL COMMENT 'Id del pais',
  `nompais` VARCHAR(45) NOT NULL COMMENT 'Nombre pais',
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Region` (
  `idregion` INT NOT NULL COMMENT 'Id de la region',
  `nomregion` VARCHAR(75) NULL COMMENT 'Nombre de la region',
  `Pais_idpais` INT NOT NULL,
  PRIMARY KEY (`idregion`),
  INDEX `fk_Region_Pais1_idx` (`Pais_idpais` ASC),
  CONSTRAINT `fk_Region_Pais1`
    FOREIGN KEY (`Pais_idpais`)
    REFERENCES `mydb`.`Pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ciudad` (
  `idciu` INT NOT NULL COMMENT 'Id de la ciudad',
  `nomciu` VARCHAR(75) NULL COMMENT 'Nombre de la ciudad',
  `Region_idregion` INT NOT NULL,
  PRIMARY KEY (`idciu`),
  INDEX `fk_Ciudad_Region1_idx` (`Region_idregion` ASC),
  CONSTRAINT `fk_Ciudad_Region1`
    FOREIGN KEY (`Region_idregion`)
    REFERENCES `mydb`.`Region` (`idregion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comuna`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comuna` (
  `idcom` INT NOT NULL COMMENT 'Id de la comuna',
  `nomcom` VARCHAR(75) NOT NULL COMMENT 'Nombre de la comuna',
  `Ciudad_idciu` INT NOT NULL,
  PRIMARY KEY (`idcom`),
  INDEX `fk_Comuna_Ciudad1_idx` (`Ciudad_idciu` ASC),
  CONSTRAINT `fk_Comuna_Ciudad1`
    FOREIGN KEY (`Ciudad_idciu`)
    REFERENCES `mydb`.`Ciudad` (`idciu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Direccion` (
  `iddirec` INT NOT NULL COMMENT 'id direccion',
  `direccion` VARCHAR(128) NULL COMMENT 'Nombre de la direccion',
  `num` INT NULL COMMENT 'Numeracion',
  `dept` TINYINT(1) NULL COMMENT 'Vive en departamento si/no',
  `numdept` INT NULL COMMENT 'numero departamento',
  `Empresa_idemp` INT(5) NOT NULL,
  `Comuna_idcom` INT NOT NULL,
  PRIMARY KEY (`iddirec`),
  INDEX `fk_Direccion_Empresa1_idx` (`Empresa_idemp` ASC),
  INDEX `fk_Direccion_Comuna1_idx` (`Comuna_idcom` ASC),
  CONSTRAINT `fk_Direccion_Empresa1`
    FOREIGN KEY (`Empresa_idemp`)
    REFERENCES `mydb`.`Empresa` (`idemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Direccion_Comuna1`
    FOREIGN KEY (`Comuna_idcom`)
    REFERENCES `mydb`.`Comuna` (`idcom`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Familia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Familia` (
  `idFamilia` INT NOT NULL,
  `nomfam` VARCHAR(128) NULL,
  PRIMARY KEY (`idFamilia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SubFamilia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`SubFamilia` (
  `idSubFamilia` INT NOT NULL,
  `nomsubfam` VARCHAR(128) NULL,
  `Familia_idFamilia` INT NOT NULL,
  PRIMARY KEY (`idSubFamilia`),
  INDEX `fk_SubFamilia_Familia1_idx` (`Familia_idFamilia` ASC),
  CONSTRAINT `fk_SubFamilia_Familia1`
    FOREIGN KEY (`Familia_idFamilia`)
    REFERENCES `mydb`.`Familia` (`idFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `idproduc` INT(5) NOT NULL COMMENT 'Id estado',
  `nomprod` VARCHAR(32) NULL COMMENT 'Nombre producto',
  `precio` DOUBLE NULL COMMENT 'Precio producto',
  `descest` VARCHAR(128) NULL COMMENT 'Descripción de estado',
  `Empresa_idemp` INT(5) NOT NULL,
  `SubFamilia_idSubFamilia` INT NOT NULL,
  `Stock_idstock` INT NOT NULL,
  PRIMARY KEY (`idproduc`),
  INDEX `fk_Producto_Empresa1_idx` (`Empresa_idemp` ASC),
  INDEX `fk_Producto_SubFamilia1_idx` (`SubFamilia_idSubFamilia` ASC),
  INDEX `fk_Producto_Stock1_idx` (`Stock_idstock` ASC),
  CONSTRAINT `fk_Producto_Empresa1`
    FOREIGN KEY (`Empresa_idemp`)
    REFERENCES `mydb`.`Empresa` (`idemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_SubFamilia1`
    FOREIGN KEY (`SubFamilia_idSubFamilia`)
    REFERENCES `mydb`.`SubFamilia` (`idSubFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_Stock1`
    FOREIGN KEY (`Stock_idstock`)
    REFERENCES `mydb`.`Stock` (`idstock`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Visita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Visita` (
  `idVisita` INT NOT NULL,
  `numvisi` INT NULL,
  `Empresa_idemp` INT(5) NOT NULL,
  PRIMARY KEY (`idVisita`),
  INDEX `fk_Visita_Empresa_idx` (`Empresa_idemp` ASC),
  CONSTRAINT `fk_Visita_Empresa`
    FOREIGN KEY (`Empresa_idemp`)
    REFERENCES `mydb`.`Empresa` (`idemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empresa_has_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empresa_has_Usuario` (
  `Empresa_idemp` INT(5) NOT NULL,
  `Usuario_idus` INT(5) NOT NULL,
  PRIMARY KEY (`Empresa_idemp`, `Usuario_idus`),
  INDEX `fk_Empresa_has_Usuario_Usuario1_idx` (`Usuario_idus` ASC),
  INDEX `fk_Empresa_has_Usuario_Empresa1_idx` (`Empresa_idemp` ASC),
  CONSTRAINT `fk_Empresa_has_Usuario_Empresa1`
    FOREIGN KEY (`Empresa_idemp`)
    REFERENCES `mydb`.`Empresa` (`idemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Empresa_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_idus`)
    REFERENCES `mydb`.`Usuario` (`idus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;