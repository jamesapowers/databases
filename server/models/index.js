var db = require('../db');
var express = require('express');

module.exports = {
  findFKUser: function(obj) {
    return db.query(`SELECT UserID FROM users WHERE username = ${obj.user}`);
  },
  findFKRoom: function(obj) {
    return db.query(`SELECT RoomID FROM rooms WHERE roomname = ${obj.roomname}`);
  },

  messages: {
    get: function () {
    // a function which produces all the messages

    },
 
    post: function (obj) {
    // a function which can be used to insert a message into the database

      db.query(`INSERT INTO messages (message) VALUES (${obj.message})`, function(err, result) {
        if (err) {
          throw err;
        } else {
          console.log('posted message to SQL');
        }
      });

      db.query(`INSERT INTO rooms (roomname) VALUES (${obj.roomname})`, function(err, result) {
        if (err) {
          throw err;
        } else {
          console.log('posted message to SQL');
        }
      });      
    } 
  },

  users: {
    // Ditto as above.
    get: function () {
    
    },
    
    post: function (obj) {
      db.query(`INSERT INTO users (username) VALUES (${obj.username})`, function(err, result) {
        if (err) {
          throw err;
        } else {
          console.log('posted message to SQL');
        }
      });
    }
  }
};

