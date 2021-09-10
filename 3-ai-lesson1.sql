CREATE TABLE users (
    id BIGINT PRIMARY KEY,
    nick VARCHAR(30) DEFAULT "cerna",
    first_name VARCHAR(128),
    num INT DEFAULT NULL
);

CREATE TABLE cars (
    id BIGINT NOT NULL PRIMARY KEY,
    car_name VARCHAR(100) NOT NULL,
    user_id BIGINT,
    
    FOREIGN KEY (user_id) REFERENCES users(id)
);



# CREATE TABLE users (
#     id BIGINT UNIQUE,
#     nick VARCHAR(30) DEFAULT "cerna",
#     first_name VARCHAR(128),
#     num INT DEFAULT NULL
# );

INSERT INTO users (id, first_name, num) VALUES(1, "Tonda", 2000);
INSERT INTO cars (id, car_name, user_id) VALUES(1, "BMW", 1);
INSERT INTO cars (id, car_name, user_id) VALUES(2, "Audi", 1);


INSERT INTO users (id, first_name, num) VALUES(2, "Jan", 2001);
INSERT INTO users (id, first_name) VALUES(3, "Jana");


SELECT * FROM users 
INNER JOIN cars ON users.id=cars.user_id;

# SELECT * FROM users 
# LEFT JOIN cars ON users.id=cars.user_id;

# SELECT * FROM cars;

# SELECT *, (num * 2) as cislo FROM users WHERE num BETWEEN 50 AND 6000;
# SELECT *, (num * 2) as cislo FROM users WHERE first_name LIKE "%a%";
# SELECT *, (num * 2) as cislo FROM users WHERE num IS NOT NULL;
