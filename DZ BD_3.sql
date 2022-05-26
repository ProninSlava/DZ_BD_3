CREATE TABLE IF NOT EXISTS musician(
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
music_style VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS music_album(
id SERIAL PRIMARY KEY,
name_album VARCHAR(40) NOT NULL,
years DATE,
);

CREATE TABLE IF NOT EXISTS musicianmusic_album(
musician_id INTEGER REFERENCES musician(id)
music_album_id INTEGER REFERENCES music_album(id)
CONSTRAINT ma PRIMARY KEY (musician_id, music_album_id)
);

CREATE TABLE IF NOT EXISTS music_style(
id SERIAL PRIMARY KEY,
name_style VARCHAR(40) NOT NULL,
);

CREATE TABLE IF NOT EXISTS musicianmusic_style(
musician_id INTEGER REFERENCES musician(id)
music_style_id INTEGER REFERENCES music_style(id)
CONSTRAINT ms PRIMARY KEY (musician_id, music_style_id)
);

CREATE TABLE IF NOT EXISTS music_track(
id SERIAL PRIMARY KEY,
music_album_id INTEGER REFERENCES music_album(id)
name_track VARCHAR(40) NOT NULL,
times INTEGER,
);

CREATE TABLE IF NOT EXISTS music_collection(
id SERIAL PRIMARY KEY,
name_music_collection VARCHAR(40) NOT NULL,
years DATE,
);

CREATE TABLE IF NOT EXISTS music_trackmusic_collection(
music_track_id INTEGER REFERENCES music_track(id)
music_collection_id INTEGER REFERENCES music_collection(id)
CONSTRAINT tc PRIMARY KEY (music_track_id, music_collection_id)
);