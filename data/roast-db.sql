CREATE TABLE roasts(
    roast_id integer NOT NULL PRIMARY KEY,
    roast_day,
    bean,
    crop,
    grams,
    roast_time NOT NULL,
    eject_time NOT NULL default 0,
    result
);

PRAGMA foreign_keys = ON;

CREATE TABLE roast_time_temp(
    id INTEGER primary key autoincrement,
    roast_id not null,
    remain_min not null,
    remain_sec not null,
    temp not null,
    FOREIGN KEY (roast_id) REFERENCES roasts(roast_id)
);