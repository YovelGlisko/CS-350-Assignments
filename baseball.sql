DROP TABLE PLAYER 		CASCADE CONSTRAINTS ;
DROP TABLE TEAM		 	CASCADE CONSTRAINTS ;
DROP TABLE GAMES 		CASCADE CONSTRAINTS ;

CREATE TABLE TEAM
             (TEAM_CODE                CHAR(3) PRIMARY KEY       NOT NULL,
	      TEAM_NAME           VARCHAR2(50)    ,
	      DIVISION            VARCHAR2(15)    ,
              MANAGER             VARCHAR2(35)    ,
              STADIUM             VARCHAR2(50)
              );              

CREATE TABLE PLAYER
             (PLAYER_NAME        VARCHAR2(50)    PRIMARY KEY    NOT NULL,
	      TEAM_CODE               CHAR(3)    ,
	      POSITION           CHAR(2)         ,
              AT_BATS            number    ,
              HITS               number,
              FOREIGN KEY (TEAM_CODE) REFERENCES TEAM(TEAM_CODE)
              );

CREATE TABLE GAMES
             (GAME_DATE           DATE         NOT NULL,
              HOME_TEAM           CHAR(3)         NOT NULL,
              VISITING_TEAM	  CHAR(3)      NOT NULL,
              WINNING_TEAM	  CHAR(3),
              PRIMARY KEY(GAME_DATE, HOME_TEAM, VISITING_TEAM),
              FOREIGN KEY (HOME_TEAM) REFERENCES TEAM(TEAM_CODE),
              FOREIGN KEY (VISITING_TEAM) REFERENCES TEAM(TEAM_CODE)
              );

delete from TEAM;
delete from PLAYER;
delete from GAMES;

INSERT INTO TEAM  (TEAM_CODE, TEAM_NAME, DIVISION, MANAGER, STADIUM)
VALUES  ('BOS', 'Boston Red Sox', 'AL East', 'Francona', 'Fenway Park');
INSERT INTO TEAM  (TEAM_CODE, TEAM_NAME, DIVISION, MANAGER, STADIUM)
VALUES  ('DET', 'Detroit Tigers', 'AL Central', 'Leyland', 'Comerica Park');
INSERT INTO TEAM  (TEAM_CODE, TEAM_NAME, DIVISION, MANAGER, STADIUM)
VALUES  ('STL', 'St. Louis Cardinals', 'NL Central', 'LaRussa', 'Busch Stadium');
INSERT INTO TEAM  (TEAM_CODE, TEAM_NAME, DIVISION, MANAGER, STADIUM)
VALUES  ('NYM', 'New York Mets', 'NL East', 'Randolph', 'Shea Stadium');
INSERT INTO TEAM  (TEAM_CODE, TEAM_NAME, DIVISION, MANAGER, STADIUM)
VALUES  ('NYY', 'New York Yankees', 'AL East', 'Girardi', 'Yankee Stadium');


INSERT INTO PLAYER  (PLAYER_NAME, TEAM_CODE, POSITION, AT_BATS, HITS)
VALUES  ('David Ortiz', 'BOS', 'DH', 549, 182);
INSERT INTO PLAYER  (PLAYER_NAME, TEAM_CODE, POSITION, AT_BATS, HITS)
VALUES  ('Dustin Pedroia', 'BOS', '2B', 520, 165);
INSERT INTO PLAYER  (PLAYER_NAME, TEAM_CODE, POSITION, AT_BATS, HITS)
VALUES  ('Magglio Ordonez', 'DET', 'RF', 595, 216);
INSERT INTO PLAYER  (PLAYER_NAME, TEAM_CODE, POSITION, AT_BATS, HITS)
VALUES  ('Albert Pujols', 'STL', '1B', 565, 185);
INSERT INTO PLAYER  (PLAYER_NAME, TEAM_CODE, POSITION, AT_BATS, HITS)
VALUES  ('David Wright', 'NYM', '3B', 604, 196);

INSERT INTO GAMES (GAME_DATE, HOME_TEAM, VISITING_TEAM, WINNING_TEAM)
VALUES  ('7-JUL-2010', 'BOS', 'NYY', 'BOS');
INSERT INTO GAMES (GAME_DATE, HOME_TEAM, VISITING_TEAM, WINNING_TEAM)
VALUES  ('7-JUL-2010', 'NYM', 'STL', 'STL');
INSERT INTO GAMES (GAME_DATE, HOME_TEAM, VISITING_TEAM, WINNING_TEAM)
VALUES  ('8-JUL-2010', 'DET', 'NYY', 'DET');
INSERT INTO GAMES (GAME_DATE, HOME_TEAM, VISITING_TEAM, WINNING_TEAM)
VALUES  ('8-JUL-2010', 'NYM', 'STL', 'NYM');
INSERT INTO GAMES (GAME_DATE, HOME_TEAM, VISITING_TEAM, WINNING_TEAM)
VALUES  ('9-JUL-2010', 'DET', 'NYY', 'DET');
INSERT INTO GAMES (GAME_DATE, HOME_TEAM, VISITING_TEAM, WINNING_TEAM)
VALUES  ('10-JUL-2010', 'STL', 'NYM', 'STL');

COMMIT;


SELECT * FROM TEAM;
SELECT * FROM PLAYER;
SELECT * FROM GAMES;
