DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS categories;

CREATE TABLE artists(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  lifetime VARCHAR(255),
  nationality VARCHAR(255)
);

CREATE TABLE categories(
  id SERIAL4 PRIMARY KEY,
  type VARCHAR(255)
);

CREATE TABLE exhibits(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE,
  exhibit_date INT4,
  url VARCHAR(255),
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE

);
