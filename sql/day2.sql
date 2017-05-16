DROP TABLE db_1702.student;

CREATE TABLE db_1702.student(
  name VARCHAR(255), -- 255
  intro TEXT,
  gender CHAR(2)
);

INSERT INTO db_1702.student VALUES ('Tom', 'asdf', 'M');


SELECT *
FROM db_1702.student;