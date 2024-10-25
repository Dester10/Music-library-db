CREATE TABLE IF NOT EXISTS Artists (
    id_artist SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    date_of_birth DATE
);

CREATE TABLE IF NOT EXISTS Albums (
    id_album SERIAL PRIMARY KEY,
    title  VARCHAR(100) NOT NULL,
    artist_id INTEGER,
    release_year INTEGER,
    genre VARCHAR(50),
    FOREIGN KEY (artist_id) REFERENCES Artists(id_artist)
);

CREATE TABLE IF NOT EXISTS Tracks (
    id_track SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration TIME NOT NULL,
    album_id INTEGER,
    FOREIGN KEY (album_id) REFERENCES Albums(id_album)
);

CREATE TABLE IF NOT EXISTS Listenings (
    id_record SERIAL PRIMARY KEY,
    album_id INTEGER,
    last_listening_date DATE NOT NULL,
    user_id INTEGER,
    FOREIGN KEY (album_id) REFERENCES Albums(id_album)
);

CREATE TABLE IF NOT EXISTS Users (
    id_user SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    country VARCHAR(50) NOT NULL
);
