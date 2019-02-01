DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  lifetime VARCHAR(255),
  nationality VARCHAR(255)
);

CREATE TABLE exhibits(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  exhibit_type VARCHAR(255),
  exhibit_date INT4,
  url VARCHAR(255),
  artist_id INT4 REFERENCES artists(id)
);
