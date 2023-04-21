SET foreign_key_checks = 0;
-- 创建 province 表格：
DROP TABLE IF EXISTS province;
CREATE TABLE province (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
-- 创建 university_type 表格：
DROP TABLE IF EXISTS university_type;
CREATE TABLE university_type (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
-- 创建 education_type 表格：
DROP TABLE IF EXISTS education_type;
CREATE TABLE education_type (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
-- 创建 university 表格：
DROP TABLE IF EXISTS university;
CREATE TABLE university (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    province_id INT NOT NULL,
    university_type_id INT NOT NULL,
    education_type_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (province_id) REFERENCES province(id),
    FOREIGN KEY (university_type_id) REFERENCES university_type(id),
    FOREIGN KEY (education_type_id) REFERENCES education_type(id)
);
-- 创建 score_rank 表格：
-- DROP TABLE IF EXISTS score_rank;
-- CREATE TABLE score_rank (
--     id INT NOT NULL AUTO_INCREMENT,
--     province_id INT NOT NULL,
--     rank INT NOT NULL,
--     score INT NOT NULL,
--     PRIMARY KEY (id),
--     FOREIGN KEY (province_id) REFERENCES province(id)
-- );
SET foreign_key_checks = 1;
