TRUNCATE TABLE Artists, Albums, Tracks, Listenings, Users RESTART IDENTITY CASCADE;

-- Добавление исполнителей в таблицу Artists
INSERT INTO Artists (name, genre, date_of_birth) VALUES
    ('Metallica', 'Metal', '1981-10-28'),
    ('Queen', 'Rock', '1970-09-05'),
    ('Pink Floyd', 'Progressive Rock', '1965-03-06'),
    ('Led Zeppelin', 'Hard Rock', '1966-09-01');

-- Добавление альбомов в таблицу Albums
INSERT INTO Albums (title, artist_id, release_year, genre) VALUES
    ('Master of Puppets', 1, 1986, 'Metal'),
    ('A Night at the Opera', 2, 1975, 'Rock'),
    ('The Dark Side of the Moon', 3, 1973, 'Progressive Rock'),
    ('Led Zeppelin IV', 4, 1971, 'Hard Rock');

-- Добавление треков в таблицу Tracks
INSERT INTO Tracks (title, duration, album_id) VALUES
    ('Master of Puppets', '00:08:36', 1),
    ('Bohemian Rhapsody', '00:05:55', 2),
    ('Time', '00:06:53', 3),
    ('Stairway to Heaven', '00:08:02', 4);

-- Добавление записей прослушивания в таблицу Listenings
INSERT INTO Listenings (id_record, album_id, last_listening_date, user_id) VALUES
    (1, 1, '2024-10-01', 1),
    (2, 2, '2024-10-05', 2),
    (3, 3, '2024-10-10', 1),
    (4, 4, '2024-10-15', 3);

-- Добавление пользователей в таблицу Users
INSERT INTO Users (id_user, name, email, country) VALUES
    (1, 'John Doe', 'john.doe@example.com', 'USA'),
    (2, 'Ivan Ivanov', 'ivan.ivanov@example.com', 'Russia'),
    (3, 'Alex Brown', 'alex.brown@example.com', 'Canada'),
    (4, 'Peter Wood', 'peter.wood@example.com', 'UK');