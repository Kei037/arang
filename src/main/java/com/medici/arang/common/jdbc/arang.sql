!DROP TABLE Artist;
!DELETE FROM Artwork WHERE aid = 2;
CREATE TABLE Artist(
  aid			BIGINT			PRIMARY KEY AUTO_INCREMENT,
  email			VARCHAR(30)		NOT NULL,
  passwd		VARCHAR(20)		NOT NULL,
  name			VARCHAR(20)		NOT NULL,
  ssn			VARCHAR(20)		NOT NULL,
  phone			VARCHAR(13)		NOT NULL,
  genre			VARCHAR(20)		NOT NULL,
  career		VARCHAR(100)	NOT NULL,
  imgPath		VARCHAR(300)	NOT NULL,
  regDate		TIMESTAMP		NOT NULL DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT = 1;

SELECT * FROM Artist;

CREATE TABLE Artwork (
	wid 				BIGINT			PRIMARY KEY AUTO_INCREMENT,
	artistId			BIGINT			NOT NULL,
	name				VARCHAR(60)		NOT NULL,
	genre				VARCHAR(20)		NOT NULL,
	technique			VARCHAR(60)		NOT NULL,
	size				VARCHAR(40)		NOT NULL,
	publicationDate		VARCHAR(40)		NOT NULL,
	description			VARCHAR(255)	NOT NULL,
	imgPath				VARCHAR(60)		NOT NULL,
	regDate				TIMESTAMP		NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT Artwork_artistId_FK
		FOREIGN KEY(artistId) REFERENCES Artist(aid)
)AUTO_INCREMENT = 1001;


SELECT * FROM Artwork;

!DROP TABLE Artwork;

SELECT * FROM Artwork WHERE artistId = 1;

SELECT a.name, a.genre, a.imgPath, b.imgPath FROM Artwork a INNER JOIN Artist b 
ON a.artistId = b.aid WHERE b.email = 'test@naver.com';

INSERT INTO Artwork (artistId, name, genre, technique, size, publicationDate, 
description, imgPath) VALUES (1001, '조조의 그림', 'painter', '심혈을 기울인 기법', 
'500cm * 500cm', '2022', '조조가 그린 그림입니다.', 'chochoArt.jpg');	


CREATE TABLE ArtistInfo (
	bid 				BIGINT			PRIMARY KEY AUTO_INCREMENT,
	artistId			BIGINT			NOT NULL,
	title				VARCHAR(40)		NOT NULL,
	description			VARCHAR(30)		NOT NULL,
	imgPath				VARCHAR(40)		NOT NULL,
	regDate				TIMESTAMP		NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT ArtistInfo_artistId_FK
		FOREIGN KEY(artistId) REFERENCES Artist(aid)
)AUTO_INCREMENT = 2001;

!DROP TABLE ArtistInfo;

!DROP TABLE Gallerist;
CREATE TABLE Gallerist(
	gid				BIGINT			PRIMARY KEY AUTO_INCREMENT,
	email			VARCHAR(20)		NOT NULL,
	passwd			VARCHAR(20)		NOT NULL,
	name			VARCHAR(20)		NOT NULL,
	owner			VARCHAR(20) 	NOT NULL,
	corporateNum	VARCHAR(40)		NOT NULL,
	corporatePhone	VARCHAR(20)		NOT NULL,
	ssn				VARCHAR(20)		NOT NULL,
	regDate			TIMESTAMP		NOT NULL DEFAULT CURRENT_TIMESTAMP
)AUTO_INCREMENT = 3001;

SELECT * FROM Gallerist;






INSERT INTO Artist (email, passwd) VALUES ('test@naver.com', '1234');
SELECT * FROM Artist;

INSERT INTO Artwork (artistId, artworkName, artworkImg, description, artworkCategory) 
VALUES (101, '조조의 그림', 'chochoArt.jpg', '조조가 그린 그림입니다.', '전통판화');
SELECT * FROM Artwork;

SELECT * FROM Artwork JOIN Artist ON Artwork.artistId = Artist.aid WHERE mid = ?





UPDATE Artwork SET artistId = 101, artworkName = '조조가 훔친 유비의 그림', 
artworkImg = 'bbart.png', description = '조조가 홈친 유비의 그림이다.', 
artworkCategory = '동양화' WHERE wid = 1001;