
use mysql 

GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'%';

CREATE DATABASE sinkdb;

use sinkdb;

CREATE TABLE employee (
  identification_id VARCHAR(255),
  identification_pw VARCHAR(255),
  name VARCHAR(255),
  department VARCHAR(255),
  PRIMARY KEY (identification_id)
);

CREATE TABLE employee2 (
  identification_id VARCHAR(255),
  identification_pw VARCHAR(255),
  name VARCHAR(255),
  department VARCHAR(255),
  PRIMARY KEY (identification_id)
);

CREATE TABLE employee3 (
  identification_id VARCHAR(255),
  identification_pw VARCHAR(255),
  name VARCHAR(255),
  department VARCHAR(255),
  PRIMARY KEY (identification_id)
);