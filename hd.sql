SET NAMES UTF8;
DROP DATABASE IF EXISTS hd;
CREATE DATABASE hd CHARSET=UTF8;
USE hd;
CREATE TABLE hd_flower_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(16)
);
CREATE TABLE hd_flower(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT ,#所属分类编号
  hname VARCHAR(20),
  title VARCHAR(128),
  detail VARCHAR(128),
  price DECIMAL(7,2),
  spec VARCHAR(64),
  shelf_time BIGINT,
  is_onsale BOOLEAN
);
CREATE TABLE hd_flower_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  flower_id INT,
  sm  VARCHAR(128),  
  md  VARCHAR(128),
  bg  VARCHAR(128)
  );
CREATE TABLE hd_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone CHAR(16),
  avatar VARCHAR(128),
  user_name VARCHAR(16),
  gender INT 
);
CREATE TABLE hd_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  receiver VARCHAR(32),
  province VARCHAR(16),  #省份
  city VARCHAR(16),
  country VARCHAR(16),
  address VARCHAR(128),
  cellphone VARCHAR(16),
  tag  VARCHAR(6),  #标签名
  is_default BOOLEAN  #是否为默认收货地址
);






