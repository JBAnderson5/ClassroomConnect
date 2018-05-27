/* Aforum Tables */

CREATE TABLE Users (
user_ID CHAR(16) PRIMARY KEY, 
email VARCHAR(32) UNIQUE,
name VARCHAR(32) NOT NULL,
password VARCHAR(32) NOT NULL );

CREATE TABLE Classes (
class_ID CHAR(16) PRIMARY KEY,
class_name VARCHAR(50) );

CREATE TABLE Takes (
user_ID CHAR(16),
class_ID CHAR(16));

CREATE TABLE Class_Feed (
post_ID CHAR(16) PRIMARY KEY,
post_type VARCHAR(16),
post_message VARCHAR(512),
user_ID CHAR(16),
class_ID CHAR(16),
time_stamp TIMESTAMP);

CREATE TABLE Class_Post_Comments (
user_ID CHAR(16),
message VARCHAR(512),
post_ID CHAR(16),
time_stamp TIMESTAMP );

CREATE TABLE Groups (
owner_user_ID CHAR(16),
group_ID CHAR(16),
group_name VARCHAR(32) ); 

CREATE TABLE Group_Members (
user_ID CHAR(16),
group_ID CHAR(16) );

CREATE TABLE Group_Messages (
user_ID CHAR(16),
group_ID CHAR(16),
message VARCHAR(512),
time_stamp TIMESTAMP );
