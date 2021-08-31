# Ukázka upravení již existujících tabulek

ALTER TABLE `users`
ADD money INT DEFAULT 0,
ADD bonus_money INT DEFAULT 10;

# Ukázka upravení již existujícího sloupce (změna datového typu a dalších vlastností)

ALTER TABLE `users`
MODIFY COLUMN bonus_money INT DEFAULT 20; # MySQL | Oracle < 10G
# ALTER COLUMN bonus_money INT DEFAULT 20; # MS SQL | Access
# MODIFY bonus_money INT DEFAULT 20; # Oracle > 10G

# Ukázka odebrání již existujícího sloupce z tabulky

ALTER TABLE `users`
DROP COLUMN bonus_money;