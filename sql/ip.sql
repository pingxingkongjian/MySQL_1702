DROP TABLE IF EXISTS db_1702.ip;

CREATE TABLE db_1702.ip(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  min VARCHAR(255) COMMENT '起始 IP 地址',
  max VARCHAR(255) COMMENT '',
  geo VARCHAR(255) COMMENT ''
);

SELECT count(*)
FROM db_1702.ip;