-- your sql here

CREATE TABLE bands(
  id SERIAL PRIMARY KEY,
  band_name VARCHAR(255) NOT NULL, 
  year_formed INTEGER NOT NULL,
  history TEXT
);

CREATE TABLE albums(
  id SERIAL PRIMARY KEY,
  album_name VARCHAR(255) NOT NULL, 
  release_year INTEGER NOT NULL,
  label VARCHAR(255), 
  linear_notes TEXT,
  artist_id INTEGER REFERENCES bands(id)
);

CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL, 
  band INTEGER REFERENCES bands(id) NOT NULL,
  album INTEGER REFERENCES albums(id),
  single BOOLEAN NOT NULL
);
