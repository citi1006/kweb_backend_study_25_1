CREATE TABLE users(
    `id` INT NOT NULL AUTO_INCREMENT,
    `pwd` VARCHAR(16) NOT NULL,
    `nickname` VARCHAR(16) NOT NULL,
    `profile_link` VARCHAR(50) default '',
    `profile_message` VARCHAR(20) default '',
    `withdrawal` TINYINT(1) default 0,
    `date` DATETIME NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE channel(
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(16) NOT NULL,
    `create_usr_id` INT NOT NULL,
    `link` VARCHAR(50) NOT NULL,
    `capacity` INT NOT NULL,
    `withdrawal` TINYINT(1) default 0,
    `date` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(create_usr_id)
    REFERENCES users(id) on delete CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE chats(
    `id` INT NOT NULL AUTO_INCREMENT,
    `message` TEXT NOT NULL,
    `usr_id` INT NOT NULL,
    `channel_id` INT NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(usr_id)
    REFERENCES users(id) on delete CASCADE,
    FOREIGN KEY(channel_id)
    REFERENCES channel(id) on delete CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE follows(
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower_id` INT NOT NULL,
    `followee_id` INT NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(follower_id)
    REFERENCES users(id) on delete CASCADE,
    FOREIGN KEY(followee_id)
    REFERENCES users(id) on delete CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE blocks(
    `id` INT NOT NULL AUTO_INCREMENT,
    `blocker_id` INT NOT NULL,
    `blocked_id` INT NOT NULL,
    `date` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(blocker_id)
    REFERENCES users(id) on delete CASCADE,
    FOREIGN KEY(blocked_id)
    REFERENCES users(id) on delete CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;