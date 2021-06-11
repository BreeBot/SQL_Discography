-- write your queries here!

--bands
INSERT INTO bands(band_name, year_formed, history)
Values
('New Order', 1985, 'synth pop'),
('GWAR', 1980, 'theatrical metal');

--albums
INSERT INTO albums(album_name, release_year, label, linear_notes, artist_id)
Values
('Blue Monday', 1987, 'Elektra', null, 1),
('Mutton Chops', 1990, 'Carcass', null, 2);


--songs
INSERT INTO songs(title, band, album, single)
Values
('Moody Synth', 1, 1, true),
('Meat Grinder', 2, 2, false);

--Write a query in your queries.sql file to return a list of all of your bands, 
--their albums, and the songs associated with the albums.

SELECT * FROM bands
JOIN albums ON albums.artist.id = bands.id
JOIN songs ON songs.album = albums.id;

