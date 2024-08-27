use bookmovies;


CREATE TABLE movie_theaters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
)ENGINE = INNODB;

CREATE TABLE movies (
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    run_time DATETIME NOT NULL,
    total_seats INT NOT NULL,
    reserved_seats INT,
    theater_id INT,
    FOREIGN KEY (theater_id) REFERENCES movie_theaters(id)
)ENGINE = INNODB;

CREATE TABLE reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    movie_id INT,
    seats_reserved INT NOT NULL,
    reservation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES movies(id)
)ENGINE = INNODB;


INSERT INTO movie_theaters (name, location) VALUES 
('CGV', '서초구'),
('롯데시네마', '강남구'),
('씨네큐', '영등포구');

INSERT INTO movies (title, run_time, total_seats, reserved_seats, theater_id) VALUES 
('늘봄가든', '2024-08-23 14:00:00', 100, 45, 1),
('에어리언', '2024-08-23 17:00:00', 150, 90, 1),
('행복의나라', '2024-08-24 20:00:00', 120, 30, 2),
('파일럿', '2024-08-25 19:00:00', 200, 50, 3);

INSERT INTO reservations (user_name, movie_id, seats_reserved) VALUES 
('철수', 1, 2),
('영희', 2, 4),
('길동', 1, 3),
('관순', 3, 1),
('민식', 4, 5);

DROP TABLE movie_theaters;
DROP TABLE movies;
DROP TABLE reservations;

SELECT * FROM movie_theaters;
SELECT * FROM movies;
SELECT * FROM reservations;