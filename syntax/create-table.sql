# Základní vytvoření tabulek

CREATE TABLE `uzivatele` (
    id BIGINT,
    nick VARCHAR(30)
);


CREATE TABLE users
(
    id         BIGINT, # INT
    last_name  VARCHAR(100),
    first_name VARCHAR(100),
    address    VARCHAR(255),
    city       VARCHAR(255)
);

# Vytvoření tabulky z již existující tabulky

CREATE TABLE persons AS
SELECT last_name, first_name
FROM users;


# Vytvoření tabulky z již existující tabulky + vlastní sloupce
CREATE TABLE customers
(
    id BIGINT,
    order_text VARCHAR(100)
) AS
SELECT last_name, first_name
FROM users;

