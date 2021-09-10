CREATE TABLE users (
    id BIGINT,
    nick VARCHAR(30) DEFAULT "honzík",
    first_name VARCHAR(128),
    num INT DEFAULT 10
);

INSERT INTO users (id, first_name) VALUES(1, "jan");
INSERT INTO users (id, first_name) VALUES(1, "jana");
INSERT INTO users (id, first_name, num) VALUES(2, "karel", 120);

SELECT *, (num * 2) FROM users WHERE first_name LIKE "%a%";
