-- MySQL Script generated by MySQL Workbench
-- Tue Nov 22 15:35:47 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Projeto_Integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Projeto_Integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Projeto_Integrador` DEFAULT CHARACTER SET utf8 ;
USE `Projeto_Integrador` ;

-- -----------------------------------------------------
-- Table `Projeto_Integrador`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto_Integrador`.`tb_usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Projeto_Integrador`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto_Integrador`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Projeto_Integrador`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto_Integrador`.`tb_produto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `ativo` TINYINT NOT NULL,
  `quantidade` INT NOT NULL,
  `tb_usuario_id` BIGINT NOT NULL,
  `tb_categoria_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_produto_tb_usuario_idx` (`tb_usuario_id` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria1_idx` (`tb_categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_usuario`
    FOREIGN KEY (`tb_usuario_id`)
    REFERENCES `Projeto_Integrador`.`tb_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produto_tb_categoria1`
    FOREIGN KEY (`tb_categoria_id`)
    REFERENCES `Projeto_Integrador`.`tb_categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
