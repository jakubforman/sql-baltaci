CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    age INT NULL DEFAULT NULL
);

ALTER TABLE users
ADD nick VARCHAR(30) DEFAULT "NICKXX";

-- ALTER TABLE users
-- DROP COLUMN nick;

-- ALTER TABLE users
-- MODIFY COLUMN name VARCHAR(255);

-- DROP TABLE users;

ALTER TABLE users
RENAME TO students;

CREATE TABLE cars (
    id BIGINT NOT NULL PRIMARY KEY,
    car_name VARCHAR(100) NOT NULL,
    user_id BIGINT,
    
    FOREIGN KEY(user_id) REFERENCES users(id)
);

INSERT INTO students (id, name, age) VALUES(1, "Tonda", 2000);
INSERT INTO cars (id, car_name, user_id) VALUES(1, "BMW", 1);
INSERT INTO cars (id, car_name, user_id) VALUES(2, "Audi", 1);


INSERT INTO students (id, name, age) VALUES(2, "Jan", 2001);
INSERT INTO students (id, name) VALUES(3, "Jana");
INSERT INTO students (id, name) VALUES(4, "Veronika");

SELECT * FROM students WHERE id = 3;

UPDATE students 
SET age = 13, name = "Veronika"
WHERE id = 3;

SELECT * FROM students WHERE id = 3;

SELECT * FROM students;

DELETE FROM students WHERE name = "Veronika";

SELECT * FROM students;
    
    
