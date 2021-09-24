CREATE TABLE users (
    id      INTEGER         NOT NULL    PRIMARY KEY     AUTOINCREMENT,
    nick    VARCHAR(128)    NOT NULL,
    age     TINYINT         NULL        DEFAULT NULL,
    drop_me TEXT            NULL        DEFAULT NULL
);

ALTER TABLE users ADD first_name VARCHAR(100); -- AFTER nick;  -- MySQL

INSERT INTO users -- (nick, age, first_name) 
VALUES(NULL, "Honíq", 18, NULL, "Jan");

INSERT INTO users -- (nick, age, first_name) 
VALUES(NULL, "Honzíček", 13, NULL, "Jan");

-- ALTER TABLE users ALTER COLUMN age INT;  -- MySQL

INSERT INTO users (first_name, nick, age) 
VALUES("Anna", "Aničečka", 99);

-- ALTER TABLE users DROP COLUMN drop_me; -- MySQL
-- DROP TABLE users;

-- SQL Injection preview
-- INSERT INTO users VALUES (NULL, "Honíq", 18, NULL, "Jan"); DROP TABLE users; --', 'Derper')

SELECT * FROM users;

UPDATE users SET 
first_name = "Andrea",
nick = "Andrejka"
WHERE id = 3; -- AND first_name = "Anna"; -- first_name = "Jan";

DELETE FROM users WHERE id = 3;

SELECT * FROM users;

