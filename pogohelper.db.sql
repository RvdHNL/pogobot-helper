CREATE TABLE RAIDBOSS(ID INTEGER PRIMARY KEY AUTOINCREMENT, BOSS TEXT NOT NULL);
CREATE TABLE NOTIFICATIONS(ID INTEGER PRIMARY KEY AUTOINCREMENT, RAIDID INTEGER NOT NULL, PLAYERID INTEGER NOT NULL);
CREATE TABLE USERS(ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, TEAM TEXT NOT NULL, LEVEL SMALLINT NOT NULL, FIRSTNAME TEXT, SURNAME TEXT, USERNAME TEXT, NOTIFICATIONS BOOLEAN DEFAULT 0, HEARTBEAT DATETIME);
CREATE TABLE RAID(ID INTEGER PRIMARY KEY AUTOINCREMENT, CREATED_BY INT NOT NULL, BOSS TEXT NOT NULL, LAT FLOAT NOT NULL, LONG FLOAT NOT NULL, TIME DATETIME NOT NULL, GYM TEXT);
CREATE TABLE RAIDPLAYERS(ID INTEGER PRIMARY KEY AUTOINCREMENT, RAIDID INTEGER NOT NULL, PLAYERID INTEGER NOT NULL, FRIENDS INTEGER DEFAULT 0, PREFERRED_TIME DATETIME DEFAULT (datetime('now','localtime')));
