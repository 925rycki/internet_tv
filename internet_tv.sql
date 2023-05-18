DROP DATABASE IF EXISTS internet_tv;
CREATE DATABASE IF NOT EXISTS internet_tv;
USE internet_tv;

DROP TABLE IF EXISTS channels,
                     programs,
                     genres,
                     program_genre,
                     seasons,
                     episodes,
                     time_slots;

CREATE TABLE channels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE programs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL UNIQUE,
    detail VARCHAR(255) NOT NULL
);

CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE program_genre (
    program_id INT,
    genre_id INT,
    PRIMARY KEY (program_id, genre_id),
    FOREIGN KEY (program_id) REFERENCES programs(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE seasons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    number INT NOT NULL,
    program_id INT NOT NULL,
    FOREIGN KEY (program_id) REFERENCES programs(id)
);

CREATE TABLE episodes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    number INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    detail VARCHAR(255) NOT NULL,
    video_length TIME NOT NULL,
    release_date DATE NOT NULL,
    views INT NOT NULL DEFAULT 0,
    season_id INT NOT NULL,
    FOREIGN KEY (season_id) REFERENCES seasons(id)
);

CREATE TABLE time_slots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start DATETIME NOT NULL,
    end DATETIME NOT NULL,
    views INT NOT NULL DEFAULT 0,
    channel_id INT NOT NULL,
    episode_id INT NOT NULL,
    FOREIGN KEY (channel_id) REFERENCES channels(id),
    FOREIGN KEY (episode_id) REFERENCES episodes(id),
    UNIQUE(start, end, channel_id)
);

source /internet_tv/load_channels.dump;
source /internet_tv/load_programs.dump;
source /internet_tv/load_genres.dump;
source /internet_tv/load_program_genre.dump;
source /internet_tv/load_seasons.dump;
source /internet_tv/load_episodes.dump;
source /internet_tv/load_time_slots.dump;
