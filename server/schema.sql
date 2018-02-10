CREATE DATABASE chat;

USE chat;



/* Create other tables and define schemas for them here! */

CREATE TABLE users (
  UserID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (UserID),
  username VARCHAR(30)

);

CREATE TABLE rooms (
  RoomID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (RoomID),
  roomname VARCHAR(30)
);
  /* Describe your table here.*/

CREATE TABLE messages (
  MessageID int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (MessageID),
  UserID int, 
  RoomID int,
  FOREIGN KEY (UserID) REFERENCES users(UserID),
  FOREIGN KEY (RoomID) REFERENCES rooms(RoomID),
  message VARCHAR(140)
);

/*  Execute this file from the command line by typing:
 *    mysql -u student < server/schema.sql
 *  to create the database and the tables.*/

