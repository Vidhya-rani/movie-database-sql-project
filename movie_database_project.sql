
create table movies( Movieid int primary key auto_increment, Title varchar(90), Genre varchar(40),ReleaseYear int, Rating decimal(3,1));
insert into movies( Title, Genre, ReleaseYear, Rating) values('Oh My Friend', 'Romance', 2011, 7.1),('Mr. Perfect', 'Romantic comedy', 2011, 7.0),('Yeh Jawaani Hai Deewani', 'Romance', 2013, 7.3),('Jersey', 'Sports Drama', 2019, 7.8),('3 Idiots', 'Drama', 2009, 8.4),('Sita Ramam', 'Romance', 2022, 8.6),('Mad', 'Comedy', 2023, 7.3),('RRR', 'Action', 2022, 8.0),
('Geetha Govindam', 'Romance', 2018, 7.6),('Zindagi Na Milegi Dobara', 'Drama', 2011, 8.2);
select * from movies;
DELETE FROM Movies WHERE MovieID = 5;

INSERT INTO Movies (Title, Genre, ReleaseYear, Rating) VALUES
('Shyam Singha Roy', 'Drama', 2021, 7.7);


create table actors( Actorid int primary key auto_increment, ActorName varchar(50));
INSERT INTO Actors (ActorName) VALUES
('Siddharth'),('Shruti Haasan'),('Hansika Motwani'),('Prabhas'),('Kajal Aggarwal'),('Taapsee Pannu'),('Ranbir Kapoor'),('Deepika Padukone'),('Kalki Koechlin'),('Nani'),('Shraddha Srinath'),('Dulquer Salmaan'),('Mrunal Thakur'),('Rashmika Mandanna'),('Narne Nithin'),('Ram Nithin'),('Sri Gouri Priya'),('Ram Charan'),('Jr NTR'),('Alia Bhatt'),
('Olivia Morris'),('Vijay Deverakonda'),('Hrithik Roshan'),
('Farhan Akhtar'),('Abhay Deol'),('Katrina Kaif'),('Sai Pallavi'),('Madonna Sebastian');
select * from actors;
SELECT MovieID, Title FROM Movies;
SELECT ActorID, ActorName FROM Actors;

CREATE TABLE Movie_Actors (
    MovieActorID INT PRIMARY KEY AUTO_INCREMENT,
    MovieID INT,
    ActorID INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);


SHOW TABLES;
SELECT MovieID, Title FROM Movies;

SELECT ActorID, ActorName FROM Actors;

INSERT INTO Movie_Actors (MovieID, ActorID) VALUES
-- Oh My Friend (MovieID = 1)
(1, 1),  -- Siddharth
(1, 2),  -- Shruti Haasan
(1, 3),  -- Hansika Motwani

-- Mr. Perfect (MovieID = 2)
(2, 4),  -- Prabhas
(2, 5),  -- Kajal Aggarwal
(2, 6),  -- Taapsee Pannu

-- Yeh Jawaani Hai Deewani (MovieID = 3)
(3, 7),  -- Ranbir Kapoor
(3, 8),  -- Deepika Padukone
(3, 9),  -- Kalki Koechlin

-- Jersey (MovieID = 4)
(4, 10), -- Nani
(4, 11), -- Shraddha Srinath

-- Sita Ramam (MovieID = 6)
(6, 12), -- Dulquer Salmaan
(6, 13), -- Mrunal Thakur
(6, 14), -- Rashmika Mandanna

-- Mad (MovieID = 7)
(7, 15), -- Narne Nithin
(7, 16), -- Ram Nithin
(7, 17), -- Sri Gouri Priya

-- RRR (MovieID = 8)
(8, 18), -- Ram Charan
(8, 19), -- Jr NTR
(8, 20), -- Alia Bhatt
(8, 21), -- Olivia Morris

-- Geetha Govindam (MovieID = 9)
(9, 22), -- Vijay Deverakonda
(9, 14), -- Rashmika Mandanna

-- Zindagi Na Milegi Dobara (MovieID = 10)
(10, 23), -- Hrithik Roshan
(10, 24), -- Farhan Akhtar
(10, 25), -- Abhay Deol
(10, 26), -- Katrina Kaif

-- Shyam Singha Roy (MovieID = 11)
(11, 10), -- Nani
(11, 27), -- Sai Pallavi
(11, 28); -- Madonna Sebastian

SELECT * FROM Movie_Actors;

-- Show actors of RRR
SELECT m.Title, a.ActorName 
FROM Movie_Actors ma 
JOIN Movies m ON ma.MovieID = m.MovieID 
JOIN Actors a ON ma.ActorID = a.ActorID
WHERE m.MovieID = 8;

-- Show movies of Nani (change ID if needed)
SELECT a.ActorName, m.Title
FROM Movie_Actors ma 
JOIN Movies m ON ma.MovieID = m.MovieID 
JOIN Actors a ON ma.ActorID = a.ActorID
WHERE a.ActorName = 'Nani';

