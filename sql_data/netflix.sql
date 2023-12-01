CREATE DATABASE netflix;

CREATE TABLE content(
    id INT PRIMARY KEY,
    title VARCHAR(500),
    date_added DATE,
    rating VARCHAR(10),
    content_description TEXT
);

CREATE TABLE rating(
    id INT PRIMARY KEY,
    name VARCHAR(10)
);

CREATE TABLE director(
    id INT PRIMARY KEY,
    director_name VARCHAR(100)
);

CREATE TABLE type(
    id INT PRIMARY KEY,
    type_name VARCHAR(10)
);

CREATE TABLE genre(
    id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

CREATE TABLE actor(
    id INT PRIMARY KEY,
    actor_name VARCHAR(100)
);

CREATE TABLE movie_duration(
    content_id INT,
    seasons INT,
    FOREIGN KEY (content_id) REFERENCES content(id)
);

CREATE TABLE tv_show_duration(
    content_id INT,
    time_in_minutes INT,
    FOREIGN KEY (content_id) REFERENCES content(id)
);

CREATE TABLE content_rating(
    content_id INT,
    rating_id INT,
    PRIMARY KEY (content_id, rating_id),
    FOREIGN KEY (content_id) REFERENCES content(id),
    FOREIGN KEY (rating_id) REFERENCES rating(id)
);

CREATE TABLE content_director(
    content_id INT,
    director_id INT,
    PRIMARY KEY (content_id, director_id),
    FOREIGN KEY (content_id) REFERENCES content(id),
    FOREIGN KEY (director_id) REFERENCES director(id)
);

CREATE TABLE content_type(
    content_id INT,
    type_id INT,
    PRIMARY KEY (content_id, type_id),
    FOREIGN KEY (content_id) REFERENCES content(id),
    FOREIGN KEY (type_id) REFERENCES type(id)
);

CREATE TABLE content_genre(
    content_id INT,
    genre_id INT,
    PRIMARY KEY (content_id, genre_id),
    FOREIGN KEY (content_id) REFERENCES content(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE content_cast(
    content_id INT,
    actor_id INT,
    PRIMARY KEY (content_id, actor_id),
    FOREIGN KEY (content_id) REFERENCES content(id),
    FOREIGN KEY (actor_id) REFERENCES actor(id)
);