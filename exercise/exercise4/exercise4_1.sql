CREATE TABLE departments(
    `id` INT NOT NULL,
    `kor_name` VARCHAR(16) NOT NULL,
    PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE students(
    `name` VARCHAR(20) NOT NULL,
    `year` YEAR NOT NULL,
    `major_code` INT NOT NULL,
    `stu_id` INT NOT NULL,
    `phone` VARCHAR(20),
    `address` VARCHAR(50),
    `total_credit` INT DEFAULT 0,
    `avg_grade` FLOAT DEFAULT 0.0,
    `is_enrolled` TINYINT(1) DEFAULT 1,
    PRIMARY KEY(year,major_code,stu_id),
    FOREIGN KEY(`major_code`)
    REFERENCES departments(id) on update CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

