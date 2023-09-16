-- --  Задание 1

-- 1_таблица - genries
INSERT INTO genries(genre_name)
     VALUES ('rap'), ('rock'), ('hip hop'), ('pop'), ('Indie rock');

-- 2_таблица - singers
INSERT INTO singers(allias)
VALUES ('Onyx'),
       ('Gorillaz'),
       ('Bon Jovi'),
       ('Kasta'),
       ('Plazma');

-- 3_table - singer_genre
INSERT INTO singer_genre(id_genre_sg, id_singer_sg)
     VALUES (1, 1), (1, 2), (1, 4), (2, 3), (3, 1),
            (4, 1), (4, 4), (4, 5), (5, 3), (5, 2);


--  4_table - albums
INSERT INTO albums(album_name, year_of_created)
     VALUES ('Bacdafucup', 1993), 
            ('Snowmads', 2019);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Demon Days', 2005),
            ('Laika Come Home', 2002);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Slippery When Wet', 1986),
            ('Keep the Faith', 1992);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Что нам делать в Греции', 2002),
            ('Быль в глаза', 2008);

INSERT INTO albums(album_name, year_of_created)
     VALUES ('Take My Love', 2000),
            ('Indian Summer', 2017);

-- 5_table - singer_album

INSERT INTO singer_album(id_singer_sa, id_album_sa)
     VALUES (1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
            (3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
            (1, 10), (2, 5), (3, 4), (4, 2), (5, 7);


-- 6_table - tracks

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Atak of da Bal-Hedz', '00:03:12', 1),
            ('Shiftee', '00:04:20', 1),
            ('Da Nex Niguz', '00:04:08', 1),
            ('Nigga Bridges', '00:04:11', 1),
            ('Onyx Is Here', '00:03:03', 1);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Built Like That', '00:02:49', 2),
            ('Trolling', '00:02:26', 2),
            ('Who da Fuc', '00:02:21', 2),
            ('Good Fight', '00:02:37', 2);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Kids with Guns', '00:03:46', 3),
            ('Dirty Harry', '00:03:44', 3),
            ('Demon Days', '00:04:29', 3),
            ('O Green World', '00:04:32', 3),
            ('Feel Good Inc', '00:03:42', 3);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Tomorrow Comes Today', '00:05:29', 4),
            ('Man Research', '00:05:57', 4),
            ('Starshine', '00:05:17', 4),
            ('Re Hash', '00:06:04', 4),
            ('19/2000', '00:05:28', 4);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Wild in the Streets', '00:03:55', 5),
            ('You Give Love a Bad Name', '00:03:43', 5),
            ('Never Say Goodbye', '00:04:50', 5),
            ('Raise Your Hands', '00:04:18', 5),
            ('Social Disease', '00:04:18', 5);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Fear', '00:03:06', 6),
            ('If I Was Your Mother', '00:04:27', 6),
            ('Bed of Roses', '00:06:34', 6),
            ('Dry County', '00:09:52', 6),
            ('Little Bit of Soul', '00:05:45', 6);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Наши Люди 2', '00:03:56', 7),
            ('Что Нам Делать В Греции', '00:03:50', 7),
            ('Горячее Время', '00:03:33', 7),
            ('Ты Должна Остаться', '00:04:29', 7),
            ('Юго-Восточная Европа', '00:03:21', 7);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Голос брехуна', '00:04:30', 8),
            ('Вселенская обида', '00:04:15', 8),
            ('Радиосигналы', '00:03:58', 8),
            ('Добавь жару', '00:06:28', 8),
            ('Подарок', '00:03:16', 8);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Take My Love', '00:03:42', 9),
            ('Jump in My Car', '00:04:20', 9),
            ('Storm', '00:04:27', 9),
            ('The Sweetest Surrender', '00:04:20', 9),
            ('Fading Like a Rose', '00:04:16', 9),
            ('Lady Linda', '00:03:54', 9);

INSERT INTO tracks(track_name, long, from_album)
     VALUES ('Angel of Snow', '00:04:23', 10),
            ('Lucky Rider', '00:02:56', 10),
            ('Black Leather Boys', '00:03:30', 10),
            ('Dangerous', '00:03:57', 10),
            ('Brilliant Water', '00:03:45', 10);


-- 7_table - collections
INSERT INTO collections(collection_name, created_year)
     VALUES ('Hits', 2003),
            ('Agressive hits', 2007),
            ('Best summer hits', 2017),
            ('Rap hits', 2008);


-- 8_table - collections_tracks
INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (1, 1), (44, 1), (4, 1), (35, 1), (7, 1), (42, 1);

INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (3, 2), (23, 2), (11, 2), (42, 2), (33, 2), (28, 2);

INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (11, 3), (15, 3), (29, 3), (20, 3), (19, 3), (22, 3);

INSERT INTO collections_tracks(id_track_ct, id_collection_ct)
     VALUES (5, 4), (37, 4), (9, 4), (36, 4), (8, 4), (39, 4);