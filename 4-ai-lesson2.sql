CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rd INT(10) UNIQUE, -- rodné číslo / unikátní
    name VARCHAR(128)
    -- PRIMARY KEY (id), -- další možnost zápisu PK
);

ALTER TABLE users 
ADD age INT DEFAULT 0;

CREATE TABLE cars (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    name VARCHAR(128),
    color VARCHAR(100),
    -- color ENUM('blue', 'red')
    FOREIGN KEY (user_id) REFERENCES users(id) -- FK na sloupec user_id
);
   


INSERT INTO users (rd, name, age) VALUES( 123456789, "Jan", 18);
INSERT INTO users (rd, name, age) VALUES( 123456799, "Dagmar", 25);
INSERT INTO users (rd, name) VALUES( 123456788, "Karel");

INSERT INTO cars (id, name, color, user_id) VALUES(1, "bmw", "red", 2);
-- INSERT INTO cars (id, name, color, user_id) VALUES(2, "audi", "white", 3);
-- INSERT INTO cars (id, name, color, user_id) VALUES(3, "skoda", "blue", 2);
INSERT INTO cars (id, name, color, user_id) VALUES(4, "subaru", "silver", 1);

SELECT * FROM users;

-- SELECT * FROM cars;
-- SELECT * FROM cars WHERE user_id = 2;

-- SELECT users.name, cars.name AS car_name, cars.color FROM users
-- INNER JOIN cars ON cars.user_id = users.id
-- WHERE car_name = "bmw";







