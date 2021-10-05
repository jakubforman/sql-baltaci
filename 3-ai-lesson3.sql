CREATE TABLE users (
    rd INT NOT NULL, -- PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    age TEXT NULL DEFAULT NULL,
    height FLOAT NULL DEFAULT NULL,
    PRIMARY KEY(RD)
);

CREATE TABLE cars (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(128) NOT NULL,
    age INT NULL DEFAULT NULL,
    content TEXT NULL DEFAULT NULL
);

INSERT INTO users (rd, height, name, age) VALUES(0206994444, 167.5, "Tonda", "199 let");
INSERT INTO users (rd, height, name, age) VALUES(0206994454, 187.5, "Jana", "59 let");

INSERT INTO cars (content, name, age) VALUES("Nejlepšé auto xxxx", "BMW X5", 10);
INSERT INTO cars (content, name, age) VALUES("Nejhorší auto xxxx", "BMW X3", 5);

ALTER TABLE cars
ADD nick VARCHAR(30) DEFAULT "NEJ CAR"; -- AFTER COLUMN id;

-- ALTER TABLE cars
-- DROP COLUMN age;

DROP TABLE cars;

SELECT * FROM cars;


-- ZÁKLADNÍ PRÁCE SE SELECT

CREATE TABLE cars (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(128) NOT NULL,
    age INT NULL DEFAULT NULL,
    content TEXT NULL DEFAULT NULL
);

INSERT INTO cars (content, name, age) VALUES("Nejlepšé auto xxxx", "BMW X5", 10);
INSERT INTO cars (content, name, age) VALUES("Nejhorší auto xxxx", "BMW X3", 5);
INSERT INTO cars (content, name, age) VALUES("Nejlepšé auto xxxx", "BMW X1", 10);
INSERT INTO cars (content, name, age) VALUES("Nejhorší auto xxxx", "BMW X3", 5);
INSERT INTO cars (content, name, age) VALUES("Nejlepšé auto xxxx", "BMW X5", 10);
INSERT INTO cars (content, name, age) VALUES("Nejhorší auto xxxx", "BMW X2", 5);
INSERT INTO cars (content, name, age) VALUES("Nejlepšé auto xxxx", "BMW X5", 10);
INSERT INTO cars (content, name, age) VALUES("Nejhorší auto xxxx", "BMW X3", 5);

-- SELECT * FROM cars ORDER BY id DESC;
-- SELECT * FROM cars ORDER BY id ASC;

-- SELECT * FROM cars ORDER BY id DESC LIMIT 2 OFFSET 2;

-- SELECT * FROM cars LIMIT 2 OFFSET 2;
-- SELECT * FROM cars WHERE name IN ("BMW X5","BMW X1","BMW X2");
SELECT COUNT(*) FROM cars;
