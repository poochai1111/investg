
# This is a fix for InnoDB in MySQL >= 4.1.x
# It "suspends judgement" for fkey relationships until are tables are set.
SET FOREIGN_KEY_CHECKS = 0;

#-----------------------------------------------------------------------------
#-- anketo_category
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_category`;


CREATE TABLE `anketo_category`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255)  NOT NULL,
	`created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB;

#-----------------------------------------------------------------------------
#-- anketo_category_name
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_category_name`;


CREATE TABLE `anketo_category_name`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`category_id` INTEGER  NOT NULL,
	`name` VARCHAR(255),
	`created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`id`),
	INDEX `anketo_category_name_FI_1` (`category_id`),
	CONSTRAINT `anketo_category_name_FK_1`
		FOREIGN KEY (`category_id`)
		REFERENCES `anketo_category` (`id`)
)ENGINE=InnoDB;

#-----------------------------------------------------------------------------
#-- anketo_all_information
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_all_information`;


CREATE TABLE `anketo_all_information`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_information` VARCHAR(100)  NOT NULL,
	`work_year` INTEGER  NOT NULL,
	`sex` INTEGER  NOT NULL,
	`category_id` INTEGER default 0 NOT NULL,
	`detail_id` INTEGER default 0 NOT NULL,
	`choose_flag` INTEGER default 0 NOT NULL,
	`created_at` DATETIME,
	PRIMARY KEY (`id`),
	UNIQUE KEY `anketo_all_information_U_1` (`work_year`)
)ENGINE=InnoDB;

#-----------------------------------------------------------------------------
#-- anketo_common_name
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_common_name`;


CREATE TABLE `anketo_common_name`
(
	`common_id` INTEGER  NOT NULL,
	`common_name` VARCHAR(100)  NOT NULL,
	`created_at` DATETIME,
	`updated_at` DATETIME,
	PRIMARY KEY (`common_id`)
)ENGINE=InnoDB;

#-----------------------------------------------------------------------------
#-- anketo_detail_mapping
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_detail_mapping`;


CREATE TABLE `anketo_detail_mapping`
(
	`detail_id` INTEGER  NOT NULL,
	`common_id` INTEGER  NOT NULL,
	`created_at` DATETIME,
	`updated_at` DATETIME,
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`),
	INDEX `anketo_detail_mapping_FI_1` (`detail_id`),
	CONSTRAINT `anketo_detail_mapping_FK_1`
		FOREIGN KEY (`detail_id`)
		REFERENCES `anketo_category_name` (`id`),
	INDEX `anketo_detail_mapping_FI_2` (`common_id`),
	CONSTRAINT `anketo_detail_mapping_FK_2`
		FOREIGN KEY (`common_id`)
		REFERENCES `anketo_common_name` (`common_id`)
)ENGINE=InnoDB;

#-----------------------------------------------------------------------------
#-- anketo_category_comment
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_category_comment`;


CREATE TABLE `anketo_category_comment`
(
	`id` INTEGER  NOT NULL,
	`category_comment` VARCHAR(100),
	`created_at` DATETIME,
	PRIMARY KEY (`id`),
	CONSTRAINT `anketo_category_comment_FK_1`
		FOREIGN KEY (`id`)
		REFERENCES `anketo_category` (`id`)
)ENGINE=InnoDB;

#-----------------------------------------------------------------------------
#-- anketo_user_management
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `anketo_user_management`;


CREATE TABLE `anketo_user_management`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_name` VARCHAR(100)  NOT NULL,
	`user_pwd` VARCHAR(100)  NOT NULL,
	`created_at` DATETIME,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB;

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;
