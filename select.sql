/*  Задание 2
Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.
*/

-- Название и продолжительность самого длительного трека
SELECT track_name, long 
  FROM tracks
 WHERE long = (SELECT MAX(long) 
                 FROM tracks);

--  Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name 
  FROM tracks
 WHERE long >= '00:03:30';

--  Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name
  FROM collections
 WHERE created_year BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова
SELECT allias
  FROM singers
 WHERE allias NOT LIKE '% %';


-- Название треков, которые содержат слово «мой» или «my»
SELECT track_name
  FROM tracks
 WHERE lower(track_name) LIKE 'my'
    OR lower(track_name) LIKE 'my %'
    OR lower(track_name) LIKE '% my'
    OR lower(track_name) LIKE '% my %'
    OR lower(track_name) LIKE 'мой'
    OR lower(track_name) LIKE 'мой %'
    OR lower(track_name) LIKE '% мой'
    OR lower(track_name) LIKE '% мой %';

/*   Задание 3
Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.
*/

-- Количество исполнителей в каждом жанре
SELECT genre_name,  COUNT(id_singer_sg) 
    FROM genries
    JOIN singer_genre
      ON genries.genre_id = singer_genre.id_genre_sg  
GROUP BY genre_name;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_name)  
  FROM tracks t
  JOIN albums a
    ON t.from_album = a.album_id   
 WHERE year_of_created BETWEEN 2019 AND 2020;

-- второй вариант решения (не понял какой лучше)
SELECT COUNT(track_name)  
  FROM tracks t
 WHERE from_album  IN (SELECT album_id
                         FROM albums a
                        WHERE year_of_created BETWEEN 2019 AND 2020)


-- Названия сборников, в которых присутствует исполнитель 'Onyx'
SELECT DISTINCT collection_name
           FROM collections c  
           JOIN collections_tracks ct 
             ON c.collection_id = ct.id_collection_ct
           JOIN tracks t 
             ON ct.id_track_ct  = t.track_id 
           JOIN singer_album sa 
             ON t.from_album = sa.id_album_sa
           JOIN singers s 
             ON  sa.id_singer_sa  = s.singer_id 
          WHERE allias = 'Timoty';

-- Средняя продолжительность треков по каждому альбому
  SELECT album_name, AVG(long) 
    FROM tracks t
    JOIN albums a 
      ON t.from_album = a.album_id 
GROUP BY album_name 


-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT allias
  FROM singers s 
 WHERE singer_id NOT IN (SELECT id_singer_sa
                           FROM albums a 
                           JOIN singer_album sa 
                             ON a.album_id = sa.id_album_sa
                           JOIN singers s 
                             ON sa.id_singer_sa = s.singer_id 
                          WHERE year_of_created = 2020);
