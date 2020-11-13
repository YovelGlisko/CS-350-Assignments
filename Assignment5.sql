SET ECHO ON;

CREATE TABLE ACTOR (
   ACTOR_NBR     INTEGER  PRIMARY KEY,
   NAME    VARCHAR2(30),
   NATIONALITY    VARCHAR2(15));

CREATE TABLE ROLE  (
   ROLE_MOVIE_NBR     INTEGER,
   ROLE_ACTOR_NBR     INTEGER,
   ROLE_NAME    VARCHAR2(30),
   ROLE_FEE    INTEGER,
   PRIMARY KEY (ROLE_MOVIE_NBR, ROLE_ACTOR_NBR),
   FOREIGN KEY (ROLE_ACTOR_NBR) REFERENCES ACTOR(ACTOR_NBR),
   FOREIGN KEY (ROLE_MOVIE_NBR) REFERENCES MOVIE(MOVIE_NBR));

CREATE TABLE MOVIE  (
   MOVIE_NBR     INTEGER  PRIMARY KEY,
   TITLE    VARCHAR2(30),
   RATING  VARCHAR2(5)   CHECK (RATING IN ('G','PG', 'PG-13', 'R', 'NR')),
   DIR_NBR INTEGER,
   FOREIGN KEY (DIR_NBR) REFERENCES DIRECTOR(DIR_NBR));
   
CREATE TABLE DIRECTOR (
   DIR_NBR     INTEGER  PRIMARY KEY,
   DIR_NAME    VARCHAR2(30),
   NATIONALITY    VARCHAR2(15));
   
CREATE TABLE SHOWING  (
   SH_MOVIE    INTEGER,
   SH_THEATER INTEGER,
   START_DATE DATE,
   END_DATE DATE,
   PRIMARY KEY (SH_MOVIE, SH_THEATER),
   FOREIGN KEY (SH_MOVIE) REFERENCES MOVIE(MOVIE_NBR),
   FOREIGN KEY (SH_THEATER) REFERENCES THEATER(ID));

CREATE TABLE THEATER  (
   ID INTEGER PRIMARY KEY,
   TH_NAME VARCHAR2(30));

INSERT INTO ACTOR VALUES ('1', 'Stephen Baldwin', 'USA');
INSERT INTO ACTOR VALUES ('2', 'Gabriel Byrne', 'USA');
INSERT INTO ACTOR VALUES ('3', 'Benicio Del Toro', 'USA');
INSERT INTO ACTOR VALUES ('4', 'Kevin Pollak', 'USA');
INSERT INTO ACTOR VALUES ('5', 'Kevin Spacey', 'USA');
INSERT INTO ACTOR VALUES ('6', 'Tommy Lee Jones', 'USA');
INSERT INTO ACTOR VALUES ('7', 'Will Smith', 'USA');
INSERT INTO ACTOR VALUES ('8', 'Sylvester Stallone', 'USA');
INSERT INTO ACTOR VALUES ('9', 'Talia Shire', 'India');
INSERT INTO ACTOR VALUES ('10', 'Tom Hanks', 'USA');
INSERT INTO ACTOR VALUES ('11', 'Bill Paxton', 'USA');
INSERT INTO ACTOR VALUES ('12', 'Kati Outinen', 'Finland');
INSERT INTO ACTOR VALUES ('13', 'Markku Peltonen', 'Finland');
INSERT INTO ACTOR VALUES ('14', 'Bertil Guve', 'Sweden');
INSERT INTO ACTOR VALUES ('15', 'Pernilla Allwin', 'Sweden');
INSERT INTO ACTOR VALUES ('16', 'Juliette Binoche', 'France');
INSERT INTO ACTOR VALUES ('17', 'Lena Olin', 'Sweden');

INSERT INTO ROLE VALUES ('1', '1', 'McManus', '150');
INSERT INTO ROLE VALUES ('1', '2', 'Keaton', '150');
INSERT INTO ROLE VALUES ('1', '3', 'Fenster', '300');
INSERT INTO ROLE VALUES ('1', '4', 'Hockney', '350');
INSERT INTO ROLE VALUES ('1', '5', 'Verbal', '250');
INSERT INTO ROLE VALUES ('2', '6', 'Agent K', '7000');
INSERT INTO ROLE VALUES ('2', '7', 'Agent J', '7000');
INSERT INTO ROLE VALUES ('3', '8', 'Rocky', '1000');
INSERT INTO ROLE VALUES ('3', '9', 'Adrian', '500');
INSERT INTO ROLE VALUES ('4', '8', 'Rocky', '5000');
INSERT INTO ROLE VALUES ('4', '9', 'Adrian', '2500');
INSERT INTO ROLE VALUES ('5', '10', 'Jim Lovell', '15000');
INSERT INTO ROLE VALUES ('5', '11', 'Fred Haise', '5000');
INSERT INTO ROLE VALUES ('6', '12', 'Salvation Army Worker', '50');
INSERT INTO ROLE VALUES ('6', '13', 'M', '40');
INSERT INTO ROLE VALUES ('7', '14', 'Fanny', '200');
INSERT INTO ROLE VALUES ('7', '15', 'Alexander', '225');
INSERT INTO ROLE VALUES ('8', '17', 'Josephine', '500');

INSERT INTO MOVIE VALUES ('1', 'The Usual Suspects', 'R', '1');
INSERT INTO MOVIE VALUES ('2', 'Men In Black', 'PG-13', '2');
INSERT INTO MOVIE VALUES ('3', 'Rocky', 'PG', '3');
INSERT INTO MOVIE VALUES ('4', 'Rocky II', 'PG', '4');
INSERT INTO MOVIE VALUES ('5', 'Apollo 13', 'PG', '5');
INSERT INTO MOVIE VALUES ('6', 'Man Without a Past', 'NR', '6');
INSERT INTO MOVIE VALUES ('7', 'Fanny and Alexander', 'R', '7');
INSERT INTO MOVIE VALUES ('8', 'Chocolat', 'PG-13', '8');

INSERT INTO DIRECTOR VALUES ('1', 'Bryan Singer', 'USA');
INSERT INTO DIRECTOR VALUES ('2', 'Barry Sonnenfeld', 'USA');
INSERT INTO DIRECTOR VALUES ('3', 'John G. Avildsen', 'USA');
INSERT INTO DIRECTOR VALUES ('4', 'Sylvester Stallone', 'USA');
INSERT INTO DIRECTOR VALUES ('5', 'Don Howard', 'USA');
INSERT INTO DIRECTOR VALUES ('6', 'Aki Kaurismaki', 'Finland');
INSERT INTO DIRECTOR VALUES ('7', 'Ingmar Bergman', 'Sweden');
INSERT INTO DIRECTOR VALUES ('8', 'Lasse Hallstrom', 'Sweden');

INSERT INTO SHOWING VALUES ('1', '110', '14-Mar-03', '28-Mar-03');
INSERT INTO SHOWING VALUES ('4', '110', '07-Mar-03', '13-Mar-03');
INSERT INTO SHOWING VALUES ('2', '120', '14-Mar-03', '27-Mar-03');
INSERT INTO SHOWING VALUES ('7', '120', '07-Mar-03', '27-Mar-03');
INSERT INTO SHOWING VALUES ('8', '120', '07-Mar-03', '20-Mar-03');
INSERT INTO SHOWING VALUES ('2', '140', '07-Mar-03', '20-Mar-03');
INSERT INTO SHOWING VALUES ('5', '140', '14-Mar-03', '27-Mar-03');
INSERT INTO SHOWING VALUES ('8', '140', '21-Mar-03', '27-Mar-03');

INSERT INTO THEATER VALUES ('100', 'Capitol Theater');
INSERT INTO THEATER VALUES ('110', 'AMC');
INSERT INTO THEATER VALUES ('120', 'Brattle Theater');
INSERT INTO THEATER VALUES ('140', 'Loews');

/* Question 1 */
SELECT TITLE
FROM MOVIE
WHERE DIR_NBR <= 3 AND RATING LIKE 'PG%' or RATING = 'R';
/* I expected this to give me a list of movies that both had director number <=3 
and had a rating of PG or PG-13 as well as movies with a rating of R regardless of
director number which is what I got */

/* Question 2 */
SELECT DISTINCT NATIONALITY AS "All Unique Actor Nationalities"
FROM ACTOR
ORDER BY NATIONALITY ASC;

/* Question 3 */
SELECT MOVIE.TITLE AS "Movie Title", MAX(ROLE.ROLE_FEE) AS "Maximum Role Fee", MIN(ROLE.ROLE_FEE) AS "Minimum Role Fee"
FROM ROLE, MOVIE
WHERE ROLE.ROLE_MOVIE_NBR = MOVIE.MOVIE_NBR
GROUP BY ROLE.ROLE_MOVIE_NBR, MOVIE.TITLE;

/* Question 4 */
SELECT MOVIE.TITLE AS "Movie Title", SUM(ROLE.ROLE_FEE) AS "Total Amount Paid for All Roles"
FROM ROLE, MOVIE
WHERE ROLE.ROLE_MOVIE_NBR = MOVIE.MOVIE_NBR
GROUP BY ROLE.ROLE_MOVIE_NBR, MOVIE.TITLE
ORDER BY MOVIE.TITLE ASC;

/* Question 5 */
SELECT MOVIE.TITLE AS "Movie Title", MOVIE.RATING AS "Movie Rating"
FROM MOVIE, ROLE
WHERE MOVIE.MOVIE_NBR = ROLE.ROLE_MOVIE_NBR
GROUP BY ROLE.ROLE_MOVIE_NBR, MOVIE.TITLE, MOVIE.RATING
HAVING COUNT(ROLE.ROLE_MOVIE_NBR) = (SELECT MAX(COUNT(ROLE_MOVIE_NBR)) FROM ROLE GROUP BY ROLE_MOVIE_NBR);

/* Question 6 */
SELECT ACTOR.NAME AS "Actors Without Any Roles"
FROM ACTOR
WHERE ACTOR_NBR NOT IN (SELECT DISTINCT ROLE.ROLE_ACTOR_NBR FROM ROLE);

/* Question 7 */
SELECT THEATER.TH_NAME AS "Theaters With the Most Distinct Movies"
FROM THEATER, SHOWING
WHERE THEATER.ID = SHOWING.SH_THEATER
GROUP BY THEATER.TH_NAME
HAVING COUNT(DISTINCT SHOWING.SH_MOVIE) = (SELECT MAX(COUNT(DISTINCT SH_MOVIE)) FROM SHOWING GROUP BY SH_THEATER);

/* Question 8 */
SELECT ACTOR.NAME AS "The American Actor With the Highest Single Fee"
FROM ACTOR, ROLE
WHERE ACTOR.ACTOR_NBR = ROLE.ROLE_ACTOR_NBR AND ACTOR.NATIONALITY = 'USA' AND ROLE.ROLE_FEE = (SELECT MAX(ROLE_FEE) FROM ROLE);

/* Question 8 Alternative. I was not sure if this meant it wanted the actor with the highest single fee or total so here is total */
SELECT ACTOR.NAME AS "The American Actor With the Highest Total Fees"
FROM ACTOR, ROLE
WHERE ACTOR.ACTOR_NBR = ROLE.ROLE_ACTOR_NBR AND ACTOR.NATIONALITY = 'USA'
GROUP BY ACTOR.NAME
HAVING SUM(ROLE.ROLE_FEE) = (SELECT MAX(SUM(ROLE_FEE)) FROM ROLE GROUP BY ROLE_ACTOR_NBR);


/* Question 9 */
SELECT THEATER.TH_NAME AS "All Theaters Which Showed a PG Movie on 03/10/2003"
FROM THEATER
WHERE THEATER.ID IN (SELECT SHOWING.SH_THEATER FROM SHOWING, MOVIE WHERE SHOWING.SH_MOVIE = MOVIE.MOVIE_NBR AND MOVIE.RATING = 'PG' AND SHOWING.START_DATE <= '10-MAR-03' AND SHOWING.END_DATE >= '10-MAR-03') 
