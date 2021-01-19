CREATE SCHEMA `Lesson_1` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

-- создаём таблицу стран

CREATE TABLE `sys`.`countries` (
  `id_countries` SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_countries`),
  UNIQUE INDEX `id_countries_UNIQUE` (`id_countries` ASC) VISIBLE,
  UNIQUE INDEX `country_name_UNIQUE` (`country_name` ASC) VISIBLE);

-- создаём таблицу регионов

CREATE TABLE `sys`.`states` (
  `id_state` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_state`),
  UNIQUE INDEX `id_state_UNIQUE` (`id_state` ASC) VISIBLE);

-- создаём таблицу областей

CREATE TABLE `sys`.`districts` (
  `id_district` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `district_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_district`),
  UNIQUE INDEX `id_district_UNIQUE` (`id_district` ASC) VISIBLE);

-- создаём таблицу типов населённых пунктов

CREATE TABLE `sys`.`city_tipe` (
  `id_city_type` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_type_city` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_city_type`),
  UNIQUE INDEX `id_city_type_UNIQUE` (`id_city_type` ASC) VISIBLE,
  UNIQUE INDEX `name_type_city_UNIQUE` (`name_type_city` ASC) VISIBLE);


-- создаём таблицу населённых пунктов

CREATE TABLE `sys`.`cities` (
  `id_city` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_country` SMALLINT(2) UNSIGNED NOT NULL,
  `id_state` INT UNSIGNED NOT NULL,
  `id_district` INT UNSIGNED NULL,
  `id_city_type` TINYINT(1) UNSIGNED NOT NULL,
  `city_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_city`),
  UNIQUE INDEX `id_city_UNIQUE` (`id_city` ASC) VISIBLE);
