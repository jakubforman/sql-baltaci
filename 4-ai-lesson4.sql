CREATE TABLE select_cviko (
    id      INTEGER         NOT NULL    PRIMARY KEY     AUTOINCREMENT,
    name    varchar(255)    NOT NULL,
    `min`   int(11)         NOT NULL,
    `max`   int(11)         NOT NULL
);

-- CREATE TABLE select_cviko_copy (
--     id      INTEGER         NOT NULL    PRIMARY KEY     AUTOINCREMENT,
--     name    varchar(255)    NOT NULL,
--     `min`   int(11)         NOT NULL,
--     `max`   int(11)         NOT NULL
-- );

INSERT INTO select_cviko VALUES(NULL, "Jan", 12, 150);
INSERT INTO select_cviko VALUES(NULL, "Jana", 11, 99);
INSERT INTO select_cviko VALUES(NULL, "Karel", 20, 90);
INSERT INTO select_cviko VALUES(NULL, "Pavel", 0, 10);
INSERT INTO select_cviko VALUES(NULL, "David", 10, 36);
INSERT INTO select_cviko VALUES(NULL, "David", 25, 92);
INSERT INTO select_cviko VALUES(NULL, "Zuzana", 20, 85);
INSERT INTO select_cviko VALUES(NULL, "Klára", 50, 60);

-- INSERT INTO select_cviko_copy 
-- SELECT * FROM select_cviko WHERE name IN ("Jana", "David");

-- SELECT * FROM select_cviko_copy;

-- SELECT * FROM select_cviko ORDER BY `min` ASC;
-- SELECT * FROM select_cviko ORDER BY `min` DESC;
-- SELECT * FROM select_cviko ORDER BY id DESC;

-- stránkování
-- SELECT * FROM select_cviko ORDER BY id DESC LIMIT 2 OFFSET 2;
-- SELECT * FROM select_cviko ORDER BY id ASC LIMIT 4 OFFSET 4;


-- SELECT COUNT(*) FROM select_cviko;
-- SELECT AVG(`min`) FROM select_cviko WHERE `min` BETWEEN 10 AND 11;
-- SELECT AVG(`min`) FROM select_cviko WHERE `min` NOT BETWEEN 10 AND 11;

-- SELECT * FROM select_cviko 
-- WHERE (`min` BETWEEN 10 AND 11) 
-- OR (`max` NOT IN (150) AND `min` = (SELECT MIN(`min`) FROM select_cviko));

-- SELECT AVG(`max`) FROM select_cviko;
-- SELECT SUM(`max`) FROM select_cviko;
-- SELECT * FROM select_cviko WHERE name IN ('Jan', 'Pavel', 'David');
-- SELECT * FROM select_cviko WHERE name IN (SELECT name FROM select_cviko);


-- tyto tabulky neexistují, přejít na odkaz https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_union
-- SELECT City FROM Customers
-- UNION
-- SELECT City FROM Suppliers
-- ORDER BY City;

-- SELECT MAX(`min`) AS maximum_min FROM select_cviko;
