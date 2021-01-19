-- _countries_tbl

ALTER TABLE `geodata`.`_countries`
CHANGE COLUMN `country_id` `country_id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `title_ru` `title_ru` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_ua` `title_ua` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_be` `title_be` VARCHAR(1500) NOT NULL ,
CHANGE COLUMN `title_en` `title_en` VARCHAR(1500) NOT NULL ,
CHANGE COLUMN `title_es` `title_es` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_pt` `title_pt` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_de` `title_de` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_fr` `title_fr` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_it` `title_it` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_pl` `title_pl` VARCHAR(1500) NOT NULL ,
CHANGE COLUMN `title_ja` `title_ja` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_lt` `title_lt` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_lv` `title_lv` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_cz` `title_cz` VARCHAR(150) NOT NULL ,
ADD PRIMARY KEY (`country_id`);
;

-- _regions_tbl

ALTER TABLE `geodata`.`_regions`
CHANGE COLUMN `region_id` `region_id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `title_ru` `title_ru` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_ua` `title_ua` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_be` `title_be` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_en` `title_en` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_es` `title_es` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_pt` `title_pt` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_de` `title_de` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_fr` `title_fr` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_it` `title_it` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_pl` `title_pl` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_ja` `title_ja` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_lt` `title_lt` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_lv` `title_lv` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_cz` `title_cz` VARCHAR(150) NOT NULL ,
ADD PRIMARY KEY (`region_id`),
ADD INDEX `contry_id_idx` (`country_id` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_regions`
ADD CONSTRAINT `contry_id`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`country_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- _cities_tbl

ALTER TABLE `geodata`.`_cities`
CHANGE COLUMN `city_id` `city_id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `region_id` `region_id` INT NOT NULL ,
CHANGE COLUMN `title_ru` `title_ru` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_ua` `title_ua` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_be` `title_be` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_en` `title_en` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_es` `title_es` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_pt` `title_pt` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_de` `title_de` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_fr` `title_fr` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_it` `title_it` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_pl` `title_pl` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_ja` `title_ja` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_lt` `title_lt` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_lv` `title_lv` VARCHAR(150) NOT NULL ,
CHANGE COLUMN `title_cz` `title_cz` VARCHAR(150) NOT NULL ,
ADD PRIMARY KEY (`city_id`),
ADD INDEX `country_id_idx` (`country_id` ASC) VISIBLE,
ADD INDEX `region_id_idx` (`region_id` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_cities`
ADD CONSTRAINT `country_id`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`country_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `region_id`
  FOREIGN KEY (`region_id`)
  REFERENCES `geodata`.`_regions` (`region_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
