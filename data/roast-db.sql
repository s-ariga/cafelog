CREATE TABLE roasts(
    roast_id INTEGER NOT NULL PRIMARY KEY,
    roast_day AS TEXT,
    bean AS TEXT,
    crop AS TEXT,
    grams AS REAL,
    roast_time AS INTEGER NOT NULL,
    eject_time AS INTEGER DEFAULT 0,
    roast AS INTEGER
);

PRAGMA foreign_keys = ON;

CREATE TABLE roast_time_temp(
    id AS INTEGER PRIMARY KEY AUTOINCREMENT,
    roast_id INTEGER NOT NULL,
    remain_min AS INTEGER NOT NULL,
    remain_sec AS INTEGER NOT NULL,
    temp AS REAL NOT NULL,
    FOREIGN KEY (roast_id) REFERENCES roasts(roast_id)
);