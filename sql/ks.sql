DROP DATABASE IF EXISTS db_1702;
CREATE DATABASE db_1702;

DROP TABLE IF EXISTS db_1702.student;
CREATE TABLE db_1702.student (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID Pk',
  name     VARCHAR(255) NOT NULL
  COMMENT '名称',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '学生表';

DROP TABLE IF EXISTS db_1702.paper;
CREATE TABLE db_1702.paper (
  id    INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title VARCHAR(255) NOT NULL
  COMMENT '试卷名称'
)
  COMMENT '试卷表';

DROP TABLE IF EXISTS db_1702.test;
CREATE TABLE db_1702.test (
  id       INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  question VARCHAR(191) NOT NULL
  COMMENT '题目',
  answer   VARCHAR(255) NOT NULL
  COMMENT '答案',
  score    VARCHAR(255) NOT NULL
  COMMENT '分数',
  paperId  VARCHAR(255) NOT NULL
  COMMENT 'ID FK'
)
  COMMENT '试题表';
DROP TABLE IF EXISTS db_1702.student_test;
CREATE TABLE db_1702.student_test (
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  studentId INT(255) COMMENT 'ID FK',
  testId    INT(255) COMMENT 'ID Fk',
  score     INT(191) COMMENT '得分'
)
  COMMENT '学生试题关联表';


SELECT *
FROM db_1702.student;


SELECT *
FROM db_1702.paper;

SELECT *
FROM db_1702.test;


SELECT *
FROM db_1702.student_test;