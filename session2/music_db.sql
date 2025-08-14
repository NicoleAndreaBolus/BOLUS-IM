CREATE DATABASE ARTISTS_PORTAL;

USE ARTISTS_PORTAL;


CREATE TABLE artists(
	artist_id INT auto_increment,
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    stage_name VARCHAR(100),
    nationality VARCHAR(80),
    birth_date DATE,
    genre VARCHAR(100),
    work_email VARCHAR(100),
    released_songs INT,
    released_albums INT,
    PRIMARY KEY (artist_id)
);

show tables;
desc artists;
desc songs;
desc albums;

CREATE TABLE songs(
	song_id INT auto_increment,
    artist_id INT,
    album_id INT,
    song_title VARCHAR(100),
    released_date DATE,
    artist_name VARCHAR(100),
    use_language VARCHAR(100),
    genre VARCHAR(100),
    album_name VARCHAR(100),
    producer_name VARCHAR(100),
    composer_name VARCHAR(100),
    PRIMARY KEY (song_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE albums(
	album_id INT auto_increment,
    artist_id INT,
    album_title VARCHAR(100),
    album_type VARCHAR(100),
    released_date DATE,
    numberOf_songs INT,
    artist_name VARCHAR(100),
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);


