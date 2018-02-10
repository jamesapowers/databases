CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  MessageID int NOT NULL,
  PRIMARY KEY (MessageID),
  FOREIGN KEY (UserID) REFERENCES users(UserID),
  FOREIGN KEY (RoomID) REFERENCES rooms(RoomID),
  message VARCHAR(140),
);


/* Create other tables and define schemas for them here! */

CREATE TABLE users (
  UserID INT NOT NULL,
  PRIMARY KEY (UserID),
  username VARCHAR(30),

);

CREATE TABLE rooms (
  RoomID INT NOT NULL,
  PRIMARY KEY (RoomID),
  roomname VARCHAR(30),
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

