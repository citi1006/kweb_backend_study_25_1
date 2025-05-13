CREATE TABLE users(
    `id` INT NOT NULL AUTO_INCREMENT,
    `pwd` VARCHAR(16) not null,
    `nickname` VARCHAR(16) not null,
    `profile_link` VARCHAR(50) default '',
    `profile_message` VARCHAR(20) default '',
    `withdrawal` TINYINT(1) default 0,
    `date` DATE,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;