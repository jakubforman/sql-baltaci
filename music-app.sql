CREATE TABLE songs (
  id 			    INT 			NOT NULL 		PRIMARY KEY 	AUTO_INCREMENT,
  id_author		INT 			NOT NULL,
  id_genre		INT 			NOT NULL,
  duration 		TIME 			NOT NULL		DEFAULT '00:00:00',
  name			  VARCHAR(255)	NOT NULL,
  year			  INT(4)							DEFAULT NULL,
  file			  VARCHAR(255)
);

CREATE TABLE authors (
  id			    INT				NOT NULL		PRIMARY KEY 	AUTO_INCREMENT,
  first_name	VARCHAR(255)	NOT NULL,
  last_name		VARCHAR(255)	NOT NULL,
  birth			  DATE			NOT NULL,
  death 		  DATE			NOT NULL,
  bio			    TEXT							DEFAULT NULL,
  image			  VARCHAR(255)					DEFAULT NULL
);

CREATE TABLE genres (
  id			  INT				NOT NULL		PRIMARY KEY 	AUTO_INCREMENT,
  name			VARCHAR(255)	NOT NULL
);	

ALTER TABLE songs 
ADD FOREIGN KEY (id_author) 
REFERENCES authors(id);

ALTER TABLE songs 
ADD FOREIGN KEY (id_genre) 
REFERENCES genres(id);
    
