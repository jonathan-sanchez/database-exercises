USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR (100),
    record_name VARCHAR (100),
    release_date SMALLINT UNSIGNED NOT NULL,
    genre VARCHAR (100) NOT NULL,
    sales FLOAT (2) NOT NULL,
    PRIMARY KEY (id)
);

